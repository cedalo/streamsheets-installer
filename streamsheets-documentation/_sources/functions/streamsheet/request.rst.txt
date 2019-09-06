.. _request:

REQUEST
-----------------------------

Create an https request. The request parameters are defined by creating a message. The parameter definition can be
derived from: https://github.com/request/request#requestoptions-callback . The result, of the request, if any, will be
added to the :ref:`inbox` of the given target :term:`sheet <Streamsheet>`.

**Syntax**

=REQUEST(:term:`Producer`, ParameterJSON, Target[,ResultKeys, Timeout])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for submitting the request.
   * - ParameterJSON
     - Message with :term:`JSON` Structure defining the request parameters.
   * - Target
     - :ref:`INBOX <inboxf>`\ (), :ref:`OUTBOX`\ ("MsgID") or a cell range where the result will be placed.
   * - ResultKeys
     - Optional. Limit the result to the specified JSON Keys 
   * - Timeout
     - Optional. Number of ms after the request times out and an error is returned.


**Return Value**

The function REQUEST() always returns a unique random request ID, which is automatically generated when
the service is called.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =REQUEST("Rest", :ref:`OUTBOX`\ ("Message"), :ref:`INBOX <inboxf>`\ ("S2"))
     - generated Request id
     - The message must exist before calling REQUEST. It is created like a normal message, which
       you would like to publish, using the :ref:`WRITE` formula.


