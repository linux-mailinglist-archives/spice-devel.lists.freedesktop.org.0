Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F18241F1B19
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jun 2020 16:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789416E8D9;
	Mon,  8 Jun 2020 14:35:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ABD96E8D9
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jun 2020 14:35:12 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id q25so16781482wmj.0
 for <spice-devel@lists.freedesktop.org>; Mon, 08 Jun 2020 07:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rbgj9GCPrlXM8hij4LG+pi+cGwItpL9lq9Qtot88PWE=;
 b=Ka7EHAyxK4wkENy9l8y+A0YZnASWN1v9K0iFOp6IJu7yevsQnFtnAK9Pj3+P8S9FgW
 A+oreb3+0T4cjIaes3/2vAO0WNQcmzjo2VwRHQaY+DXkb7uR/Se629JU8pC7O/uRO4de
 XxX64ugiTc2kAVgXt3KM9PnH+X+xZw4a7joeeWXEmcs05Sn56DhUhKR7CEb2vOV21/82
 mmenyfCzTxjKoIGVGN/RN9e6z080BbYZsTUwWz3XSYGtuOwbzLmSGK639ldvurGuRJfu
 BvKVY9ptdQi8uGmjjjjTfUlYXdsDSbOB7pmPqRFUQYU+ewMBhR/4FNoL+NXv1d00g+rc
 Q5hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rbgj9GCPrlXM8hij4LG+pi+cGwItpL9lq9Qtot88PWE=;
 b=n76RSq/6cSqidI3GPyhH9oZ36eHBu36iOolx5BupUsE7gFNdoXqHaqXNYbC1kGVtE5
 0A7mBwb5cy3HpSKFozhQknjyf/HWHWrvLPb+QsqO3BAXCGut18iCB4lLE9rjMmVL11jB
 ODMV8n/dZq7NVX10Crdy2sC6OjmyEgfl5B5EL8Aqxz7CzHW6HoaXArRSch09zV6T8yPT
 pPloqWcj42b+uPBGUDtGOxAKhlzdAadKll02KylmgeefatIUHZERETwCbxWfAWNLH+Et
 mCbUD/dpRuvdAGgNe3nZLeoXc8pVM8L/KXExBYtuQVd4g/i5CH516LK7ckdHtH0ewXEz
 6HYw==
X-Gm-Message-State: AOAM531861uW4EOPXqzRGAhem8Gq2JdXWtnbvAkUzvtAucrCkEWPqcAe
 SpRxIfNY6Bc6ZDRxbQJWxTuvFZ8iRtjxZM150tc=
X-Google-Smtp-Source: ABdhPJyT5qCosZ0ogQ6IDvrkKBXDAbt6+IRO/xL6iYRlWItDqnFh7yaaUaU38utfREIhm+cNQKfX8C5OmI1Xu6/A3qY=
X-Received: by 2002:a1c:6606:: with SMTP id a6mr16124965wmc.37.1591626910752; 
 Mon, 08 Jun 2020 07:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <9fe938f74ff5b7e5a198464811947eff@posteo.de>
In-Reply-To: <9fe938f74ff5b7e5a198464811947eff@posteo.de>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Mon, 8 Jun 2020 18:34:58 +0400
Message-ID: <CAJ+F1CL6POs6bMuJgaBW6_09uNWBnH2=u=p74s=16BVua2PeGw@mail.gmail.com>
To: laurens.nikolaisen@posteo.de
Subject: Re: [Spice-devel] Using QXL & Spice with Windows Host & QEMU
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
Content-Type: multipart/mixed; boundary="===============2009202603=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2009202603==
Content-Type: multipart/alternative; boundary="000000000000a1649f05a79384b7"

--000000000000a1649f05a79384b7
Content-Type: text/plain; charset="UTF-8"

Hi

On Mon, Jun 8, 2020 at 6:00 PM <laurens.nikolaisen@posteo.de> wrote:

> Hello everyone,
>
> when using Qemu 4.2.0 with a Windows host, qemu-system-x86_64 reports:
> "QXL VGA not available"
>
> I used the following Qemu args for testing:
> qemu-system-x86-x64.exe -accel hax -machine q35 -m 4GB -cdrom
> xubuntu-20.04-desktop-amd64.iso
>
> Using either "-vga stdt" or "-vga vmware" works. The performance is just
> not that good.
>
> Do I have a chance to get that up and running with a Windows 10 host and
> Qemu?
>

You better ask the question on qemu-devel@nongnu.org ML, or report a bug
directly to https://bugs.launchpad.net/qemu/

--000000000000a1649f05a79384b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 8, 2020 at 6:00 PM &lt;=
<a href=3D"mailto:laurens.nikolaisen@posteo.de">laurens.nikolaisen@posteo.d=
e</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Hello everyone,<br>
<br>
when using Qemu 4.2.0 with a Windows host, qemu-system-x86_64 reports:<br>
&quot;QXL VGA not available&quot;<br>
<br>
I used the following Qemu args for testing:<br>
qemu-system-x86-x64.exe -accel hax -machine q35 -m 4GB -cdrom <br>
xubuntu-20.04-desktop-amd64.iso<br>
<br>
Using either &quot;-vga stdt&quot; or &quot;-vga vmware&quot; works. The pe=
rformance is just <br>
not that good.<br>
<br>
Do I have a chance to get that up and running with a Windows 10 host and <b=
r>
Qemu?<br></blockquote><br><div>You better ask the question on <a href=3D"ma=
ilto:qemu-devel@nongnu.org">qemu-devel@nongnu.org</a> ML, or report a bug d=
irectly to <a href=3D"https://bugs.launchpad.net/qemu/">https://bugs.launch=
pad.net/qemu/</a></div><br></div></div>

--000000000000a1649f05a79384b7--

--===============2009202603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2009202603==--
