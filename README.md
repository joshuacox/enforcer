# Enforcer

Simple htaccess redirect rule to enforce https.

There are examples for apache and nginx, inside each is a `Makefile` for easy usage, both are also based on alpine.

## Usage

#### Build

This will build the container.

`make build`

#### Run

This will run the container on port 7080

`make run`

#### Clean
 
This will kill the running container and cleanup.

`make clean`


### Shootout

And the results are in, in my very small test nginx beat out apache, using apaches own ab tool:


Apache Results:

    <p>
    This is ApacheBench, Version 2.3 <i>&lt;$Revision: 1879490 $&gt;</i><br>
    Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/<br>
    Licensed to The Apache Software Foundation, http://www.apache.org/<br>
    </p>
    <p>
    Completed 10000 requests
    Completed 20000 requests
    Completed 30000 requests
    Completed 40000 requests
    Completed 50000 requests
    Completed 60000 requests
    Completed 70000 requests
    Completed 80000 requests
    Completed 90000 requests
    Completed 100000 requests
    Finished 100000 requests
    
    
    <table >
    <tr ><th colspan=2 bgcolor=white>Server Software:</th><td colspan=2 bgcolor=white>Apache/2.4.51</td></tr>
    <tr ><th colspan=2 bgcolor=white>Server Hostname:</th><td colspan=2 bgcolor=white>10.11.5.11</td></tr>
    <tr ><th colspan=2 bgcolor=white>Server Port:</th><td colspan=2 bgcolor=white>7080</td></tr>
    <tr ><th colspan=2 bgcolor=white>Document Path:</th><td colspan=2 bgcolor=white>/</td></tr>
    <tr ><th colspan=2 bgcolor=white>Document Length:</th><td colspan=2 bgcolor=white>203 bytes</td></tr>
    <tr ><th colspan=2 bgcolor=white>Concurrency Level:</th><td colspan=2 bgcolor=white>100</td></tr>
    <tr ><th colspan=2 bgcolor=white>Time taken for tests:</th><td colspan=2 bgcolor=white>3.805 seconds</td></tr>
    <tr ><th colspan=2 bgcolor=white>Complete requests:</th><td colspan=2 bgcolor=white>100000</td></tr>
    <tr ><th colspan=2 bgcolor=white>Failed requests:</th><td colspan=2 bgcolor=white>0</td></tr>
    <tr ><th colspan=2 bgcolor=white>Non-2xx responses:</th><td colspan=2 bgcolor=white>100000</td></tr>
    <tr ><th colspan=2 bgcolor=white>Total transferred:</th><td colspan=2 bgcolor=white>40800000 bytes</td></tr>
    <tr ><th colspan=2 bgcolor=white>HTML transferred:</th><td colspan=2 bgcolor=white>20300000 bytes</td></tr>
    <tr ><th colspan=2 bgcolor=white>Requests per second:</th><td colspan=2 bgcolor=white>26280.38</td></tr>
    <tr ><th colspan=2 bgcolor=white>Transfer rate:</th><td colspan=2 bgcolor=white>10471.09 kb/s received</td></tr>
    <tr ><th bgcolor=white colspan=4>Connection Times (ms)</th></tr>
    <tr ><th bgcolor=white>&nbsp;</th> <th bgcolor=white>min</th>   <th bgcolor=white>avg</th>   <th bgcolor=white>max</th></tr>
    <tr ><th bgcolor=white>Connect:</th><td bgcolor=white>    0</td><td bgcolor=white>    1</td><td bgcolor=white>    3</td></tr>
    <tr ><th bgcolor=white>Processing:</th><td bgcolor=white>    0</td><td bgcolor=white>    2</td><td bgcolor=white>   10</td></tr>
    <tr ><th bgcolor=white>Total:</th><td bgcolor=white>    0</td><td bgcolor=white>    3</td><td bgcolor=white>   13</td></tr>
    </table>


Nginx Results:

    <p>
     This is ApacheBench, Version 2.3 <i>&lt;$Revision: 1879490 $&gt;</i><br>
     Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/<br>
     Licensed to The Apache Software Foundation, http://www.apache.org/<br>
    </p>
    <p>
    Completed 10000 requests
    Completed 20000 requests
    Completed 30000 requests
    Completed 40000 requests
    Completed 50000 requests
    Completed 60000 requests
    Completed 70000 requests
    Completed 80000 requests
    Completed 90000 requests
    Completed 100000 requests
    Finished 100000 requests


    <table >
    <tr ><th colspan=2 bgcolor=white>Server Software:</th><td colspan=2 bgcolor=white>nginx/1.21.3</td></tr>
    <tr ><th colspan=2 bgcolor=white>Server Hostname:</th><td colspan=2 bgcolor=white>10.11.5.11</td></tr>
    <tr ><th colspan=2 bgcolor=white>Server Port:</th><td colspan=2 bgcolor=white>6080</td></tr>
    <tr ><th colspan=2 bgcolor=white>Document Path:</th><td colspan=2 bgcolor=white>/</td></tr>
    <tr ><th colspan=2 bgcolor=white>Document Length:</th><td colspan=2 bgcolor=white>169 bytes</td></tr>
    <tr ><th colspan=2 bgcolor=white>Concurrency Level:</th><td colspan=2 bgcolor=white>100</td></tr>
    <tr ><th colspan=2 bgcolor=white>Time taken for tests:</th><td colspan=2 bgcolor=white>3.164 seconds</td></tr>
    <tr ><th colspan=2 bgcolor=white>Complete requests:</th><td colspan=2 bgcolor=white>100000</td></tr>
    <tr ><th colspan=2 bgcolor=white>Failed requests:</th><td colspan=2 bgcolor=white>0</td></tr>
    <tr ><th colspan=2 bgcolor=white>Non-2xx responses:</th><td colspan=2 bgcolor=white>100000</td></tr>
    <tr ><th colspan=2 bgcolor=white>Total transferred:</th><td colspan=2 bgcolor=white>35800000 bytes</td></tr>
    <tr ><th colspan=2 bgcolor=white>HTML transferred:</th><td colspan=2 bgcolor=white>16900000 bytes</td></tr>
    <tr ><th colspan=2 bgcolor=white>Requests per second:</th><td colspan=2 bgcolor=white>31602.17</td></tr>
    <tr ><th colspan=2 bgcolor=white>Transfer rate:</th><td colspan=2 bgcolor=white>11048.41 kb/s received</td></tr>
    <tr ><th bgcolor=white colspan=4>Connection Times (ms)</th></tr>
    <tr ><th bgcolor=white>&nbsp;</th> <th bgcolor=white>min</th>   <th bgcolor=white>avg</th>   <th bgcolor=white>max</th></tr>
    <tr ><th bgcolor=white>Connect:</th><td bgcolor=white>    0</td><td bgcolor=white>    1</td><td bgcolor=white>    4</td></tr>
    <tr ><th bgcolor=white>Processing:</th><td bgcolor=white>    1</td><td bgcolor=white>    2</td><td bgcolor=white>    3</td></tr>
    <tr ><th bgcolor=white>Total:</th><td bgcolor=white>    1</td><td bgcolor=white>    3</td><td bgcolor=white>    7</td></tr>
    </table>
