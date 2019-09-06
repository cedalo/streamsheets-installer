COUNTER
-----------------------------

Increments or decrements a cell value by specified step amount. The initial value is defined by "Start" parameter.
An optional "End" parameter can be set to define a lower or upper bound. Furthermore an optional "Reset" flag can be used
to restart counter if its value evaluates to TRUE.

**Syntax**

=COUNTER(Start, Step [, End, Reset])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Start
     - A number to initialize the counter with.
   * - Step
     - Number which specifies the increment (positive number) or decrement (negative number) steps.
   * - End
     - Optional. Number or Condition which defines upper or lower bound.
   * - Reset
     - Optional. If it evaluates to TRUE the counter is reset to Start. Defaults to FALSE. Since immediately resets if TRUE, mostly used as a condition or reference on a condition. 

**Return Value**

Number

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =COUNTER(2, 2)
     - 2
     - Will initialize counter with 2 and increment by 2 on each step, i.e.: 2, 4, 6,...
   * - =COUNTER(10, -2)
     - 10
     - Will initialize counter with 10 and decrement by -2 on each step, i.e.: 10, 8, 6,...
   * - =COUNTER(2, 1, ,\ :ref:`GETSTEP`\ () % 2 <> 0)
     - 2
     - Will initialize counter with 2 and resets it on each even step count, i.e.: 2, 3, 2, 3,...
   * - =COUNTER(2, 2, 10)
     - 2
     - Will count from 2 to 10 in steps of 2, i.e. 2, 4, 6, 8, 10
   * - =COUNTER(10, -2, 0)
     - 10
     - Will count from 10 down to 0 in steps of -2, i.e. 10, 8, ..., 0
   * - =COUNTER(10, -2, 26)
     - 10
     - Will not decrement since lower bound is greater then start value.
