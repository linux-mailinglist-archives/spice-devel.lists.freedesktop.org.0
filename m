Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 396063F4FAF
	for <lists+spice-devel@lfdr.de>; Mon, 23 Aug 2021 19:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91BD89BAB;
	Mon, 23 Aug 2021 17:39:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4978589BAB
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Aug 2021 17:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629740349;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1BuBMC8Nihbs/BkunkUdKZPWZt5Ktlcw0fN7/oMbFL0=;
 b=IwYxUojqRsAnwM2c9E5shprXLBhi+wfLcBRZFqKjKjAuVIB+8wtEBVQUbtIoGQ6ePwZR8p
 0a9K8FVGj1CpTDSNhT0Ll+T+LIwcNk7i0oyUn41Ihydzu5EvwP+iR+SgAwH0xRMVfVEFbp
 Lg+a0LMdxeOEiTNpnIE/2R85N5DvvGI=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-aJejb_95P8iVtrZNmi3A2Q-1; Mon, 23 Aug 2021 13:39:06 -0400
X-MC-Unique: aJejb_95P8iVtrZNmi3A2Q-1
Received: by mail-lj1-f197.google.com with SMTP id
 q9-20020a2e9689000000b001b964fa10b3so6621616lji.18
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Aug 2021 10:39:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1BuBMC8Nihbs/BkunkUdKZPWZt5Ktlcw0fN7/oMbFL0=;
 b=JRwQt40TXBBKGivQ8eX3C45J3DUXVookoobyORFvTYsPQ9NS/SXooEtTQI/bqMqeYj
 Q83cgkbkRxdqYQpMwJjTe6yTtlnzX5D/TPBcYmEZhwd5WkPQQr03P5N+43+VtSomqHd3
 UnpMfh9BqNKiSZn7jhRYF86xpaa5SuvKgtoaEYEgc7Mo/Dm+zY9uz/Nh517mUoiNnrfd
 QUdj0L4lh3tTniFYO/bJ5SuOaPBY33ME6Jfb8INarSiAPoCZVFDgFKUkgQp7FsTaWtqE
 Tzya0hv/PuJGX0p9JUvEr+VHFd6LIL73gHWpXG80mfkbYkS7MfMkQaWMe7y9MaZV+v2d
 6KMw==
X-Gm-Message-State: AOAM533jH29RnhiJHPoMwkTRvX2rmvVzBCXXu3ZuYhGEbSV3lvsYn/7P
 eIwt8MXO+kxA9myiLyL1pbQLr1sLiXw2uwyTXMaLkbBjslj1A4H/TLRssP99OtXQ+7OJv+domuj
 bYciVIw0wy/OMadsna0A6vhhuutoGMcc6AL54D3cR1Ykppkg=
X-Received: by 2002:a2e:2417:: with SMTP id k23mr28596328ljk.256.1629740345320; 
 Mon, 23 Aug 2021 10:39:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyk9KezJWuVgAzbihSv9fKgWGry6Kj+DWZ1L7IHEISLHGOH4o0pbcawC0Ct0HYUKTsnCNPtsSxTcuoPE+XFe/Q=
X-Received: by 2002:a2e:2417:: with SMTP id k23mr28596318ljk.256.1629740345102; 
 Mon, 23 Aug 2021 10:39:05 -0700 (PDT)
MIME-Version: 1.0
References: <260041629725350@mail.yandex.ru>
 <20210823153432.3nuxkasg7tr5zz23@tapioca>
In-Reply-To: <20210823153432.3nuxkasg7tr5zz23@tapioca>
From: Uri Lublin <uril@redhat.com>
Date: Mon, 23 Aug 2021 20:38:54 +0300
Message-ID: <CAAg9qJ0-ez3X-KoMCEUOJU9eXx=ZgdjdTEQThD4ovFjy0ZH22Q@mail.gmail.com>
To: ole-krutov@yandex.ru, 
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Cc: Victor Toso <victortoso@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000058a58805ca3d7e87"
Subject: Re: [Spice-devel] No mouse with nvidia driver (spice-vdagent not
 working)
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

--00000000000058a58805ca3d7e87
Content-Type: text/plain; charset="UTF-8"

Hi,

What Victor said but also more below.


On Mon, Aug 23, 2021 at 6:34 PM Victor Toso <victortoso@redhat.com> wrote:

> Hi,
>
> On Mon, Aug 23, 2021 at 05:14:00PM +0300, ole-krutov@yandex.ru wrote:
> > - nvidia vGPU with proprietary driver is the only video
> > adapter.
>
> This is a know issue. NVIDIA driver does not provide a guest
> cursor. You can probably verify it with VNC too.
>

> The proper fix is to NVIDIA implement this feature, otherwise all
> we have is workarounds.
>
> You can try running a spice-gtk based client like remote-viewer
> with SPICE_DEBUG_CURSOR=1 as that might give you something
> rendered in the client side.
>

Yeah, it's the same for VNC.
Recently a command line option was added to virt-viewer/remote-viewer for
VNC.
https://gitlab.com/virt-viewer/virt-viewer/-/merge_requests/78


>
> You could also try to set "HWCursor" "off" in the xorg
> configuration file.
>
> > - spice-vdagent v.0.20 and qemu-guest-agent are installed.
>
> You should try v0.21 as I recall people were doing work around
> testing NVDIA and Wayland based systems, although I can't
> pinpoint something that would fix the logs I see.
>
>
I think the problem is not with spice-vdagent, but that SPICE gets no
cursor data from NVIDIA.

What qemu-kvm command line option do you use for connecting with the NVIDIA
GPU ?

Uri

--00000000000058a58805ca3d7e87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>What Victor said but als=
o more below.</div><div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Aug 23, 2021 at 6:34 PM Victor Toso &=
lt;<a href=3D"mailto:victortoso@redhat.com">victortoso@redhat.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Mon, Aug 23, 2021 at 05:14:00PM +0300, <a href=3D"mailto:ole-krutov@yand=
ex.ru" target=3D"_blank">ole-krutov@yandex.ru</a> wrote:<br>
&gt; - nvidia vGPU with proprietary driver is the only video<br>
&gt; adapter.<br>
<br>
This is a know issue. NVIDIA driver does not provide a guest<br>
cursor. You can probably verify it with VNC too.<br></blockquote><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
<br>
The proper fix is to NVIDIA implement this feature, otherwise all<br>
we have is workarounds.<br>
<br>
You can try running a spice-gtk based client like remote-viewer<br>
with SPICE_DEBUG_CURSOR=3D1 as that might give you something<br>
rendered in the client side.<br></blockquote><div><br></div><div><div>Yeah,=
 it&#39;s the same for VNC.</div><div>Recently a command line option was ad=
ded to virt-viewer/remote-viewer for VNC.</div><div><a href=3D"https://gitl=
ab.com/virt-viewer/virt-viewer/-/merge_requests/78">https://gitlab.com/virt=
-viewer/virt-viewer/-/merge_requests/78</a></div></div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
<br>
You could also try to set &quot;HWCursor&quot; &quot;off&quot; in the xorg<=
br>
configuration file.<br>
<br>
&gt; - spice-vdagent v.0.20 and qemu-guest-agent are installed.<br>
<br>
You should try v0.21 as I recall people were doing work around<br>
testing NVDIA and Wayland based systems, although I can&#39;t<br>
pinpoint something that would fix the logs I see.<br>
<br></blockquote><div><br></div><div>I think the problem is not with spice-=
vdagent, but that SPICE gets no</div><div> cursor data from NVIDIA.</div><d=
iv><br></div><div>What qemu-kvm command line option do you use for connecti=
ng with the NVIDIA GPU ? <br></div><div><br></div><div>Uri<br></div></div><=
/div>

--00000000000058a58805ca3d7e87--

