DEC2OCT
-----------------------------

Converts a decimal number to octal.

**Syntax**

=DEC2OCT(Number, [Places])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Number
     - The decimal number to convert.
   * - Places
     - Optional. The number of characters to use for returned value. If value has less characters then it is padded with leading zeros.

**Return Value**

The octal number or a #NUM! error if given number is not a valid decimal number. The #VALUE! error is returned if
specified places is nonnumeric or negative.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =DEC2OCT(58)
     - 72
     - converts decimal 58 to octal
   * - =DEC2OCT(58, 4)
     - 0072
     - converts decimal 58 to octal with 4 characters

