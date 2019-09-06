.. _mqttpublish:

MQTT.PUBLISH
-----------------------------

Publishes either a message or an arbitrary value using a specified :term:`Producer` and topic. To reference a message from the
outbox use the :ref:`outbox` function and to reference a message from the :ref:`inbox` use :ref:`INBOX <inboxf>`. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`MQTT`\ .PUBLISH(Producer, MessageOrValue, Topic [, QoS, User Properties])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use for publishing.
   * - MessageOrValue
     - Either an existing message from the outbox or a value to publish.
   * - Topic
     - Topic that is appended to the base topic defined in the :term:`Connector`.
   * - QoS
     - Optional. Quality of Service. This option defines the reliability of the publish operation. It depends on
       the used protocol.
   * - User Properties
     - Optional. Define Metadata.

**Return Value**

TRUE, if successful.

**Examples**

All examples assume a base topic with the value "/cedalo" in the connector.

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =MQTT.PUBLISH("MQTT Producer", "Message", "test")
     - TRUE
     - This publishes the string value "Message" using the "MQTT Producer" under the topic "cedalo/test"
   * - =MQTT.PUBLISH("MQTT Producer", :ref:`OUTBOX`\ ("Message"), "test")
     - TRUE
     - This publishes the outbox message with id "Message" using the "MQTT Producer" and topic "cedalo/test"
   * - =MQTT.PUBLISH("MQTT Producer", :ref:`JSON`\ (A1:C2), "test")
     - TRUE
     - This publishes a :term:`JSON` object created by the json function using the "MQTT Producer" and topic "cedalo/test"
