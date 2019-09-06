.. _opcuaread:

OPCUA.READ
-----------------------------

Reads a value from an :term:`OPC UA` Server.You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=OPCUA.READ(:term:`Producer`, Node, Target[,ResultKeys, Timeout])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for publishing.
   * - Node
     - Path of the node to read or node id.
   * - Target
     - Target of the result of the write operation. 
       Can be either :ref:`INBOX <inboxf>`\ (), :ref:`OUTBOX`\ ("MsgID") or a cell range.
   * - ResultKeys
     - Optional. Limit the result to the specified :term:`JSON` Keys.
   * - Timeout
     - Optional. The time to wait for an answer. When left empty a 20 second timeout is being used.

**Return Value**

The function OPCUA.READ always returns a unique random request ID, which can be used with :ref:`requestinfo` 
to check the state of the request.

**Examples**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =OPCUA.READ("OPCUA Producer", "/Objects/1:Machines/1:H1mrblX0X/name",\ :ref:`INBOX <inboxf>`\ ())
     - The request ID
     - This reads the name of the machine with the id "H1mrblX0X" and places the result into the :ref:`inbox`.
