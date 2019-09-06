.. _getexecutestep:

GETEXECUTESTEP 
---------------

Returns the number of repetitions of the :ref:`execute` function. 

EXECUTE triggers the recalculation of another Streamsheet. With the repeat Parameter you can set the number of repetitions. 
If larger than 1 (Default), the execute function will be executed multiple times.

**Syntax**

=GETEXECUTESTEP()

**Arguments**

None.

**Return Value**

Current repetition step of the :ref:`execute` function.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =GETEXECUTESTEP()
     - 3
     - =EXECUTE("S2",3)