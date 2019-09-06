.. _requestinfo:

REQUESTINFO
-----------------------------

This function returns the current status of a previously executed REQUEST function.

**Syntax**

=REQUESTINFO(RequestId)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - RequestId
     - Unique id returned from REQUEST function, that you want to be informed about.


**Return Value**

TRUE, if request has been executed successfully and the result is in the target location. FALSE, if the request has
not delivered a response yet. Error value (e.g. #ERR!), if the request ended with an error (e.g. timeout,
invalid URL, etc.) → an error object has been transferred to the target.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =REQUESTINFO(A1)
     - TRUE
     - A1 contains a successful REQUEST call.


