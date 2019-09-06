.. _unichar:

UNICHAR
-----------------------------

Returns the character represented by given unicode number. 

.. NOTE:: Unicodes UTF-8 & UTF-16 are supported, so the provided number must be within 0 - 65535. 

**Syntax**

=UNICHAR(Number)

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Number
     - An unicode number within 0-65535 which specifies the character to return.

**Return Value**

The character as specified by given unicode number.

**Example**

.. list-table::
   :widths: 50 50
   :header-rows: 1

   * - Function
     - Result
   * - =UNICHAR(65)
     - A
   * - =UNICHAR(8364)
     - €
   * - =UNICHAR(0)
     - :ref:`#VALUE! <error>`
