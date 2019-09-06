HEX2BIN
-----------------------------

Converts a hexadecimal number to binary.

**Syntax**

=HEX2BIN(Number, [Places])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Number
     - The hexadecimal number to convert.
   * - Places
     - Optional. The number of characters to use for returned value. If value has less characters then it is padded with leading zeros.

**Return Value**

The binary number or a #NUM! error if given number is not a valid hexadecimal number. The #VALUE! error is returned if
specified places is nonnumeric or negative.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =HEX2BIN("F")
     - 1111
     - converts hexadecimal F to binary
   * - =HEX2BIN("F", 6)
     - 001111
     - converts hexadecimal F to binary with 6 characters

