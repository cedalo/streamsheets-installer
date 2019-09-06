.. _opcuawrite:
.. |OPCUA.WRITE| image:: /images/OPCUA.WRITE.PNG
        :scale: 50%
.. role:: blue

OPCUA.WRITE
-----------------------------

Sends a write request of a value to an :term:`OPC UA` Server. The Server will respond, if the write was successful or not.
You can use the :ref:`Function Wizard <functionwizard>` for this function. 

**Syntax**

=OPCUA.WRITE(:term:`Producer`, Node, ValueJSON, Target[,ResultKeys, Timeout])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for publishing.
   * - Node
     - Path of the node to write to or node id.
   * - ValueJSON
     - :term:`JSON` with a "value" and a "dataType" field containing the 
       value to write and the data type of the value.
   * - Target
     - Target of the result of the write operation. 
       Can be either :ref:`INBOX <inboxf>`\ (), :ref:`OUTBOX`\ ("MsgID") or a cell range.
   * - ResultKeys
     - Optional. Limit the result to the specified JSON Keys 
   * - Timeout
     - Optional. The time to wait for an answer. When left empty a 20 second timeout is being used.

**Return Value**

The function OPCUA.WRITE always returns a unique random request ID, which can be used with :ref:`requestinfo` 
to check the state of the request.

**Examples**

.. list-table::
   :widths: 60 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - | =OPCUA.WRITE("OPCUA Producer","/Objects/1:Machines/
       | 1:H1mrblX0X/name",JSON(\ :blue:`A2:B3`\ ), :ref:`INBOX <inboxf>`\ ())
       | |OPCUA.WRITE|
     - The request ID
     - This sets the name of the machine with the id "H1mrblX0X" to "New Name". The result of the operation, either confirmation or any error is placed into the :ref:`INBOX`.