# Color Schemer [![Gem Version](https://badge.fury.io/rb/color-schemer.png)](http://badge.fury.io/rb/color-schemer)

#### Color schemes made easy with Sass

Color schemer is a robust color toolset for Sass. It expands on the existing [Sass color functions](http://sass-lang.com/docs/yardoc/Sass/Script/Functions.html) and adds things like RYB manipulation, * set-hue, * set-lightness, tint, shade and more. It also leverages these tools adding a full-featured color scheming tool that allows you to set one primary color and create whole color schemes around it.

## Install

`gem install color-schemer` in your terminal.

`require 'color-schemer'` to your Compass config file.

`@import 'color-schemer'` to your stylesheet.

### Using Color Schemer

## New color functions

* `tint($color, $amount)` — Mixes the color with white. Most designers are much more comfortable with this than `lighten()`.
* `shade($color, $amount)` — Same as above but adds black. Designers might prefer it over `darken()`.
* `equalize($color)` — Returns a fully saturated color.
* `set-red($color, $red)` — Sets the amount of red in a color.
* `set-green($color, $green)` — Sets the amount of green in a color.
* `set-blue($color, $blue)` — Sets the amount of blue in a color.
* `set-hue($color, $hue)` — Sets the hue of a color.
* `set-saturation($color, $saturation)` — Sets the saturation of a color.
* `set-lightness($color, $lightness)` — Sets the lightness of a color.
* `set-alpha($color, $alpha)` — Sets the alpha of a color.

#### RYB color functions

Color schemer adds a number of functions to manipulate the red yellow and blue color wheel. Computer color is calculated in red green and blue which is more technically correct but artists and designers have been using RYB for ages to come up with better color relationships.

* `ryb-hue($color)` — Will find the hue of a color on the RYB color wheel.
* `set-ryb-hue($color, $hue)` — Sets the hue of a color based on the RYB color wheel.
* `ryb-adjust-hue($color, $degrees)` — Will adjust the hue of a color around the RYB color wheel.
* `ryb-complement($color)` — Finds the RYB complement of a color.
* `ryb-invert($color)` — Inverts a color around the RYB color wheel.

#### CMYK color function

* `cmyk($cyan, $magenta, $yellow, $black)` — Define colors using CMYK values.

## Color scheming

#### functions

Drop these functions in wherever you want to use a color from the scheme. You can manipulate them further to make them work with your design. These should be considered a good starting point as you might want to tweak a little further.

* `cs-primary()` — primary color.
* `cs-secondary()` — secondary color.
* `cs-tertiary()` — tertiary color.
* `cs-quadrary()` — quadrary color.

#### Variables

You can change the result of the functions above by setting these global variables:

* `$cs-primary` — set the primary color in a color scheme.
* `$cs-scheme` — mono, complement, triad, tetrad, analogic, accented-analogic
* `$cs-hue-offset` — Amount of hue adjustment in schemes.
* `$cs-brightness-offset` — Amount of brightness adjustment in schemes.
* `$cs-color-model` — rgb, ryb

#### Blend modes

Color schemer includes [SCSS Blend Modes](https://github.com/heygrady/scss-blend-modes) which allows you to do photoshop style blending of colors.

#### Out of the box

While you *can* use these functions out of the box you might want to fine-tune them a bit more. I suggest you create variables with them just in case you want to make adjustments/move things around instead of relying on these as-is.

```scss
$primary: cs-primary();
$secondary: darken(cs-secondary(), 10%); // too light, darkening this up a bit.
$tertiary: cs-tertiary();
$quadrary: cs-quadrary();
```

## Testing your color scheme

Also included is a handy mixin to test out color schemes. Just include it with a list of your colors and it will add a bar of color above your page.

```scss
@include cs-test(red green blue);
```

## Inspiration

* http://colorschemedesigner.com/

## License

Copyright (c) 2011 [Scott Kellum](http://www.scottkellum.com/) ([@scottkellum](http://twitter.com/scottkellum)) and [Mason Wendell](http://thecodingdesigner.com/) ([@canarymason](http://twitter.com/canarymason))

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
