Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A773647ED9D
	for <lists+spice-devel@lfdr.de>; Fri, 24 Dec 2021 10:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3114D10E430;
	Fri, 24 Dec 2021 09:05:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C11C10E429
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Dec 2021 09:05:06 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id f125so7327123pgc.0
 for <spice-devel@lists.freedesktop.org>; Fri, 24 Dec 2021 01:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P42oKz/vumZnUqMpbY5MUVxeCPH7BjqmsYlD7gaF3nU=;
 b=Wp7VtNm6NwtCE4cyleaYRJ4Ik9UYHO4BC/ct6PTvk40YOZtTaOKMT6F18ztVuCz4MM
 eQl3qi3YrFhDZmHnoheyFGRxhgNpfbtRne0pTVZ1tjsX0Yn8BkF18/xVaVQX+lpPWcYf
 0aLDKkDjzQFEbpJeOLKX7qMFsx56SEWwko6Xrvzzig4HbNQs+CkZuzn3VvJibEXgISat
 MQolG1xU3/3Fn5Kxxg4xPAigruIJV28bv6NcXAJ3u5maBsW2ScDF3xnlMkRviByTGM6s
 j70EShEs4Btn1cJWGcuuaU4KblwCRAybajsjpXJiO4/MCekJKD60YpQSb0/Mtj00t6at
 DyEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P42oKz/vumZnUqMpbY5MUVxeCPH7BjqmsYlD7gaF3nU=;
 b=urR9adO+xLgBlAp9SpR2Gt7OQFIonLu8QJfJ9eLBgo+n9nd+vVYEmCulNENYy6m4Wz
 gYB1H39TROLUj2Vmry04H9HSwflqrD2em1W+ffAgQNdNg4uaWIp8PgQGtxwluOIfuj6P
 w/TUabR5FTZ304s3er1HzIs+Z2RXiYkKjNESSnKHkzVat3ito6PB0CLLTieo5pi1AcFc
 eRmhvG3eZmCvU0VTEf9FiSmMriWL30d+7HztRIQn7vh/L9ThCzhSMMJvHg7jknI+5nnt
 ntpwV8WSr2II/eol/sXSVXBZKKQ7P1jzdMriMwBxFuq7tg2/YipPzWxyB28VEtnEIMiN
 DMEQ==
X-Gm-Message-State: AOAM531Cje2/ArSnENoiQtTesKlu/0MFUS7J9s6SDJ0Ob0DJM2kkOAKC
 RHJIx1q1mLcoVR5yK6fa29Z9EHOROFFKOvh2/nfgB4j3xo0=
X-Google-Smtp-Source: ABdhPJyxi9BRfTr+QXCaI0kyCHtf8C2gApxj0hSGdbsot7EpSBlY24lFZWZ8QOTdHT2myGOD62a60Sa2a3ADaG6rceQ=
X-Received: by 2002:a63:215e:: with SMTP id s30mr5188974pgm.474.1640336705870; 
 Fri, 24 Dec 2021 01:05:05 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn14OvBAL3u-0WfnD0DpJFv1HNnq9GVX=oQRgOH0o2678A@mail.gmail.com>
In-Reply-To: <CAMS0tn14OvBAL3u-0WfnD0DpJFv1HNnq9GVX=oQRgOH0o2678A@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 24 Dec 2021 09:04:54 +0000
Message-ID: <CAHt6W4e2_AyX_G6xe=c=_7-gABb9m=yJJsfm5XYs=JbiuYPDiQ@mail.gmail.com>
To: i iordanov <iiordanov@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000aa61fd05d3e0a640"
Subject: Re: [Spice-devel] error: No free USB channel
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000aa61fd05d3e0a640
Content-Type: text/plain; charset="UTF-8"

Il giorno gio 23 dic 2021 alle ore 23:38 i iordanov <iiordanov@gmail.com>
ha scritto:

> Hi guys,
>
> During my testing I've been unable to connect more than 2 USB devices
> at a time - could you please help me figure out why that's happening?
>
> The backend starts returning error with message "No free USB channel",
> but I can't see how to tune the number of USB channels available!
>
> 2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
> D/android-service: connect_cb: start
> 2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE
> I/android-service: connect_cb: successfully redirected device
> 2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
> D/android-service: connect_cb: start
> 2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE
> I/android-service: connect_cb: successfully redirected device
> 2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
> D/android-service: connect_cb: start
> 2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE
> E/android-service: connect_cb: failed to redirect device, error: No
> free USB channel
> 2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
> D/android-service: connect_cb: start
> 2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE
> E/android-service: connect_cb: failed to redirect device, error: No
> free USB channel
> 2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
> D/android-service: connect_cb: start
> 2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE
> E/android-service: connect_cb: failed to redirect device, error: No
> free USB channel
>
> Your help is very appreciated.
>
> Thanks!
> iordan
>
>
Hi,
  this is expected. Every USB channel allow to attach one USB device. Is
like having 2 physical USB ports on your computer. If you don't use an HUB
you can attach only 2 USB physical devices. Currently there's no software
USB hub so one USB device takes one USB channel and by default only 2 USB
channels are attached to the VM.

Frediano

--000000000000aa61fd05d3e0a640
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno gio 23 dic 2021 alle ore 23:38 i iordanov &lt;<a href=3D"m=
ailto:iiordanov@gmail.com">iiordanov@gmail.com</a>&gt; ha scritto:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Hi guys,<br>
<br>
During my testing I&#39;ve been unable to connect more than 2 USB devices<b=
r>
at a time - could you please help me figure out why that&#39;s happening?<b=
r>
<br>
The backend starts returning error with message &quot;No free USB channel&q=
uot;,<br>
but I can&#39;t see how to tune the number of USB channels available!<br>
<br>
2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE<br>
D/android-service: connect_cb: start<br>
2021-12-23 15:27:52.608 29721-29760/com.iiordanov.aSPICE<br>
I/android-service: connect_cb: successfully redirected device<br>
2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE<br>
D/android-service: connect_cb: start<br>
2021-12-23 15:28:00.499 29721-29760/com.iiordanov.aSPICE<br>
I/android-service: connect_cb: successfully redirected device<br>
2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE<br>
D/android-service: connect_cb: start<br>
2021-12-23 15:28:03.582 29721-29760/com.iiordanov.aSPICE<br>
E/android-service: connect_cb: failed to redirect device, error: No<br>
free USB channel<br>
2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE<br>
D/android-service: connect_cb: start<br>
2021-12-23 15:28:06.385 29721-29760/com.iiordanov.aSPICE<br>
E/android-service: connect_cb: failed to redirect device, error: No<br>
free USB channel<br>
2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE<br>
D/android-service: connect_cb: start<br>
2021-12-23 15:28:08.634 29721-29760/com.iiordanov.aSPICE<br>
E/android-service: connect_cb: failed to redirect device, error: No<br>
free USB channel<br>
<br>
Your help is very appreciated.<br>
<br>
Thanks!<br>
iordan<br>
<br></blockquote><div>=C2=A0</div><div>Hi,</div><div>=C2=A0 this is expecte=
d. Every USB channel allow to attach one USB device. Is like having 2 physi=
cal USB ports on your computer. If you don&#39;t use an HUB you can attach =
only 2 USB physical devices. Currently there&#39;s no software USB hub so o=
ne USB device takes one USB channel and by default only 2 USB channels are =
attached to the VM.<br></div><div><br></div><div>Frediano<br>
</div></div></div>

--000000000000aa61fd05d3e0a640--
