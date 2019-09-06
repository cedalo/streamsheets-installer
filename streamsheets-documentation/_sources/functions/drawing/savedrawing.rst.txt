SAVEDRAWING
-----------

Save a drawing to the given path and filename. The drawing is provided as a PNG file and available for viewing
or downloading under the return URL. The drawing must be created with a coordinate system, if you want to save it
using this function.

**Syntax**

SAVEeDRAWING(Drawing, Path, Name, Width, Height)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Drawing
     - Name of drawing. Must be unique and will be used to attach other graphical items to this drawing.
   * - Path
     - Path, that will be appended to the default URL, provided by the system.
   * - Name
     - Name to use for the final URL.
   * - Width
     - Width in pixel for the PNG.
   * - Height
     - Height in pixel for the PNG.


**Return Value**

TRUE, if drawing could be created.

**Example**

.. list-table::
   :widths: 45 55
   :header-rows: 1

   * - Function
     - Result
   * - SAVEDRAWING("Drawing", "path", "chart.png", 800, 800)
     - https://dev.cedalo.com/path/chart.png

TODO: Check return
