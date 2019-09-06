BIN2HEX
-----------------------------

Converts a binary number to hexadecimal.

**Syntax**

=BIN2HEX(Number, [Places])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Number
     - The binary number to convert.
   * - Places
     - Optional. The number of characters to use for returned value. If value has less characters then it is padded with leading zeros.

**Return Value**

The hexadecimal number or a #NUM! error if given number is not a valid binary number. The #VALUE! error is returned if
specified places is nonnumeric or negative.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =BIN2HEX(1110)
     - E
     - converts binary 1110 to hexadecimal
   * - =BIN2HEX(1110, 4)
     - 000E
     - converts binary 1110 to hexadecimal with 4 characters

