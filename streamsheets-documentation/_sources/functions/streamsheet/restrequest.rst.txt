.. _restrequest:
.. |REST.REQUEST| image:: /images/REST.REQUEST.PNG
        :scale: 50%
.. role:: blue

REST.REQUEST
-----------------------------

Create an https request. The result, of the request, if any, will be
added to the :ref:`inbox` of the given target :term:`sheet <Streamsheet>`. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`REST`\ .REQUEST(:term:`Producer`, Path, Method, Target, [ResultKeys], [Body], [Headers], [Timeout])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for submitting the rest.request.
   * - Path
     - Path extending the base URL of the connector.
   * - Method
     - HTTP method of the request.
   * - Target
     - INBOX(), OUTBOX("MsgID") or a cell range where the result will be placed.
   * - ResultKeys
     - Optional. Limit the result to the specified :term:`JSON` Keys 
   * - Body
     - Optional. Data to use as the body of the HTTP request.
   * - Headers
     - Optional. Headers of the HTTP request.
   * - Timeout
     - Optional. Number of ms after the request times out and an error is returned.


**Return Value**

The function REST.REQUEST() always returns a unique random request ID, which is automatically generated when
the service is called.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =REST.REQUEST("Rest", "/path", "GET", :ref:`INBOX <inboxf>`\ ())
     - generated Request id
     - This makes a GET request to "${baseURL}/path" and writes the result to the :ref:`inbox`.
   * - =REST.REQUEST("Rest", "/path", "POST", :ref:`INBOX <inboxf>`\ ("S2"),, "hello",\ :blue:`A2:B3`)

       | |REST.REQUEST|

     - generated Request id
     - This makes a POST request to "${baseURL}/path" with "hello" as body and "Content-Type: text/plain" and "Custom-Header: example" as headers.
       The response is placed in the :ref:`inbox` of S2.


