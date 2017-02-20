# tensorflow-ipy

* Source code - [Github][1]
* Author - Gavin Noronha - <gnoronha@hotmail.com>

[1]: https://github.com/gavinln/tensorflow-ipy.git

## About

This project provides a [Ubuntu (14.04)][10] [Vagrant][20] Virtual Machine (VM)
with the [TensorFlow][30] library from Google and [IPython][40]
(now know as Jupyter) notebooks.

[10]: http://releases.ubuntu.com/14.04/
[20]: http://www.vagrantup.com/
[30]: http://tensorflow.org/
[40]: http://jupyter.org/

Follow the **Requirements** section below for a one-time setup of Virtualbox,
Vagrant and Git before running the commands below. These instructions should
work on Windows, Mac and Linux operating systems.

## [Releases](./doc/releases.md)

The list of releases of this project with a description of the main changes are
included here.

## Running TensorFlow

### 1. Start the VM

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

### 2. Run your first TensorFlow command line program

First run section 1.

1. Change to the python directory

    ```
    cd /vagrant/python
    ```

2. Run the first program

    ```
    python3 first-tensorflow.py
    # to disable warnings type
    TF_CPP_MIN_LOG_LEVEL=2 python3 first-tensorflow.py
    ```

3. Make sure the version printed on the first line of the output is the version
   you expect. The releases are documented on this [page][50]

[50]: https://github.com/tensorflow/tensorflow/releases

### 3. Start the IPython (Jupyter) notebooks

First run section 1.

1. Change to the notebooks directory

    ```
    cd /vagrant/notebooks
    ```

2. Run the IPython notebook server

    ```
    chmod +x ipython-run.sh
    ./ipython-run.sh
    ```

3. Open your browser to http://192.168.33.10:8888/ to view the notebooks

### 4. Get the TensorFlow source code and examples

First run section 1.

1. Make the tensorflow directory if does not exist.

    ```
    mkdir /vagrant/tensorflow_source
    ```

2. Change to the tensorflow directory (will not be checked in to git)

    ```
    cd /vagrant/tensorflow_source
    ```

3. Clone the tensorflow repository

    ```
    git clone https://github.com/tensorflow/tensorflow.git
    ```

### 5. Run the [Udacity][60] [TensorFlow][70] examples

First run section 1.

1. Change to the notebooks directory

    ```
    cd /vagrant/scripts
    ```

2. Run the IPython notebook server with Udacity TensorFlow notebooks

    ```
    chmod +x ./ipy-udacity.sh
    ./ipy-udacity.sh
    ```

3. Open your browser to http://192.168.33.10:8888/ to view the notebooks

[60]: https://www.udacity.com/
[70]: https://www.udacity.com/course/deep-learning--ud730

## Tensorflow links

* http://learningtensorflow.com/getting_started/

## Jupyter notebook extensions

1. Install Jupyter notebook extensions

    ```
    jupyter contrib nbextension install --user
    ```

2. Install vim extension (optional)

    ```
    cd $(jupyter --data-dir)/nbextensions
    git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
    ```

## Requirements

The following software is needed to get the software from github and run
Vagrant. The Git environment also provides an [SSH client][100] for Windows.

* [Oracle VM VirtualBox][110]
* [Vagrant][120]
* [Git][130]

[100]: http://en.wikipedia.org/wiki/Secure_Shell
[110]: https://www.virtualbox.org/
[120]: http://vagrantup.com/
[130]: http://git-scm.com/
