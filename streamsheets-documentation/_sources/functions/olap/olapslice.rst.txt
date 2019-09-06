OLAPSLICE
-----------------------------

Create a temporary olap two dimensional slice by provding the elements for the values to be retrieved.
For two dimensions a range can be provided to define a table. A slice resides in memory as long as it is not
deleted using OLAPSLICEDELETE. Reusing a slice name will overwrite an existing slice.

**Syntax**

OLAPSLICE(Token, SliceName, Database, Cube, Element1, ..., ElementN)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Token
     - Token received from :doc:`olaplogin`
   * - SliceName
     - Name of slice. The name will be used to get data from the slice using OLAPDATAS.
   * - Database
     - Database where cube resides.
   * - Cube
     - Name of cube to use. Must be unique.
   * - Element1...ElementN
     - Elements to retrieve data for. The elements must be given in the order, they are defined in the cube dimensions.
       Two of the element arguments can contain a range of elements. This will lead to a two dimensional table
       in the slice.

**Return Value**

TRUE, if succesful, otherwise error string from olap server.

**Example**

.. list-table::
   :widths: 45 25 30
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - OLAPSLICE(A1, "SampleSlice", ""DBSample", "Sales", "2018", A2:A4, "Product A")
     - TRUE
     - A1 contains the token from OLAPLOGIN. A2:A4 contain valid element within the dimension at that index.

.. warning:: All OLAP Functions interrupt the calculation to wait for the OLAP server result. This is necessary, as
    following calls to OLAP Functions might depend on the success of the previous function. Calculation continues
    with the next cycle.

