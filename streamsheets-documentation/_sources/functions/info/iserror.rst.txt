ISERROR
-----------------------------

Checks, if given value represents an :ref:`error <error>`.

**Syntax**

=ISERROR(Value)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Value
     - Value to check.

**Return Value**

TRUE if given value represents an error, otherwise FALSE.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =ISERROR(3/0)
     - TRUE
     - DIV/0 error is passed by the Value argument.

