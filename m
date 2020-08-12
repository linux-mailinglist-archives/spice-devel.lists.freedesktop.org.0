Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC408242CE5
	for <lists+spice-devel@lfdr.de>; Wed, 12 Aug 2020 18:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED15B6E09F;
	Wed, 12 Aug 2020 16:12:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 903 seconds by postgrey-1.36 at gabe;
 Wed, 12 Aug 2020 16:12:17 UTC
Received: from sender4-of-o53.zoho.com (sender4-of-o53.zoho.com
 [136.143.188.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6486E09F
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Aug 2020 16:12:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1597247831; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=IkeOyGj4drubZmyjDBA41PXbbKrA4Ig0ovDSrxdv8qKM6+cpepXMqN82VuU4ExyakHajyX0t/wErCnplAOnfZ3ea2rIJtuDfFcVpq/H0pozF6Q7CcNvbhzivF5UbzOPhiJNS7EdgadAAuuLvprMqaSyR4btQVRgwESHbRzEqkYo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; 
 t=1597247831; h=Content-Type:Date:From:MIME-Version:Message-ID:Subject:To; 
 bh=gqSvSYaZDhcqPB+Si0Y6pgpSHhknRL/LNy8u1qiYX18=; 
 b=WKMD4iH3u58F1mnkZlexPht5ys71/MiN1Y+NQB/dNDIa4S38M2UmchKCF6strVvJUU9KDMyxUJu8WD9QkUlcE/M4idJRIP4lxJxrpjLepLspWFvPQhkHV2nnV0RqyFuDg/ZuqZDrM/RVyOJPrKCzqwHLKSxAB481Chzu8mOzYY8=
ARC-Authentication-Results: i=1; mx.zohomail.com; dkim=pass  header.i=velis.si;
 spf=pass  smtp.mailfrom=jure@velis.si;
 dmarc=pass header.from=<jure@velis.si> header.from=<jure@velis.si>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1597247831; 
 s=default; d=velis.si; i=jure@velis.si;
 h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
 bh=gqSvSYaZDhcqPB+Si0Y6pgpSHhknRL/LNy8u1qiYX18=;
 b=EVWvsAUpu8+dRQOv5RsPuN8WLiGm4jvrtsSq408TbppPX1gA7JSLvjQH/EcX/GlI
 HONNdn8sCZka/29pWOdoS4DGISnrEqYbObHPNNu5Tcn46DiAkS/rQtCvRUbstYkYwlX
 mmlhe+hCMHvJGOOK257d+3gcJL5PtWjEUZTAkKtc=
Received: from [192.168.237.74] (BSN-61-68-194.static.siol.net [86.61.68.194])
 by mx.zohomail.com with SMTPS id 1597247830128539.8119015562452;
 Wed, 12 Aug 2020 08:57:10 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
From: =?UTF-8?Q?Jure_Erzno=c5=benik?= <jure@velis.si>
Message-ID: <79c7d4e5-0281-0eaf-0e88-289484d4a732@velis.si>
Date: Wed, 12 Aug 2020 17:57:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Language: en-US
X-ZohoMailClient: External
Subject: [Spice-devel] Spice protocol performance
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0456346543=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0456346543==
Content-Type: multipart/alternative;
 boundary="------------842B6FBD7C80EE5901E7CE9E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------842B6FBD7C80EE5901E7CE9E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello (very fearfully, because I found no list that could be helpful and 
this one seems to be for developers...),

I have been trying for a long while now to get my VM machines to perform 
well, but I can't seem to get it right. I seem to be suffering from two 
issues:

 1. remote-viewer / libvirt host uses inefficient codecs to transfer
    audio / video
 2. virtual machines themselves don't seem to have their graphics
    accelerated sufficiently

I proceed to elaborate on both:

*#1 - inefficient codecs*

So I have a number of VMs running under qemu on Ubuntu 18.04. AMD 2700x 
+ nvidia 1060 gtx (driver nvidia). qemu 4.2, libvirt 6.0.0. Everything 
works fine except accessing the VMs remotely: the slower the connection, 
the worse it gets. Running them on 4K monitor - please note the 
resolution. Using remmina or virt-viewer, makes no difference.

  * on local machine, everything is next to perfect, the only noticeable
    quality degradation is video full-screen.
  * 1gbit LAN: noticeable delays rendering stuff, video becomes grainy
    even when in a small window
  * 100 mbit LAN / internet: a full screen refresh can take several seconds
  * 20/4 mbit internet: when a full screen refresh is needed, I can
    observe the 64x64 squares being rendered across the screen and it
    takes multiple seconds. Scrolling an editor window is an operation
    that takes patience. Connection useless but for the most urgent
    tasks where patience is not an issue. Even X over ssh seems the
    better option here.

I compare this to Win10 RDP, which - over the same 20/4 connection - 
behaves as if I were at the machine in question, even for full-screen video.

The VMs are all setup thus:

  * Display spice: Spice server with everything on default, no OpenGL
  * Video VirtIO: model VirtIO, 3D acceleration: yes, heads:2, RAM 128MB

I tried video: QXL, but that one completely hogged my LAN, even at gbit, 
delivering little for the bandwidth taken (it was less performant than 
VirtIO). Same for running everything on local machine too. It seems it 
just continuously grabs frames and transmits them regardless of whether 
there's any action or not.

Driver in use for guests is virtio-pci for manjaro (video frames 
undistorted, but frames lost depending on bandwidth), qxl for ubuntu 
(video frames are chopped up, presumably by algorithm snapping them 
partially before transmission). QXL despite the fact that video for the 
vm in question is set to VirtIO. May also be a result of my tinkering 
but useful for comparison anyway.

I have searched all 'round the place and I did find this thread 
<https://spice-devel.freedesktop.narkive.com/m7FY7Dvb/spice-v12-00-26-add-gstreamer-support-for-video-streaming>. 
It seems to have been merged, but there are no instructions on how to 
modify VM configuration to use H264 instead of MJPEG for video encoding.

*#2 - inadequate graphics acceleration*

Well, I mostly base this one on observed CPU usage. I have noticed on 
all my linux guests (Manjaro, Ubuntu) that even moving a window around 
the desktop significantly raises CPU usage in the guest. I would venture 
to guess one core gets taken by such an endeavor. Playing a video in 
browser full screen would take closer to two cores.

It is not much different for Windows guests: running a video or a skype 
video session absolutely hogs the CPU. While skype itself takes little 
CPU, the overall CPU usage goes toward 80 - 100% on a 6 core VM. The 
actual process consuming that CPU is not shown in details pane. Using 
Red Hat QXL controller for display adapter on Win10 64-bit.

I have found no solution to this problem.


After a very long time and continuing frustration with the problem, I 
turn to you guys in hope of a suggestion on what I'm doing wrong. Just 
as gladly I would hear of a setup that is known to perform well, I have 
no particular need to resolve my exact issues. Reinstalling the host and 
/ or guests is not a problem if a known good configuration will perform 
for me too...

Thanks,
Jure


--------------842B6FBD7C80EE5901E7CE9E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello (very fearfully, because I found no list that could be
      helpful and this one seems to be for developers...),</p>
    <p>I have been trying for a long while now to get my VM machines to
      perform well, but I can't seem to get it right. I seem to be
      suffering from two issues:</p>
    <ol>
      <li>remote-viewer / libvirt host uses inefficient codecs to
        transfer audio / video</li>
      <li>virtual machines themselves don't seem to have their graphics
        accelerated sufficiently<br>
      </li>
    </ol>
    <p>I proceed to elaborate on both:</p>
    <p><b><font size="+1">#1 - inefficient codecs</font></b></p>
    <p>So I have a number of VMs running under qemu on Ubuntu 18.04. AMD
      2700x + nvidia 1060 gtx (driver nvidia). qemu 4.2, libvirt 6.0.0.
      Everything works fine except accessing the VMs remotely: the
      slower the connection, the worse it gets. Running them on 4K
      monitor - please note the resolution. Using remmina or
      virt-viewer, makes no difference.<br>
    </p>
    <ul>
      <li>on local machine, everything is next to perfect, the only
        noticeable quality degradation is video full-screen.</li>
      <li>1gbit LAN: noticeable delays rendering stuff, video becomes
        grainy even when in a small window</li>
      <li>100 mbit LAN / internet: a full screen refresh can take
        several seconds</li>
      <li>20/4 mbit internet: when a full screen refresh is needed, I
        can observe the 64x64 squares being rendered across the screen
        and it takes multiple seconds. Scrolling an editor window is an
        operation that takes patience. Connection useless but for the
        most urgent tasks where patience is not an issue. Even X over
        ssh seems the better option here.</li>
    </ul>
    <p>I compare this to Win10 RDP, which - over the same 20/4
      connection - behaves as if I were at the machine in question, even
      for full-screen video.<br>
      <br>
      The VMs are all setup thus:<br>
    </p>
    <ul>
      <li>Display spice: Spice server with everything on default, no
        OpenGL</li>
      <li>Video VirtIO: model VirtIO, 3D acceleration: yes, heads:2, RAM
        128MB</li>
    </ul>
    <p>I tried video: QXL, but that one completely hogged my LAN, even
      at gbit, delivering little for the bandwidth taken (it was less
      performant than VirtIO). Same for running everything on local
      machine too. It seems it just continuously grabs frames and
      transmits them regardless of whether there's any action or not.<br>
    </p>
    <p>Driver in use for guests is virtio-pci for manjaro (video frames
      undistorted, but frames lost depending on bandwidth), qxl for
      ubuntu (video frames are chopped up, presumably by algorithm
      snapping them partially before transmission). QXL despite the fact
      that video for the vm in question is set to VirtIO. May also be a
      result of my tinkering but useful for comparison anyway.</p>
    <p>I have searched all 'round the place and I did find <a
href="https://spice-devel.freedesktop.narkive.com/m7FY7Dvb/spice-v12-00-26-add-gstreamer-support-for-video-streaming">this
        thread</a>. It seems to have been merged, but there are no
      instructions on how to modify VM configuration to use H264 instead
      of MJPEG for video encoding.<br>
    </p>
    <p><font size="+1"><b>#2 - inadequate graphics acceleration</b></font></p>
    <p>Well, I mostly base this one on observed CPU usage. I have
      noticed on all my linux guests (Manjaro, Ubuntu) that even moving
      a window around the desktop significantly raises CPU usage in the
      guest. I would venture to guess one core gets taken by such an
      endeavor. Playing a video in browser full screen would take closer
      to two cores.<br>
    </p>
    <p>It is not much different for Windows guests: running a video or a
      skype video session absolutely hogs the CPU. While skype itself
      takes little CPU, the overall CPU usage goes toward 80 - 100% on a
      6 core VM. The actual process consuming that CPU is not shown in
      details pane. Using Red Hat QXL controller for display adapter on
      Win10 64-bit.<br>
    </p>
    <p>I have found no solution to this problem.<br>
    </p>
    <p><br>
    </p>
    After a very long time and continuing frustration with the problem,
    I turn to you guys in hope of a suggestion on what I'm doing wrong.
    Just as gladly I would hear of a setup that is known to perform
    well, I have no particular need to resolve my exact issues.
    Reinstalling the host and / or guests is not a problem if a known
    good configuration will perform for me too...<br>
    <p>Thanks,<br>
      Jure<br>
    </p>
  </body>
</html>

--------------842B6FBD7C80EE5901E7CE9E--

--===============0456346543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0456346543==--
