Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D66252697
	for <lists+spice-devel@lfdr.de>; Wed, 26 Aug 2020 07:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FD9A6E096;
	Wed, 26 Aug 2020 05:52:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com
 [IPv6:2607:f8b0:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EEEC6E096
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Aug 2020 05:52:32 +0000 (UTC)
Received: by mail-ot1-x32b.google.com with SMTP id 5so562567otp.12
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Aug 2020 22:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=27esVWOObx1dzuKPvKVON/+MMgwxCRFQYK/9Z+13M6I=;
 b=Fgd6lt0UvirEO5Yp9uWaFGKncZc1WcoMgs6C6Vz1QnzjVQF+QvCT6Rp/Rz4fX5GxA0
 /HAnK/DfrpAILtek/8yHiptMWsXAHAzJOjpefhfU6Do8swdnXMMwFzU2BkTbqQIFJenL
 ITcMUqrhjNERasUNgo1J+0iysJXPr4MXKIDDg8/SxvbqcV8E1mLC4Nefqf8GGop5Id7o
 iskKKY4/bqy9yxbzgZH9U9c22j4hqJPTGaUFmrh0C2LCTAvsWSBq1ZSx6MoNnriGdr0h
 bmFZ4nLTR1Yjb+1sb9hNsH24FQoy9h4gTBAKFUWdYf0KWyW33I8W2Yp8O6YflWuCKebR
 FsGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=27esVWOObx1dzuKPvKVON/+MMgwxCRFQYK/9Z+13M6I=;
 b=dedyKSEkBnyxS2xrJqu+FHguAtq0PI5EQwMQwp96vO1yYJ67xiMkA5Y74A8Bsi1YhU
 uukXWnPbi48auSpFXUdYc0Ms4V0gv41lwQF0RHwlyiJeocdz40PXdFpUd0JIOjZpGukI
 AYdiw7+mXfoIh1DSuS8zIyu0hz12XTDJaPcFbFFhpVxAuU+gLu71uabhABH0SUg1ABHZ
 aBOZO7JiVOChT9YATN1c8IteUW6c8V21UCGE2U4Er4/L+mMa9g02hz1CaduIuLmEvpxs
 Qcee6gHPPSMG2FTSOFcP0A7h0jDNHZ0dQ8sXugl9jdxi+XSEt5YKJcRnuOIRcnqN1yyE
 UNkQ==
X-Gm-Message-State: AOAM530Oy349SzTLshicMSSwir5TLWxbxfTvZD/yzf+MWyNWNmVNxGkw
 Tscp9hyrPKj+bYApnLf+J/GQIr216OBkhlFpoPQ=
X-Google-Smtp-Source: ABdhPJxWvoCHRfr2dqU4iA0iiPUgfI6BARm6JvqGfilbGJ9SbuCcrlFl4FNGrrNqaNCc/HPIsnY29iNDKlg2+XJJJ6I=
X-Received: by 2002:a9d:4f04:: with SMTP id d4mr8665054otl.210.1598421151378; 
 Tue, 25 Aug 2020 22:52:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAMS0tn29PAn=j36wef9C96rx_rPpCGW1EmF2WeHBAxvtZt=vKQ@mail.gmail.com>
 <374247645.38560092.1598344308332.JavaMail.zimbra@redhat.com>
In-Reply-To: <374247645.38560092.1598344308332.JavaMail.zimbra@redhat.com>
From: i iordanov <iiordanov@gmail.com>
Date: Wed, 26 Aug 2020 01:52:20 -0400
Message-ID: <CAMS0tn33jhizic7mvEPQDTqSEVHQOR=p49hQy8K66k3eDAWsgA@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] agent_sync_audio_playback call causes deadlock
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
Content-Type: multipart/mixed; boundary="===============1302419631=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1302419631==
Content-Type: multipart/alternative; boundary="000000000000edefdf05adc16c78"

--000000000000edefdf05adc16c78
Content-Type: text/plain; charset="UTF-8"

Hi Frediano,

On Tue, Aug 25, 2020 at 4:31 AM Frediano Ziglio <fziglio@redhat.com> wrote:

> Is it a deadlock, a crash or the program get stuck into some loop?
>

It is not a crash, there is no obvious loop that is being executed, and the
Android Profiler shows that CPU is idle. Therefore, I postulated it's a
deadlock.


> Maybe some missing base GStreamer plugins?
> Which plugins are installed on that system?
>

I use cerbero to build gstreamer, and the list of gstreamer packages
currently being built are:

gstreamer-1.0 gst-android-1.0 gst-plugins-bad-1.0 gst-plugins-good-1.0
gst-plugins-base-1.0 gst-plugins-ugly-1.0 gst-libav-1.0


> How did you manage to track these functions?
> As far as I see these functions just schedule other functions.
>

I worked the code path back from the debug message
2020-08-24 01:24:31.609 11571-11643/com.undatech.opaque D/GLib+GSpice:
spice-gstaudio.c:299 audio pipeline: appsrc is-live=1 do-timestamp=0
format=time caps="audio/x-raw,format="S16LE",channels=2,rate=48000,lay$

since it is the last message from spice-gtk that I could recognize. I may
also have looked at what signals are connected to call what callbacks
during my trace. Unfortunately, I cannot at present actually do a native
code debug session with aSPICE since the Android debugger actually crashes
when I try.

Iordan

--000000000000edefdf05adc16c78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div>Hi Frediano,</div><div><br=
></div><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Aug 25, 2020 at 4:31 AM Frediano Ziglio &lt;<a href=3D"mailto:fzi=
glio@redhat.com">fziglio@redhat.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
Is it a deadlock, a crash or the program get stuck into some loop?<br></blo=
ckquote><div><br></div><div>It is not a crash, there is no obvious loop tha=
t is being executed, and the Android Profiler shows that CPU is idle. There=
fore, I postulated it&#39;s a deadlock.<br></div><div>=C2=A0<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
Maybe some missing base GStreamer plugins?<br>
Which plugins are installed on that system?<br></blockquote><div><br></div>=
<div>I use cerbero to build gstreamer, and the list of gstreamer packages c=
urrently being built are:</div><div><br></div><div>gstreamer-1.0 gst-androi=
d-1.0 gst-plugins-bad-1.0 gst-plugins-good-1.0 gst-plugins-base-1.0 gst-plu=
gins-ugly-1.0 gst-libav-1.0<br></div><div>=C2=A0<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
How did you manage to track these functions?<br>
As far as I see these functions just schedule other functions.<br></blockqu=
ote><div><br></div><div>I worked the code path back from the debug message<=
/div><div>2020-08-24 01:24:31.609 11571-11643/com.undatech.opaque=20
D/GLib+GSpice: spice-gstaudio.c:299 audio pipeline: appsrc is-live=3D1=20
do-timestamp=3D0 format=3Dtime caps=3D&quot;audio/x-raw,format=3D&quot;S16L=
E&quot;,channels=3D2,rate=3D48000,lay$</div><div><br></div><div>since it is=
 the last message from spice-gtk that I could recognize. I may also have lo=
oked at what signals are connected to call what callbacks during my trace. =
Unfortunately, I cannot at present actually do a native code debug session =
with aSPICE since the Android debugger actually crashes when I try.<br></di=
v><div>=C2=A0<br></div>Iordan<br></div></div></div>

--000000000000edefdf05adc16c78--

--===============1302419631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1302419631==--
