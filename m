Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1725C713814
	for <lists+spice-devel@lfdr.de>; Sun, 28 May 2023 08:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9DED10E09E;
	Sun, 28 May 2023 06:39:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2755910E09E
 for <spice-devel@lists.freedesktop.org>; Sun, 28 May 2023 06:39:10 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id
 5614622812f47-392116ae103so1436939b6e.0
 for <spice-devel@lists.freedesktop.org>; Sat, 27 May 2023 23:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685255949; x=1687847949;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=H3S3Yl3DOkpmGsDNAvto7FTX6HrOYug1WtA0ZVAly0M=;
 b=p9B/j186QSe3j4G4Oy5aP+kP0CZ96fM4sbPXVcFRcL4+UAmJweSf8ess+jlX1nY1YR
 shH7S/EbXSq6fW7dTObhNeoJeghU39kQCqBlLYzSsOF9jngqjclha33nalWv5Zopn5Uv
 MBIULarYBP+fJ8V9poSBtaJEzMvOQLrJbpf3/X1/VDVfwX4WG/wf7RgDyfXbHkYyI4tS
 M/m1HMQBbuGRtgnifk6apSXFF/nk9aZSi5keVabIT1gfU1i98rfORZ85GQhm4nvdlI5h
 eixxKavaL2S66Km67gozF1Z3daqx21uO94uVWEGJMs2sUzFAUJ1JrjJQGGjAQciCX99C
 q/eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685255949; x=1687847949;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=H3S3Yl3DOkpmGsDNAvto7FTX6HrOYug1WtA0ZVAly0M=;
 b=lKoZxS4ANU50Bv7eiVOsQpe1aLdeg77h0+yqQ9nPvHgSUUe7cLYujEpk/qwwP1u1PQ
 fi571GUFZN9e0WtDjZbPzJRffkn2S1Nv90tyalqlZfO/tO0cess4oJMM0pzz9exPdfKE
 +2pd+bZipQBDp3HKUqtTzJzIEgic1EVzRTmFkPvWt3mY4HpKuvOTPG/QykEc+4cLLRCG
 IE5ha1Crj6CuKzkJ+1AMWfOIZ8UACiEjqmRQmwglHyYQ8WMXchyB5b/T4vR3zmFNOLJV
 lwU7oNqjv7M5hBib0u+mrP2o5UQPH38KFKJ/ZgOq2fs0s/PqVhxRMhJ3q18LTrjvd3it
 o0hg==
X-Gm-Message-State: AC+VfDxedMJuNIUyDN5c9bWX0ZHdQ0oNkbLmZemSo+aJR4ca6qH47QU5
 jv+BX+iZ5or4VtetuNXqBQCGVJ0NtzLxBfUkjMk=
X-Google-Smtp-Source: ACHHUZ5dcxrFjVDQ7kzCAMU/4WbjTGHcRsoaPdQ06+vRRaPSfmc3y+nnReBOP5W88VG0Tc3HOAFtFObbPYckg31CQ2A=
X-Received: by 2002:a54:4492:0:b0:397:fb0f:c35a with SMTP id
 v18-20020a544492000000b00397fb0fc35amr3617164oiv.53.1685255949006; Sat, 27
 May 2023 23:39:09 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_D5878955D45FD159A97AED741F2635A8D50A@qq.com>
In-Reply-To: <tencent_D5878955D45FD159A97AED741F2635A8D50A@qq.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 28 May 2023 07:38:58 +0100
Message-ID: <CAHt6W4cTwoFMvkVYs-VmJp05FXoOTQ=HZM7WvxgN9ks1PfE2WQ@mail.gmail.com>
To: 2656017036 <2656017036@qq.com>
Content-Type: multipart/alternative; boundary="000000000000323c2505fcbb3a15"
Subject: Re: [Spice-devel] About the website download error
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

--000000000000323c2505fcbb3a15
Content-Type: text/plain; charset="UTF-8"

Hi,
   as a workaround click on the link with the right mouse button and click
on download.

It's just a server configuration that sends back the file as something to
display instead of something to save.

But strangely it worked correctly for me. Which browser and version are you
using?

Regards,
   Frediano



Il giorno dom 28 mag 2023 alle ore 07:32 2656017036 <2656017036@qq.com> ha
scritto:

> hello:
>         when I download the software,I found the following interface
> popped up directly after clicking the link.Thanks!
>
>
>
>
>
>

--000000000000323c2505fcbb3a15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div>=C2=A0=C2=A0 as a work=
around click on the link with the right mouse button and click on download.=
</div><div><br></div><div>It&#39;s just a server configuration that sends b=
ack the file as something to display instead of something to save.</div><di=
v><br></div><div>But strangely it worked correctly for me. Which browser an=
d version are you using?<br></div><div><br></div><div>Regards,<br></div><di=
v><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr">=C2=A0=
=C2=A0 Frediano</div></div></div></div><div><div dir=3D"ltr" class=3D"gmail=
_signature"><div dir=3D"ltr"><br></div></div></div><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno dom 28 mag=
 2023 alle ore 07:32 2656017036 &lt;<a href=3D"mailto:2656017036@qq.com">26=
56017036@qq.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">hello:<br><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 when I downl=
oad the software,I found the following interface popped up directly after c=
licking the link.Thanks!</div><div><br></div><div style=3D"box-sizing:borde=
r-box;margin:8px 0px 0px;padding:0px;color:rgb(147,149,153);font-size:12px;=
line-height:18px;display:inline-block;font-family:&quot;PingFang SC&quot;,&=
quot;Segoe UI&quot;,Arial,&quot;Microsoft YaHei&quot;,=E5=BE=AE=E8=BD=AF=E9=
=9B=85=E9=BB=91,=E5=AE=8B=E4=BD=93,&quot;Malgun Gothic&quot;,sans-serif"></=
div><div><br></div><div><br></div><div><br><br></div></blockquote></div></d=
iv>

--000000000000323c2505fcbb3a15--
