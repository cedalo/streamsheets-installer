LEFT
-----------------------------

Excerpts a given number of characters from the left side of a string.

**Syntax**

=LEFT(Text[, NumChars])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Text
     - Text to excerpt string from.
   * - NumChars
     - Optional. Number, which specifies the amount of characters to return. Default is 1.

**Return Value**

Extracted characters from the beginning of specified Text.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - =LEFT("SampleText", 3)
     - "Sam"
   * - =LEFT("Down")
     - "D"

