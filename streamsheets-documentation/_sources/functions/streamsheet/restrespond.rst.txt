.. _restrespond:
.. |REST.RESPOND| image:: /images/REST.RESPOND.PNG
        :scale: 60%
.. role:: blue

REST.RESPOND
-----------------------------

Sends either arbitrary :term:`JSON` data or a message from the outbox to specified :term:`Producer`. Usually this function is used to
respond to a previously received *request*-message. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`REST`\ .RESPOND(:term:`Consumer`, RequestId, Body, [StatusCode, Headers])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Consumer
     - Name of the Consumer to use for sending respond.
   * - RequestId
     - The *requestId* as provided by a previously received *request*-message
   * - Body
     - Data to send as response.
   * - StatusCode
     - Optional. Defaults to 200. HTTP status code of the response.
   * - Headers
     - Optional. Headers of the response.


**Return Value**

TRUE on success or :ref:`error code <error>` otherwise.

**Example**

We assume that a *request*-message was received and that it provides a *requestId* which we store to cell B1 by using
the :ref:`read` function as follows: ``READ(INBOXMETADATA(,,"requestId"), B1, "String")``

.. list-table::
   :widths: 50 10 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =REST.RESPOND("Rest", B1, :ref:`DICTIONARY`\ (A3:C5))
     - TRUE
     - Sends the JSON data provided by the :ref:`dictionary` function to the Consumer named *Rest* using the *requestId* in B1
   * - =REST.RESPOND("Rest", B1, "Not Found", 404,\ :blue:`A2:B2`)

       | |REST.RESPOND|

     - TRUE
     - Responds to the request corresponding to *requestId* with the body "Not Found", status code "404" and the header "Content-Type: text/plain".

