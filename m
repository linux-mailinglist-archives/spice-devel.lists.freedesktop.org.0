Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F083AE6B5
	for <lists+spice-devel@lfdr.de>; Mon, 21 Jun 2021 12:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DCFA89CDB;
	Mon, 21 Jun 2021 10:05:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9111789CDB
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Jun 2021 10:05:17 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id y13so2153036plc.8
 for <spice-devel@lists.freedesktop.org>; Mon, 21 Jun 2021 03:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=okmgyKly3MJvIP/UUTBYEJDskDZZjcGjT9iOmzDzfek=;
 b=OlgV1xxJbTKVoVPp7zFfjODkUV5F4YigAmIMC68W8FC7+cvtm83Y/0DqUCI5Di0kHO
 q1lsjkiwqHIiWFkzFMvn+Z23MkqSatu114MuuXYcUwNeuYfzX4rKjhWco6/M5neW0XQP
 nnW0hpBVPu2J1YFjqcvEkUWJQKtDYRviDssPXQNkTDezZxCQ7FgSaSMfpa3weWfNbjC4
 NuEOY4OH9eKfI8bO5dFqhA+kD2PckAJ7F9+Dsrm4mD0aht80MD+tL83ECwsucmGuleaD
 xfGWthCZIyeeXCSrogP4kPcCTEiMyIdNIvA3DAdUhY3qP+vqHClgvD12LX+brHI9TxxW
 NB9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=okmgyKly3MJvIP/UUTBYEJDskDZZjcGjT9iOmzDzfek=;
 b=VUgfYzzrh/rHaD2/bLrBdFNjPX6OmqaT0rroxisGTtKAEv6jLVPxRivpVi6jRFsUak
 Z2jHMcHjVb0v4FFjGkZseVhORjjrGHkCJwvh/DCqCHWLhnVX11CsFbqq7NyGs6AbGsVk
 dXEQlQ/b61tu6LwtbX8/Oi0K8VSqg64FebGbVpxSieHD6GuypHveGdYxfRxpmsZNilQA
 pAjUddg9csIDAlS1E/NGLeQlmIYMAS0Xm14mzsob6ZvTV9vfKwKLdiDOgLea8b7zBU2/
 JsDKsnfXV1wKD3YnnVj9YbRyOo5/oFSGS6PIE+rcHVc4GwqSV7UjxiRsG/9ksBvt3MD0
 Hwmw==
X-Gm-Message-State: AOAM532+cqLjFs3pdpi19Pb44k2RaWbe2tMbbQNNTkX0nasO+9SOZmJu
 Eg6OFsor/oQ6Pqjjmop1TDE2CmSxh6oBtiq2tjTGimtiWlqOQw==
X-Google-Smtp-Source: ABdhPJzZsCtMSiiKUkmPNGMHi/vMngfhQP/l3Wk9rPkvqtUslbc7aO1KadvVJrbo4DYlqSfGZI8aMZo/4xQ9RSaDjsA=
X-Received: by 2002:a17:90b:23d5:: with SMTP id
 md21mr7918399pjb.203.1624269916738; 
 Mon, 21 Jun 2021 03:05:16 -0700 (PDT)
MIME-Version: 1.0
From: "Noah O'Donoghue" <noah.odonoghue@gmail.com>
Date: Mon, 21 Jun 2021 17:04:59 +0700
Message-ID: <CANVktGPb3s2rEiOu+SmRtegN65tu4w+wDmxPgLNv5_Kgm3+hyQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: [Spice-devel] Spice with H264/5
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
Content-Type: multipart/mixed; boundary="===============1861699936=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1861699936==
Content-Type: multipart/alternative; boundary="000000000000681de605c543cfc8"

--000000000000681de605c543cfc8
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm trying to use gstreamer with spice to encode/decode video, as I think
it will be much faster and smoother than MJPEG,

I've installed these packages on both client and server (Ubuntu 20.04)
gstreamer1.0-plugins-base
gstreamer1.0-plugins-good,

And with remote-viewer --spice-debug I can see that my client/server are
advertising a range of protocols (including H264)..

But for some reason it only uses MJPEG..?

Any ideas?

Cheers,
Noah

--000000000000681de605c543cfc8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>I&#39;m trying =
to use gstreamer with spice to encode/decode video, as I think it will be m=
uch faster and smoother than MJPEG, <br></div><div><br></div><div>I&#39;ve =
installed these packages on both client and server (Ubuntu 20.04)<br></div>=
<div>gstreamer1.0-plugins-base <br></div><div>gstreamer1.0-plugins-good, <b=
r></div><div><br></div><div>And with=C2=A0remote-viewer --spice-debug I can=
 see that my client/server are advertising a range of protocols (including =
H264).. <br></div><div><br></div><div>But for some reason it only uses MJPE=
G..?</div><div><br></div><div>Any ideas?</div><div><br></div><div>Cheers,</=
div><div>Noah<br></div></div>

--000000000000681de605c543cfc8--

--===============1861699936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1861699936==--
