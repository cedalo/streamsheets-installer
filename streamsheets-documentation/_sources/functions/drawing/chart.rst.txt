
CHART
-----

Draw a chart on a given drawing. The drawing must have been created before using this function.

**Syntax**

=CHART(Drawing, Name, X, Y, Width, Height, LineFormat, FillFormat, ChartType, DataRange[, EventFunction])

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
   * - X
     - X Coordinate in 1/100th mm
   * - Y
     - Y Coordinate in 1/100th mm. Coordinates start at bottom of drawing.
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
   * - FillFormat
     - | Options:
       |
       | - "None" for no fill.
       | - Hexadecimal color value ("#FF0000" for Red)
       | - JSON String (see FILLFORMAT)
   * - ChartType
     - Valid types are: "line", "bar", "radar", "doughnut", "pie", "scatter" and "bubble" .
   * - DataRange
     - Cell Range to define the data source of the data to be displayed
       in chart. The function is trying to automatically detect label
       settings and the orientation of the data. If necessary data
       series, can be precisely define by using CHARTDATASERIES.

       The chart type scatter needs two data points and the chart type bubble three.
   * - EventFunction
     - Optional. Allows to define a handler, that is executed. Currently only
       ONCLICK is supported.


**Return Value**

TRUE, if chart could be created.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =CHART("Drawing", "PieChart", 1000, 1000, 3000, 3000, "#000000", "#FFFFFF", "pie", A5:B10)
     - TRUE
     - Draw a pie chart within the previously created drawing named "PieChart".

