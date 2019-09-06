.. _colorconvert:

COLOR.CONVERT
-----------------------------

Converts a given color value to another color format. Currently following color formats are supported: CMYK, HEX, HSL, HSV and RGB.


**Syntax**

=COLOR.CONVERT(Color, FromColor, ToColor)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Color
     - A string specifying the color value to convert.
   * - FromColor 
     - A color format string which matchs given color value. One of CMYK, HEX, HSL, HSV or RGB.
   * - ToColor
     - A color format string which defines resulting color value. One of CMYK, HEX, HSL, HSV or RGB.

**Return Value**

String, the converted color value.

**Example**

.. list-table::
   :widths: 50 10 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =COLOR.CONVERT("128,128,128", "RGB", "CMYK")
     - "0,0,0,50"
     - CMYK color value
   * - =COLOR.CONVERT("0CF030", "HEX", "HSV")
     - "129,95,94"
     - HSV color value
