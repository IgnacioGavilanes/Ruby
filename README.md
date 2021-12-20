# Ruby memcached server (TCP/IP socket)

### Table of Contents

- [Description](#description)
- [How To Use](#how-to-use)
- [References](#references)
- [License](#license)

---

## Description

Explain TCP, sockets, multithreads, mutex (avoid race condition) & Memcached. Add all extras in here (purge records after exptime, any extra commands like delete, flush_all, etc). 

#### Technologies

- [Ruby](#https://www.ruby-lang.org/en/downloads/) *3.0.3 p157*
- [RSpec Gem](#https://rspec.info) *3.10*

#### Available Memcached Commands
#### &nbsp;&nbsp;&nbsp;&nbsp;Retrieval commands
<ul>
    <li style="color:#9E9E9F">
        get
    </li>
    <li style="color:#9E9E9F">
        gets
    </li>
</ul>

#### &nbsp;&nbsp;&nbsp;&nbsp;Storage commands
<ul>
    <li style="color:#9E9E9F">
        set
    </li>
    <li style="color:#9E9E9F">
        add
    </li>
    <li style="color:#9E9E9F">
        replace
    </li>
    <li style="color:#9E9E9F">
        append
    </li>
    <li style="color:#9E9E9F">
        prepend
    </li>
    <li style="color:#9E9E9F">
        cas
    </li>
</ul>

#### &nbsp;&nbsp;&nbsp;&nbsp;Deletion commands
<ul>
    <li style="color:#9E9E9F">
        DELETE?
    </li>
    <li style="color:#9E9E9F">
        FLUSH_ALL?
    </li>
</ul>


<br>

#### UML class diagram
![Project Image](project-image-url)

#### client/server/memcache/db diagram
![Project Image](project-image-url)

<br>

[Back To The Top](#)

---

## How To Use

### **Initiate the memcached server:**
Open up a terminal, navigate to the folder containing your server.rb file and introduce the following command:
```
    $ ruby server.rb <hostname or IP address> <port>
```

### Initiate the client server
Open up another terminal in the same directory and introduce the following command:
```
    $ ruby client.rb <hostname or IP address> <port>
```
### Issue commands
Now, on your client server you can issue any of the commands specified in the description. Here is an example:
```
    $ set test 0 7200 7
```
<command name> <key> <flags> <exptime> <bytes>

Where *set* is the memcached command and all subsequent values represent *key*, *flags*, *exptime* and *bytes* respectively.


Now we need to introduce the data block we intend to save, in this case the string *'example'* :

```
    $ example
```

Finally, we will get the following response (assuming our record was stored successfully) back from our memcached server:
```
    $ STORED
```
Now if you wanted to retrieve this record, you would use one of the retrieval commands along with its *key* value.

for more information regarding specifications of memcached commands refer to the memcached protocol specification on the references section.

In order to close the server connection you can simply press *control + c*.

### **Unit testing**
#### The RSpec gem was utilized with the purpose of testing our memcached server. In order to run all test scenarios you can run the following command on your console. 
```
    $ ruby bin/rspec --format doc
```
<br>

[Back To The Top](#)

---

## References
>[Memcached Protocol Specification](https://github.com/memcached/memcached/blob/master/doc/protocol.txt)

>[Ruby Documentation](https://www.ruby-lang.org/en/documentation/)

<br>

[Back To The Top](#read-me-template)

---

## License

MIT License

Copyright (c) [2017] [James Q Quick]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

<br>

[Back To The Top](#)
