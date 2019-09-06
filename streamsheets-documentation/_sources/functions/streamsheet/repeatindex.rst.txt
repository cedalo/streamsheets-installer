.. _repeatindex:

REPEATINDEX
-----------------------------

Returns the number of times a Streamsheet was triggered by :ref:`execute`.

To get the number of steps a Streamsheet was processed refer to :ref:`getstep` and to get the number of steps for a
Streamsheet in repeate-calculation mode refer to :ref:`getcycle`. Only works in the repeating Streamsheet.


**Syntax**

=REPEATINDEX()

**Arguments**

None.

**Return Value**

Current execute repetition.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =REPEATINDEX()
     - 1
     -
