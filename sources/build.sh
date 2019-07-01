mkdir ../fonts/ ../fonts/ttf ../fonts/otf ../fonts/webfonts

TTF=../fonts/ttf/Lacquer-Regular.ttf
OTF=../fonts/otf/Lacquer-Regular.otf
fontmake -g Lacquer.glyphs -o ttf --output-path $TTF
fontmake -g Lacquer.glyphs --optimize-cff 0 -o otf --output-path $OTF

# Post processing
gftools fix-nonhinting $TTF $TTF.fix
mv $TTF.fix $TTF
gftools fix-dsig $TTF -f
rm ../fonts/ttf/*gasp*


# Generate webfonts

woff2_compress $TTF
mv ../fonts/ttf/Lacquer-Regular.woff2 ../fonts/webfonts/

sfnt2woff $TTF
mv ../fonts/ttf/Lacquer-Regular.woff ../fonts/webfonts

ttf2eot $TTF ../fonts/webfonts/Lacquer-Regular.eot

# Cleanup
rm -rf instance_ufo/ master_ufo/

