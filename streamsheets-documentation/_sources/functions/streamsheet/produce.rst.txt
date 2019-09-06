.. |PRODUCE| image:: /images/PRODUCE.PNG
        :scale: 65%
.. role:: blue

PRODUCE
-----------------------------

Procudes a message using the specified Producer and a :term:`JSON` configuration. Use json to creat a configuration object or reference an existing configuration from the
outbox using the :ref:`outbox` function or from the :ref:`inbox` using :ref:`INBOX <inboxf>`.

**Syntax**

=PRODUCE(:term:`Producer`, JSONConfiguration)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for producing.
   * - JSONConfiguration
     - A JSON that is either an existing message from the outbox or inbox, or created with :ref:`JSON` or :ref:`DICTIONARY`.
       A "message" field is required, all other fields depend on the used Prdocuer.

**Return Value**

TRUE, if successful.

**Examples**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =PRODUCE("\ :term:`MQTT Producer`\ ", A1)
       
       Content of A1::

         { "message": "A Message", "topic": "cedalo/test"}

     - TRUE
     - This publishes the string value "A Message" using the "MQTT Producer" under the topic "cedalo/test".
   * - =PRODUCE("File Producer", :ref:`JSON`\ (:blue:`A2:B3`))

       | |PRODUCE|

     - TRUE
     - This appends "Message" to the file "file.txt" using the "File Producer"
