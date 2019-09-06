.. _clean:

CLEAN
-----------------------------

Removes all nonprintable characters from given string.
Note: by default CLEAN removes only the characters corresponding to ASCII code 0 to 31. To remove characters with ASCII
code 127, 129, 141, 143, 144 and 157 set the optional extended flag to true.

**Syntax**

=CLEAN(Text, [Extended])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Text
     - A string for which to remove the nonprintable characters.
   * - Extended
     - Optional. A boolean flag which indicates that the characters which correspond to the ASCII codes 127, 129, 141, 143, 144 and 157 should be removed too. Default is false.

**Return Value**

The text without nonprintable characters.

**Example**

.. list-table::
   :widths: 70 30
   :header-rows: 1

   * - Function
     - Result
   * - =CLEAN(:ref:`CONCAT`\ (:ref:`CHAR`\ (9), "Hello World", CHAR(10), CHAR(33)))
     - Hello World!
