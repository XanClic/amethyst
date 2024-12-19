#!/bin/sh

set -e

cd "$(dirname "$0")"

for mon in \
    mimikyu \
    litwick \
    lampent \
    chandelure \
    drifloon \
    drifblim \
    sinistea \
    polteageist \
    mismagius \
    sandygast \
    palossand \
    zorua \
    zoroark \
    phantump \
    trevenant \
    dreepy \
    drakloak \
    dragapult \
    honedge \
    doublade \
    aegislash \
    snorunt \
    froslass \
    greavard \
    houndstone \
    marshadow \
    rotom \
    golett \
    golurk \
    frillish \
    jellicent \
    pumpkaboo \
    gourgeist \
    poltchageist \
    sinistcha
do
    rm -f "${mon}.gif"
    ../../tools/linear-to-gif.rb ../../gfx/pokemon/"$mon"/{front.png,anim.asm} "${mon}.gif"
    rm -f "${mon}-shiny.gif"
    ../../tools/linear-to-gif.rb ../../gfx/pokemon/"$mon"/{shiny-front.png,anim.asm} "${mon}-shiny.gif"
    cp ../../gfx/pokemon/"$mon"/back.png "${mon}-back.png"
    if [ -f ../../gfx/pokemon/"$mon"/back-alt.png ]; then
        cp ../../gfx/pokemon/"$mon"/back-alt.png "${mon}-alt-back.png"
    fi
    # Do not overwrite existing alt front images
    # (Alt source files must always be 56x56, but we may want smaller cropped versions for the README.)
    if [ -f ../../gfx/pokemon/"$mon"/front-alt.png -a ! -f "${mon}-alt.png" ]; then
        cp ../../gfx/pokemon/"$mon"/front-alt.png "${mon}-alt.png"
    fi
    if [ -f ../../gfx/pokemon/"$mon"/shiny-front-alt.png -a ! -f "${mon}-alt-shiny.png" ]; then
        cp ../../gfx/pokemon/"$mon"/shiny-front-alt.png "${mon}-alt-shiny.png"
    fi
done
