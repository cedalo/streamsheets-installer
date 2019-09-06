.. _kafkapublish:
KAFKA.PUBLISH
-----------------------------

Publishes either a message or an arbitrary value using a specified :term:`Producer` and topic. To reference a message from the
outbox use the :ref:`outbox` function and to reference a message from the inbox use :ref:`INBOX <inboxf>`. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`KAFKA`\ .PUBLISH(Producer, Message, Topic)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for publishing.
   * - Message
     - Either an existing message from the outbox a :term:`JSON` or a primitive value to publish.
   * - Topic
     - Topic the message is published to.

**Return Value**

TRUE, if successful.

**Examples**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =KAFKA.PUBLISH("Kafka Producer", "Message", "test")
     - TRUE
     - This publishes the string value "Message" using the "Kafka Producer" to the topic "test"
