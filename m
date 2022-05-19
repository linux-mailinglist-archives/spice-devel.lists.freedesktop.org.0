Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A791A52DE80
	for <lists+spice-devel@lfdr.de>; Thu, 19 May 2022 22:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81D611A874;
	Thu, 19 May 2022 20:39:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618CD11A874
 for <spice-devel@lists.freedesktop.org>; Thu, 19 May 2022 20:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1652992749;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QNWaYHcrbMLYvpBw0sw9PBuWVj+RIQWLx9QPRQ1Dly4=;
 b=cbP29yh6JIIusry9C0uJgO7V0oyAtlpAAvLuTUx2sSqbsmi2lcdhx/FUxFs20gUehSh2IN
 3f1C8YtCuzny3FTBoVCgS7sv+IiO+9YUoXBdM98/pwEZpBZ7r1j47838jwZW2ye/ydF1bh
 GOMokKoyc9sevuY8s5qsKgK7utZeV2I=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-237-z7h9OG0aO-WD6EQ-I2F5MA-1; Thu, 19 May 2022 16:39:07 -0400
X-MC-Unique: z7h9OG0aO-WD6EQ-I2F5MA-1
Received: by mail-lf1-f69.google.com with SMTP id
 c6-20020a056512104600b00477b25bfdf8so3167394lfb.9
 for <spice-devel@lists.freedesktop.org>; Thu, 19 May 2022 13:39:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QNWaYHcrbMLYvpBw0sw9PBuWVj+RIQWLx9QPRQ1Dly4=;
 b=uvIq58I8Mw7ou0ZH3q3r2XqFU3NaOci4DsU9z9bvnp9/0aUo3M7XmZFKfzjHfEh55C
 BzWnQtiDaK85UMo8/A6n5Qs4M3qU89a87I/LaI/MM0aWfWLdo5eM7JzZHsF/hLJPzEwx
 0wYeWQqF/51GPVJ/6NVZiB8xfrtbRivYF9DYrTsEMDI1iHLaAxDWLOWSB8Y+ZYl6DcbI
 ex+4wV6PgH+Trzg8ibHV20ET/yZjIqqm29s/QLGB30O3yvd7IYBUYi1U9F98BZbrLeTB
 K/aHC/HkeAyrTGOOp0EZ3UlrKeF7CVj47/Qjns+aU/IiJjhv2RVolVRNDTG5/YR/9Byo
 lBgA==
X-Gm-Message-State: AOAM531JqCoCegmFg8JvqCpdKsGzfMNET7jR0xM/jJi2nwRr80Wmm6Nf
 G6SAlkKW/0xY9Td2llWpOfFlZ7UUi+eU9/hLMI14DjzUJnLjpNe7KcZOcZS3Iy1XdUXrb0KRFWv
 bB8Q69TsthKZEJ7kCUZABSW14GekHpJ6p6sqTykQZp0a85Kc=
X-Received: by 2002:a2e:94ce:0:b0:24b:3811:b242 with SMTP id
 r14-20020a2e94ce000000b0024b3811b242mr3636048ljh.197.1652992746355; 
 Thu, 19 May 2022 13:39:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy487DR2i4vpMerux2bTyxVf2737gjjV9dNT0vz8gHjihjxYK707OMpsAfR2r2mrm/F8cdXajnaYT2X/hOFlxU=
X-Received: by 2002:a2e:94ce:0:b0:24b:3811:b242 with SMTP id
 r14-20020a2e94ce000000b0024b3811b242mr3636042ljh.197.1652992746021; Thu, 19
 May 2022 13:39:06 -0700 (PDT)
MIME-Version: 1.0
References: <3e898483.6d06.180dbbcb650.Coremail.15529316683@163.com>
In-Reply-To: <3e898483.6d06.180dbbcb650.Coremail.15529316683@163.com>
From: Uri Lublin <uril@redhat.com>
Date: Thu, 19 May 2022 23:38:55 +0300
Message-ID: <CAAg9qJ30Pmmx9_Ygtfo=qXrD_bzDByo8fh7P=_L5z6NMVN2RGg@mail.gmail.com>
To: =?UTF-8?B?5byg5Lyf5Y2O?= <15529316683@163.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000717e4405df635d2a"
Subject: Re: [Spice-devel] centos+kvm+nvidia vgpu+win10(guest) spice remote
 4K bad perform.
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

--000000000000717e4405df635d2a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Leo,

On Thu, May 19, 2022 at 1:43 PM =E5=BC=A0=E4=BC=9F=E5=8D=8E <15529316683@16=
3.com> wrote:

> Hi :
> I am a phd student of Xian Jiaotong university in China.
> We have a project to accomplish a remote-desk solution with Nvidia vgpu.
> We use spice latest version  and have a bad 4K display quality.
> Our environment is like:
> 1.T4 card with inspure server in nvidia support list
>
NVIDIA Tesla T4  GPU card

2.redhat 8.2 enterprise  with kvm qemu
>


> 3.vgpu software package is 13.x
>
NVIDIA driver + tools (GRID)


> 4.vw flavor is 8u 16G. with 40 storage.   vgpu license is vpc ,and vgpu i=
s
> B-2b.
>
"vw" =3D=3D Virtual Workstation
B-2b is the vGPU type? meaning T4-2B ?
Does it help if you configure it with T4-2Q (may require a different
license)?

Only a single Display, right ?

Are you running spice-streaming-agent on the guest ?
Try to stream with H264, if you do not already do it
(may require paying fees for using H264).

Is 4k resolution a requirement? If not, try with e.g. 2k.

Hope that helps,
    Uri



> And our issue is attached in appendix.
> Please give us some help to solve this.
>
> best wishs;
> leo zhang
>
>
>
>
>

--000000000000717e4405df635d2a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Leo,<br></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 1:43 PM =E5=BC=A0=
=E4=BC=9F=E5=8D=8E &lt;<a href=3D"mailto:15529316683@163.com">15529316683@1=
63.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-fa=
mily:Arial"><div style=3D"margin:0px">Hi :</div><div style=3D"margin:0px">I=
 am a phd student of Xian Jiaotong university in China. <br></div><div styl=
e=3D"margin:0px">We have a project to accomplish a remote-desk solution wit=
h Nvidia vgpu.</div><div style=3D"margin:0px">We use spice latest version=
=C2=A0 and have a bad 4K display quality.</div><div style=3D"margin:0px">Ou=
r environment is like:</div><div style=3D"margin:0px"><div>1.T4 card with i=
nspure server in nvidia support list</div></div></div></blockquote><div>NVI=
DIA Tesla T4=C2=A0 GPU card<br></div><div><br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div style=3D"line-height:1.7;color:rgb(0,0,0);f=
ont-size:14px;font-family:Arial"><div style=3D"margin:0px">

<div>2.redhat 8.2 enterprise=C2=A0 with kvm qemu</div></div></div></blockqu=
ote><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-family:A=
rial"><div style=3D"margin:0px">

<div>3.vgpu software package is 13.x</div></div></div></blockquote><div>NVI=
DIA driver=C2=A0+ tools (GRID)<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div style=3D"line-height:1.7;color:rgb(0,=
0,0);font-size:14px;font-family:Arial"><div style=3D"margin:0px">

<div>4.vw flavor is 8u 16G. with 40 storage.=C2=A0 =C2=A0vgpu license is vp=
c ,and vgpu is B-2b.</div></div></div></blockquote><div>&quot;vw&quot; =3D=
=3D Virtual Workstation<br></div><div>B-2b is the vGPU type? meaning T4-2B =
?</div><div>Does it help if you configure it with T4-2Q (may require a diff=
erent license)?</div><div><br></div><div>Only a single Display, right ?</di=
v><div><br></div><div>Are you running spice-streaming-agent on the guest ?<=
/div><div>Try to stream with H264, if you do not already do it</div><div>(m=
ay require paying fees for using H264).<br></div><div><br></div><div>Is 4k =
resolution a requirement? If not, try with e.g. 2k.<br></div><div><br></div=
><div>Hope that helps,</div><div>=C2=A0=C2=A0=C2=A0 Uri</div><div><br></div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div st=
yle=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-family:Arial"><=
div style=3D"margin:0px"><div>And our issue is attached in appendix.</div><=
div>Please give us some help to solve this.</div><div><br></div><div>best w=
ishs;</div><div>leo zhang<br></div></div></div><br><br><span title=3D"netea=
sefooter"><p><br>=C2=A0</p></span></blockquote></div></div>

--000000000000717e4405df635d2a--

