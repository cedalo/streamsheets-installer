EXCEL2JSONTIME
-----------------------------

Converts a serial number to an ISO 8601 date of following format: YYYY-MM-DDThh:mm:ss.sssZ

**Syntax**

=EXCEL2\ :term:`JSON`\ TIME(Number)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Number
     - A serial number which contains a complete date representation.

**Return Value**

An ISO 8601 date string.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =EXCEL2JSONTIME(15453.767864710648)
     - 2012-04-23T18:25:43.511Z
     - The given serial number represents the 23th of April, 2012, 18:24.

