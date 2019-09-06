OLAPLOGIN
-----------------------------

Log into OLAP server.

**Syntax**

OLAPLOGIN(User, Password)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - User
     - Username for login
   * - Password
     - Md5 coded password.

**Return Value**

Token to use for most of the other OLAP functions.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPLOGON("admin", "XXXXX")
     - Token
     -

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

