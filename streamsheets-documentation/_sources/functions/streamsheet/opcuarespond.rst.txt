OPCUA.RESPOND
-----------------------------

Sends a response directly, i.e. without any Consumer, to an :term:`OPC UA` service. The data to be send can be either arbitrary 
:term:`JSON` data or a message from the outbox or :ref:`inbox`. Usually this function is used to respond to a previously received
*request*-message. 

.. Note:: A *request*-message must provide a ``requestId`` property within its *Metadata* object.

**Syntax**

=OPCUA.RESPOND(requestId, MessageOrJSON)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - requestId
     - The *requestId* as provided by a previously received *request*-message
   * - MessageOrJSON
     - Data to send as response.


**Return Value**

Color switch to blue on success. Otherwise to red with an :ref:`error code <error>`.

**Example**

We assume that a *request*-message was received and that it provides a *requestId* which we store to cell B1 by using
the :ref:`read` function as follows: ``READ(INBOXMETADATA(,,"requestId"), B1, "String")``

.. list-table::
   :widths: 50 10 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =OPCUA.RESPOND(B1, :ref:`OUTBOX`\ ("Message"))
     - TRUE
     - Sends the message with id *Message* from the outbox to an OPCUA Service using the *requestId* in B1
   * - =OPCUA.RESPOND(B1, :ref:`DICTIONARY`\ (A3:C5))
     - TRUE
     - Sends the JSON data provided by the Dictionary function to an OPCUA Service using the *requestId* in B1
