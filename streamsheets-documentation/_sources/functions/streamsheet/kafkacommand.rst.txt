KAFKA.COMMAND
-----------------------------

Allows KSQL commands to be used. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`KAFKA`\ .COMMAND(:term:`Producer`, Command, Target [, Timeout])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use.
   * - Command
     - Any command allowed in KSQL table. 
   * - Target
     - Target to show the result of the command operation. 
       Can be either :ref:`INBOX <inboxf>`\ (), :ref:`OUTBOX`\ () or a cell range.
   * - Timeout
     - Optional. The time to wait for an answer. When left empty a 20 second timeout is being used.

**Return Value**

TRUE, if successful.

**Examples**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =KAFKA.COMMAND("Kafka Producer", "CREATE TABLE ksqltable201 (random BIGINT, type VARCHAR) WITH (kafka_topic='cedalo', value_format='\ :term:`JSON`\ ', key = 'random')", :ref:`INBOX <inboxf>`\ ())
     - TRUE
     - A KSQL table will be created with the name ksqltable201.
 
