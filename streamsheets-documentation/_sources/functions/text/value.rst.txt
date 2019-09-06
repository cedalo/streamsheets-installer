VALUE
-----------------------------

Converts a textual number representation to a number.

**Syntax**

=VALUE(Text,[Locale])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Text
     - A string representing a number value.
   * - Locale
     - An optional locale code. Currently only "en" and "de" are supported. Defaults to current machine locale.

**Return Value**

A number or #VALUE! if given Text cannot be converted.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - =VALUE("22.45")
     - 22.45
   * - =VALUE("22,45", "de")
     - 22,45
   * - =VALUE("hello", "de")
     - #VALUE!

