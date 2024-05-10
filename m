Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B788C28C9
	for <lists+spice-devel@lfdr.de>; Fri, 10 May 2024 18:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E6810E6D5;
	Fri, 10 May 2024 16:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=bogomips.com header.i=@bogomips.com header.b="JXPaVXnN";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14FA010E6D5
 for <spice-devel@lists.freedesktop.org>; Fri, 10 May 2024 16:34:35 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id
 98e67ed59e1d1-2b432be5cc9so1801837a91.3
 for <spice-devel@lists.freedesktop.org>; Fri, 10 May 2024 09:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bogomips.com; s=google; t=1715358875; x=1715963675;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=3OIxUMJDb8mt5tkRIgTOVw7QA+TL/3l30W7M+9VorDA=;
 b=JXPaVXnNzXry0bJHEdBBveRwVIs5hsax53FvubpktZM7KlsEhBOgJJ4iz2b0xj696L
 +f6FLD+m6VH6JYXcjl2CPNb5XtO1LmghK2tmfBzKmEfMdoXqJ02JPgjLmF4uysm5pMCi
 Yyt8tFdD03jAe0YKHyQCeLUNKSMDNjudqOdjs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715358875; x=1715963675;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=3OIxUMJDb8mt5tkRIgTOVw7QA+TL/3l30W7M+9VorDA=;
 b=M7WJWTnPXSraqZJ2SSsZx5vWeT8oHm2cK4acuWTzArHvMCt+Ud38jXyzf7mIVeHPuf
 3f3SoNUJfeVMwramrGR701dTPROWYFNtZ9A5p0NvumW31nNdTZ5S2E35dLTvH6fL63DH
 L3sO1SZL5uM253f97EMPItBONP1Ty8agBgIUQMnqPMJXpZa3W4s67aVPYA1pkQmuls+a
 14HsodDRaSFxKqVvCMbubMlpMpJOf/F+8enakt9iM2d+rEE36GON9IgOMYX1cU0xLSzN
 ewU4JyGPCfuPVSsUM2K76cJodLEmt44GqOtL2YUdB8EV058IG2eDSoj2W6xt8tmEk11Z
 YKdg==
X-Gm-Message-State: AOJu0Yyx1NOd9SmB88VzipBIZeF6RrT/rT3GJklp91uLOxCixecbc+2r
 m7PxxCy2zu/I/zxkQ+2DEKYh31SDh/CM5su3eFECBPhsnDGjVYfz7JQDKlHOKx5V5nTubnl1ovO
 ifVyZpCvPSzmSWGYiPk4aHsxJ3UiZ0ZSdL7CtU9uPjJYtHIGB3OA=
X-Google-Smtp-Source: AGHT+IFfnzqubXZ83TCT4K67uoiN/NZodgdeXj3jCLpdjBcvb+YfG1AI3kk+WQW5ltVgCNiXt74WYxo0rxqu1xPC130=
X-Received: by 2002:a17:90b:3709:b0:2b6:3792:ea4d with SMTP id
 98e67ed59e1d1-2b6cc564925mr3173480a91.5.1715358875348; Fri, 10 May 2024
 09:34:35 -0700 (PDT)
MIME-Version: 1.0
References: <6B9928C0-3CC8-4F38-8A5D-234142717682.ref@att.net>
 <6B9928C0-3CC8-4F38-8A5D-234142717682@att.net>
 <zifbl3lshkwq2zluyekp2h5qzchcdeaxpf7rwwczwgngpojjbp@aqqntccgf7q2>
In-Reply-To: <zifbl3lshkwq2zluyekp2h5qzchcdeaxpf7rwwczwgngpojjbp@aqqntccgf7q2>
From: John Paul Morrison <jmorrison@bogomips.com>
Date: Fri, 10 May 2024 09:34:24 -0700
Message-ID: <CAO-kYtEZU1iZoAMPTj2xDi6GXe_3QXMus2fbs+FZ3UGba948Zw@mail.gmail.com>
Subject: Re: Audio through spice
To: Dorothy Calhoon <rdservants@att.net>
Cc: spice-devel@lists.freedesktop.org, Victor Toso <victortoso@redhat.com>
Content-Type: multipart/alternative; boundary="0000000000006d8dec06181c1c68"
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

--0000000000006d8dec06181c1c68
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dorothy

This sounds more like a guest problem - you could probably find more help
on the quickemu Discord or looking through github issues/discussions.

It's been a while but changes to Opencore or qemu settings can break audio
and other things.
Spice probably isn't redirecting your usb keyboard/mouse - normally it just
sends the input to the emulated guest hardware.
It also does this for audio.

I have had OSX Catalina with working sound, and it breaks with
Opencore/boot or other changes to the virtual hardware.
Qemu/quickemu and Opencore have to map the intel-hda guest machine "sound
card" into something Catalina can use.

I have used USB redirection with Catalina - but you need to make sure
Catalina has drivers/kexts for the USB hardware.
Just getting USB working in Catalina was a challenge before - maybe that's
been fixed. These were virtual machine/guest settings for
usb-ochi/ehci/xhci.



On Fri, May 10, 2024 at 3:09=E2=80=AFAM Victor Toso <victortoso@redhat.com>=
 wrote:

> Hi Dorothy,
>
> On Sat, Apr 27, 2024 at 12:57:49PM GMT, Dorothy Calhoon wrote:
> > Hi!
> >
> > I use spice to redirect the usb ports from my POPos host to my
> > Mac Catalina operating system in my QEMU virtual machine which
> > was set up using quickemu and now is accessed via quickgui.
> > Spice works fine for redirecting the keyboard, mouse, wifi and
> > printer. Now I need it for audio.
>
> SPICE supports playback and record audio channels. Playback is
> audio coming from the Guest to your Client and Record is client's
> microphone to redirect to the guest.
>
> If you already uses usbredir channel, chances are that your spice
> client already supports playback/record too. Which spice client
> are you using?
>
> > I know that audio has been a problem in virtual machines with
> > Mac operating systems later than Catalina, but it is supposed
> > to work in Catalina.
>
> If you are using spice-gtk, the audio backend should be gstreamer
> and the right plugins need to be installed
>
> > I have a small speaker that plugs into the guest via a usb port
> > but it is not recognized. I also tried headphones in the audio
> > out ports and still Preferences show nothing for sound and
> > there is none.
> >
> > I understand that spice can allow the audio sound card from the
> > host to pass through to the guest. How do I implement that
> > feature? Somewhere I read that inputting the following into the
> > host terminal would do it: QEMU_AUDIO_DRV=3D spice. However,
> > terminal did nothing and just wanted more instructions. The
> > directions I had found said that after this command you could
> > then use -soundhw hda options. However, terminal does not
> > recognize soundhw and I wasn=E2=80=99t sure exactly what the =E2=80=9Co=
ptions"
> > were.
> >
> > I also tried -audiodev spice,id=3Did[,prop[=3Dvalue][,=E2=80=A6.]] and =
the
> > terminal said that the audiodev command was not found.
>
> I'm not familiar with quickemu nor quickgui, but again, if you
> are already using some spice channels, I'd guess the problem is
> on the client-side.
>
> > It appears that there are just a couple of commands that would
> > allow the audio passthrough feature of spice to work, but I
> > don=E2=80=99t know exactly what they are. I am new to using terminal so
> > I need very precise instructions. I would appreciate your help
> > in this.
> >
> > Thanking you in advance.
> >
> > Dorothy
>
> Cheers,
> Victor
>

--0000000000006d8dec06181c1c68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Dorothy</div><div><br></div><div>=
This sounds more like a guest problem - you could probably find more help o=
n the quickemu Discord or looking through github issues/discussions.</div><=
div><br></div><div>It&#39;s been a while but changes to Opencore or qemu se=
ttings can break audio and other things.</div><div>Spice probably isn&#39;t=
 redirecting your usb keyboard/mouse - normally it just sends the input to =
the emulated guest hardware.</div><div>It also does this for audio.</div><d=
iv><br></div><div>I have had OSX Catalina with working sound, and it breaks=
 with Opencore/boot or other changes to the virtual hardware.=C2=A0</div><d=
iv>Qemu/quickemu and Opencore have to map the intel-hda guest machine &quot=
;sound card&quot; into something Catalina can use.</div><div><br></div><div=
>I have used=C2=A0USB redirection with Catalina - but you need to make sure=
 Catalina has drivers/kexts for the USB hardware.</div><div>Just getting US=
B working in Catalina was a challenge before - maybe that&#39;s been fixed.=
 These were virtual machine/guest settings for usb-ochi/ehci/xhci.</div><di=
v><br></div><div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, May 10, 2024 at 3:09=E2=80=AFAM Victor Toso &l=
t;<a href=3D"mailto:victortoso@redhat.com" target=3D"_blank">victortoso@red=
hat.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Hi Dorothy,<br>
<br>
On Sat, Apr 27, 2024 at 12:57:49PM GMT, Dorothy Calhoon wrote:<br>
&gt; Hi!<br>
&gt; <br>
&gt; I use spice to redirect the usb ports from my POPos host to my<br>
&gt; Mac Catalina operating system in my QEMU virtual machine which<br>
&gt; was set up using quickemu and now is accessed via quickgui.<br>
&gt; Spice works fine for redirecting the keyboard, mouse, wifi and<br>
&gt; printer. Now I need it for audio.<br>
<br>
SPICE supports playback and record audio channels. Playback is<br>
audio coming from the Guest to your Client and Record is client&#39;s<br>
microphone to redirect to the guest.<br>
<br>
If you already uses usbredir channel, chances are that your spice<br>
client already supports playback/record too. Which spice client<br>
are you using?<br>
<br>
&gt; I know that audio has been a problem in virtual machines with<br>
&gt; Mac operating systems later than Catalina, but it is supposed<br>
&gt; to work in Catalina. <br>
<br>
If you are using spice-gtk, the audio backend should be gstreamer<br>
and the right plugins need to be installed<br>
<br>
&gt; I have a small speaker that plugs into the guest via a usb port<br>
&gt; but it is not recognized. I also tried headphones in the audio<br>
&gt; out ports and still Preferences show nothing for sound and<br>
&gt; there is none.<br>
&gt; <br>
&gt; I understand that spice can allow the audio sound card from the<br>
&gt; host to pass through to the guest. How do I implement that<br>
&gt; feature? Somewhere I read that inputting the following into the<br>
&gt; host terminal would do it: QEMU_AUDIO_DRV=3D spice. However,<br>
&gt; terminal did nothing and just wanted more instructions. The<br>
&gt; directions I had found said that after this command you could<br>
&gt; then use -soundhw hda options. However, terminal does not<br>
&gt; recognize soundhw and I wasn=E2=80=99t sure exactly what the =E2=80=9C=
options&quot;<br>
&gt; were.<br>
&gt; <br>
&gt; I also tried -audiodev spice,id=3Did[,prop[=3Dvalue][,=E2=80=A6.]] and=
 the<br>
&gt; terminal said that the audiodev command was not found.<br>
<br>
I&#39;m not familiar with quickemu nor quickgui, but again, if you<br>
are already using some spice channels, I&#39;d guess the problem is<br>
on the client-side.<br>
<br>
&gt; It appears that there are just a couple of commands that would<br>
&gt; allow the audio passthrough feature of spice to work, but I<br>
&gt; don=E2=80=99t know exactly what they are. I am new to using terminal s=
o<br>
&gt; I need very precise instructions. I would appreciate your help<br>
&gt; in this. <br>
&gt; <br>
&gt; Thanking you in advance.<br>
&gt; <br>
&gt; Dorothy<br>
<br>
Cheers,<br>
Victor<br>
</blockquote></div></div></div>

--0000000000006d8dec06181c1c68--
