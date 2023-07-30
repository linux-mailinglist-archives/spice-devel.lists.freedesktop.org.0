Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E484C76849B
	for <lists+spice-devel@lfdr.de>; Sun, 30 Jul 2023 11:15:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F267210E059;
	Sun, 30 Jul 2023 09:15:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9D3A10E07D
 for <spice-devel@lists.freedesktop.org>; Sun, 30 Jul 2023 09:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1690708534;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MPKom+xQeis+oHqYcAJCsgYgMU4Ahs+SAD5AWFVXolg=;
 b=BrLzoEbgbMakOwOd0m7tHshMo+c6Kfs7Pwzng4m6+O2kjF6t5nur/FKi+LB1wMJEOW8Hmf
 NCOsJCtjsSmbUCHhBTm+mBi9+KV9G9no4DduxBmvoBMeO9P/qHVmjJWlHBpk33gs7H628y
 f0Vpmt5Udw28C85sP+0rx9c5TnvEZZE=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-428-DHJ9Muo6NKSTMsfjmi5i-Q-1; Sun, 30 Jul 2023 05:15:32 -0400
X-MC-Unique: DHJ9Muo6NKSTMsfjmi5i-Q-1
Received: by mail-oo1-f72.google.com with SMTP id
 006d021491bc7-56c7c54c25fso3273008eaf.2
 for <spice-devel@lists.freedesktop.org>; Sun, 30 Jul 2023 02:15:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690708532; x=1691313332;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PYwf829+TZYVyITNW3eCSyg28KHtWomX1Kl806cDh20=;
 b=gzh04zZjf5yTWZeMgQJHwnpMm+PS/vb4Wwk4V0dF0qvf8/3qybTeeocV068oyFeHbj
 uJ3e/5erKETwT+quz24jm4WHV+jx/ayHabqQSRExgWPfmu0ay4SnR3fcXWi0oQ7HTtUk
 S39CThtzsPvQg4qjIK+zAeirbE3/BdDIvXeLp3x/Tg1xB377V2O2P8TOLSjL8qQomU8f
 PsvQnwzH3E6fVdZFMy6OTlwOkRxPWTAT44GIOJYZY1yauaC0VXBXAoTE5eMDyf9H/qfa
 AV/ZIzG3ACjLQDe6sWK9HJnAXrJ6n59ZUQyX+CUMCb1reBf+8Poggy4Z2podYBZkIzl8
 3PPw==
X-Gm-Message-State: ABy/qLYklEi3AWvus2dY9KW4e/CkugMbWh1U8s/KTjw1ctqJw3PYMxTG
 KxcEgE1XePYIbhjN0PL/bTus8tDebxDBV7amR37J4ULzqMCcVFDfWKcQPMw8PiMOReznaR0OKOB
 cilYrRQYmdZRm7hshtknNt5JfzSMlr4nOSg9bWbAhKOEKhbY=
X-Received: by 2002:a4a:9c03:0:b0:565:bbc0:2e36 with SMTP id
 y3-20020a4a9c03000000b00565bbc02e36mr6384309ooj.3.1690708532006; 
 Sun, 30 Jul 2023 02:15:32 -0700 (PDT)
X-Google-Smtp-Source: APBJJlEBr8oLxAQhUYw/cahdgL7Pmfvdw5nUZg+7ti9yaEylqc48y6H+vNTQe7p7JIaJZMJyMJcmFrZBJJpXMYMwmuQ=
X-Received: by 2002:a4a:9c03:0:b0:565:bbc0:2e36 with SMTP id
 y3-20020a4a9c03000000b00565bbc02e36mr6384299ooj.3.1690708531715; Sun, 30 Jul
 2023 02:15:31 -0700 (PDT)
MIME-Version: 1.0
References: <39c35355.1f394.189959ce26e.Coremail.32217118@mail.dlut.edu.cn>
In-Reply-To: <39c35355.1f394.189959ce26e.Coremail.32217118@mail.dlut.edu.cn>
From: Uri Lublin <ulublin@redhat.com>
Date: Sun, 30 Jul 2023 12:15:20 +0300
Message-ID: <CAAg9qJ3D3ccdsH_28cbANmXs+5iSfkC0ArgpORofK9WK-ooJ=w@mail.gmail.com>
To: =?UTF-8?B?6ZyN6YeR6bmP?= <32217118@mail.dlut.edu.cn>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000073ba040601b0c1c9"
Subject: Re: [Spice-devel] spice-streaming-agent display problem
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
Cc: spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--00000000000073ba040601b0c1c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 27, 2023 at 10:52=E2=80=AFAM =E9=9C=8D=E9=87=91=E9=B9=8F <32217=
118@mail.dlut.edu.cn> wrote:

> Hello dear devs,
>
> I installed VMware Workstation Pro on my laptop , and I installed a
> CentOS8 virtual machine . Then in CentOS8 , another Ubuntu18.04 virtual
> machine was installed via virt manager . So CentOs8 is host , Ubuntu18.04
> is guest , and there is another windows7 virtual machine in VMware
> Workstation Pro , windows7 is client .
>
> Now I'm using spice-streaming-agent, I built it in Ubuntu18.04 , and I ha=
d
> added the "org.spice-space.stream.0" channel .
>
> Then when I want to access this Ubuntu18.04 in another  windows system vi=
a
> remote-viewer , old spice display works well and the
> spice-streaming-agent creates a new window in remote-viewer , but the new
> display window has no picture , just black . And in Ubuntu18.04's termina=
l
> , there is a warning : spice-streaming-agent[9710]: Warning: the Frame
> Capture plugin returned device display info for more than one display
> device, but we currently only support a single device. Sending informatio=
n
> for first device to the server.
>
>
> What should I do to solve this problem ?
>

You can try to run in debug-mode and look at logs on the guest.

What are you trying to do ?  Why do you want to use spice-streaming-agent
when "regular" spice works ?

Regards,
    Uri.




> Thanks in advance !
>

--00000000000073ba040601b0c1c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 27, 2023 at 10:52=E2=
=80=AFAM =E9=9C=8D=E9=87=91=E9=B9=8F &lt;<a href=3D"mailto:32217118@mail.dl=
ut.edu.cn">32217118@mail.dlut.edu.cn</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><p style=3D"font-family:SimSun">
=09<span style=3D"font-family:Times New Roman"><span style=3D"font-family:T=
imes New Roman">Hello dear devs,</span></span>
</p>
<p style=3D"font-family:SimSun">
=09<span style=3D"font-family:Times New Roman">I installed <span style=3D"f=
ont-family:&quot;Times New Roman&quot;">VMware Workstation Pro</span> on my=
 laptop , and I installed a CentOS8 virtual machine . Then in CentOS8=C2=A0=
, another Ubuntu18.04 virtual machine was installed via virt manager . So C=
entOs8 is host , Ubuntu18.04 is guest , and there is another windows7 virtu=
al machine in <span id=3D"m_28300665004072579691690431384969-388" style=3D"=
font-family:&quot;Times New Roman&quot;;border-bottom:2px dotted red">VMwar=
e</span><span style=3D"font-family:&quot;Times New Roman&quot;">=C2=A0</spa=
n><span id=3D"m_28300665004072579691690431384969-395" style=3D"font-family:=
&quot;Times New Roman&quot;">Workstation</span><span style=3D"font-family:&=
quot;Times New Roman&quot;">=C2=A0</span><span id=3D"m_28300665004072579691=
690431384969-711" style=3D"font-family:&quot;Times New Roman&quot;">Pro</sp=
an> , windows7 is client .=C2=A0</span>
</p>
<p style=3D"font-family:SimSun">
=09<span style=3D"font-family:Times New Roman">Now I&#39;m using spice-stre=
aming-agent, I built it in Ubuntu18.04 , and I had added the &quot;org.spic=
e-space.stream.0&quot; channel .=C2=A0</span>
</p>
<p style=3D"font-family:SimSun">
=09<span style=3D"font-family:Times New Roman">Then when I want to access t=
his Ubuntu18.04 in another=C2=A0 windows system via remote-viewer , <span s=
tyle=3D"font-family:&quot;Times New Roman&quot;">old spice display works we=
ll and=C2=A0</span>the spice-streaming-agent creates a new window in remote=
-viewer , but the new display window has no picture , just black . And in U=
buntu18.04&#39;s terminal , there is a warning : spice-streaming-agent[9710=
]: Warning: the Frame Capture plugin returned device display info for more =
than one display device, but we currently only support a single device. Sen=
ding information for first device to the server.</span>
</p>
<p style=3D"font-family:SimSun">
=09<span style=3D"font-family:Times New Roman"><br>
</span>
</p>
<p style=3D"font-family:SimSun">
=09<span style=3D"font-family:Times New Roman">What should I do to solve th=
is problem ?=C2=A0</span></p></blockquote><div><br></div><div>You can try t=
o run in debug-mode and look at logs on the guest.</div><div><br></div><div=
>What are you trying to do ?=C2=A0 Why do you want to use spice-streaming-a=
gent when &quot;regular&quot; spice works ?</div><div><br></div><div>Regard=
s,</div><div>=C2=A0=C2=A0=C2=A0 Uri.</div><div><br></div><div><br></div><di=
v>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p style=3D=
"font-family:SimSun">
</p>
<p style=3D"font-family:SimSun">
=09<span style=3D"font-family:Times New Roman">Thanks in advance ! </span>
</p></blockquote></div></div>

--00000000000073ba040601b0c1c9--

