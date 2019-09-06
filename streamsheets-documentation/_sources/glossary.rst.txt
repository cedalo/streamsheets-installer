Glossary
===========


.. glossary::
    :sorted:

    Authentication
        Authentication technology provides access control for systems by checking to see if a user's credentials match the credentials in a database of authorized users or in a data authentication server.

    AMQP
        The Advanced Message Queuing Protocol (AMQP) is an open standard application layer protocol for message-oriented middleware. 
        The defining features of AMQP are message orientation, queuing, routing (including point-to-point and :term:`publish and subscribe`), 
        reliability and security.

    Base Topic
        The Base Topic of an MQTT Connector sets the highest element in the topic hierarchy. This entry is optional. 

    Broker
        Broker refers first of all to the general abstraction concept of a software layer that mediates between heterogeneous application 
        systems and data sources running on different platforms and connected via networks, thus enabling integration into cross-company 
        and cross-organizational applications. In addition, the class of all available software technologies that in any form contribute 
        to the fulfillment of this function is also referred to as broker. Broker can be divided into the different categories according 
        to the underlying paradigm of integration (e.g. Object Request Broker). 

    Connector 
        Connectors serve the base definition of streams. They contain the information to connect to :term:`broker`\ s, servers, 
        clusters and other data spaces. This includes usually addresses and authentication information,
        such as username and password or certificates.
   
    Consumer
        Consumers are the Stream resource to specify data streams which serve as the input for :term:`Streamsheet`\ s, 
        thus, they deliver messages to a sheet. You must first choose a :term:`Connector` and then add the missing information
        to complete the definition of a data stream.

    JSON
        Their are a variety of formats used to represent data in a structured and standarized way.
        JSON is one of them and primarly used in the :term:`Streamsheet`\ s. It is a text-based data format that is the lightweight 
        alternative to XML widely used on the Web for data interchange. JSON objects are a hierarchy of key-value pairs.
        This means that any value, e.g. a number or a string, is identified by its key. You could think of the key 
        as the name or the title of its value. In order not to just have a flat list of key-value pairs, these can be 
        ordered and subsumed, e.g. in the :ref:`Inbox picture` the key-value pair “Temperature: 34” is subsumed under 
        the top-element “Data”. 
        See also https://en.wikipedia.org/wiki/JSON

    Kafka
        Apache Kafka is open source software that enables the storage and processing of data streams over 
        a distributed streaming platform. It provides various interfaces for writing data to Kafka clusters, 
        reading data, importing and exporting data to and from third-party systems.

    Microservice
        The :term:`Streamsheet` architecture is a loosely coupled Microservice that allows the agile automation
        of sensors, devices, actuators and applications and its post-processing operations in a spreadsheet manner.
        This modular architecture allows the parallelization of services and the decomposition of applications
        into smaller services. Each individual service is independently, continuously deployable and easy to
        replace without harming the overall service architecture and thus beneficial to scalability.

    Mongo
        MongoDB is an open source database that uses a document-oriented data model. Learn more about it
        on https://docs.mongodb.com/manual/introduction/.


    MQTT
        MQTT (formerly the MQ Telemetry Transport) is a lightweight protocol that’s primarily designed for 
        connecting power-constrained devices over low-bandwidth networks. Though it existed for over a decade, 
        the advent of M2M (machine to machine communications) and Internet of Things made it a popular protocol
        MQTT (=Message Queuing Telemetry Transport) is a :term:`publish and subscribe` based messaging protocol. 
        Data is published to a broker. This broker handels all data points in realtime. Every message to the broker
        is directed to a certain topic. Subscribing to these topics automatically will forward these messages to the subscribers
        (This is similar to the idea of twitter enabling hashtags to structure information). Topics can be structured 
        in a hierarchy using a “/” to better organise different use cases. (e.g. streamsheets/example/test)

        To get the full information go and visit their `GitHub Wiki`_.

        .. _GitHub Wiki: https://github.com/mqtt/mqtt.github.io/wiki

    OPC UA
        Open Platform Communications Unified Architecture (OPC UA) is a machine to machine communication protocol for industrial automation. 
        The transport of data as well as interfaces, security mechanisms and the semantic structure of the data are specified. 
        OPC UA standardizes industrial connectivity and ensures interoperability between products from different manufacturers.
        Transmitted machine data can be, for example, measured values, sensor data, controlled variables or control instructions.

    Payload
        The payload is part of the transmitted data within the actual message. The payload contains the actual
        data of the message and is separated from the metadata, that represents the protocol overhead.
        Payload can be any sensor, actuator devices or application data sent to or received by the :term:`Streamsheet` via
        the corresponding topic. In order to integrate the stream data (payload) into your Streamsheet operations
        the Streamsheet must subscribe to a feeder. The payload content always uses :term:`JSON` to structure its content.

    Port 
        All data transmitted over the internet is sent and received using a specific set of commands, also known as a protocol. Each protocol is assigned a specific port number. For example, all website data transferred over HTTP uses port 80. Data sent over HTTPS uses port 443.
    
    POP3 
        In computing, the Post Office Protocol (POP) is an application-layer Internet standard protocol used by e-mail clients to retrieve e-mail from a mail server.

    Producer
        Producers are very similar to :term:`Consumer`\ s but instead of defining an input data stream, they define an outgoing
        data stream.

    Provider
        A provider defines the protocol and technology that is used to access a data source. A provider is needed to
        define a :term:`Connector` in order to define the access technology needed to communicate with the data source.

    Publish and Subscribe
        Publish and Subscribe is a event-driven message pattern where publishers are the senders of messages
        and subscribers are the receivers. Thereby the message is not programmed to be sent to a specific receiver
        (subscriber). The message is published in a general pattern without knowing the actual receivers.
        Moreover, all messages published on a topic can be received by all interested subscribers of a topic.
        Analogously the subscriber filters its messages of interests without the knowledge of the associated publisher.
        In contrast to message queues which batch messages until they are retrieved, message topics forward messages
        with no or little queuing, and immediately publish it to all subscribers. Thus, the :term:`Streamsheet` architecture
        uses a topic-based filter method. The subscriber receives all messages addressed to the subscribed topic
        and filters the total number of messages to the relevant subset of messages. The subscription of a topic
        within a streamsheet can be configured by selecting a feeder subscribing
        to a topic. On the other the StreamSheet provides functions to publish data.

    REST
        Representational State Transfer (REST) is a software architectural style that defines a set of constraints 
        to be used for creating Web services. Web services that conform to the REST architectural style, called RESTful
        Web services (RWS), provide interoperability between computer systems on the Internet

    REST URL 
        Every REST Service has a unique adress, the Uniform Resource Locator (URL). This offeres a consistent adressability.

    SASL 
        Simple Authentication and Security Layer (SASL) is a framework for authentication and data security in Internet protocols. It decouples authentication mechanisms from application protocols, in theory allowing any authentication mechanism supported by SASL to be used in any application protocol that uses SASL. Application protocols that support SASL typically also support Transport Layer Security (:term:`TLS`) to complement the services offered by SASL.
    
    SMTP
        The Simple Mail Transfer Protocol (SMTP) is a communication protocol for electronic mail transmission. User-level email clients typically use SMTP only for sending messages to a mail server for relaying, typically submit outgoing email to the mail server on port 587 or 465.

    STARTTLS
        Opportunistic TLS (Transport Layer Security) refers to extensions in plain text communication protocols, which offer a way to upgrade a plain text connection to an encrypted (TLS or SSL) connection instead of using a separate port for encrypted communication. Several protocols use a command named "STARTTLS" for this purpose. It is primarily intended as a countermeasure to passive monitoring.

    Streamsheet
        A Streamsheet is a spreadsheet extended by capabilities to easily allow real-time data stream processing.
        It allows to automate and dynamically calculate sensor, actuator, device and application data
        within a data stream architecture. The streamsheet subscribes a specific data source,
        receives event data, analyses, processes or forwards this data by publishing new stream data or messages
        on the same or different data source. Multiple streamsheets within one machine can be used to
        execute a sequential or parallel order of stream processes continuously and in real-time. A streamsheet can
        be compared to a :term:`microservice` within a stream based architecture.
        Click :ref:`here <streamsheet>` for further informations.

    Stream Machine
        A Stream Machine contains a set of :term:`Streamsheet`\ s and provides an outbox. The Stream Machine executes the
        Streamsheets, when it runs. The behaviour of a Stream Machine and the way it processes data streams is defined through
        its Streamsheets.  Click :ref:`here <streammachine>` for further informations.

    TLS 
        Transport Layer Security (TLS), and its now-deprecated predecessor, Secure Sockets Layer (SSL), are cryptographic protocols designed to provide communications security over a computer network.

    URL
        Uniform Resource Locator (URL) identifies and localizes a resource within a network. URLs are a sub group of the Uniform Resource Identifiers (URI) and are the most common.

    QoS 
        | The Quality of Service (QoS) level is an agreement between the sender of a message and the receiver of a message that defines the guarantee of delivery for a specific message. It depends on the used protocol.
        | E.g. there are 3 QoS levels in MQTT: At most once (0) At least once (1) Exactly once (2)
    
    Documents
        MongoDB stores data records as BSON documents. BSON is a binary representation of JSON documents, though it contains more data types than JSON. Just use the required JSON Range.

    Collections
        MongoDB stores documents in collections. Collections are analogous to tables in relational databases. If a collection does not exist, MongoDB creates the collection when you first store data for that collection.

    Directory
        A directory is a location for storing files on your computer. So just write the path to your folder with the required files.

    Command 
        Any command allowed in KSQL table. For further information click `here <https://docs.confluent.io/current/ksql/docs/index.html>`_.

    Timeout
        The time to wait for an answer.

    Query
        Query stands for a specific query to a database. Use a JSON Range in the sheet to define the Query.

    Aggregation JSON    
        Aggregation operations process data records and return computed results. Aggregation operations group values from multiple documents together, and can perform a variety of operations on the grouped data to return a single result. Define an aggregation using a :term:`JSON` cell range.

    Result Keys
        You can filter the :term:`query` results by using specified :term:`JSON` Keys.

    Page Size
        Number of :term:`Documents` to return per page. 

    Sort 
        Sort :term:`query` result ascending or descending. Use 1 and -1 to sort by creation time, or use a :term:`JSON` cell range.

    User Properties
        User properties on :ref:`MQTT.PUBLISH <mqttpublish>` are forwarded with the message and are defined by the client applications. They are forwarded by the server to the receiver of the message. Use it to define the Metadata!

    Application Properties
        The application-properties section is a part of the bare message used for structured application data. Intermediaries can use the data within this structure for the purposes of filtering or routing. 
        The keys of this map are restricted to be of type string (which excludes the possibility of a null key) and the values are restricted to be of simple types only, that is, excluding map, list, and array types.
        Use it to define the Metadata!
        Click `here <https://www.ibm.com/support/knowledgecenter/en/SSFKSJ_8.0.0/com.ibm.mq.dev.doc/q125040_.htm>`_ for a nice overview.

    Node
        In :term:`OPC UA`, every entity in the address space is a node. To uniquely identify a Node, each node has a NodeId.

    Node Value
        The Value from the Node you want to write.

    Status Code
        REST APIs use the Status-Line part of an HTTP response message to inform clients of their request’s overarching result. HTTP defines forty standard status codes that can be used to convey the results of a client’s request. E.g. Code: 200 = "OK"
        
    Data Series 
        Successive data which all belong to one type e.g. names.

    Data Point 
        A Data Point is one point out of a whole :term:`Data series`.

    Series Direction
        Specifies whether the :term:`data series` is horizontal or vertical (rows or columns).

    Series Labels
        Specifies if and where the name of the :term:`data series` is given. Its also depends on the the :term:`Series Direction`.

    Category Labels
        Specifies if and where the name of the category is given. Its also depends on the the :term:`Series Direction`.

    Influx
        InfluxDB is an open-source time series database (TSDB) developed by InfluxData. It is written in Go and optimized for fast, 
        high-availability storage and retrieval of time series data in fields such as operations monitoring, application metrics, 
        Internet of Things sensor data, and real-time analytics.
        Learn more about it on https://docs.influxdata.com/influxdb/v1.7/.

    Line Protocol
        The :term:`InfluxDB <Influx>` line protocol is a text based format for writing points to the database. Points must be in line protocol format 
        for InfluxDB to successfully parse and write points. A single line of text in line protocol format represents one data point 
        in InfluxDB. It informs InfluxDB of the point’s measurement, tag set, field set, and timestamp. Tag set and timestamp are optional.
        Learn more about it `here <https://docs.influxdata.com/influxdb/v1.7/write_protocols/line_protocol_tutorial/>`_.

