POLYGONR
--------

Creates a rotated polyline or polygon within the given drawing.

**Syntax**

POLYGONR(DrawingName, Name, CX, CY, Width, Height, LineFormat, FillFormat, PointRange [, Close, Angle, RotationCenter, EventFunction])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Drawing
     - Name of drawing to display the chart in.
   * - Name
     - Name of ellipse. Must be unique.
   * - CX
     - X Coordinate of center in 1/100th mm
   * - CY
     - Y Coordinate of center in 1/100th mm. Coordinates start at bottom of drawing.
   * - Width
     - Width in 1/100th mm
   * - Height
     - Height in 1/100th mm
   * - LineFormat
     - | Options:
       |
       | - "None" for no line
       | - Hexadecimal color value ("#FF0000" for Red)
       | - JSON String (see LINEFORMAT)
   * - FillFormat. The fill format will only be used, of the polygon is closed.
     - | Options:
       |
       | - "None" for no fill.
       | - Hexadecimal color value ("#FF0000" for Red)
       | - JSON String (see FILLFORMAT)
   * - PointRange
     - Range of coordinates to use for drawing. It must be a 2 dimensional range having exactly two columns and
       a row for each desired point within the polyline. The coordinates are given in fractions of 1, where 0 would
       place the line at the left/bottom border of the border and 1 at the right/top border.
   * - Close
     - True to close polygon and connect the last with the first point.
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

TRUE, if polygon or polyline could be created.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | POLYGONR("Drawing", "Polygon", 1000, 1000, 3000, 3000,,, A1:B4, TRUE, PI() / 4, 0)
       |

       +---+-----------+-----------+
       |   | A         | B         |
       +---+-----------+-----------+
       | 1 | 0.5       | 0         |
       +---+-----------+-----------+
       | 2 | 1         | 0.5       |
       +---+-----------+-----------+
       | 3 | 0.5       | 1         |
       +---+-----------+-----------+
       | 4 | 0         | 0.5       |
       +---+-----------+-----------+

     - TRUE
     - Draw a diamond shaped polygon within the previously created drawing named "Drawing". You can leave out the
       format infos. Then as default a black line and white fill will be used. Rotation will be 45 degrees.

