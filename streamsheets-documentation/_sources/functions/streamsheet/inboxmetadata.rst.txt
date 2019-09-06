.. _inboxmetadata:

INBOXMETADATA
-----------------------------

Creates a :term:`JSON` key from the given values or range to retrieve metadata from within a message. This function is
normally used in the :ref:`READ` function. INBOXMETADATA retrieves values from the Metadata section of a message.

**Syntax**

=INBOXMETADATA([\ :term:`Streamsheet`, Message, ValuesOrRange])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Streamsheet
     - Optional. Streamsheet, where to look for :ref:`inbox`.
   * - Message
     - Optional. Message to retrieve data from. If left empty, the current message in the inbox is used.
   * - ValuesOrRange
     - Optional. A list of values or a range of cells describing the path to the element path within a JSON structure.

**Return Value**

A string key to retrieve data from a message.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =INBOXMETADATA(,,"arrivalTime")
     - [S1][][arrivalTime]
     - Returns an identifier that can be used in other Streamsheet functions like :ref:`READ`. As Streamsheet and Message
       are left empty, the current Streamsheet and inbox Message is used.
   * - =\ :ref:`READ`\ (INBOXMETADATA(,,"arrivalTime"),C11,"Number")
     - arrivalTime
     - The READ function return the last part of the JSON Path. The value of the Message at the given Path will be
       pushed into cell C11. Here we retrieve the arrival time of a message, which is a default Metadata field added
       to each message.


