
CHARTTITLE
-----------

Define the chart title settings of the chart given.

**Syntax**

CHARTTITLE(DrawingName,ChartName,Text,[Position,Font])

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
   * - Text
     - Text to use as title
   * - Position
     - | Position of the legend
       |
       | - "none" : Hide legend
       | - "top" : Position legend on top of chart
   * - Font
     - Optional. JSON Font Definition (see FONTFORMAT)


**Return Value**

TRUE, if title definition is valid.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - CHARTTITLE("Drawing", "Sales 2018",, FONTFORMAT("Arial", 14))
     - TRUE
     - Define a title to be placed above chart with font setting.

