
LABELR
-------

Creates a rotated ellipse within the given drawing

**Syntax**

LABELR(DrawingName, Name, X, Y, Width, Height, Text [,FontFormat, Angle, RotationCenter, EventFunction])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Drawing
     - Name of drawing to display the ellipse in.
   * - Name
     - Name of ellipse. Must be unique.
   * - X
     - X Coordinate of center in 1/100th mm
   * - Y
     - Y Coordinate of center in 1/100th mm. Coordinates start at bottom of drawing.
   * - Width
     - Width in 1/100th mm
   * - Height
     - Height in 1/100th mm
   * - Text
     - Text to display.
   * - FontFormat
     - Optional. JSON String (see FONTFORMAT).
   * - Angle
     - Optional. Angle in radians to rotate object by.
   * - RotationPointLocation
     - | Optional. Rotate around:
       |
       | 0:  Center
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

TRUE, if label could be created.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - LABELR("Drawing", "Ellipse", 3000, 3000, 3000, 3000, "SampleText", FONTFORMAT("Verdana", 10), PI()/4, 1)
     - TRUE
     - Draw a label within the previously created drawing named "Drawing". It is rotated by 45 degress around
       the top center.

