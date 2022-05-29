Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A5753705B
	for <lists+spice-devel@lfdr.de>; Sun, 29 May 2022 10:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3976F10E988;
	Sun, 29 May 2022 08:38:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0081B10E988
 for <spice-devel@lists.freedesktop.org>; Sun, 29 May 2022 08:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653813529;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zounPJgsX8yvh1RJrN50rzdBypf/OuS+LbTJFPgTDB8=;
 b=F17NmrO/K4pKUEEHpkev6Wi7nbv7wMYu2qJVusKSW6YuMM7VIYx1/axUGNCdLdvVPgHwnF
 XFSOAFAx6bsilqesYeAvl9QCOM7SnEvi9AQIEFJJVbp9xQOFv9ouqJPFML2Z1+Mi7wNkG5
 VYIQmt1/6ibuhq+8Dm1tJQp7Qi0+T1U=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-322-Q3oSxoPROX2u3F1y4v27cw-1; Sun, 29 May 2022 04:38:42 -0400
X-MC-Unique: Q3oSxoPROX2u3F1y4v27cw-1
Received: by mail-lf1-f69.google.com with SMTP id
 p36-20020a05651213a400b004779d806c13so3891394lfa.10
 for <spice-devel@lists.freedesktop.org>; Sun, 29 May 2022 01:38:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zounPJgsX8yvh1RJrN50rzdBypf/OuS+LbTJFPgTDB8=;
 b=BLAo7zSuKwg3B5D1DGzfoljnibRg408yIBONdG8dbBI9rsi8SIgPMO3mqkhZyHBH+j
 TgvsUiXIpMJEPKjodv38z86HfA/irwxONc+J/ZPXOxxbZdt60FiyptghIRgZ0xAPB6OI
 emHzwmV1qarv7oEdEnsU/5v7eJdcXvfjhrkOj/Dm2/AWYpBqNnQ1QpBXfWYVAZTMFftL
 yTjm2VVqIrH5BGaXCD7LoInrTIcBqJ9evuAyIju1TngjXeLkCRxi8PBF1SgYHRSz9d1z
 7MfbI4Z9Wa6RjSjOdwiWPND571bB3I7vTBbmixEfGd6n9q7pD0qV9Zhjmbhux9NTCfWz
 USEg==
X-Gm-Message-State: AOAM531u/A+38a8rsOkhI6RbCOLsiwUgHnpa064sTFPfHpLe1zLhX65F
 EozTvC0hHeVXGNyUDICktrX9g3Go2s8BxTHBNuUZQepmdEEJR82nvx/sT7G/mk4W4Dkhnd7AUlJ
 BiS7T7KutYor2NjVgqDK1EHzlLIHIXq2IViOfjHz8l5yTEBc=
X-Received: by 2002:a2e:84c8:0:b0:24b:50bb:de7d with SMTP id
 q8-20020a2e84c8000000b0024b50bbde7dmr28565334ljh.40.1653813521029; 
 Sun, 29 May 2022 01:38:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJybM6hX1sAuCMYeBF62uNvM7hfK/PBUVvEORUYdXxWwIX9BmM+CCnLqpK1syKnP4V3aM7b+UR010xhMgQn1EoA=
X-Received: by 2002:a2e:84c8:0:b0:24b:50bb:de7d with SMTP id
 q8-20020a2e84c8000000b0024b50bbde7dmr28565325ljh.40.1653813520738; Sun, 29
 May 2022 01:38:40 -0700 (PDT)
MIME-Version: 1.0
References: <3e898483.6d06.180dbbcb650.Coremail.15529316683@163.com>
 <CAAg9qJ30Pmmx9_Ygtfo=qXrD_bzDByo8fh7P=_L5z6NMVN2RGg@mail.gmail.com>
 <43b4e143.79c7.181008cff03.Coremail.15529316683@163.com>
 <CAAg9qJ1JRXWfor2KBorbfHCMZ15U9LAndnRjLm4DgLEA_kL2xg@mail.gmail.com>
 <6a75cda3.25b7.1810a8e01a1.Coremail.15529316683@163.com>
In-Reply-To: <6a75cda3.25b7.1810a8e01a1.Coremail.15529316683@163.com>
From: Uri Lublin <uril@redhat.com>
Date: Sun, 29 May 2022 11:38:29 +0300
Message-ID: <CAAg9qJ2OzaqS+H0d4XNAhhhU8fCgs9vd8W75qOSQVJuJziu5OQ@mail.gmail.com>
To: =?UTF-8?B?5byg5Lyf5Y2O?= <15529316683@163.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000006dc20205e0227705"
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

--0000000000006dc20205e0227705
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Leo,

For a guest that has NVIDIA (or Intel/other) vgpu as an mdev device (direct
access to NVIDIA hardware), all guest graphics commands are done on the
NVIDIA device.
In this case, one can run spice-streaming-agent, on the guest, and use
NVIDIA to encode (e.g. using the gstreamer or other plugin) a video stream
(assuming an NVIDIA/other hardware encoder is installed on the guest too).
The spice-streaming-agent sends the video stream to spice-server via a
virtio-serial device. The spice-server needs not re-encode the stream, but
just sends it as is to the client that (decodes it and) displays it to the
user.

Hope that helps,
    Uri.


On Sat, May 28, 2022 at 3:05 PM =E5=BC=A0=E4=BC=9F=E5=8D=8E <15529316683@16=
3.com> wrote:

>
> Hi Uri=EF=BC=9A
> Thanks for your last email and we did some experiment, here are some
> questions remain:
> Whether only use the QXL device as the display device can activate the
> video streaming encode, which treats the video as stream data and encodes
> by MJPEG or other GStreamer supported encoding methods.
> We have above problems is because when a Nvidia vgpu is set as the mdev
> device(the default value =E2=80=9Cqxl=E2=80=9D of the virtual machine is =
replaced with
> =E2=80=9Cnone=E2=80=9D, using the =E2=80=9C-vga none=E2=80=9D command), w=
e find in logs that spice uses
> image compression instead of the spice video streaming to encode the whol=
e
> display data(include the video window).
> Does spice support a vgpu mdev device to accelerate the rendering and
> using the spice video streaming encode to compress a video at the meantim=
e.
>
>
> pls help us with that
> thanks a lot
> best wishes
> leo zhang
>
>
>
> At 2022-05-27 03:28:20, "Uri Lublin" <uril@redhat.com> wrote:
>
> Hi Leo,
>
> On Thu, May 26, 2022 at 4:28 PM =E5=BC=A0=E4=BC=9F=E5=8D=8E <15529316683@=
163.com> wrote:
>
>>
>> Hi Uri:
>> Thanks for your advise of our project.We have try it and here is
>> something we find:
>> 1.we have deploy the spice-streaming-agent in the client and set H254 in
>> libvert xml , applice report error and don't work.
>> but vp8/vp9 works.
>>
>
> Note that spice-streaming-agent needs to run on the guest.
>
>
>
>> 2.When we use Nvidia vgpu as a mdev device attach to the virtual mathine=
, *we
>> find in logs that spice use picture compress (glz) instead of vedio
>> compress h254.*
>> So we have two question to ask:
>> 1.what we need to do in libvert xml to have a better vedio quality witH
>> NVIDIA VGPU attach as a mdev divice?
>>
>
> This is not done in libvirt domxml, but needs to be configured on the
> guest.
> (of course you need to have org.spice-space.stream.0 via libvirt)
>
> Make sure that the guest's gstreamer1 "knows" the codec.
> It works much better when the encoder uses the hardware to encode.
>
> gst-inspect-1.0 | grep 264  | grep -i enc
> gst-inspect-1.0 | grep -i vp  | grep -i enc
>
>
>> 2.We didn't find spice-streaming-agent for windows in Spice office site.
>> Does spice-streaming-agent only support linux and only have linux versio=
n?
>>
>
> Yes, currently there is only a linux version.
>
> Regards,
>     Uri.
>
> ps: One single display  and 4k video is required as one of the main goals
>> in our project.
>> Pls help us with those questions.
>> Best wishes !
>> leo zhang
>>
>>
>>
>>
>>
>> At 2022-05-20 04:38:55, "Uri Lublin" <uril@redhat.com> wrote:
>>
>> Hi Leo,
>>
>> On Thu, May 19, 2022 at 1:43 PM =E5=BC=A0=E4=BC=9F=E5=8D=8E <15529316683=
@163.com> wrote:
>>
>>> Hi :
>>> I am a phd student of Xian Jiaotong university in China.
>>> We have a project to accomplish a remote-desk solution with Nvidia vgpu=
.
>>> We use spice latest version  and have a bad 4K display quality.
>>> Our environment is like:
>>> 1.T4 card with inspure server in nvidia support list
>>>
>> NVIDIA Tesla T4  GPU card
>>
>> 2.redhat 8.2 enterprise  with kvm qemu
>>>
>>
>>
>>> 3.vgpu software package is 13.x
>>>
>> NVIDIA driver + tools (GRID)
>>
>>
>>> 4.vw flavor is 8u 16G. with 40 storage.   vgpu license is vpc ,and vgpu
>>> is B-2b.
>>>
>> "vw" =3D=3D Virtual Workstation
>> B-2b is the vGPU type? meaning T4-2B ?
>> Does it help if you configure it with T4-2Q (may require a different
>> license)?
>>
>> Only a single Display, right ?
>>
>> Are you running spice-streaming-agent on the guest ?
>> Try to stream with H264, if you do not already do it
>> (may require paying fees for using H264).
>>
>> Is 4k resolution a requirement? If not, try with e.g. 2k.
>>
>> Hope that helps,
>>     Uri
>>
>>
>>
>>> And our issue is attached in appendix.
>>> Please give us some help to solve this.
>>>
>>> best wishs;
>>> leo zhang
>>>
>>>
>>>
>>>
>>>
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

--0000000000006dc20205e0227705
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Leo,</div><div><br></div><div>For a guest that has=
 NVIDIA (or Intel/other) vgpu as an mdev device (direct access to NVIDIA ha=
rdware), all guest graphics commands are done on the NVIDIA device.</div><d=
iv>In this case, one can run spice-streaming-agent, on the guest, and use N=
VIDIA to encode (e.g. using the gstreamer or other plugin) a video stream (=
assuming an NVIDIA/other hardware encoder is installed on the guest too). T=
he spice-streaming-agent sends the video stream to spice-server via a virti=
o-serial device. The spice-server needs not re-encode the stream, but just =
sends it as is to the client that (decodes it and) displays it to the user.=
</div><div><br></div><div>Hope that helps,</div><div>=C2=A0=C2=A0=C2=A0 Uri=
.</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Sat, May 28, 2022 at 3:05 PM =E5=BC=A0=E4=BC=9F=E5=
=8D=8E &lt;<a href=3D"mailto:15529316683@163.com">15529316683@163.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div s=
tyle=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-family:Arial">=
<p style=3D"margin:0px"><br></p><div style=3D"margin:0px">Hi Uri=EF=BC=9A</=
div><div style=3D"margin:0px">Thanks for your last email and we did some ex=
periment, here are some questions remain:</div><div style=3D"margin:0px">Wh=
ether only use the QXL device as the display device can activate the video =
streaming encode, which treats the video as stream data and encodes by MJPE=
G or other GStreamer supported encoding methods.<br>We have above problems =
is because when a Nvidia vgpu is set as the mdev device(the default value =
=E2=80=9Cqxl=E2=80=9D of the virtual machine is replaced with =E2=80=9Cnone=
=E2=80=9D, using the =E2=80=9C-vga none=E2=80=9D command), we find in logs =
that spice uses image compression instead of the spice video streaming to e=
ncode the whole display data(include the video window).<br>Does spice suppo=
rt a vgpu mdev device to accelerate the rendering and using the spice video=
 streaming encode to compress a video at the meantime.<br></div><p style=3D=
"margin:0px"><br></p><div style=3D"margin:0px">pls help us with that <br></=
div><div style=3D"margin:0px">thanks a lot</div><div style=3D"margin:0px">b=
est wishes</div><div style=3D"margin:0px">leo zhang<br></div><p style=3D"ma=
rgin:0px"><br></p><div></div><div id=3D"gmail-m_3783324040751096874divNetea=
seMailCard"></div><p style=3D"margin:0px"><br></p><p>At 2022-05-27 03:28:20=
, &quot;Uri Lublin&quot; &lt;<a href=3D"mailto:uril@redhat.com" target=3D"_=
blank">uril@redhat.com</a>&gt; wrote:</p><blockquote id=3D"gmail-m_37833240=
40751096874isReplyContent" style=3D"padding-left:1ex;margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204)"><div dir=3D"ltr"><div>Hi Leo,</d=
iv><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, May 26, 2022 at 4:28 PM =E5=BC=A0=E4=BC=9F=E5=8D=8E &lt;<a =
href=3D"mailto:15529316683@163.com" target=3D"_blank">15529316683@163.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-family:Ari=
al"><p style=3D"margin:0px"><br></p><div style=3D"margin:0px">Hi Uri:</div>=
<div style=3D"margin:0px">Thanks for your advise of our project.We have try=
 it and here is something we find:</div><div style=3D"margin:0px">1.we have=
 deploy the spice-streaming-agent in the client and set H254 in libvert xml=
 , applice report error and don&#39;t work.</div><div style=3D"margin:0px">=
but vp8/vp9 works.</div></div></blockquote><div>=C2=A0</div><div><div>Note =
that spice-streaming-agent needs to run on the guest.</div><br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D=
"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-family:Arial"><div st=
yle=3D"margin:0px">2.When we use Nvidia vgpu as a mdev device attach to the=
 virtual mathine,<span style=3D"background-color:rgb(255,255,255)"> <b>we f=
ind in logs that spice use picture compress (glz) instead of vedio compress=
 h254.</b></span><br></div><div style=3D"margin:0px">So we have two questio=
n to ask:</div><div style=3D"margin:0px">1.what we need to do in libvert xm=
l to have a better vedio quality witH NVIDIA VGPU attach as a mdev divice?<=
br></div></div></blockquote><div>=C2=A0</div><div><div>This is not done in =
libvirt domxml, but needs to be configured on the guest.</div><div>(of cour=
se you need to have org.spice-space.stream.0 via libvirt)<br></div><div><br=
></div><div>Make sure that the guest&#39;s gstreamer1 &quot;knows&quot; the=
 codec.</div><div>It works much better when the encoder uses the hardware t=
o encode.</div><div><br></div><div>gst-inspect-1.0 | grep 264=C2=A0 | grep =
-i enc<br></div><div><div>gst-inspect-1.0 | grep -i vp=C2=A0 | grep -i enc<=
/div></div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-family:Ari=
al"><div style=3D"margin:0px"></div><div style=3D"margin:0px">2.We didn&#39=
;t find spice-streaming-agent for windows in Spice office site. Does spice-=
streaming-agent only support linux and only have linux version?<br></div></=
div></blockquote><div><br></div><div>Yes, currently there is only a linux v=
ersion.</div><div><br></div><div>Regards,</div><div>=C2=A0=C2=A0=C2=A0 Uri.=
<br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;font-family:A=
rial"><div style=3D"margin:0px"></div><div style=3D"margin:0px">ps: One sin=
gle display=C2=A0 and 4k video is required as one of the main goals=C2=A0 i=
n our project. <br></div><div style=3D"margin:0px">Pls help us with those q=
uestions.</div><div style=3D"margin:0px">Best wishes !</div><div style=3D"m=
argin:0px">leo zhang<br></div><p style=3D"margin:0px"><br></p><p style=3D"m=
argin:0px"><br></p><p style=3D"margin:0px"><br></p><div></div><div id=3D"gm=
ail-m_3783324040751096874gmail-m_-4145722423521360633divNeteaseMailCard"></=
div><p style=3D"margin:0px"><br></p><p>At 2022-05-20 04:38:55, &quot;Uri Lu=
blin&quot; &lt;<a href=3D"mailto:uril@redhat.com" target=3D"_blank">uril@re=
dhat.com</a>&gt; wrote:</p><blockquote id=3D"gmail-m_3783324040751096874gma=
il-m_-4145722423521360633isReplyContent" style=3D"padding-left:1ex;margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)"><div dir=3D"ltr"><=
div>Hi Leo,<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, May 19, 2022 at 1:43 PM =E5=BC=A0=E4=BC=9F=E5=8D=8E=
 &lt;<a href=3D"mailto:15529316683@163.com" target=3D"_blank">15529316683@1=
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
</blockquote></div><br><br><span title=3D"neteasefooter"><p><br>=C2=A0</p><=
/span></blockquote></div></div>
</blockquote></div><br><br><span title=3D"neteasefooter"><p><br>=C2=A0</p><=
/span></blockquote></div>

--0000000000006dc20205e0227705--

