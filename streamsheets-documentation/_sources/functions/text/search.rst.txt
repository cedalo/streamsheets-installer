SEARCH
-----------------------------

Return the index of the search text within the text. The search starts at index.

**Syntax**

=SEARCH(TextToSearch, Text [, StartAt])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - TextToSearch
     - Text to search for.
   * - Text
     - Text to search inside.
   * - StartAt
     - Optional. Character index to start search at. Default is 1.

**Return Value**

Position, where the text is found, otherwise #VALUE.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - =SEARCH("me", "Search me now")
     - 8

