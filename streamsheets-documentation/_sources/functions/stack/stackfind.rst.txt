.. |STACKFIND1| image:: /images/STACKFIND1.PNG
        :scale: 30%
.. |STACKFIND2| image:: /images/STACKFIND2.PNG
        :scale: 30%
.. role:: red
.. role:: blue
.. role:: green

STACKFIND
-----------------------------

This function uses the criteria range to select and copy one or multiple rows from the StackRange to the TargetRange.
Optionally it deletes all found records after the extract operation (remaining rows all move up!)

**Syntax**

=STACKFIND(StackRange, CriteriaRange [, TargetRange, Drop])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - StackRange
     - | Range, where the stack range resides. The first row of the StackRange is a title range and remains unchanged.
   * - CriteriaRange
     - | The CriteriaRange has at least 2 rows, the first one is the labels row with labels also found in StackRange (not necessarily all and maybe not in the same order!), the second to nth row contain filter settings.
       | Settings in the same row are combined using AND, multiple rows are OR.
   * - TargetRange
     - | Optional. If specified, TargetRange must have two rows minimum, the first row has labels also found in StackRange (not necessarily all and maybe not in the same order!). The result of the filter is copied to the matching columns in the TargetRange.
    
       | Note: TargetRange can have more than 2 rows. If it has more than 2 rows the additional rows can take the additional hits of the the filter extract.
   * - Drop
     - Optional. If set to TRUE it drops the selected rows from the stack. Drop defaults to FALSE.

**Return Value**

TRUE, if no error occurred, otherwise :ref:`error <error>` value.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - =STACKFIND(:blue:`A5:D9`,\ :red:`A2:D3`,\ :green:`A11:B13`)

       | |STACKFIND1|

     - After calling STACKFIND

       | |STACKFIND2|



