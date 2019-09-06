
CHARTLEGEND
-----------

Define the chart legend settings of the chart given.

**Syntax**

=CHARTLEGEND(DrawingName,ChartName,Position[,Font])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Drawing
     - Name of drawing to display the chart in.
   * - ChartName
     - Name of chart
   * - Position
     - | Position of the legend
       |
       | - "none" : Hide legend
       | - "left" : Position legend left to chart
       | - "top" : Position legend on top of chart
       | - "right" : Position legend right to chart
       | - "bottom" : Position legend below chart
   * - Font
     - Optional. JSON Font Definition (see FONTFORMAT)


**Return Value**

TRUE, if legend definition is valid.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =CHARTLEGEND("Drawing", "LineChart", "bottom", FONTFORMAT("Arial", 10))
     - TRUE
     - Define a legend to be placed below chart with font setting.

