.. |STACKROTATE1| image:: /images/STACKROTATE1.PNG
        :scale: 30%
.. |STACKROTATE2| image:: /images/STACKROTATE2.PNG
        :scale: 30%
.. role:: blue

STACKROTATE
-----------------------------

This function rotates the complete stack by Pos positions up or down.

**Syntax**

=STACKROTATE(StackRange [, Position, TargetRange])

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
     - | Optional. If Position equals 0 then it is not rotated.
       | If Position > 0 all rows are moved up and the first row becomes the last one (behind the last filled row in the range).
       | If Position < 0 all rows move down and the last filled cell becomes the first row. Position defaults to 1.
   * - TargetRange
     - | If TargetRange is specified, the first row (after rotation) is copied to the TargetRange. TargetRange must have two rows, the first row has labels also found in Stackrange (not necessarily all and maybe not in the same order!). The rotated values are copied to the matching columns in the TargetRange.
       | **Important:** Before copying to the TargetRange all existing values in TargetRange are deleted (not the labels row!)

**Return Value**

TRUE, if no error occurred, otherwise :ref:`error <error>` value.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - =STACKROTATE(:blue:`A2:D6`, 1)

       | |STACKROTATE1|

     - After calling STACKROTATE

       | |STACKROTATE2|

