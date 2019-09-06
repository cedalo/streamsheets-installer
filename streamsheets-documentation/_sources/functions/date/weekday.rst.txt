WEEKDAY
-----------------------------

Returns the weekday in form of a number (1 (sunday) - 7 (saturday)) of the date value.

**Syntax**

=WEEKDAY(DateValue)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - DateValue
     - The number to the left of the decimal define the days since 1.1.1900. The number to the right of the decimal
       define the fraction of the day.

**Return Value**

Weekday evaluated from date value. Counting from 1, representing sunday, to 7, representing saturday.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =WEEKDAY(43238)
     - 6
     - The given date value represents the 18th of May, 2018, which was a friday.

