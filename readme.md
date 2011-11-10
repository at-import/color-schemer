# Color Schemer

#### Color schemes made easy with Sass

## Installing

### Compass

Install ruby-gem

Usage requires Sass. Visit [sass-lang.com](http://sass-lang.com) to learn more and install.

`gem install color-schemer`

Then add `require 'color-schemer'` to your Compass config file.

### Sass file

Copy and link to the Sass file in your project.

### Cascade

Color schemer writes default $primary, $secondary ... variables for you and these will be different based on when you import the color schemer. You can just use the functions and define the variables yourself in witch case importing the file first will be fine. If you set up a configuration and then import the color schemer these variables will change based on your settings. You can override these settings after importing the color schemer file.

## Useage

Color schemer extends the basic Sass color functions to provide additional support for color schemes and manipulation. The basic functions included are as follows:

* `color-schemer($color-location [primary, secondary, tertiary, quadrary])` — Builds out color schemes.
* * `$base-color, $color-scheme [mono, complement, triad, tetrad, analogic, accented-analogic], $hue-offset` — Additional options for the above function.
* `equalize($color)` — Removes any tints and shades from a color.
* `boutet-complement($color)` — A complement adjusted to roughly match traditional color theory instead of RGB theory. So the complement of red will be green.

Defining variables will change your color scheme and how it behaves:

* `$base-color: $color` — Select the color for the scheme to be based on.
* `$color-location: [primary, secondary, tertiary, quadrary]` — Select the location of the color in the scheme you are calculating.
* `$color-scheme: [mono, complement, triad, tetrad, analogic, accented-analogic]` — Choices of different color schemes.
* `$hue-offset: 20` — How many degrees to offset hue shifts in triad, tetrad, analogic, and accented-analogic schemes.
* `$brightness-offset: 10%` — Differences in lights and darks in the color scheme.
* `$color-theory: [rgb, boutet]` — Switch between RGB and the traditional Boutet color theories.
* `$equalize: [true, false]` — Choose weather or not to equalize the base-color when generating a scheme.

## Schemes

* mono
* complement
* triad
* tetrad
* analogic
* accented-analogic

## Inspiration

* http://colorschemedesigner.com/
* https://github.com/canarymason/The-Coding-Designers-Survival-Kit/blob/master/sass/partials/lib/variables/_color_schemes.sass

## License

Copyright (c) 2011 [Scott Kellum](http://www.scottkellum.com/) ([@scottkellum](http://twitter.com/scottkellum)) and [Mason Wendell](http://thecodingdesigner.com/) ([@canarymason](http://twitter.com/canarymason))

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.