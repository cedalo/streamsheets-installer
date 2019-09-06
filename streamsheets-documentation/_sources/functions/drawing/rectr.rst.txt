RECTR
--------

Creates a rotated rectangle within the given drawing

**Syntax**

RECTR(DrawingName, Name, CX, CY, Width, Height[, Line, Fill, Angle, RotationCenter, EventFunction])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Drawing
     - Name of drawing to display the rectangle in.
   * - Name
     - Name of rectangle. Must be unique.
   * - CX
     - CX Coordinate of center in 1/100th mm
   * - Y
     - Y Coordinate of center in 1/100th mm. Coordinates start at bottom of drawing.
   * - Width
     - Width in 1/100th mm
   * - Height
     - Height in 1/100th mm
   * - LineFormat
     - | Optional. Options:
       |
       | - "None" for no line
       | - Hexadecimal color value ("#FF0000" for Red)
       | - JSON String (see LINEFORMAT)
   * - FillFormat
     - | Optional. Options:
       |
       | - "None" for no fill.
       | - Hexadecimal color value ("#FF0000" for Red)
       | - JSON String (see FILLFORMAT)
   * - Angle
     - Optional. Angle in radians to rotate object by.
   * - RotationPointLocation
     - | Optional. Rotate around:
       |
       | 0: Center
       | 1: Top Center
       | 2: Top Right
       | 3: Middle Right
       | 4: Bottom Right
       | 5: Bottom Center
       | 6: Bottom Left (Default)
       | 7: Middle Left
       | 8: Top Left
   * - EventFunction
     - Optional. Allows to define a handler, that is executed. Currently only
       ONCLICK is supported.


**Return Value**

TRUE, if rectangle could be created.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - RECTR("Drawing", "REct", 3000, 3000, 3000, 3000, "#000000", "#FFFFFF", PI()/4, 1)
     - TRUE
     - Draw a rectangle within the previously created drawing named "Drawing". It is rotated by 45 degrees around
       the top center.

