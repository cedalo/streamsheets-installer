.. _inboxdata:

INBOXDATA
-----------------------------

Creates a :term:`JSON` key from the given values or range to retrieve data from within a message. This function is
normally used in the :ref:`READ` function. INBOXDATA retrieves values from the Data section of a message.

**Syntax**

=INBOXDATA(:term:`Streamsheet`, Message, ValuesOrRange)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Streamsheet
     - Define the Streamsheet to retrieve :ref:`inbox` data from.
   * - Message
     - Message to retrieve data from. If left empty, the current message in the inbox is used.
   * - ValuesOrRange
     - A list of values or a range of cells describing the path to the element path within a JSON structure.

**Return Value**

A string key to provide a path within a message.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =INBOXDATA(,, "Customer", "Name")
     - [P1][][Customer][Name]
     - Returns an identifier that can be used in other Streamsheet functions like :ref:`READ`. As Streamsheet and Message
       are left empty, the current Streamsheet and inbox Message is used.
   * - =INBOXDATA(,, B1:B2)
     - [P1][][Customer][Name]
     - Here the values within the cell range B1:B2 ("Customer", "Name") will be used to concatenate the JSON path.
   * - =\ :ref:`READ`\ (INBOXDATA(,, "Customer", "Name"), C7, "String")
     - Name
     - The READ function return the last part of the JSON Path. The value of the Message at the given Path will be
       pushed into cell C7.


