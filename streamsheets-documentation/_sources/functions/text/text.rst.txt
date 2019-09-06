.. _text:

TEXT
-----------------------------

Formats a number and converts it to text.

**Syntax**

=TEXT(Number,FormatString,[Locale])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Number
     - A number value to format and convert.
   * - FormatString
     - | A format string. Example format strings are:
       |
       | "$#,##.00" currency with a thousands separator and 2 decimals
       | "MM/DD/YY" Date in format month/day/year, like 03/14/18
       | "DDDD" Day of week, like Monday
       | "H:MM AM/PM" time, like 1:29 PM
       | "0.0%" percentage, like 28.5%
       | "# ?/?" fraction, like 4 1/3
       | "0.00E+00" scientific notation, like 1.22E+07
       | "0000000" add leading zeros, like 0001234  

   * - Locale
     - | Optional. An locale code. Currently only “en” and “de” are supported. 
       | Defaults to current machine locale.

  
  
**Return Value**

A formatted string representation of given number value.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - =TEXT(3456, "#,##0.00")
     - 3,456.00 (assuming the machine language is set to english)

