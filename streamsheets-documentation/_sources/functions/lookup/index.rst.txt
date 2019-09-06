
.. |INDEX| image:: /images/INDEX.PNG
        :scale: 43%
.. role:: blue

INDEX
-----------------------------

Returns a cell within the range using the row and column offset.

**Syntax**

=INDEX(Range,Row,Column)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Range
     - Range of cells to search in.
   * - Row
     - Row index or offset starting with 1.
   * - Column
     - Column index offset starting with 1.

**Return Value**

Cell value of the cell within the range with an offset of row and column.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | =INDEX(:blue:`A2:B4`, 2, 1)
       |
       | |INDEX|


     - 8
     - The value of cell A2 is returned.

