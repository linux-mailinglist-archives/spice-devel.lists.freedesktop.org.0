Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CABBD5AB9FD
	for <lists+spice-devel@lfdr.de>; Fri,  2 Sep 2022 23:23:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C022110E901;
	Fri,  2 Sep 2022 21:23:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FAD310E901
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Sep 2022 21:23:49 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id e13so3821346wrm.1
 for <spice-devel@lists.freedesktop.org>; Fri, 02 Sep 2022 14:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date;
 bh=O2TvaNcFIGhxuSGwxX3iU9JtjGxGhXLOrUwkwHPWSEU=;
 b=b08vw/sXTzVGOkaP/87yvIHXx11eSHs4Y9OGHE1k6aEv6Oj7SxWiJaoDbbRVc83w4Z
 kOZecTM07tjnj0lIZmn6DtIkORLSP1x/15yVbwpUg06PwAfIgVRDpR6n/4BC4KUYOPrL
 APVNWcjSwYEyanba/8+kw0r92oAIZ4c1/QkHTrlAQ5Ey4mCyxxrcHCXAhGy1LFHKulg5
 9EqvOptjqisS978qblAGfFAsfEw7Cd4ZjbhryVpIRHLpL7iXwMxdahJsrUKck5IMap8r
 f7beVntp/6XoaIXvXqSyHxE3N8YxXJrLI99FtbCk94CalZuRhlb8o+0fXgKvvr5UNA3z
 T02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date;
 bh=O2TvaNcFIGhxuSGwxX3iU9JtjGxGhXLOrUwkwHPWSEU=;
 b=PJgDYBA3Ht3T72EyIwLIsIHhOKcAVVqjYeyTARY9JuqqLZDL4D3jg5RkwzvcgI1Txf
 JCBuE+jxv+RYCi/HyTqxqGeiT8DC27rBAa5TR6H5HNekjR2zGnSOhVaR6tuPj+3cVkAu
 SzfpRPYpiNltswJLnqJHuQZXZy6Y/Hkk+Z6F1czprVNWVFxUXIC78e4tidmlOloFbNLS
 44i4ncC86iSQ3s+s4JnR9EGMdvHgfXgb2vz+n8b5Hvy7AuZSVGwD5pPMe14D1TBWYu+Y
 FhLna7401s3PKIXq6fNMFcoOi0Z+f+87c9S2lCjbU3/RbM9C9SRPw3nRAq+fw9j7Mi5u
 n9Pw==
X-Gm-Message-State: ACgBeo3VHS05a/NAutbBwY7dti9eGAI6AxGxD/65T6oDOK2gbkNHMcuF
 hSks+mcYroVz8rmcNlP//udX3M2jWarSU+O3faDo8/rVXtITaA==
X-Google-Smtp-Source: AA6agR7a2HDMiTVOJxV63Oj1eH6BrhAUroaRKuxM0pNscSnB9ar5adCP0pzgvOuh0q8uvO7Ey151hsmEutwd8gl/xYU=
X-Received: by 2002:a5d:5289:0:b0:225:4852:4248 with SMTP id
 c9-20020a5d5289000000b0022548524248mr17579475wrv.228.1662153827921; Fri, 02
 Sep 2022 14:23:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeBE=yhPCXNeR72Oiy83yS+gC+P82_tSX59XQ4dSvUMDHJGRA@mail.gmail.com>
 <20220902065324.kqoezlbkidndyx4m@tapioca>
In-Reply-To: <20220902065324.kqoezlbkidndyx4m@tapioca>
From: =?UTF-8?Q?Carlos_Gonz=C3=A1lez?= <piteccelaya@gmail.com>
Date: Fri, 2 Sep 2022 21:23:35 +0000
Message-ID: <CAGeBE=z8ee5V4_fT7rxOnaE_6g5idXke3UMLeQw3G-DGSADwfw@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>, spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000079b2a405e7b8581b"
Subject: Re: [Spice-devel] qxldod driver for Windows 11
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

--00000000000079b2a405e7b8581b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So the "rumors" are true: you (in general) really did discontinue/kill the
qxl drivers, if not the entire SPICE project soon. Was it because IBM?
Since being sold to them the first one to die was Centos, now this...

FYI:
https://gist.github.com/pojntfx/b860e123e649504bcd298aa6e92c4043#file-main-=
sh-L32
https://lists.freedesktop.org/archives/virglrenderer-devel/2021-January/001=
897.html
virtio-gpu implies virgl, and currently only works on Linux guests; RedHat
people explicitly deemed the Windows work "not worthy".

Thanks for killing the project.

El vie, 2 sept 2022 a las 6:53, Victor Toso (<victortoso@redhat.com>)
escribi=C3=B3:

> Hi Carlos,
>
> On Fri, Sep 02, 2022 at 12:08:04AM +0000, Carlos Gonz=C3=A1lez wrote:
> > I downloaded latest virtio-win ISO, and by browsing it I
> > noticed that, unlike the other drivers, for the qxldod one
> > there's only up to win10, and no explicit win11 versions.
> >
> > Does this mean that there are no drivers for Windows 11, and no
> > possibility of setting up a VM with full SPICE support?
> >
> > Thanks beforehand.
>
> You are correct, the last cycle of development was focused for
> windows 10.
>
> I expect windows 11 to maintain some compatibility with windows
> 10 so the drivers should work to some extent but I did not test
> it.
>
> I'd not hope for further development on qxl unless there is
> someone interested in investing time on it (and it would take
> some time).
>
> I'd instead switch to virtio-vga / virtio-gpu as this seems to
> have an active community.
>
>     https://github.com/virtio-win/kvm-guest-drivers-windows
>
> Cheers,
> Victor
>

--00000000000079b2a405e7b8581b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>So the &quot;rumors&quot; are true: you (in general) =
really did=20
discontinue/kill the qxl drivers, if not the entire SPICE project soon.=20
Was it because IBM? Since being sold to them the first one to die was=20
Centos, now this...</div><div><br></div><div>FYI:</div><div><a href=3D"http=
s://gist.github.com/pojntfx/b860e123e649504bcd298aa6e92c4043#file-main-sh-L=
32" target=3D"_blank">https://gist.github.com/pojntfx/b860e123e649504bcd298=
aa6e92c4043#file-main-sh-L32</a></div><div><a href=3D"https://lists.freedes=
ktop.org/archives/virglrenderer-devel/2021-January/001897.html" target=3D"_=
blank">https://lists.freedesktop.org/archives/virglrenderer-devel/2021-Janu=
ary/001897.html</a></div><div>virtio-gpu
 implies virgl, and currently only works on Linux guests; RedHat people=20
explicitly deemed the Windows work &quot;not worthy&quot;.</div><div><br></=
div><div>Thanks for killing the project.</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie, 2 sept 2022 a las 6:5=
3, Victor Toso (&lt;<a href=3D"mailto:victortoso@redhat.com">victortoso@red=
hat.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi Carlos,<br>
<br>
On Fri, Sep 02, 2022 at 12:08:04AM +0000, Carlos Gonz=C3=A1lez wrote:<br>
&gt; I downloaded latest virtio-win ISO, and by browsing it I<br>
&gt; noticed that, unlike the other drivers, for the qxldod one<br>
&gt; there&#39;s only up to win10, and no explicit win11 versions.<br>
&gt;<br>
&gt; Does this mean that there are no drivers for Windows 11, and no<br>
&gt; possibility of setting up a VM with full SPICE support?<br>
&gt;<br>
&gt; Thanks beforehand.<br>
<br>
You are correct, the last cycle of development was focused for<br>
windows 10.<br>
<br>
I expect windows 11 to maintain some compatibility with windows<br>
10 so the drivers should work to some extent but I did not test<br>
it.<br>
<br>
I&#39;d not hope for further development on qxl unless there is<br>
someone interested in investing time on it (and it would take<br>
some time).<br>
<br>
I&#39;d instead switch to virtio-vga / virtio-gpu as this seems to<br>
have an active community.<br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://github.com/virtio-win/kvm-guest-drivers-wi=
ndows" rel=3D"noreferrer" target=3D"_blank">https://github.com/virtio-win/k=
vm-guest-drivers-windows</a><br>
<br>
Cheers,<br>
Victor<br>
</blockquote></div>

--00000000000079b2a405e7b8581b--
