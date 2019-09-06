.. _delete:

DELETE
-----------------------------

Delete a message or message content based on the key. The key is provided by using one of the following
functions. :ref:`INBOX <inboxf>`\ , :ref:`OUTBOX`, :ref:`INBOXDATA`, :ref:`INBOXMETADATA`, :ref:`OUTBOXDATA`.

**Syntax**

=DELETE(Key)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Key
     - Key of the to be deleted message or message content.

**Return Value**

TRUE, if successful.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =DELETE(:ref:`INBOX <inboxf>`\ ("S1", "Message"))
     - TRUE
     - Message has to be an existing message in the Inbox in a StreamSheet named S1.

