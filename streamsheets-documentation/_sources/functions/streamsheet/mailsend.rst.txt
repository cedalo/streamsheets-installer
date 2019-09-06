.. _mailsend:
.. |MAIL.SEND| image:: /images/MAIL.SEND.PNG
        :scale: 35%
.. role:: blue

MAIL.SEND
-----------------------------

Send a mail using the given :term:`producer` and parameters. You can use the :ref:`Function Wizard <functionwizard>` for this function. 


**Syntax**

=MAIL.SEND(Producer, Message, Subject, TO, CC, BCC, Attachments  )

**Arguments**

.. list-table::
   :widths: 20 80
   :header-rows: 1

   * - Name
     - Description
   * - Producer
     - Mail Producer to use for sending mail.
   * - Message
     - Simple text used as content of the mail
   * - Subject
     - Simple text
   * - TO
     - Single mail address or range of mail adresses.
   * - CC
     - Single mail address or range of mail adresses.
   * - BCC
     - Single mail address or range of mail adresses.
   * - Attachments
     - Range of Attachments, see example below.

**Return Value**

TRUE, if successful.

**Examples**

.. list-table::
   :widths: 45 15 40
   :header-rows: 1

   * - Function
     - Result
     - Comment
   * - =MAIL.SEND("Mail Produer", "Message", "Subject", "user@example.org")
     - TRUE
     - Send a mail with the content "Message" and the subject "Subject" to "user@example.org" using the "Mail Producer"
   * - =MAIL.SEND("Mail Producer", "Message", "Subject", A1:B2, "user2@example.org", "user3@example.org")
     - TRUE
     - Send a mail with the content "Message" and the subject "Subject" to all mail addresses in the A1:B2 range and with "user2@example.org" in CC and "user3@example.org" in BCC using the "Mail Producer".
   * - =MAIL.SEND("Mail Prodcuer", "Message", "Subject", "user@example.org", , , :blue:`A3:D4`)
       
       | |MAIL.SEND|

     - TRUE
     - Send a mail with two attachments. The first attachment is text file name "file.txt" with "A text" as content. The second attachment is an image named "image.jpeg" with the base64 value of the image as content.
       The encoding defaults to "utf-8" and could be omitted for "file.txt". The "Content-Type" column is optional and not required in most cases since the Content-Type will be determined from the file extension.


