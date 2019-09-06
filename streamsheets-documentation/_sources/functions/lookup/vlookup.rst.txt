.. |VLOOKUP| image:: /images/VLOOKUP.PNG
        :scale: 43%
.. role:: blue

VLOOKUP
-----------------------------

Returns the value of a cell within a specified cell range in a choosen row and characteristic.

**Syntax**

=VLOOKUP(Value, Range, Index [, ExactMatch])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Value
     - Value to look up in the first column of the given range.
   * - Range
     - Range to look in.
   * - Index
     - Relative index to the column of the identified row, to retrieve the return value from.
   * - ExactMatch
     - Optional. A value to specify exact or approximate match with wildcards. Specify TRUE for an approximate match,
       FALSE for an exact one. Default is FALSE.


**Return Value**

Value of cell within the given range and index or offset, if a row with the value was found.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | =VLOOKUP("Test3",\ :blue:`A2:B4`, 2)
       |
       | |VLOOKUP|

       

     - 3
     - The value of cell B3 within the given range is returned.

