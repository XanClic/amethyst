#!/usr/bin/ruby

require 'shellwords'
require 'yaml'

language = ARGV[0]
if !language
    case `git rev-parse --abbrev-ref HEAD`.strip
    when 'main'
	language = 'de'
    when 'english'
	language = 'en'
    else
	$stderr.puts("Please specify a language (de or en)")
	exit 1
    end
end
language = language.downcase

$tags = [language, language == 'en' ? 'imperial' : 'metric', 'default']

def do_get(maybe_tagged)
    while maybe_tagged.instance_of?(Hash)
        result = $tags.filter_map { |tag| maybe_tagged[tag] }.first
        return maybe_tagged if !result
        maybe_tagged = result
    end
    maybe_tagged
end

def get(hash, path)
    current = hash
    path.split('/').each do |key|
        if !current
            $stderr.puts("Failed to look up /#{path} with tags #{$tags.inspect} in: #{hash.inspect}")
            exit 1
        end
        current = do_get(current[key])
    end
    current
end

Dir.chdir(File.dirname(__FILE__) + '/..')
pokemon = YAML.load(IO.read('data/pokemon/more.yaml'))

evolves_from = {}

index = 251
pokemon.each { |p, data|
    index += 1
    data['index'] = index
    evos = get(data, 'evolutions')
    if evos
        evos.each do |_, evo|
            evolves_from[evo] = p
        end
    end
}

reduced = true
while reduced
    reduced = false
    evolves_from.each do |to, from|
        if evolves_from[from]
            evolves_from[to] = evolves_from[from]
            reduced = true
        end
    end
end

evolves_from.each do |to, base|
    if !pokemon[to]['base']
        pokemon[to]['base'] = base
    end
end

def split_upcase(t)
    t.chars.map { |c|
        if c =~ /[[:upper:]]/
            "_#{c}"
        else
            c.upcase
        end
    }.join.sub(/^_/, '')
end

def typename(t)
    split_upcase(t)
end

def movename(t)
    result = split_upcase(t)
    result == 'PSYCHIC' ? 'PSYCHIC_M' : result
end

def itemname(t)
    split_upcase(t)
end

def growthrate(t)
    if t == 'Fluctuating'
        t = 'Slow'
    elsif t == 'Erratic'
        t = 'MediumSlow'
    end

    split_upcase("Growth#{t}")
end

def egggroup(t)
    case t
    when 'Amphibian'
        t = 'Water_1'
    when 'Field'
        t = 'Ground'
    when 'Grass'
        t = 'Plant'
    when 'Human-Like'
        t = 'Humanshape'
    when 'Invertebrate'
        t = 'Water_3'
    when 'Amorphous'
        t = 'Indeterminate'
    when 'Fish'
        t = 'Water_2'
    when 'Undiscovered'
        t = 'None'
    end

    split_upcase("Egg#{t}")
end

# constant
# --------


IO.write(
    'constants/pokemon_constants_more.asm',
    "DEF MORE_POKEMON EQU const_value#{$/}" +
    pokemon.map { |p, data| "\tconst #{'%-10s' % p.upcase} ; #{'%02x' % get(data, 'index')}#{$/}" }.join
)

# base stats
# ----------

pokemon.each do |p, data|
    stats = <<EOF
    db #{get(data, 'index') < 256 ? "#{p.upcase} ; #{get(data, 'index')}" : "#{get(data, 'index') % 256} ; #{get(data, 'index')} -- Is ignored anyway; used to be the basis for deriving the Pokédex bank index, which is no longer true"}

    db #{'%3i' % get(data, 'stats/hp')}, #{'%3i' % get(data, 'stats/atk')}, #{'%3i' % get(data, 'stats/def')}, #{'%3i' % get(data, 'stats/spd')}, #{'%3i' % get(data, 'stats/sat')}, #{'%3i' % get(data, 'stats/sdf')}
    ;   hp, atk, def, spd, sat, sdf

    db #{t = get(data, 'types'); if !t; t = get(data, 'type'); end; if t.instance_of?(String); t = [t]; end; t.map { |t| typename(t) } * (2 / t.length) * ', '}
    db #{get(data, 'catchrate')} ; catch rate
    db #{get(data, 'baseexp')} ; base exp
    db #{get(data, 'items') ? get(data, 'items').map { |i| itemname(i) } * ', ' : 'NO_ITEM, NO_ITEM'} ; items
    db GENDER_#{get(data, 'female_ratio').kind_of?(String) ? split_upcase(get(data, 'female_ratio')) : ('F%.1f' % (get(data, 'female_ratio') * 100.0)).sub(/\.0$/, '').sub('.', '_')} ; gender ratio
    db 100 ; unknown 1
    db #{get(data, 'hatch_cycles')} ; step cycles to hatch
    db 5 ; unknown 2
    INCBIN "gfx/pokemon/#{p.downcase}/front.dimensions"
    dw NULL, NULL ; unused (beta front/back pics)
    db #{growthrate(get(data, 'leveling'))} ; growth rate
    dn #{g = get(data, 'egg_groups'); if !g; g = get(data, 'egg_group'); end; if g.instance_of?(String); g = [g]; end; g.map { |t| egggroup(t) } * (2 / g.length) * ', '} ; egg groups

    ; tm/hm learnset
    tmhm #{get(data, 'moves/tmhm').map { |t| movename(t) } * ', '}
    ;end
EOF
    IO.write("data/pokemon/base_stats/#{p.downcase}.asm", stats.gsub(/^ +/, "\t"))
end

IO.write(
    'data/pokemon/base_stats_more.asm',
    pokemon.map { |p, _| "INCLUDE \"data/pokemon/base_stats/#{p.downcase}.asm\"#{$/}" }.join
)

# dex entries
# -----------

pokemon.each do |p, data|
    text = get(data, 'dex/text')
    species = get(data, 'dex/species')
    height = get(data, 'dex/height')
    weight = get(data, 'dex/weight')
    text = text.split($/)
    dex = <<EOF
    db "#{species.upcase}@" ; species name
    #{if $tags.include?('metric');
"    dbw #{'%i' % (height * 10.0)}, #{'%i' % (weight * 10.0)} ; height, weight";
      else;
"    dw #{'%i' % (height * 100.0)}, #{'%i' % (weight * 100.0)} ; height, weight";
      end}

    ;  "| ----------------- |"
    db   #{text[0].inspect}
    next #{text[1].inspect}
    next #{text[2].inspect}

    page #{text[3].inspect}
    next #{text[4].inspect}
    next #{(text[5] + '@').inspect}
EOF
    IO.write("data/pokemon/dex_entries/#{p.downcase}.asm", dex.gsub(/^ +/, "\t"))
end

IO.write(
    'data/pokemon/dex_entries_more.asm',
    pokemon.map { |p, _| "#{'%-25s' % "#{p.capitalize}PokedexEntry::"}INCLUDE \"data/pokemon/dex_entries/#{p.downcase}.asm\"#{$/}" }.join
)

IO.write(
    'data/pokemon/dex_entry_pointers_more.asm',
    pokemon.map { |p, _| "\tdba #{p.capitalize}PokedexEntry#{$/}" }.join
)

# egg moves
# ---------

egg_moves = <<EOF
SECTION "Egg Moves 3", ROMX

EggMovePointers3::
#{pokemon.map { |p, data|
    egg_moves = get(data, 'moves/egg')
    if egg_moves && !egg_moves.empty?
        "    dw #{p.capitalize}EggMoves"
    else
        "    dw NoEggMoves3"
    end
} * $/}
.IndirectEnd::
EOF

pokemon.each do |p, data|
    eggm = get(data, 'moves/egg')
    next unless eggm && !eggm.empty?

    egg_moves += <<EOF

#{p.capitalize}EggMoves:
#{eggm.map { |m| "    dw #{movename(m)}" } * $/}
    dw -1 ; end
EOF
end

egg_moves = egg_moves.split($/)
if egg_moves[-1] == '    dw -1 ; end'
    egg_moves = egg_moves[..-2]
end
egg_moves = egg_moves.join($/) + <<EOF

NoEggMoves3:
    dw -1 ; end
EOF

IO.write('data/pokemon/egg_moves_more.asm', egg_moves.gsub(/^ +/, "\t"))

# evolutions and level attacks
# ----------------------------

evo_attacks = <<EOF
SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
#{pokemon.map { |p, _| "    dw #{p.capitalize}EvosAttacks" } * $/}
.IndirectEnd::
EOF

evo_attacks = evo_attacks.split($/)

pokemon.each do |p, data|
    evo_attacks << ''
    evo_attacks << "#{p.capitalize}EvosAttacks:"

    if get(data, 'evolutions')
        get(data, 'evolutions').each do |level, to|
            if level.kind_of?(Integer)
                evo_attacks << "    dbbw EVOLVE_LEVEL, #{level}, #{to.upcase}"
            elsif level == 'trade'
                evo_attacks << "    dbbw EVOLVE_TRADE, -1, #{to.upcase}"
            elsif level.start_with?('trade_with')
                evo_attacks << "    dbbw EVOLVE_TRADE, #{itemname(level.sub(/^trade_with\s*/, ''))}, #{to.upcase}"
            else
                evo_attacks << "    dbbw EVOLVE_ITEM, #{itemname(level)}, #{to.upcase}"
            end
        end
    end
    evo_attacks << "    db 0 ; no more evolutions"

    get(data, 'moves/level').each do |level, moves|
        moves = do_get(moves)
        if moves.kind_of?(String)
            moves = [moves]
        end
        moves.each do |move|
            evo_attacks << "    dbw #{level}, #{movename(do_get(move))}"
        end
    end
    evo_attacks << "    db 0 ; no more level-up moves"
end

evo_attacks = evo_attacks * $/ + $/
IO.write('data/pokemon/evos_attacks_more.asm', evo_attacks.gsub(/^ +/, "\t"))

# first stages
# ------------

first_stages = pokemon.map { |p, data|
    base = get(data, 'base') ? get(data, 'base').upcase : p.upcase
    if get(data, 'index') % 8 == 0
        "    dw #{'%-11s' % base};#{'%02x' % get(data, 'index')}"
    else
        "    dw #{base}"
    end
} * $/ + $/
IO.write('data/pokemon/first_stages_more.asm', first_stages.gsub(/^ +/, "\t"))

# Not sure what this is
# ---------------------

IO.write('data/pokemon/gen1_order_more.asm', "\tdb WOBBUFFET#{$/}" * pokemon.length)

# menu icons
# ----------

IO.write(
    'data/pokemon/menu_icons_more.asm',
    pokemon.map { |p, data| "\tdb ICON_#{'%-12s' % split_upcase(get(data, 'icon'))}; #{p.upcase}#{$/}" }.join
)

# names
# -----

IO.write(
    'data/pokemon/names_more.asm',
    pokemon.map { |p, data| "\tdb \"#{('%-10s' % get(data, 'name').upcase).gsub(' ', '@')}\"#{$/}" }.join
)

# palettes
# --------

palettes = pokemon.map { |p, data|
    system("png-palette/target/debug/png-palette #{"gfx/pokemon/#{p.downcase}/front.png".shellescape} #{"gfx/pokemon/#{p.downcase}/normal.gbcpal".shellescape}")
    shiny_colors = (`png-palette/target/debug/png-palette #{"gfx/pokemon/#{p.downcase}/shiny-front.png".shellescape}`.strip.split($/)[1..2] * $/).gsub(/.*\(/, "\tRGB ").gsub(/\)$/, '')
    IO.write("gfx/pokemon/#{p.downcase}/shiny.pal", $/ + shiny_colors + $/ + $/)

    ["INCBIN \"gfx/pokemon/#{p.downcase}/normal.gbcpal\", middle_colors",
     "INCLUDE \"gfx/pokemon/#{p.downcase}/shiny.pal\""]
}.flatten * $/ + $/
IO.write('data/pokemon/palettes_more.asm', palettes.gsub(/^ +/, "\t"))

# pics
# ----

size = 0
sec_idx = 0
IO.write(
    'gfx/pics_more.asm',
    'SECTION "More pics 0", ROMX' + $/ + $/ +
    pokemon.map { |p, _|
        dir = "gfx/pokemon/#{p.downcase}"
        files = {
            Frontpic: 'front.animated.2bpp.lz',
            Backpic: 'back.2bpp.lz',
        }
        if File.file?("#{dir}/front-alt.png")
            files[:AltFrontpic] = 'front-alt.2bpp.lz'
        end
        if File.file?("#{dir}/back-alt.png")
            files[:AltBackpic] = 'back-alt.2bpp.lz'
        end

        a = []
        files.each { |key, file|
            file = "#{dir}/#{file}"
            size += File.file?(file) ? File.size(file) : 0

            if size > 16384
                sec_idx += 1
                a += ['', "SECTION \"More pics #{sec_idx}\", ROMX", '']
                size -= 16384
            end

            a << "#{'%-22s' % "#{p.capitalize}#{key.to_s}::"}INCBIN \"#{file}\""
        }
        a
    }.flatten * $/ + $/
)

IO.write(
    'data/pokemon/pic_pointers_more.asm',
    pokemon.map { |p, _| ["\tdba #{p.capitalize}Frontpic", "\tdba #{p.capitalize}Backpic"] }.flatten * $/ + $/
)

# footprints
# ----------

IO.write(
    'gfx/footprints_more.asm',
    pokemon.map { |p, data| "INCBIN \"gfx/footprints/#{get(data, 'dex/footprint').downcase}.1bpp\"#{$/}" }.join
)

# animations
# ----------

IO.write(
    'gfx/pokemon/anims_more.asm',
    pokemon.map { |p, _| "#{'%-21s' % "#{p.capitalize}Animation:"}INCLUDE \"gfx/pokemon/#{p.downcase}/anim.asm\"#{$/}" }.join
)

IO.write(
    'gfx/pokemon/idles_more.asm',
    pokemon.map { |p, _| "#{'%-25s' % "#{p.capitalize}AnimationIdle:"}INCLUDE \"gfx/pokemon/#{p.downcase}/anim_idle.asm\"#{$/}" }.join
)

IO.write(
    'gfx/pokemon/anim_pointers_more.asm',
    pokemon.map { |p, _| "\tdw #{p.capitalize}Animation#{$/}" }.join
)

IO.write(
    'gfx/pokemon/idle_pointers_more.asm',
    pokemon.map { |p, _| "\tdw #{p.capitalize}AnimationIdle#{$/}" }.join
)

# bitmasks
# --------

IO.write(
    'gfx/pokemon/bitmasks_more.asm',
    pokemon.map { |p, _| "#{'%-20s' % "#{p.capitalize}Bitmasks:"}INCLUDE \"gfx/pokemon/#{p.downcase}/bitmask.asm\"#{$/}" }.join
)

IO.write(
    'gfx/pokemon/bitmask_pointers_more.asm',
    pokemon.map { |p, _| "\tdw #{p.capitalize}Bitmasks#{$/}" }.join
)

# frames
# ------

IO.write(
    'gfx/pokemon/more_frames.asm',
    (
        ["MoreFrames: ; used only for BANK(MoreFrames)", ''] +
        pokemon.map { |p, _| "#{'%-18s' % "#{p.capitalize}Frames:"}INCLUDE \"gfx/pokemon/#{p.downcase}/frames.asm\"" }
    ) * $/ + $/
)

IO.write(
    'gfx/pokemon/frame_pointers_more.asm',
    pokemon.map { |p, _| "\tdba #{p.capitalize}Frames#{$/}" }.join
)
