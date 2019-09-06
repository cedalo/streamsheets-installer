LOOPINDEX
-----------------------------

Returns the current index within processed loop element or :ref:`#NA <error>` if loop is not available or not defined. used to analyze :ref:`Inbox` loops.

.. Note:: The index is based to 1.


**Syntax**

LOOPINDEX()

**Arguments**

None.

**Return Value**

Number, representing current loop index.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - LOOPINDEX()
     - 2
     - If second loop element is currently processed.
