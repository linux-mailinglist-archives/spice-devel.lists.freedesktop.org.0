Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AF85353E6
	for <lists+spice-devel@lfdr.de>; Thu, 26 May 2022 21:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E913210E60A;
	Thu, 26 May 2022 19:28:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12FA710E60A
 for <spice-devel@lists.freedesktop.org>; Thu, 26 May 2022 19:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653593316;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kxMvavhHOR2rVOS1pkzpj0zCGzwC3QVycR8PMbod+gU=;
 b=MgMXVfKLjLV/DXXW1a10zVI6Xkv1czItLIoU2L6qg7AHKvBosR55GQwvraZ7Op6CMzkssv
 7+ocYHJ3e/JyT90/ZCY+W2I47rCfDGij1xmFPmuBQLs+24i4z3USxBBTYlOlPNu5oXF1/q
 ntaQqVy37ahmoQUp3T7A2Qx3sLd46xA=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-4P4tg72PNL6kCVhLNbr1pg-1; Thu, 26 May 2022 15:28:33 -0400
X-MC-Unique: 4P4tg72PNL6kCVhLNbr1pg-1
Received: by mail-lj1-f197.google.com with SMTP id
 bn32-20020a05651c17a000b00253e2b131d3so657272ljb.6
 for <spice-devel@lists.freedesktop.org>; Thu, 26 May 2022 12:28:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kxMvavhHOR2rVOS1pkzpj0zCGzwC3QVycR8PMbod+gU=;
 b=HzIy4tUlB89rx2g/3k5fkvWyap9jz6WoCb1051rfnRNebhsmhZ37tjUiT89+W3EJ2W
 acwQWwLq1bQqwsu7ktZM2YUWqinT8O+Og0xGJv4GKuU8Y+umpsXYfpV3s2MaottGwpiE
 c+nGzQ12tSh61nAZJRkNd+g55eScEQMYa8ziHhR5ChTPfyt1mZZ5y/2vlBUeO55LdX6e
 5R+9NYOA2o5O7m2ohgAh1rOcAoj/Y//qDpWcgtO1om9rXb1ZfOWEOSKoJXiaKO/pC+fo
 iN0ziGYwokCX8BLh+MRg1h2WmKuEoNVsB1rT9xs6GgOdMsvIooGiLRo403laDYrAF51M
 k6EA==
X-Gm-Message-State: AOAM532TxJa/n4JbDzU7eBcjD+eKMedwW3WJ82Chm8I2s4so5/HLGcaU
 xFXCQZhMi7tuYwhIWddbcL1NILUpvQQwUaG847nm72tlCn/AmxetRa2lyMa9MAG8xbES1F0KkWI
 zM7Z9GrMe3Wu/Or+nvqKma2Xy2WOmeRAX/VmYASB2u3UNOwY=
X-Received: by 2002:a19:4918:0:b0:478:7e82:86f1 with SMTP id
 w24-20020a194918000000b004787e8286f1mr13211085lfa.353.1653593312309; 
 Thu, 26 May 2022 12:28:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxcIod4WlajSEt4OdfvSvMrZ4ChFjRpvU8zli8h228mWFYUI5fxH8ojUkTkQhu/bYxnrjgoUPZdnKx4wgVcbUo=
X-Received: by 2002:a19:4918:0:b0:478:7e82:86f1 with SMTP id
 w24-20020a194918000000b004787e8286f1mr13211068lfa.353.1653593311954; Thu, 26
 May 2022 12:28:31 -0700 (PDT)
MIME-Version: 1.0
References: <3e898483.6d06.180dbbcb650.Coremail.15529316683@163.com>
 <CAAg9qJ30Pmmx9_Ygtfo=qXrD_bzDByo8fh7P=_L5z6NMVN2RGg@mail.gmail.com>
 <43b4e143.79c7.181008cff03.Coremail.15529316683@163.com>
In-Reply-To: <43b4e143.79c7.181008cff03.Coremail.15529316683@163.com>
From: Uri Lublin <uril@redhat.com>
Date: Thu, 26 May 2022 22:28:20 +0300
Message-ID: <CAAg9qJ1JRXWfor2KBorbfHCMZ15U9LAndnRjLm4DgLEA_kL2xg@mail.gmail.com>
To: =?UTF-8?B?5byg5Lyf5Y2O?= <15529316683@163.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000f6661405dfef31ea"
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>,
 =?UTF-8?B?5aKe5Z6j?= <1348580378@qq.com>,
 =?UTF-8?B?546L5pak57695biI5YWE?= <327119232@qq.com>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--000000000000f6661405dfef31ea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Leo,

On Thu, May 26, 2022 at 4:28 PM =E5=BC=A0=E4=BC=9F=E5=8D=8E <15529316683@16=
3.com> wrote:

>
> Hi Uri:
> Thanks for your advise of our project.We have try it and here is somethin=
g
> we find:
> 1.we have deploy the spice-streaming-agent in the client and set H254 in
> libvert xml , applice report error and don't work.
> but vp8/vp9 works.
>

Note that spice-streaming-agent needs to run on the guest.



> 2.When we use Nvidia vgpu as a mdev device attach to the virtual mathine,=
 *we
> find in logs that spice use picture compress (glz) instead of vedio
> compress h254.*
> So we have two question to ask:
> 1.what we need to do in libvert xml to have a better vedio quality witH
> NVIDIA VGPU attach as a mdev divice?
>

This is not done in libvirt domxml, but needs to be configured on the guest=
.
(of course you need to have org.spice-space.stream.0 via libvirt)

Make sure that the guest's gstreamer1 "knows" the codec.
It works much better when the encoder uses the hardware to encode.

gst-inspect-1.0 | grep 264  | grep -i enc
gst-inspect-1.0 | grep -i vp  | grep -i enc


> 2.We didn't find spice-streaming-agent for windows in Spice office site.
> Does spice-streaming-agent only support linux and only have linux version=
?
>

Yes, currently there is only a linux version.

Regards,
    Uri.

ps: One single display  and 4k video is required as one of the main goals
> in our project.
> Pls help us with those questions.
> Best wishes !
> leo zhang
>
>
>
>
>
> At 2022-05-20 04:38:55, "Uri Lublin" <uril@redhat.com> wrote:
>
> Hi Leo,
>
> On Thu, May 19, 2022 at 1:43 PM =E5=BC=A0=E4=BC=9F=E5=8D=8E <15529316683@=
163.com> wrote:
>
>> Hi :
>> I am a phd student of Xian Jiaotong university in China.
>> We have a project to accomplish a remote-desk solution with Nvidia vgpu.
>> We use spice latest version  and have a bad 4K display quality.
>> Our environment is like:
>> 1.T4 card with inspure server in nvidia support list
>>
> NVIDIA Tesla T4  GPU card
>
> 2.redhat 8.2 enterprise  with kvm qemu
>>
>
>
>> 3.vgpu software package is 13.x
>>
> NVIDIA driver + tools (GRID)
>
>
>> 4.vw flavor is 8u 16G. with 40 storage.   vgpu license is vpc ,and vgpu
>> is B-2b.
>>
> "vw" =3D=3D Virtual Workstation
> B-2b is the vGPU type? meaning T4-2B ?
> Does it help if you configure it with T4-2Q (may require a different
> license)?
>
> Only a single Display, right ?
>
> Are you running spice-streaming-agent on the guest ?
> Try to stream with H264, if you do not already do it
> (may require paying fees for using H264).
>
> Is 4k resolution a requirement? If not, try with e.g. 2k.
>
> Hope that helps,
>     Uri
>
>
>
>> And our issue is attached in appendix.
>> Please give us some help to solve this.
>>
>> best wishs;
>> leo zhang
>>
>>
>>
>>
>>
>
>
>
>
>

--000000000000f6661405dfef31ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Leo,</div><div><br></div><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 26, 2022 at 4:28 PM =E5=
=BC=A0=E4=BC=9F=E5=8D=8E &lt;<a href=3D"mailto:15529316683@163.com">1552931=
6683@163.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;f=
ont-family:Arial"><p style=3D"margin:0px"><br></p><div style=3D"margin:0px"=
>Hi Uri:</div><div style=3D"margin:0px">Thanks for your advise of our proje=
ct.We have try it and here is something we find:</div><div style=3D"margin:=
0px">1.we have deploy the spice-streaming-agent in the client and set H254 =
in libvert xml , applice report error and don&#39;t work.</div><div style=
=3D"margin:0px">but vp8/vp9 works.</div></div></blockquote><div>=C2=A0</div=
><div><div>Note that spice-streaming-agent needs to run on the guest.</div>=
<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-family=
:Arial"><div style=3D"margin:0px">2.When we use Nvidia vgpu as a mdev devic=
e attach to the virtual mathine,<span style=3D"background-color:rgb(255,255=
,255)"> <b>we find in logs that spice use picture compress (glz) instead of=
 vedio compress h254.</b></span><br></div><div style=3D"margin:0px">So we h=
ave two question to ask:</div><div style=3D"margin:0px">1.what we need to d=
o in libvert xml to have a better vedio quality witH NVIDIA VGPU attach as =
a mdev divice?<br></div></div></blockquote><div>=C2=A0</div><div><div>This =
is not done in libvirt domxml, but needs to be configured on the guest.</di=
v><div>(of course you need to have org.spice-space.stream.0 via libvirt)<br=
></div><div><br></div><div>Make sure that the guest&#39;s gstreamer1 &quot;=
knows&quot; the codec.</div><div>It works much better when the encoder uses=
 the hardware to encode.</div><div><br></div><div>gst-inspect-1.0 | grep 26=
4=C2=A0 | grep -i enc<br></div><div><div>gst-inspect-1.0 | grep -i vp=C2=A0=
 | grep -i enc</div></div>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;=
font-family:Arial"><div style=3D"margin:0px"></div><div style=3D"margin:0px=
">2.We didn&#39;t find spice-streaming-agent for windows in Spice office si=
te. Does spice-streaming-agent only support linux and only have linux versi=
on?<br></div></div></blockquote><div><br></div><div>Yes, currently there is=
 only a linux version.</div><div><br></div><div>Regards,</div><div>=C2=A0=
=C2=A0=C2=A0 Uri.<br></div><div><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:1=
4px;font-family:Arial"><div style=3D"margin:0px"></div><div style=3D"margin=
:0px">ps: One single display=C2=A0 and 4k video is required as one of the m=
ain goals=C2=A0 in our project. <br></div><div style=3D"margin:0px">Pls hel=
p us with those questions.</div><div style=3D"margin:0px">Best wishes !</di=
v><div style=3D"margin:0px">leo zhang<br></div><p style=3D"margin:0px"><br>=
</p><p style=3D"margin:0px"><br></p><p style=3D"margin:0px"><br></p><div></=
div><div id=3D"gmail-m_-4145722423521360633divNeteaseMailCard"></div><p sty=
le=3D"margin:0px"><br></p><p>At 2022-05-20 04:38:55, &quot;Uri Lublin&quot;=
 &lt;<a href=3D"mailto:uril@redhat.com" target=3D"_blank">uril@redhat.com</=
a>&gt; wrote:</p><blockquote id=3D"gmail-m_-4145722423521360633isReplyConte=
nt" style=3D"padding-left:1ex;margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204)"><div dir=3D"ltr"><div>Hi Leo,<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022=
 at 1:43 PM =E5=BC=A0=E4=BC=9F=E5=8D=8E &lt;<a href=3D"mailto:15529316683@1=
63.com" target=3D"_blank">15529316683@163.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"line-height:1.7;=
color:rgb(0,0,0);font-size:14px;font-family:Arial"><div style=3D"margin:0px=
">Hi :</div><div style=3D"margin:0px">I am a phd student of Xian Jiaotong u=
niversity in China. <br></div><div style=3D"margin:0px">We have a project t=
o accomplish a remote-desk solution with Nvidia vgpu.</div><div style=3D"ma=
rgin:0px">We use spice latest version=C2=A0 and have a bad 4K display quali=
ty.</div><div style=3D"margin:0px">Our environment is like:</div><div style=
=3D"margin:0px"><div>1.T4 card with inspure server in nvidia support list</=
div></div></div></blockquote><div>NVIDIA Tesla T4=C2=A0 GPU card<br></div><=
div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=
=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-family:Arial"><div=
 style=3D"margin:0px">

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
</blockquote></div><br><br><span title=3D"neteasefooter"><p><br>=C2=A0</p><=
/span></blockquote></div></div>

--000000000000f6661405dfef31ea--

