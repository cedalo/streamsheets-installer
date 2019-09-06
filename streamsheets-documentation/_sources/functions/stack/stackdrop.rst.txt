.. |STACKDROP1| image:: /images/STACKDROP1.PNG
        :scale: 30%
.. |STACKDROP2| image:: /images/STACKDROP2.PNG
        :scale: 30%
.. role:: red
.. role:: blue

STACKDROP
-----------------------------

This function removes one row from the Stack. All rows below move one row up.

**Syntax**

=STACKDROP(StackRange [ Position, TargetRange])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - StackRange
     - | Range, where the source range items are added to. The first row of the StackRange is a title
       | range and remains unchanged.
   * - Position
     - | Optional. Position defines, which row is dropped.
       | If Position = -1 all rows (except the title row) are dropped.
       | If Position = 0 the last used row is dropped.
       | If Position = 1 the first row (after the title row) is dropped. 
       | Any value between 2 and N (last row) can also be specified. Pos defaults to 1.
   * - TargetRange
     - | If TargetRange is specified and if a row has to be dropped, the row is copied to the TargetRange.
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
   * - =STACKDROP(:blue:`A2:D3`, 1)

       | |STACKDROP1|

     - After calling STACKDROP

       | |STACKDROP2|

