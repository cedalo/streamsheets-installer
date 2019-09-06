.. |COUNT| image:: /images/COUNT.PNG
        :scale: 50%
.. role:: blue

COUNT
-----------------------------

Counts the amount of number values in specified cells.

**Syntax**

=COUNT(Value1, [Value2, ..., ValueN])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Value1
     - Cell range or reference range in whichnumber values should be counted.
   * - Value2...ValueN
     - Optional. Other cell references or ranges to check.

**Return Value**

Amount of number values.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | =COUNT(:blue:`A2:B4`)
       |

       | |COUNT|
     - 3
     - Empty cells are not counted.

