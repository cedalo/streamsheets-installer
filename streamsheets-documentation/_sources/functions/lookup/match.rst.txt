
.. |MATCH| image:: /images/MATCH.PNG
        :scale: 43%
.. role:: red
.. role:: blue

MATCH
-----------------------------

Returns a relative position number of a matching cell inside a specified cell range.

**Syntax**

=MATCH(Value, SearchRange [, Type])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - value
     - Value to search for.
   * - SearchRange
     - A cell range to search in.
   * - Type
     - | Optional. Search type with the following options:
       |
       | 1: Find the largest value in cell range which is less than or equal to specified value (Default). Table must be in ascending order.
       | 0: Find the first value which match exactly specified value. Here the wildcards ? and * are supported.
       | -1: Find the smallest value in cell range which is greater or equal to specified value. Table must be in descending order.

**Return Value**

Returns relative position of in cell-range for given value or :ref:`#NA <error>` if no match is found.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | 1. =MATCH(4,\ :red:`B2:B4`, 0)
       | 2. =MATCH(2,\ :blue:`A2:B2`, 0)
       |
       | |MATCH|

   
     - | 1. 2
       | 2. 1
     - The index of the cell with the searched value is returned.

