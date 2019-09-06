SETPHASE
-----------------------------

Puts the Text into the target cell, if the condition is true.

**Syntax**

=SETPHASE(Condition, Text, TargetCell [, OverwriteFormula])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Condition
     - Condition to check for action.
   * - Text
     - Text to copy to the target cell, if condition equals TRUE.
   * - TargetCell
     - Cell to put text into.
   * - OverwriteFormula
     - Optional. Set to TRUE will overwrite cell formula. Defaults to FALSE.

**Return Value**

Depends on condition. TRUE or FALSE

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =SETPHASE(2>1, "Test", B1)
     - TRUE
     - Will put text "Test" in cell B1, as 2 is always larger than 1.
   * - =SETPHASE(2>1, "Test", B1, TRUE)
     - TRUE
     - Same as before, but overwrites possible cell formula so that "Test" is returned on subsequent machine steps