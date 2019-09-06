LINEFORMAT
----------

Create a line format description from the given arguments.

**Syntax**

LINEFORMAT(Color [, Style, Width, ArrowStart, ArrowEnd])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Color
     - Hexadecimal color value.
   * - Style
     - | Optional. Style Code:
       |
       | -1: Hairline (does not zoom)
       | 0: None
       | 1: Solid
       | 2: Dot
       | 3: Dash
       | 4: DashDot
       | 5: DashDotDot

   * - Width
     - Optional. Line width.
   * - ArrowStart
     - Optional. Arrow to use at start. 0 for no arrow.
   * - ArrowEnd
     - Optional. Arrow to use at end. 0 for no arrow.

**Return Value**

JSON String, which defines the line format and can be used in drawing functions.

**Example**

.. list-table::
   :widths: 45 55
   :header-rows: 1

   * - Function
     - Result
   * - LINEFORMAT("#FF0000", 1, 3)
     - {"color":"#FF0000", "style":1,"width":3}


