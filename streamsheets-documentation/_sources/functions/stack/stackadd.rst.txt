.. |STACKADD1| image:: /images/STACKADD1.PNG
        :scale: 28%
.. |STACKADD2| image:: /images/STACKADD2.PNG
        :scale: 30%
.. role:: red
.. role:: blue

STACKADD
-----------------------------

This function adds the cells in a SourceRange to a StackRange.The Stack range is a range of cells on the :term:`sheet <Streamsheet>`,
which will be filled by using STACKADD. If the range is filled with cells, the existing cells will be moved defined
by the direction parameter and the new cells will be added to the list.

**Syntax**

=STACKADD(StackRange, SourceRange [, Direction, TargetRange]) 

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - StackRange
     - | Range, where the source range items are added to. The first row of the StackRange is a title range and remains unchanged.
   * - SourceRange
     - | Range, where the source data is taken from and copied into the StackRange.The first row of the StackRange is a title range and remains unchanged.
   * - Direction
     - | Optional. If you set Direction to TRUE the new data is added behind the last empty row on the SourceRange.
       | If the StackRange is full, the first row (after the columns row) is dropped from the stack and all rows move up to make room for the new data in the last row. Analog, if Direction is set to FALSE rows are added at top of the stack and dropped from the bottom. By default Direction is TRUE.
   * - TargetRange
     - | Optional. If TargetRange is specified and if a row has to be dropped, the row is copied to the TargetRange.
       | TargetRange must have two rows, the first row has labels also found in Stackrange (not necessarily all and maybe not in the same order!). The dropped values are copied to the matching columns in the TargetRange.
       | If no row is dropped, the values in the second row of TargetRange are blanked out.
       | **Important:** Before copying to the TargetRange all existing values in TargetRange are deleted (not the labels row!)

**Return Value**

TRUE, if no error occurred, otherwise :ref:`error <error>` value.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - =STACKADD(:blue:`A5:D9`,2,\ :red:`A2:D3`)

       | |STACKADD1|

     - After calling STACKADD the first time

       | |STACKADD2|

