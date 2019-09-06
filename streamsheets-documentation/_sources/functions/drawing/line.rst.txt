
LINE
-------

Creates a line within the given drawing.

**Syntax**

LINE(DrawingName, Name, X1, Y1, X2, Y2 [, LineFormat])

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
   * - X1
     - X Coordinate to start line from.
   * - Y1
     - Y Coordinate to start line from in 1/100th mm. Coordinates start at bottom of drawing.
   * - X2
     - X Coordinate to draw line to.
   * - Y2
     - Y Coordinate to draw line to in 1/100th mm. Coordinates start at bottom of drawing.
   * - LineFormat
     - | Optional. Options:
       |
       | - "None" for no line
       | - Hexadecimal color value ("#FF0000" for Red)
       | - JSON String (see LINEFORMAT)

**Return Value**

TRUE, if line could be created.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - LINE("Drawing", "Line", 1000, 1000, 3000, 3000, "#000000")
     - TRUE
     - Draw a line within the previously created drawing named "Drawing".

