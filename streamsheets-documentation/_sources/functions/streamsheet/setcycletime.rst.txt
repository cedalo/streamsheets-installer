SETCYCLETIME
-----------------------------

Set the current :ref:`Cycle Time`. The Cycle Time
is an overall setting in a :term:`machine <Stream Machine>` that applies to each :term:`Streamsheet` in the machine.
It generally defines how long the system pauses between calculation cycles (in ms).

**Syntax**

=SETCYCLETIME(Milliseconds)

**Arguments**

None.

**Return Value**

Depends on condition. TRUE or FALSE

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =SETCYCLETIME(1000)
     - TRUE
     - The cycle time is set to one second.

