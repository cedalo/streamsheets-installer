.. _if:

IF
-----------------------------

Returns depending on the condition the true or the false argument.

**Syntax**

=IF(Condition, TrueValue, FalseValue)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Condition
     - Condition to check.
   * - TrueValue
     - The value to return, if the condition is true.
   * - FalseValue
     - The value to return, if the condition is false.

**Return Value**

The appropriate value depending on the condition.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =IF(3>1, "Warning", "OK")
     - "Warning"
     - As the condition results to TRUE, the first value is returned.

