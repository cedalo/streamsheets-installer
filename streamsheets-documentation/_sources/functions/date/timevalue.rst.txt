TIMEVALUE
-----------------------------

Converts time given as text to a corresponding serial number. String to time converter.

**Syntax**

=TIMEVALUE(DateText)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - TimeText
     - A text which represents a time value.


**Return Value**

A serial number value which corresponds to specified time.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =TIMEVALUE("12:00 AM")
     - 0.5
     - The number to the left of the decimal define the days since 1.1.1900. The number to the right of the decimal
       define the fraction of the day.

