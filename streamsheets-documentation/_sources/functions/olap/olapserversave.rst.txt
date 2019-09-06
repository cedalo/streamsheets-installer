OLAPSERVERSAVE
-----------------------------

Persist Server. The OLAP server keeps all data in memory. This command forces the server to persist all data.

**Syntax**

OLAPSERVERSAVE(Token)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Token
     - Token received from :doc:`olaplogin`

**Return Value**

TRUE, if succesful, otherwise error string from olap server.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPSERVERSAVE(A1)
     - TRUE
     - A1 contains the token from OLAPLOGIN.

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

