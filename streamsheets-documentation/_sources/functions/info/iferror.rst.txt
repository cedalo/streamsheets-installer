IFERROR
-----------------------------

Returns specified ErrorValue, if given value represents an :ref:`error <error>`. If not, this function simply returns given value.

**Syntax**

=IFERROR(Value, ErrorValue)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Value
     - Value to check against each defined error values.
   * - ErrorValue
     - The value to return, if first value returns an error.

**Return Value**

ErrorValue, if error occurs, otherwise the Value.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =IFERROR(2 / 0, "Warning")
     - "Warning"
     - As the Value leads to a DIV/0 error, the text "Warning" is displayed.

