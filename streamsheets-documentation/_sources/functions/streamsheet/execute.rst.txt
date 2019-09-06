.. _execute:

EXECUTE
-----------------------------

Triggers the recalculation of another :term:`Streamsheet`.
The executed Sheet will only be executed if Streamsheet settings of executed Sheet allow execution. Calculate Streamsheet "On Execute". 

**Syntax**

=EXECUTE(Streamsheet [, Repeat, :term:`JSON`, Selector])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Streamsheet
     - Name of Streamsheet to trigger. (Put the name of the Streamsheet in quotes e.g. "S1")
   * - Repeat
     - Optional. Number of repetitions. If larger than 1 (Default), the execute function will be executed multiple times
   * - JSON
     - Optional. JSON to use as message data to process, when executing.
   * - Selector
     - Optional. Selector to use when selecting a message from the inbox for processing.

**Return Value**

.. list-table::
   :widths: 80 
   :header-rows: 1

   * - Return FALSE
   * -  | **IF executed Sheet:**
        | **1.** Streamsheetsettings "Repeat calculation endlessly until =\ :ref:`RETURN`\ () is executed" is not checked and 
        | **2.** There is no new message in the :ref:`INBOX`.
   * -  | **IF executed Sheet:**
        | **1.** Streamsheetsettings "Repeat calculation endlessly until =\ :ref:`RETURN`\ () is executed" is checked and 
        | **2.** RETURN(FALSE) was calculated in executed Sheet.
.. list-table::
   :widths: 80
   :header-rows: 1

   * - Return TRUE
   * -  | **IF executed Sheet:**
        | **1.** Streamsheetsettings "Repeat calculation endlessly until =\ :ref:`RETURN`\ () is executed" is not checked.
        | **2.** There is a new message in the INBOX. 
   * -  | **IF executed Sheet:**
        | **1.** Streamsheetsettings "Repeat calculation endlessly until =\ :ref:`RETURN`\ () is executed" is checked and
        | **2.** RETURN(TRUE) was calculated in executed Sheet.
.. list-table::
   :widths: 80
   :header-rows: 1

   * - Return #NA. The Stream Sheet is paused until a value is returned.
   * - | **IF executed Sheet:**
       | **1.** Streamsheetsettings "Repeat calculation endlessly until =\ :ref:`RETURN`\ () is executed" is checked.
       | **2.** no return value is generated
       |
       | To get a return the executed sheet needs to calculate a\ =\ :ref:`RETURN`\ () function.

**NOTE:**  if the execution of the triggered StreamSheet is stopped via the :ref:`return` function, its result is returned instead.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =EXECUTE("S2")
     - TRUE
     - Triggers the calculation of a second Streamsheet, called "S2".
