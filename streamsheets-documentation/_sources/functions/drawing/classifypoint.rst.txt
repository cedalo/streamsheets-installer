.. |CLASSIFYPOINT| image:: /images/CLASSIFYPOINT.PNG 
        :scale: 50%   

.. role:: blue

CLASSIFYPOINT
-------------

This function determines whether a given X, Y coordinate is inside or outside or on the border of a given polygon
defined by the points given.

**Syntax**

=CLASSIFYPOINT(X, Y, PolygonPointsRange)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - X
     - X coordinate of the point to test
   * - Y
     - Y coordinate of the point to test
   * - PolygonPointsRange
     - A vertical range with 2 columns and N rows where the first column contains the X and the second column
       contains the Y coordinates of a (closed) Polygon

**Return Value**

| -1: Point is outside of polygon
| 0: Point is on polygon border
| 1: Point is inside polygon
|

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =CLASSIFYPOINT(500, 500, :blue:`A2:B5`\ )
     - 1
     - | Where A2:B5 looks as follows:
       |
       | |CLASSIFYPOINT|


