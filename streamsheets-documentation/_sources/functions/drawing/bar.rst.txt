
BAR
---

Draw a bar within a cell . A bar is only drawn in the cell, if it is the outer function within a formula.

**Syntax**

=BAR(Value[,Direction,FillColor,LineColor])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Value
     - Size of bar covering the cell, that the function contains. The size is
       given as a factor of the height or width between 0 and 1, where 1 will cover the complete cell. Negative vales are allowed.
   * - Direction
     - | Optional. 0 is default.
       |
       | Options:
       |
       | 0 : Display horizontal bar
       | 1 : Display vertical bar
   * - FillColor
     - Optional. Fill color value. The default value is '#00FF00'.
   * - LineColor
     - Optional. Line color value. By default the line is set to invisible.

**Return Value**

The value passed as the first argument.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =BAR(0.5, 0, '#FF0000')
     - 0.5
     - Draw a horizontal with with a red fill color filling half the height of the cell.

