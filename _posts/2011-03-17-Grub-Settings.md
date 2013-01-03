---
layout: post
title: grub启动项设置
category: knowledge
tags: grub, Linux, 启动项  
---

现在我的笔记本上装了两个系统：Windows 7 Professional和Ubuntu 10.04。因为先安装的Windows再安装的Ubuntu，所以每次启动计算机都运行grub引导程序。而grub默认运行Ubuntu，目前我还是用windows比较多，所以很多时候不是太方便。只需要把grub的配置文件稍作修改就可以解决这个问题。

1. Ubuntu10.04通过读取配置文件/boot/grub/grub.cfg（在其他版本下，可能是menu.list），来显示启动项。该文件被设置为read only，所以将文件权限设置为可以修改。
2. 打开grub.cfg。语句set default=""设置默认启动项，默认等于0。我们可以将该数值修改为我们希望默认启动的启动项的编号。
3. 在文件的后半部分，是所有启动项的信息。每一个启动项对应menuentry开始的一段。menuentry后面的是该启动项的名称。每个启动项都有一个编号，编号从0开始，依次递增。
4. 在我的机器上，共有9个启动项，前面8个是Ubuntu的启动项，最后一个是Windows 7。一般我都将Windows 7设置为默认启动项，因此set default="8"。

这种方法并不是很好，因为每次内核更新后，grub.cfg都会被更新，也就是还原了。所以每次内核更新后都要进行更改（这种情况遇到了一次）。在网上看到有人说可以修改/etc/grub.d/10_linux来进行配置，可以避免以上情况。但是没看明白该文件写的是些什么...
