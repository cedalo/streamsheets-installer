OLAPECREATE
-----------------------------

Create an element in the dimension.

**Syntax**

OLAPECREATE(Token, Database, Dimension, Element [, Children, Weights])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Token
     - Token received from :doc:`olaplogin`
   * - Database
     - Name of database.
   * - Dimension
     - Name of dimension to create element in.
   * - Element
     - Name of new element.
   * - Children
     - Optional. Names of elements, that need to be consolidated into the above given element. Multiple names must
       be separated by commas.
   * - Element
     - Optional. Weights, which define, with which factor or weight, elements are consolidated into the parent element.
       Multiple weights must be separated by commas.

**Return Value**

TRUE, if successful, otherwise error string from OLAP server.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPECREATE(A1, "DBSample", "Month", "1.Qtr", "Jan,Feb,Mar", "1,1,1")
     - TRUE
     - A1 contains the token from OLAPLOGIN. Here the element "1.Qtr" is created. The elements for "Jan", "Feb"
       and "Mar" are consolidated into the "1.Qtr" element.

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

