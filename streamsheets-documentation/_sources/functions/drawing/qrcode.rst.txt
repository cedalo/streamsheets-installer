
QRCODE
------

Create a QRCode key, that can be used for a FILLPATTERN, which uses the returned identifier to create a QRCode image as
the fill.

**Syntax**

QRCODE(Text)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Text
     - Text to encode in QRCode image

**Return Value**

QRCode identifier

**Example**

.. list-table::
   :widths: 45 10 45
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - QRCODE("Text)
     - "qrcode:Test"
     - The return is a hint for the FILLPATTERN to indicate the desired image.
   * - FILLPATTERN(QRCODE("Text))
     - JSON encoded fill pattern.
     - The fill pattern can be used to fill a drawing object.
