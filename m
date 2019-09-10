Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A62DAAF71C
	for <lists+spice-devel@lfdr.de>; Wed, 11 Sep 2019 09:44:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D71E6EA42;
	Wed, 11 Sep 2019 07:44:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B40C86E99F
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 21:03:42 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id p2so17415452edx.11
 for <spice-devel@lists.freedesktop.org>; Tue, 10 Sep 2019 14:03:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kYKnBYia5lnzOs+ifUsu4Xowmkbjz15Ir5p0I1+dtZA=;
 b=oqW8xZol2Gd7bVXpWJbg6a/JrUD2wjSAQvmua93/mW2ltIJQd1w9KNm1mL2BQyvatR
 fNTmymZqMVuUVtzFZw7LPF6zvCTJgAxMZlgIjv4idpxwYPETCpd3daXYxdX6NMPBNp54
 MPIU1ansohavlrTablpciBTDLUrc4u5WU2xzOxPxmb2BFiMLJhxTOX/na6TbpATZsGba
 JA/e56tt2EXEyB4RBcKImGi7duyM6P994nnnb99OAWDiI4d6+1HelvdC8KnAeOnHogzw
 WryjtpQSGukxZTYDRbwyHYpGPJUwQ5igbtZFA0KKG1/xcYjcqbdAChl7o0VkkpAJp4kD
 uogA==
X-Gm-Message-State: APjAAAXOMsGr1zL9Lu/NCZlHo3UMZTvSstBZvogoilfMZJfpnNTXMKrp
 wySXRDMJfeaLvWXNjqfB63YUIy9Rp6Qnec4Gp4qxafQp
X-Google-Smtp-Source: APXvYqyNKxdXh5YWW5ljxrZys+YYmrtr0n28GVBBuUA4iN/Otg7keFV0LuuQPPHvM88tLyYGXRpPCt4JD1X+MkGXwCw=
X-Received: by 2002:a50:f98c:: with SMTP id q12mr32137557edn.75.1568149421215; 
 Tue, 10 Sep 2019 14:03:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAOnjVuo6XYni=KF1miXKET8oma7ixB2jLc6-OvfDUw3czr_tdA@mail.gmail.com>
 <4c9bc703-a93d-cc4f-63f5-25808973618b@redhat.com>
In-Reply-To: <4c9bc703-a93d-cc4f-63f5-25808973618b@redhat.com>
From: Rafael de Almeida <rafaelrdealmeida@gmail.com>
Date: Tue, 10 Sep 2019 18:03:29 -0300
Message-ID: <CAOnjVuqzKY2oLyvq7Pc3T7sGcMZZUHw79+yNAJoU2_eoHtw=Zw@mail.gmail.com>
To: uril@redhat.com
X-Mailman-Approved-At: Wed, 11 Sep 2019 07:44:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=kYKnBYia5lnzOs+ifUsu4Xowmkbjz15Ir5p0I1+dtZA=;
 b=RBJH8kauTU7KQoW5ISN7T52RqpJfykFmJ9vK/bJ4i5QQHekNohyzmjipUAZeM8G1bn
 JNtHIKGWkxMObCi3+5pcQ4P1/Lk0dEKo5nvz9WT3iLf3BGr6AYEDe3bXmFdGLs0BU3uu
 zH8z/vXAwk8cqREvhHdxqUuq+uFMhy1mE5GrTCSouhNqsipOyQ24kByt19Cy3yIzwg+r
 EONHkqeBiBeT2Q7oo6KBbiaH8BvvtXiW67VK/zRDNIdSIRyGhodzPF2Sn+ZB84z/Ml66
 H2ECObE5ddhQwjpx8+7bTrIyWvN9KShRNFlkXDrlbbufcCTVHhzCT0cmbpIJLNNNXdlJ
 w0YQ==
Subject: Re: [Spice-devel] proxmox spice - control video and audio
 compression
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0192857635=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0192857635==
Content-Type: multipart/alternative; boundary="00000000000034d4180592393dcc"

--00000000000034d4180592393dcc
Content-Type: text/plain; charset="UTF-8"

Awesome, thanks!

Em ter, 10 de set de 2019 08:31, Uri Lublin <uril@redhat.com> escreveu:

> On 9/10/19 3:28 AM, Rafael de Almeida wrote:
> > Hello,
> >
> > We use x2go and chrome remote desktop for VDI on the virtual machines
> > that are on proxmox.
> >
> > We recently started using spice to access webcam through weaker
> > computers (dualcore processors) that don't support good quality video
> > conferencing.
> >
> >
> > Everything is working perfectly (audio and image), but I believe there
> > has been a high compression in the spice that causes a slight delay in
> > sending video and audio.
> >
> > The network has hardly any more significant use even with video sending.
> >
> > How can I control compression? How do I deduce or disable compression in
> > vm proxmox?
> >
>
> Hi,
>
> You can use qemu-kvm -spice option to set the following options:
>   * image-compression=[auto_glz|auto_lz|quic|glz|lz|off]
>   * jpeg-wan-compression=[auto|never|always]
>   * zlib-glz-wan-compression=[auto|never|always]
>   * streaming-video=[off|all|filter]
>
> See man qemu-kvm for more information.
> You can start by setting all these options to 'off'.
>
> See libvirt documentation about domain xml for setting these
> options when running the VM via libvirt.
>
> Hope that helps,
>      Uri.
>

--00000000000034d4180592393dcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Awesome, thanks!=C2=A0</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Em ter, 10 d=
e set de 2019 08:31, Uri Lublin &lt;<a href=3D"mailto:uril@redhat.com" targ=
et=3D"_blank">uril@redhat.com</a>&gt; escreveu:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On 9/10/19 3:28 AM, Rafael de Almeida wrot=
e:<br>
&gt; Hello,<br>
&gt; <br>
&gt; We use x2go and chrome remote desktop for VDI on the virtual machines =
<br>
&gt; that are on proxmox.<br>
&gt; <br>
&gt; We recently started using spice to access webcam through weaker <br>
&gt; computers (dualcore processors) that don&#39;t support good quality vi=
deo <br>
&gt; conferencing.<br>
&gt; <br>
&gt; <br>
&gt; Everything is working perfectly (audio and image), but I believe there=
 <br>
&gt; has been a high compression in the spice that causes a slight delay in=
 <br>
&gt; sending video and audio.<br>
&gt; <br>
&gt; The network has hardly any more significant use even with video sendin=
g.<br>
&gt; <br>
&gt; How can I control compression? How do I deduce or disable compression =
in <br>
&gt; vm proxmox?<br>
&gt; <br>
<br>
Hi,<br>
<br>
You can use qemu-kvm -spice option to set the following options:<br>
=C2=A0 * image-compression=3D[auto_glz|auto_lz|quic|glz|lz|off]<br>
=C2=A0 * jpeg-wan-compression=3D[auto|never|always]<br>
=C2=A0 * zlib-glz-wan-compression=3D[auto|never|always]<br>
=C2=A0 * streaming-video=3D[off|all|filter]<br>
<br>
See man qemu-kvm for more information.<br>
You can start by setting all these options to &#39;off&#39;.<br>
<br>
See libvirt documentation about domain xml for setting these<br>
options when running the VM via libvirt.<br>
<br>
Hope that helps,<br>
=C2=A0 =C2=A0 =C2=A0Uri.<br>
</blockquote></div>

--00000000000034d4180592393dcc--

--===============0192857635==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0192857635==--
