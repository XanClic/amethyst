#!/usr/bin/ruby

require 'shellwords'

def die(msg)
    $stderr.puts(msg)
    exit 1
end

args = ARGV.to_a
input = args.shift
anim = args.shift
output = args.shift

if !input || !output
    die("Usage #{__FILE__} <input.png> <anim.asm> <output.gif>")
end

if !File.file?(input)
    die("#{input} does not exist")
end

if !File.file?(anim)
    die("#{anim} does not exist")
end

if File.file?(output)
    die("#{output} already exists; refusing to overwrite")
end

w, h = `magick identify #{input.shellescape}`.strip.sub(/.* ([0-9]+x[0-9]+) .*/, '\1').split('x').map { |x| Integer(x) }

anim = IO.read(anim).lines.map { |l|
    l.sub(/;.*/, '').strip
}.reject { |l|
    l.empty?
}.map { |l|
    l.split(/[ ,]/).map { |p|
        p.strip
    }.reject { |p|
        p.empty?
    }
}

def frame(i)
    "/tmp/linear-to-gif/frame#{i}.png"
end

# couldn’t figure out how to do it without temp compies
system("mkdir -p /tmp/linear-to-gif")
i = 0
while i * w < h
    puts("$ magick #{input.shellescape} -crop #{w}x#{w}+0+#{i * w} +repage #{frame(i).shellescape}")
    system("magick #{input.shellescape} -crop #{w}x#{w}+0+#{i * w} +repage #{frame(i).shellescape}")
    i += 1
end

i = 0
repeat_count = 0
cmdline = "magick -delay 10 #{frame(0).shellescape}"

while true
    anim_line = anim[i]
    break if !anim_line
    i += 1
    anim_line = anim_line.dup

    case anim_line.shift
    when 'frame'
        frame_index = Integer(anim_line.shift)
        frame_duration = Integer(anim_line.shift)
        cmdline += " -delay #{(frame_duration * 100.0 / 60.0).round} #{frame(frame_index).shellescape}"
    when 'setrepeat'
        repeat_count = Integer(anim_line.shift)
    when 'dorepeat'
        repeat_count -= 1
        if repeat_count > 0
            i = Integer(anim_line.shift)
        end
    when 'endanim'
        break
    end
end

cmdline += " -delay 90 #{frame(0).shellescape}"
cmdline += " -layers optimize +set comment #{output.shellescape}"
puts("$ #{cmdline}")
system(cmdline)

system("rm /tmp/linear-to-gif/frame*.png")
system("rmdir /tmp/linear-to-gif")
