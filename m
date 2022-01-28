Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 643F34A2BFE
	for <lists+spice-devel@lfdr.de>; Sat, 29 Jan 2022 06:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6211910E2A3;
	Sat, 29 Jan 2022 05:32:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B168210E185
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jan 2022 20:48:30 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id u6so14103474lfm.10
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jan 2022 12:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=sK6mSt+bhBUSKG+DAovntCyY4H+mKLvVQl01FkkOlL8=;
 b=dicUZQf+q0l8TdXPbZkfa9qSTrjLC+T8puxF8agkz5Nh+9MxmH+oNdF645P2F0Dvsg
 bQAqfR6JEyTNF/7n3T/4eCN84P2ZV8F79LZ9xQJ8mbAfNsMoJC8yAtJ7VOUvjUku+omM
 E5GgY3NAnQtg/fSQHJldaBoSnwdc3KZ0HbfZtyljyq2fzNvhlpMG+5j1FTpxJBAo8AIW
 AVHFpm7/TBUHASDbXsPYTcIIi0ixbrND8c4w4a2UsHlmpBuer+NJCdl/iOOXfJYsMoeJ
 JeGDtw7VI2XwDAdmCe8NDPLkwnllbeXe8lX3RX+Qt3K0DWgtN4/mweVwkM2oCn1/J4TJ
 S7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=sK6mSt+bhBUSKG+DAovntCyY4H+mKLvVQl01FkkOlL8=;
 b=glMfyGoh5NEdx1Q8QhywqyR7TExbfkvYZ4c+a3r9qbNIHlUSRPBDpBFjBWypmRa1HG
 jYrr/2bdBpdtZUt1AI4jcILyjmKj4LRyKpWlJMbmpT6S4XXLp6QTdff6Ryo7Nc5H4BCC
 kFpFepjJy/8OVcXvDLR57eIy7lPdzz5rrnKuqE9b8vfhxCT65LpzsQ3gt24d/c8ZMcjl
 zZ2Tj1f8laFUQtFb7t8lbEdJ+mkwBkyOJttfzfJLnsMemxz4m54Ozv5AYLZD0v4YXmLy
 6CFn36tTipszXOrSehvvMF32YueJ7p+zpSQGp9ghWu+y/HX38ezm/H5z7vjv5MtMFdyM
 tEIg==
X-Gm-Message-State: AOAM5320B6+v8DNeWYUf0UC3vr3UADeWrFMs8cPqse/aBfPEUIu2CKRX
 tOfy8/BJXQuqZ7SFCpUKbmoWYHxflop2YjikGJpAvLM=
X-Google-Smtp-Source: ABdhPJz5aWwVIIxKXd5P856+KOaHKeSjCTLvjWzLFOIJvQBcHzBK0zGdqvGum6Ywhim0Uoqw/Eth0Ps9W1V9vZA+Wis=
X-Received: by 2002:a19:770a:: with SMTP id s10mr7152193lfc.70.1643402908551; 
 Fri, 28 Jan 2022 12:48:28 -0800 (PST)
MIME-Version: 1.0
From: Neal Piche <phirestalker@gmail.com>
Date: Fri, 28 Jan 2022 13:48:17 -0700
Message-ID: <CANkOWoyorOVg6GfqN=LJSqY=Km7TYo686T+PSWpXKTvi2TAz4g@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000964ec005d6aa8e06"
X-Mailman-Approved-At: Sat, 29 Jan 2022 05:32:33 +0000
Subject: [Spice-devel] Following audio device changes
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000964ec005d6aa8e06
Content-Type: text/plain; charset="UTF-8"

I am on macOS. Most applications are able to accept changes to the audio
device from the system and output sound to that device.

I use QEMU, and if I leave spice extensions disabled, the guest OS is able
to accept changes to the audio device multiple times. When I turn on spice
extensions, QEMU will try to continue outputting sound to the original
device. No matter what I change the output device to, it will keep whatever
it had originally. I don't know if it is QEMU using spice incorrectly, a
misconfiguration, or a bug in one of the spice packages.

Oh, I have tried with a Debian bullseye and Whonix guest with the same
results.

Has anyone found a workaround? Should I file a bug, and if so where?

--000000000000964ec005d6aa8e06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:large">I a=
m on macOS. Most applications are able to accept changes to the audio devic=
e from the system and output sound to that device.</div><div class=3D"gmail=
_default" style=3D"font-size:large"><br></div><div class=3D"gmail_default" =
style=3D"font-size:large">I use QEMU, and if I leave spice extensions disab=
led, the guest OS is able to accept changes to the audio device multiple ti=
mes. When I turn on spice extensions, QEMU will try to continue outputting =
sound to the original device. No matter what I change the output device to,=
 it will keep whatever it had originally. I don&#39;t know if it is QEMU us=
ing spice incorrectly, a misconfiguration, or a bug in one of the spice pac=
kages.</div><div class=3D"gmail_default" style=3D"font-size:large"><br></di=
v><div class=3D"gmail_default" style=3D"font-size:large">Oh, I have tried w=
ith a Debian bullseye and Whonix guest with the same results.</div><div cla=
ss=3D"gmail_default" style=3D"font-size:large"><br></div><div class=3D"gmai=
l_default" style=3D"font-size:large">Has anyone found a workaround? Should =
I file a bug, and if so where?</div></div>

--000000000000964ec005d6aa8e06--
