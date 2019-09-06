OCT2BIN
-----------------------------

Converts an octal number to binary.

**Syntax**

=OCT2BIN(Number, [Places])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Number
     - The octal number to convert.
   * - Places
     - Optional. The number of characters to use for returned value. If value has less characters then it is padded with leading zeros.

**Return Value**

The binary number or a #NUM! error if given number is not a valid octal number. The #VALUE! error is returned if
specified places is nonnumeric or negative.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =OCT2BIN(3)
     - 11
     - converts octal 3 to binary
   * - =OCT2BIN(3, 4)
     - 0011
     - converts octal 3 to binary with 4 characters

