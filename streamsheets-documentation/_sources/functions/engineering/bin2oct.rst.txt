BIN2OCT
-----------------------------

Converts a binary number to octal.

**Syntax**

=BIN2OCT(Number, [Places])

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

The octal number or a #NUM! error if given number is not a valid binary number. The #VALUE! error is returned if
specified places is nonnumeric or negative.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =BIN2OCT(1100100)
     - 144
     - converts binary 1100100 to octal
   * - =BIN2OCT(1100100, 4)
     - 0144
     - converts binary 1100100 to octal with 4 characters

