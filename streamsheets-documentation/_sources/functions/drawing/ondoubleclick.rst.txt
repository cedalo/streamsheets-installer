ONDOUBLECLICK
-------------

Assign a function, that will be executed, if the user double clicks on a drawing or drawing item. This function can only
be applied as the last parameter of the various drawing functions. The event handling is only active, if the
process is running.

**Syntax**

ONDOUBLECLICK(Function)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Function
     - Function to execute.


**Return Value**

TRUE.

**Example**

.. list-table::
   :widths: 45 55
   :header-rows: 1

   * - Function
     - Comment
   * - RECT("Drawing", "Rect", 1000, 1000, 3000, 3000, "#000000", "#FFFFFF", ONDOUBLECLICK(DELETECELLS(A1:C1))
     - If the user clicks on the rectangle, created by RECT, the cell range A1:C1 will be deleted.

