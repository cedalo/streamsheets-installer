KAFKA.QUERY
-----------------------------

Allows KSQL queries to be used. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=\ :term:`KAFKA`\ .QUERY(:term:`Producer`, Query, Target [, Timeout])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Producer to use.
   * - Query
     - Any query allowed on a KSQL table. 
   * - Target
     - Target to show the result of the query operation. 
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
   * - =KAFKA.Query("Kafka Producer", "select * from ksqltable200", :ref:`INBOX <inboxf>`\ ())
     - TRUE
     - The complete data from ksqltable200 will be shown in the :ref:`inbox`.
  
