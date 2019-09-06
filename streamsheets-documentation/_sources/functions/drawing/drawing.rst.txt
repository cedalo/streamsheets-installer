DRAWING
-------

Creates a drawing area on top of the cell range that is defined. You can use several drawing functions
like e.g. RECT, ELLIPSE to attach additional graphical items or charts to a drawing. If the drawing will be
saved using SAVEDRAWING, the coordinate arguments are needed.

**Syntax**

DRAWING(Name, Range [, Line, Fill, XMin, YMin, XMax, YMax, EventFunction])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Drawing
     - Name of drawing. Must be unique and will be used to attach other graphical items to this drawing.
   * - Range
     - Cell range to display the drawing inside
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
   * - XMin
     - Optional. X Minimum of given coordinate system. If given, the coordinates of the drawing items are scaled to
       these coordinate ranges inside the drawing.
   * - YMin
     - Optional. Y Minimum of given coordinate system. If given, the coordinates of the drawing items are scaled to
       these coordinate ranges inside the drawing.
   * - XMax
     - Optional. X Maximum of given coordinate system. If given, the coordinates of the drawing items are scaled to
       these coordinate ranges inside the drawing.
   * - YMax
     - Optional. Y Maximum of given coordinate system. If given, the coordinates of the drawing items are scaled to
       these coordinate ranges inside the drawing.
   * - EventFunction
     - Optional. Allows to define a handler, that is executed. Currently only
       ONCLICK is supported.


**Return Value**

TRUE, if drawing could be created.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - DRAWING("Drawing", A1:D4, "#000000", "#FFFFFF")
     - TRUE
     - Create a drawing on top of the cell range A1:D4.

