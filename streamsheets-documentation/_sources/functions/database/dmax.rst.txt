.. |DSUM| image:: /images/DSUM.PNG
        :scale: 30%
.. role:: red
.. role:: blue


DMAX
-------

Returns the largest number in a column of cell range which matches the specified criteria.

**Syntax**

=DMAX(DataRange, ColumnIndex, CriteriaRange)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - DataRange
     - Cell range, that containes the data to evaluate. The range must include the field labels.
   * - ColumnIndex
     - Column label or index to find the maximum value in.
   * - CriteriaRange
     - Specifies the conditions a row in cell range must fulfill.
       Must define at least one column with a label and a cell below which specifies the condition.

**Return Value**

The maximum value of the matching column.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | =DMAX(:blue:`A5:C9`,2,\ :red:`A2:C3`)
       |
       | |DSUM|

      

     - 24
     - Evaluates the maximum age in "Berlin".

