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
    ../../tools/linear-to-gif.rb ../../gfx/pokemon/"$mon"/{front.png,anim.asm} "${mon}.gif"
    ../../tools/linear-to-gif.rb ../../gfx/pokemon/"$mon"/{shiny-front.png,anim.asm} "${mon}-shiny.gif"
done
