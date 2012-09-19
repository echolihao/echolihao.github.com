---
layout: post
title: 如何更改分区大小
category: thinking
tags: GParted, Linux, 分区大小 
---

前几天在实验室遇到一个问题。实验室的机器在安装系统的时候，/目录只分配了~10G的空间，/home目录分配了200+G的空间。NameNode那台服务器大部分的服务都运行在/目录下（比如FTP、SVN等），很快/目录的空间就不够用了。导师让我重新分配一下分区大小，扩大/目录下的空间。

在网上搜索了很久，大概总结一下。

1. 运行Ubuntu的安装盘，启动Ubuntu.
2. 在System-&gt;Administration下有一个叫做GParted的program（在10.04下有，不知道其他版本下有没有）。GParted是一个带图形界面的分区管理软件，操作十分简单。
3. 在图形界面上进行的所有操作并没有立即执行，而是都放在了一个pending list里面等待执行，需要apply这些operations才会真正执行。
4. 压缩和合并分区都非常耗时，根据我的实验，压缩然后合并大概20G的空间需要20多分钟。
5. 更改分区大小后是不是会有问题，比如UUID是否会改变网上说法不一，我也不太清楚。但是发现IP地址变了，不知道跟这个有没有关系。

&nbsp;