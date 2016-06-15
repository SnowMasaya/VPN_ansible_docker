VPN_ansible_docker
====

If you make a VPN connection, you use this code.

This code provide the enviroment a VPN connection enviroments

## Description

If you see the detail about it, you see the below(Japanese Only)<br>

http://qiita.com/GushiSnow/private/0c8881cbf9ce7e082e4e

#
### Install

[ansible](https://www.ansible.com/)

[terraform](https://www.terraform.io/)


##Requirements


```
ansible
terraform
```


#
### Usage
#
Learning Chainer

```
*You execute python
ipython notebook
```

Slack Communication

```
*You execute python
cd slack
python app.py
```

Get the Twitter Data

```
*You execute python
cd twitter
python twitter_get_usr_timeline.py
python sqlite_twitter.py
```

#
### Code Directory Structure
#
```
Dialogue ipython notebook and Encoder Decoder Model
  - slack/　　　　　... Slack Code
  - util/　     　... Encoder Decoder tools
  - twitter/ 　　　　　　　... Twitter Code
  - word2vec/ 　　　　　　　... Word2Vec Code
```
#
### Licence
#
```
The MIT License (MIT)

Copyright (c) 2015 Masaya Ogushi

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
#
### Author
#
[SnowMasaya](https://github.com/SnowMasaya)
### References
#
>[VPN設定をしたセキュアなインスタンスをterraform, Ansible, Dockerで構築](http://qiita.com/GushiSnow/private/0c8881cbf9ce7e082e4e)<br>
