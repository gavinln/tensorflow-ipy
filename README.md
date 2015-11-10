# tensorflow-ipy

* Source code - [Github][1]
* Author - Gavin Noronha - <gnoronha@hotmail.com>

[1]: https://github.com/gavinln/tensorflow-ipy.git

## About

This project provides a [Ubuntu (14.04)][10] [Vagrant][11] Virtual Machine (VM)
with the [TensorFlow][12] library from Google and [IPython][13]
(now know as Jupyter) notebooks.

[10]: http://releases.ubuntu.com/14.04/
[11]: http://www.vagrantup.com/
[12]: http://tensorflow.org/
[13]: http://jupyter.org/

Follow the **Requirements** section below for a one-time setup of Virtualbox,
Vagrant and Git before running the commands below. These instructions should
work on Windows, Mac and Linux operating systems.

## 1. Start the VM

1. Change to the tensorflow-ipy root directory

    ```
    cd tensorflow-ipy
    ```

2. Start the Virtual machine (VM)

    ```
    vagrant up
    ```

3. Login to the VM

    ```
    vagrant ssh
    ```

## 2. Run your first TensorFlow command line program

First run 1. Start the VM

1. Change to the python directory

    ```
    cd /vagrant/python
    ```

2. Run the first program

    ```
    python first-tensorflow.py
    ```

## Requirements

The following software is needed to get the software from github and run
Vagrant. The Git environment also provides an [SSH client][100] for Windows.

* [Oracle VM VirtualBox][101]
* [Vagrant][102]
* [Git][103]

[100]: http://en.wikipedia.org/wiki/Secure_Shell
[101]: https://www.virtualbox.org/
[102]: http://vagrantup.com/
[103]: http://git-scm.com/
