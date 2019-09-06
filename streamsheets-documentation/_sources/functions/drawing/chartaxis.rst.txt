
CHARTAXIS
---------

Define the chart axis settings of the chart given. Only works for chart type: "line"; "bar";"scatter" and "bubble".

**Syntax**

=CHARTAXIS(Drawing, Name, AxisId[, ScaleType, Minimum, Maximum, Step, Font, Title, TitleFont])

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
   * - AxisId
     - | Id of the axis to change
       |
       | - "X" : Apply changes to X Axis
       | - "Y" : Apply changes to Y Axis
   * - ScaleType
     - | Scale Type to apply:
       |
       | "category" : Category Axis
       | "linear" : Value axis using linear scaling
       | "logarithmic" : Value axis using logarithmic scaling
   * - Minimum
     - Minimum axis value
   * - Maximum
     - Maximum axis value
   * - Step
     - Step to use for axis increment
   * - Font
     - Optional. JSON Font Definition (see FONTFORMAT)
   * - Title
     - Optional. Axis title string
   * - TitleFont
     - Optional. JSON Font Definition for axis title (see FONTFORMAT)


**Return Value**

TRUE, if axis definition is valid.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =CHARTAXIS("Drawing", "LineChart", "X", "linear", 0, 100, 10, FONTFORMAT("Arial", 10), "AxisTitle")
     - TRUE
     - Define a linear axis with a fixed range from 0 to 100 incremented by 10 units and showing an axis title.

