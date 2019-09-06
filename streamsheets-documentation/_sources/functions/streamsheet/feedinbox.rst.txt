.. |FEEDINBOX1| image:: /images/FEEDINBOX1.PNG
        :scale: 50%
.. |FEEDINBOX2| image:: /images/FEEDINBOX2.PNG
        :scale: 60%
.. role:: blue

FEEDINBOX
-----------------------------

This function feeds the :ref:`inbox` of a :term:`Streamsheet` within the same :term:`machine <Stream Machine>`.
The Streamsheet Settings must be set to "On Data Arrival", to trigger the calculation.
This way a dependent Streamsheet can be triggered in two different ways. Either using the FEEDINBOX() function, which
leads to an "asynchronous" call, since the message is just added to the inbox and waits for the next machine step.
Or using :ref:`EXECUTE`\ (), which will lead to a direct execution (synchronous).

**Syntax**

=FEEDINBOX(:term:`JSON`, Target)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - JSON
     - A key to a json object, defined by :ref:`JSON`, :ref:`DICTIONARY`, :ref:`READ`, :ref:`SUBTREE`\ , :ref:`INBOX <inboxf>` or :ref:`OUTBOX`.
   * - Target
     - A location sheet name where the JSON will be placed in the inbox.

**Return Value**

TRUE, if successful.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Comment
   * - | =FEEDINBOX(:ref:`DICTIONARY`\ (:blue:`A2:B5`), "S1")
       |
       | |FEEDINBOX1|
       

     - Appending an object to a message. The message content will look as follows

       | |FEEDINBOX2|

