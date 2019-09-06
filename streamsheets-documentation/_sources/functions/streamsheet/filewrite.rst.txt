.. |FILE.WRITE| image:: /images/FILE.WRITE.PNG
        :scale: 50%
.. role:: blue

FILE.WRITE
-----------------------------

Write a given range as comma separeted values to a file. You can use the :ref:`Function Wizard <functionwizard>` for this function. 
 

**Syntax**

=FILE.WRITE(:term:`Producer`, Range, Filename, [Directory, Mode, Separator])

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - File Producer to use for writing the file.
   * - Range
     - The range to write to a file. Can also be a single value. 
   * - Filename
     - Name of the file that is written.
   * - Directory
     - Optional. The directory of the file that is written. Defaults to the root directory of the File Producer.
   * - Mode
     - Optional. Has to be "create" or "append". Defaults to "append". "create" replaces an existing file with the same name, "append" appends instead.
   * - Separator
     - Optional. Separator to use when writing range to file. Defaults to ",".

**Return Value**

TRUE, if successful.

**Examples**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =FILE.WRITE("File Producer", "Message", "file.csv", "directory")
     - TRUE
     - Write the text "Message" to the file located at "{rootDirectory}/directory/file.csv" using the "File Producer"
   * - =FILE.WRITE("File Producer", A2:C3, "file.csv", ,"create", ";")

       | |FILE.WRITE|
       
     - TRUE
     - Writes the content of the range A2:C3 to the fiel located at "{rootDirectory}/file.csv" using ";" as separator and replacing an already existing file with the same name.
       The resulting content of the file is::
       
          Example1;Example2;Example3
          Example4;Example5;Example6



