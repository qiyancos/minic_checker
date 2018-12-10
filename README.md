# MiniC Checker

This repository contains the MiniC Checker source code to install MiniC Checker. You may read the [introduction part](#quick) to see the detail of setup and code structure for MiniC Checker. This software is only for linux, and you may change the script for installation if you want to install MiniC Checker in some other linux systems except Ubuntu.

## Quick Start

### Checkout The Code

```shell
$ git clone http://github.com/qiyancos/minic_checker.git
```

### Create Students List

Before installing MiniC Checker, a students list should be provided to create virtual account for students. The students list file should only hold the student ID for one student in a single line and must be put into the root path of MiniC Checker source code.

### Install MiniC Checker

```shell
$ cd minic_checker
$ ./install_wizard
```

After running the script used for installation, you can just follow the guidance and complete the installation. 

- The "install_wizard" will handle most of the  jobs including environment setup for installation.
- We don't suggest using Root as the host user for FTP. Otherwise system file might be modified or even removed while compiling for students.
- Old config files will be backuped before new config files are copied. And you can also restore them when you want to uninstall MiniC Checker.
- During the installation, you may need to typein the verification code given by the email recieved by the email address, which is specified by you for notification. And the verification code is case-sensitive!

### Start or Stop MiniC Checker Service

To start a MiniC Checker Service, you may use the command line below:

```shell
$ minic_checker -start eeyore
```

To stop a MiniC Checker Service, you may use a similar command line:

```shell
$ minic_checker -stop eeyore
```

You may use -h for help about how to use MiniC Checker in the right way.

### Uninstall MiniC Checker

Use "-u" option to uninstall MiniC Checker

```shell
$ minic_checker -u
```

## <a name="quick"></a>Introduction

### MiniC Checker Service

We provide multiple independent services for different lab. These services can run in parallel and will not have inerference with each other. You can setup the checking interval for the auto-checking service by yourself before starting MiniC Checker Service. But for same kind of MiniC Checker Service, only one instance is allowed to be running at the same time. 

### MiniC Checker Daemon

We also provide daemon for MiniC Checker Service so that administrator will be notified once the running MiniC Checker Service is accidentally stopped. Notification will be sent to the email address specified by administrator through email.

### Notification Function

We provide this function to help administrator manage the README files, which can be seen by the students in their FTP root path. You may use -h option to see how to update the README file.

### Service Log

To make sure that every incident can be recorded and examined later for MiniC Checker. We will keep log files for both the normal kind of services and MiniC Checker daemon service. These logs are held in the folder named as "log" in the install path.  

### Mail-Format File

We also build a new format file used for auto-mailing system. The format file is constructed with a nested structure and have the similar semantic structure with C++ class inheritance. 

- Main structure is specified by level tags, which are defined with level tag "**LEVEL**". In the level defined by level tag "**LEVEL**", the level tags with higher level will be defined in the line with lower line number.
- New defination will override the former one.
- Default defination for lower level is allowed and will be used for those higher level, which does not hold the defination for that level.
- The lowest level should be **TITLE**, **CONTENT** and **ATTACH**, which respectively respects title, content and file list that will be attached with the email.
- **CONTENT** defination can be raw text or file that holds the text for the email. And the raw text will added to the attachment as a file if it is too long for reading.  
- Even if we used a file list to define the attached files, multiple files will still be compressed to a single file as only one attachment is allowed for ***heirloom-mailx***.

## File Structure

### File Structure for Source Code:

- bin: Executable binary files, which will be regenerated when running installation.
- config: Config files for ***heirloom-mailx*** and ***vsftpd***. Mail-format file are also held here.
- lib: Lib used for compiling.
- sample: Homework samples used for Minic Checker's debug.
- scripts: Scripts used for MiniC Checker.
- src: Source file for simulator or mail-format file interpreter.
- test_src: Test set used for test.

### File Structure for Program Folder:

- backup: Folder that will hold the backup for config files.
- bin: Executable binary files.
- config: Student list and mail-format file will be copied here.
- lib: Lib used for compiling.
- log: Log files and report files will be put here.
- scripts: Scripts used for MiniC Checker.
- temp: Temporary files.
- test_src: Test set used for test.

