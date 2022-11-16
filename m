Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC5762B5EE
	for <lists+spice-devel@lfdr.de>; Wed, 16 Nov 2022 10:04:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B314289FA5;
	Wed, 16 Nov 2022 09:04:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37AAE10E435
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Nov 2022 08:27:35 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id s8so11214691lfc.8
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Nov 2022 00:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=wnn6EOzlvDu+I3KhGuqVK+2ul34PV8IHG+KmCGKFjUI=;
 b=gMa8lARKmH/+wG/tovDDuObLcxO9dNuS/bixOg4KdDYIdxiQO6z+W1fbRjbEx+GQTF
 m9qlTm+btnE4C6cCqwIjcglCVoBe8hZtXFI9vWPy1yHvqEHNIjzQ742WXIATK8PiBjdM
 WOtbpiQsV5HRncnpYNXtjqvthHohJb3V3bbm279vKJl/IlPCK9o2q2Af/BNRAHay8X9+
 BjPOLBsRXgRfTohS8DIhTWEG9ZXe67vAD23nQyZFtSAFY4QrGjEWSVERZ7Sm/xWQqTv4
 wpdUVgLu4Syd4x6gCKheTnqSNhQx/vgR5MBnU+9cwcMJyFAPdnMuTZlg85M5k+UvFV8v
 W2Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wnn6EOzlvDu+I3KhGuqVK+2ul34PV8IHG+KmCGKFjUI=;
 b=GuqmQZBupRqq9GG8tAIFM/hlXkemrHTXxPis4SbBjRRuLdF7dD24Kv13xm2T++woMT
 ixM1IbxEPMtVkbbUlny+anMNkaE97UYYWUvbAXwZzAgz4Z1R2BKP5UNs11cyuMqwbnjH
 /HKD1TReMgsxMhHcHu7uNG0FxYCOC4vGtL/kif9cfQPcFVdWUzRQjiJ50CHX8BpX3Qtp
 T/odtdEYvXR76IGuBa6VQ1ALA4vh7S70CEXiVA1fjZJsk5mx/t8g8JgjfNVTfFsxzPJw
 5qlOrmU7illX3x3307oyeKpTjIAKY8DjtkuRpAYiHSLTd41JPyHa5xBzCU9ImK0iRI5D
 6zcA==
X-Gm-Message-State: ANoB5pk/BNz4gIsLPigAToJo59JBAqIaoqpq4CR3787o28RwSw+Ctn6P
 UaURFR4YABe3HIy2BycunKFraY/KLRpyapidyBRcba3uWl4=
X-Google-Smtp-Source: AA0mqf7kzVshXP463GSGkisnsMRb4o/m1JeEbpu/Qv/qAuajvqZq48YotHJCWYqQ3Ztu3E39R37ky/iXA5zCgabg9V8=
X-Received: by 2002:a05:6512:1dc:b0:4a2:8836:c07d with SMTP id
 f28-20020a05651201dc00b004a28836c07dmr6487934lfp.661.1668587253076; Wed, 16
 Nov 2022 00:27:33 -0800 (PST)
MIME-Version: 1.0
References: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
 <20221116082102.uasas3k4whcjcbqv@tapioca>
In-Reply-To: <20221116082102.uasas3k4whcjcbqv@tapioca>
From: Stefan Silberstein <linuxstony@gmail.com>
Date: Wed, 16 Nov 2022 09:27:21 +0100
Message-ID: <CADiWsK-Mv1rR8yWmaSfYp5d9kU9tfrSqkvC_zor9hKYhA51+CA@mail.gmail.com>
To: Victor Toso <victortoso@redhat.com>
Content-Type: multipart/alternative; boundary="0000000000007f1af305ed923ec0"
X-Mailman-Approved-At: Wed, 16 Nov 2022 09:04:51 +0000
Subject: Re: [Spice-devel] Userquestion - remote-viewer connection fails
 with "Connection type could not be determined by URI"
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

--0000000000007f1af305ed923ec0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I appreciate the time to answer me.

In the meantime (out of desperation because i needed the virtualmachine for
work) I gave it a go with specifying root as user and not the servers
username "server".

I was able to connect to the virtual Windows10 installation with

remote-viewer spice://root@192.168.178.51:5900

But again - then I dont unterstand why it worked as user and later on with
specifying the user later on (which doesn't work right now anymore)

So it is a permissions problem on my side and I successfully wasted your
time. :/

Sorry about that.

This happens when "users" try to play with the big boys toys :D

Have a nice day you all and thanks for your time.

Stefan

Am Mi., 16. Nov. 2022 um 09:21 Uhr schrieb Victor Toso <
victortoso@redhat.com>:

> Hi Stefan,
>
> On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein wrote:
> > Hello developers,
> >
> > I can imagine that this will be an annoying question for you -
> > so I apologize in advance.
> >
> > I am a user - with a longer history with linux BUT i am
> > completely new to virtualization.
> > Due to the fact that I got a server donated to me I wanted to
> > give it a go and it worked like a charm.
> >
> > Installed virt-manager, installed Windows10  connected with
> > virt-manager - absolutely no problem.
> >
> > Due to the fact that I need dual monitors I learned that I
> > could add another display and connect with spice - and it
> > worked immediately.
> >
> > BUT - without me changing anything (consciously) I wasn't able
> > to connect to the virtual machine the next week.
> >
> > It refuses with "Verbindungstyp konnte nicht von URI ermittelt werden"
> > (Connection type could not be determined by URI)
> >
> > Then i tried to connect with sudo and specifying the user in
> > the command line and it once again connected:
> >
> > sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.168.178.51:5900
>
> Perhaps the URL is the problem. If the IP is 192.168.178.51 and
> the port for the VM is 5900, then try
>
>     remote-viewer spice://192.168.178.51:5900
>
> If server is a dns that can be resolved, should be fine to use it
> instead of ip address
>
>     remote-viewer spice://server:5900
>
>
> > And now - again without changing anything - it doesn't connect
> > with that command as well.
> >
> > I have sadly NO clue whatsoever where to even search for a
> > solution - the internet didn't help me here...
> >
> > Do you have any hint at all what I might do wrong here?
> >
> > The machine is available - the port is open and visible
> > PORT     STATE SERVICE
> > 22/tcp   open  ssh
> > 80/tcp   open  http
> > 3389/tcp open  ms-wbt-server
> > 5900/tcp open  vnc
> >
> > ufw on the server is shut down.
> >
> > ANY help would be greatly appreciated.
>
> You can get more verbose information of issues with --spice-debug
> command line option too.
>
> Cheers,
> Victor
>

--0000000000007f1af305ed923ec0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I appreciate the time to answer me.</div><div><br></d=
iv><div>In the meantime (out of desperation because i needed the virtualmac=
hine for work) I gave it a go with specifying root as user and not the serv=
ers username &quot;server&quot;.</div><div><br></div><div>I was able to con=
nect to the virtual Windows10 installation with <br></div><div><br></div><d=
iv><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0);ba=
ckground-color:rgb(255,255,255)">remote-viewer spice://<a href=3D"http://ro=
ot@192.168.178.51:5900">root@192.168.178.51:5900</a></span><br></span></div=
><div><span style=3D"font-family:monospace"><br></span></div><div><span sty=
le=3D"font-family:monospace">But again - then I dont unterstand why it work=
ed as user and later on with specifying the user later on (which doesn&#39;=
t work right now anymore)</span></div><div><span style=3D"font-family:monos=
pace"><br></span></div><div><span style=3D"font-family:monospace">So it is =
a permissions problem on my side and I successfully wasted your time. :/</s=
pan></div><div><span style=3D"font-family:monospace"><br></span></div><div>=
<span style=3D"font-family:monospace">Sorry about that. <br></span></div><d=
iv><span style=3D"font-family:monospace"><br></span></div><div><span style=
=3D"font-family:monospace">This happens when &quot;users&quot; try to play =
with the big boys toys :D</span></div><div><span style=3D"font-family:monos=
pace"><br></span></div><div><span style=3D"font-family:monospace">Have a ni=
ce day you all and thanks for your time.</span></div><div><span style=3D"fo=
nt-family:monospace"><br></span></div><div><span style=3D"font-family:monos=
pace">Stefan<br></span></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Am Mi., 16. Nov. 2022 um 09:21=C2=A0Uhr schri=
eb Victor Toso &lt;<a href=3D"mailto:victortoso@redhat.com">victortoso@redh=
at.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Hi Stefan,<br>
<br>
On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein wrote:<br>
&gt; Hello developers,<br>
&gt;<br>
&gt; I can imagine that this will be an annoying question for you -<br>
&gt; so I apologize in advance.<br>
&gt;<br>
&gt; I am a user - with a longer history with linux BUT i am<br>
&gt; completely new to virtualization.<br>
&gt; Due to the fact that I got a server donated to me I wanted to<br>
&gt; give it a go and it worked like a charm.<br>
&gt;<br>
&gt; Installed virt-manager, installed Windows10=C2=A0 connected with<br>
&gt; virt-manager - absolutely no problem.<br>
&gt;<br>
&gt; Due to the fact that I need dual monitors I learned that I<br>
&gt; could add another display and connect with spice - and it<br>
&gt; worked immediately.<br>
&gt;<br>
&gt; BUT - without me changing anything (consciously) I wasn&#39;t able<br>
&gt; to connect to the virtual machine the next week.<br>
&gt;<br>
&gt; It refuses with &quot;Verbindungstyp konnte nicht von URI ermittelt we=
rden&quot;<br>
&gt; (Connection type could not be determined by URI)<br>
&gt;<br>
&gt; Then i tried to connect with sudo and specifying the user in<br>
&gt; the command line and it once again connected:<br>
&gt;<br>
&gt; sudo remote-viewer=C2=A0 spice:=E2=81=84=E2=81=84<a href=3D"http://ser=
ver@192.168.178.51:5900" rel=3D"noreferrer" target=3D"_blank">server@192.16=
8.178.51:5900</a><br>
<br>
Perhaps the URL is the problem. If the IP is 192.168.178.51 and<br>
the port for the VM is 5900, then try<br>
<br>
=C2=A0 =C2=A0 remote-viewer spice://<a href=3D"http://192.168.178.51:5900" =
rel=3D"noreferrer" target=3D"_blank">192.168.178.51:5900</a><br>
<br>
If server is a dns that can be resolved, should be fine to use it<br>
instead of ip address<br>
<br>
=C2=A0 =C2=A0 remote-viewer spice://server:5900<br>
<br>
<br>
&gt; And now - again without changing anything - it doesn&#39;t connect<br>
&gt; with that command as well.<br>
&gt;<br>
&gt; I have sadly NO clue whatsoever where to even search for a<br>
&gt; solution - the internet didn&#39;t help me here...<br>
&gt;<br>
&gt; Do you have any hint at all what I might do wrong here?<br>
&gt;<br>
&gt; The machine is available - the port is open and visible<br>
&gt; PORT=C2=A0 =C2=A0 =C2=A0STATE SERVICE<br>
&gt; 22/tcp=C2=A0 =C2=A0open=C2=A0 ssh<br>
&gt; 80/tcp=C2=A0 =C2=A0open=C2=A0 http<br>
&gt; 3389/tcp open=C2=A0 ms-wbt-server<br>
&gt; 5900/tcp open=C2=A0 vnc<br>
&gt;<br>
&gt; ufw on the server is shut down.<br>
&gt;<br>
&gt; ANY help would be greatly appreciated.<br>
<br>
You can get more verbose information of issues with --spice-debug<br>
command line option too.<br>
<br>
Cheers,<br>
Victor<br>
</blockquote></div>

--0000000000007f1af305ed923ec0--
