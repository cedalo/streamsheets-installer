LINES
-------

Creates a polyline or polygon within the given drawing.

**Syntax**

LINES(DrawingName,Name, PointRange[, LineFormat, FillFormat, Closed, EventFunction])

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
   * - PointRange
     - Range of coordinates to user for drawing. It must be a 2 dimensional range having exactly two columns
       and a row for each desired point within the polyline.
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
   * - Closed
     - Optional. Close the polyline by connecting the first and the last point of the polyline.
   * - EventFunction
     - Optional. Allows to define a handler, that is executed. Currently only
       ONCLICK is supported.


**Return Value**

TRUE, if polyline could be created.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | LINES("Drawing", "Polyline", A1:B4, "#000000", "#FFFFFF", TRUE)
       |

       +---+-----------+-----------+
       |   | A         | B         |
       +---+-----------+-----------+
       | 1 | 1000      | 0         |
       +---+-----------+-----------+
       | 2 | 3000      | 1000      |
       +---+-----------+-----------+
       | 3 | 2000      | 4000      |
       +---+-----------+-----------+
       | 4 | 1000      | 2000      |
       +---+-----------+-----------+

     - TRUE
     - Draw a polygon within the previously created drawing named "Drawing". It is closed and filled with a white color.

