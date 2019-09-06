.. |STACKSORT1| image:: /images/STACKSORT1.PNG
        :scale: 30%
.. |STACKSORT2| image:: /images/STACKSORT2.PNG
        :scale: 30%
.. role:: red
.. role:: blue

STACKSORT
-----------------------------

This function uses the criteria range to select and copy one or multiple rows from the StackRange to the TargetRange.
Optionally it deletes all found records after the extract operation (remaining rows all move up!)

**Syntax**

=STACKSORT(StackRange, SortSettingsRange)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - StackRange
     - | Range, where the stack range resides. The first row of the StackRange is a title range and remains unchanged.
   * - SortSettingsRange
     - | The SortSettingsRange has two rows. In the first row you have all or part of the labels of the StackRange (may be in another order). The cells in the second row either contain TRUE or FALSE. TRUE is ascending, FALSE is descending.
       | If you have more than two rows in the SortSettingsRange then it is first sorted after the field name in the second row, then after the field name in the third row, etc.

**Return Value**

TRUE, if no error occurred, otherwise :ref:`error <error>` value.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - =STACKSORT(:blue:`A5:D9`,\ :red:`A2:D3`)

       | |STACKSORT1|

     - After calling STACKSORT

       | |STACKSORT2|



