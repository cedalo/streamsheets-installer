OR
-----------------------------

Evaluates, if at least one of the given values is true.

**Syntax**

=OR(Value1, [Value2], ...)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Value1
     - First value to check
   * - Value2, ...
     - Optional. Other values to check

**Return Value**

TRUE, if at least one of the arguments are true, otherwise FALSE.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =OR(TRUE, 0)
     - TRUE
     - 0 is evaluated as FALSE
   * - =OR(FALSE, "Test")
     - TRUE
     - Non empty strings are evaluated as TRUE
   * - =OR(FALSE, 0)
     - FALSE
     - 0 is evaluated as FALSE

