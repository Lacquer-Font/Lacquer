# Lacquer

Lacquer is an expressive display font featuring heavy drips and dozens of alternate glyphs. Lacquer was hand drawn using a paint pen by [Niki Polyocan](https://www.nikipolyocan.com/) and was extrapolated and finished by [Eli Block](https://eli-block.com/) at Google Creative Lab.


### Recent changes v.1.000

* Complete GF Latin glyph set
* Optimized kerning, alternates, and bonus glyphs

### Building fonts

```
# Install webfont tools
brew tap bramstein/webfonttools
brew install woff2
brew install sfnt2woff
brew install ttf2eot

# Create a python virtualenv
python3 -m venv venv
pip install -r requirements.txt

# Build fonts
cd sources/
sh build.sh
```

### Questions

Contact Eli Block (eliblock@google.com) with questions.

### License

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is copied below, and is also available with a FAQ at:
http://scripts.sil.org/OFL

### Copyright

Copyright (c) 2019, Eli Block (eliblock@google.com),
with Reserved Font Name "Lacquer".

![Lacquer](/DOCUMENTATION/Lacquer.png)



