---
layout: post
title: 配置vim
category: thinking
tags: Linux, vim 
---

vim是vi的升级版，对vi完全兼容，同时增加了一些功能。比如：语法高亮、多级撤销、vim还可以运行在多个平台上（unix、windows、mac）。

Ubuntu10.04默认安装的是vi，需要手动安装vim。

打开vim的配置文件/etc/vim/vimrc进行相关设置。其中，
syntax on 开启语法高亮
set smartindent 依据上面的对齐格式，智能的选择对齐方式
set tabstop=4 设置tab键为4个空格（=号两边不能有空格）
set number 显示行号

常用的就是上面的设置了。

不知道vim支不支持括号自动补全、关键字提示等功能？以后再研究一下，暂时就这么用着，比以前方便多了，看起来舒服多了。
