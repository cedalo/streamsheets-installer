.. _inboxf:

INBOX
-----------------------------

Creates a key to reference an :ref:`inbox` item. This key is used in functions like :ref:`DELETE` to identify messages
inside an inbox.

**Syntax**

=INBOX(:term:`Streamsheet`, Message)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Streamsheet
     - Optional. Define the Streamsheet to retrieve message data from. If empty the affiliated Streamsheet is used.
   * - Message
     - Optional. Message name to identify. A wildcard can be used to reference all messages. If left empty, the current message in the inbox is used.

**Return Value**

Key for the inbox item.

**Example**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =INBOX("S1", "*")
     - [S1][*]
     - Returns an identifier that can be used in other Streamsheet functions like :ref:`DELETE`.


