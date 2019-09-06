GETCYCLETIME
-----------------------------

Returns the current cycle time. The Cycle Time
is an overall setting in a :term:`machine <Stream Machine>` that applies to each Streamsheet in the machine.
It generally defines how long the system pauses between calculation cycles (in ms).

**Syntax**

=GETCYCLETIME()

**Arguments**

None.

**Return Value**

Current cycle time in milliseconds.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =GETCYCLETIME()
     - 1000
     - The machine is running every second.

