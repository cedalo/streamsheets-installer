.. _mod:

MOD
-----------------------------

Returns the remainder of given number after it was divided by specified divisor. The result has the same sign as divisor.

**Syntax**

=MOD(Number, Divisor)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Number
     - The number for which the remainder should be calculated.
   * - Divisor
     - The number by which the Number should be divided

**Return Value**

The remainder of applied division. Note: it always has the same sign as divisor.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =MOD(3, 2)
     - 1
     - Remainder of 3/2
   * - =MOD(-3, 2)
     - 1
     - Same sign as divisor
   * - =MOD(3, -2)
     - -1
     - Same sign as divisor

