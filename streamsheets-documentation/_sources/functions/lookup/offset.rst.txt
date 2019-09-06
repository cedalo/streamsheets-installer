.. |OFFSET| image:: /images/OFFSET.PNG
        :scale: 60%
.. role:: blue

OFFSET
-----------------------------

Returns a cell range that is defined by specified number of rows and columns from an initial range.

**Syntax**

=OFFSET(Range, RowOffset, ColumnOffset [, Height, Width])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Range
     - A cell or cell range which defines the base of returned cell range.
   * - RowOffset
     - Row offset from top left position of Range, might be positive or negative.
   * - ColumnOffset
     - Column offset from top left position of Range, might be positive or negative.
   * - Height
     - Optional. Number of rows for result range. If not given the height of specified base cell range is used.
   * - Width
     - Optional. Number of columns for result range. If not given the width of specified base cell range is used.

**Return Value**

| If height and width define a cell: Value of cell
| If height and width define a cell range: #VALUE  


**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | **1.** =OFFSET(:blue:`A2`, 2, 1, 1, 1)
       | **2.** =SUM(OFFSET(:blue:`A2`, 1, 1, 2, 1))
       | |OFFSET|

     - | **1.** 6
       | **2.** 10
     - | **1.** B4 has an offset of 2 rows and 1 column from A1. The cell value is 6. 
       | **2.** B3 has an offset of 1 row and 1 column from A1. The SUM of the range defined through height and width is 10.
