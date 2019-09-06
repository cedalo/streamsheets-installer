
CHARTSERIES
-----------

Add a chart series definition to a chart. The definitions are accumalated for chart, so that multiple calls to this
function will add multiple series definitions to a chart. The data range passed to the
chart in the CHART function is ignored after setting a CHARTSERIES. Only the first definition of category labels
can be used to display the category labels.

**Syntax**

CHARTSERIES(DrawingName, ChartName, SeriesLabel, CategoryLabelsRange, DataRange[, LineColor, FillColor])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Drawing
     - Name of drawing to display the chart in.
   * - Name
     - Name of chart
   * - SeriesLabel
     - Reference to the location of the series label.
   * - CategoryLabelsRange
     - Range of category labels. The first definition of the category labels will be used, if more than one
       series is defined.
   * - DataRange
     - Data source range containing the values to display.
   * - LineColor
     - Optional. Hexadecimal color value ("#FF0000" for Red)
   * - FillColor
     - Optional. Hexadecimal color value ("#FF0000" for Red)

**Return Value**

TRUE, if chart series could be created.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - CHARTSERIES("Drawing", "PieChart", B1, A2:A5, B2:B5)
     - TRUE
     - Assign the data sources for the series label, category labels and the values to use for a chart

