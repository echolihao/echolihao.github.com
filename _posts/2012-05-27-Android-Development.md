---
layout: post
title: Android Development
category: problems
tags: android, development, process
---

# 相关概念
## adb
adb means android debug bridge -- it's the app that lets your computer talk to phones over USB or emulated phones
## <others>

# 开发过程中遇到的问题
1. install ADT，设置好SDK的路径之后，出现错误：
        [2012-05-26 02:06:42 - DDMS] DDMS files not found: /home/haoli/Programs/android-sdk-linux/platform-tools/adb

2. After "Step 4. Adding Platforms and Other Packages", 出现错误：
        [2012-05-26 02:12:05 - SDK Manager] Failed to fetch URL http://dl.htcdev.com/sdk/addon.xml, reason: peer not authenticated
        [2012-05-26 02:15:18 - SDK Manager] Error: null
        [2012-05-26 02:28:00 - SDK Manager] Stopping ADB server failed (code -1).
        [2012-05-26 02:39:51 - SDK Manager] Failed to fetch URL http://dl.htcdev.com/sdk/addon.xml, reason: peer not authenticated

3. 第一次run project "HelloAndroid", 出现错误：
        [2012-05-27 20:14:34 - HelloAndroid] Connection with adb was interrupted.
        [2012-05-27 20:14:34 - HelloAndroid] 0 attempts have been made to reconnect.
        [2012-05-27 20:14:34 - HelloAndroid] You may want to manually restart adb from the Devices view.

4. 再次run，3的错误没有再出现，但出现错误：
        [2012-05-27 20:22:41 - Emulator] NAND: could not write file /tmp/android-haoli/emulator-lBRJnr, Resource temporarily unavailable
*原因*：应该是no enough space on disk

5. 紧接着，再run，错误变成：
        [2012-05-27 20:33:13 - Emulator] NAND: could not write file /tmp/android-haoli/emulator-JpG0K3, File exists
*解决方案*：remove the folder /tmp/android-haoli

6. 解决了4、5之后，run，出现错误：
        [2012-05-27 20:48:47 - Emulator] NAND: could not write file /home/haoli/.android/avd/my_avd.avd/userdata-qemu.img, No such file or directory
实际上userdata-qemu.img这个file是存在的！！

7.run，出现模拟器的界面，运行成功。但是加载HelloAndroid.apk失败，错误：
        [2012-05-27 21:12:35 - HelloAndroid] Failed to install HelloAndroid.apk on device 'emulator-5554': device not found
再次run（什么都没做），success！

# 相关资料

[Android Application Development: Hands-On](http://www.cse.ust.hk/~muppala/aad/index.html)

[Install Android SDK](http://developer.android.com/sdk/installing.html)

[Hello, Android - First Android Project](http://developer.android.com/resources/tutorials/hello-world.html)

