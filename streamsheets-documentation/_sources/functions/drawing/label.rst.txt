
LABEL
-------

Creates a label or text within the given drawing

**Syntax**

LABEL(DrawingName, Name, X, Y, Width, Height, Text, [, FontFormat, EventFunction])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Drawing
     - Name of drawing to display the label in.
   * - Name
     - Name of label. Must be unique.
   * - X
     - X Coordinate in 1/100th mm
   * - Y
     - Y Coordinate in 1/100th mm. Coordinates start at bottom of drawing.
   * - Width
     - Width in 1/100th mm
   * - Height
     - Height in 1/100th mm
   * - Text
     - Text to display.
   * - FontFormat
     - Optional. JSON String (see FONTFORMAT).
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
   * - LABEL("Drawing", "Label", 1000, 1000, 3000, 3000, "SampleText")
     - TRUE
     - Draw a label within the previously created drawing named "Drawing".

