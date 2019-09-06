FILLPATTERN
------------

Create a fill format description for a pattern fill using a given image.

**Syntax**

FILLPATTERN(Image[, Style])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Image
     - Image URL or URI
   * - Style
     - | Optional. Defines, how the images is used to fill the object:
       |
       | 0: Stretch image to fill object

**Return Value**

JSON String, which defines the fill format and can be used in drawing functions.

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - FILLPATTERN("http://www.somesite.com/someimage.png")
     -
     - Draw an image pattern

TODO result JSON
