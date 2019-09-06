SELECT
-----------------------------

Display a pick list below the cell to select a value from the pick list as the cell value. This function can only be used
as an outer function, otherwise no pick list will be displayed. The function is recreated by replacing the Actual
Value, when an item in the list is selected. The actual value will also be the initial value.

**Syntax**

=SELECT(ListRange, ActualValue)

**Arguments**


.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - ListRange
     - Range with the values to display in the pick list..
   * - ActualValue
     - Value to select in the pick list.

**Return Value**

Current selected value.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =SELECT(B1:D1,"Germany")
     - The selected value.
     - If you click on the cell with the SELECT function, a list would display the values in the cell range B1:D1.



