Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCBB62B430
	for <lists+spice-devel@lfdr.de>; Wed, 16 Nov 2022 08:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1915A10E193;
	Wed, 16 Nov 2022 07:49:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF1589221
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Nov 2022 20:53:19 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id c25so19195596ljr.8
 for <spice-devel@lists.freedesktop.org>; Tue, 15 Nov 2022 12:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=/kzK5hPtUCgcdUJC+Jh+R+iov4q5eOLup2iABO8GqDM=;
 b=RAKBeoXjyH3gmMSP5Fh9vYOOgku4tukpTrPU5rq9mHboN3HD27dKxQt8eoP1vZNfkO
 BTxq33XcempF7D92YVC+BQFr8KbLDTBV9I/eZfseJKhgNXUOqjWNpYx3yzu1cHLxu4Zz
 5mTRDUyDwNJetnkEeXdTLXPHnEQ9fU0duXPMnvye3cHpAdH/W+tESJtiBVVAaVbld4pv
 fM8zj7wHXWFVUabp57AlyK1DwKCr/PM1jb553BmbbsklX1cnzdfDu+dhNJtTzKwifxgT
 fE3e3yXTXgsJIK1FuO7HPLwHAMDKPjeQ50yz/hUEHtCE9HkLLU8qfaOlKWQvB2UqHUie
 RLeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/kzK5hPtUCgcdUJC+Jh+R+iov4q5eOLup2iABO8GqDM=;
 b=fm1NhaoeyjFrLmlYLypBgEycjhzMUTwKwmZx3WxoFTsgk91vW8GXdNA3CDgXZf0eqA
 +NpfD6O/bYOPWfG9YRB+XWR/p+4kCo/ciWyNsZs7ZOfIOsLWfunoOqHDTNvLJBsp3CPa
 Q7mbrnHZng8hp1cNv9Wlo4u5GB/rBqISjQdNerKwnJ1dIt69OXNJflVk7dXHJqDjc7QV
 BRo9CupXfYzMTOyXHA8P+PRAeSPo/POjtKJLBXG8cPLz4J/LwJe6vJh/R+c5fvI0NEb2
 LjU1hcBoT/S0vfz9ZWkeQqFpyfSU3pTH0iWMqM3bKervwABZKFS/ENd8DVbl/jZS80ZP
 aurg==
X-Gm-Message-State: ANoB5plQRCy7DL6Xdq5nnyrJhQ68lscrBqd0jhM/Xvc4n8vDVvNz5iAl
 LMzJ7psf2jttjKNyfA6QkSYfy0Dz7kLGTBs8o5fLl5aGEXs=
X-Google-Smtp-Source: AA0mqf5vLTFCp/WfSaAdnfvaju5SGeXO123ObMZnQdH+X3MALqyU6BqrX9ikmXU2q0cVGRIsNQ5rrHx0i0LNvbG87bA=
X-Received: by 2002:a05:651c:1a2c:b0:277:9e5:6cc8 with SMTP id
 by44-20020a05651c1a2c00b0027709e56cc8mr6200708ljb.105.1668545596868; Tue, 15
 Nov 2022 12:53:16 -0800 (PST)
MIME-Version: 1.0
From: Stefan Silberstein <linuxstony@gmail.com>
Date: Tue, 15 Nov 2022 21:53:05 +0100
Message-ID: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000097cf5905ed888bf0"
X-Mailman-Approved-At: Wed, 16 Nov 2022 07:49:46 +0000
Subject: [Spice-devel] Userquestion - remote-viewer connection fails with
 "Connection type could not be determined by URI"
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

--00000000000097cf5905ed888bf0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello developers,

I can imagine that this will be an annoying question for you - so I
apologize in advance.

I am a user - with a longer history with linux BUT i am completely new to
virtualization.
Due to the fact that I got a server donated to me I wanted to give it a go
and it worked like a charm.

Installed virt-manager, installed Windows10  connected with virt-manager -
absolutely no problem.

Due to the fact that I need dual monitors I learned that I could add
another display and connect with spice - and it worked immediately.

BUT - without me changing anything (consciously) I wasn't able to connect
to the virtual machine the next week.

It refuses with "Verbindungstyp konnte nicht von URI ermittelt werden"
(Connection type could not be determined by URI)

Then i tried to connect with sudo and specifying the user in the command
line and it once again connected:

sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.168.178.51:5900

And now - again without changing anything - it doesn't connect with that
command as well.

I have sadly NO clue whatsoever where to even search for a solution - the
internet didn't help me here...

Do you have any hint at all what I might do wrong here?

The machine is available - the port is open and visible
PORT     STATE SERVICE
22/tcp   open  ssh
80/tcp   open  http
3389/tcp open  ms-wbt-server
5900/tcp open  vnc

ufw on the server is shut down.

ANY help would be greatly appreciated.

Best regards

Stefan Silberstein

--00000000000097cf5905ed888bf0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello developers,</div><div><br></div><div>I can imag=
ine that this will be an annoying question for you - so I apologize in adva=
nce.</div><div><br></div><div>I am a user - with a longer history with linu=
x BUT i am completely new to virtualization.</div><div>Due to the fact that=
 I got a server donated to me I wanted to give it a go and it worked like a=
 charm. <br></div><div><br></div><div>Installed virt-manager, installed Win=
dows10=C2=A0 connected with virt-manager - absolutely no problem.</div><div=
><br></div><div>Due to the fact that I need dual monitors I learned that I =
could add another display and connect with spice - and it worked immediatel=
y.</div><div><br></div><div>BUT - without me changing anything (consciously=
) I wasn&#39;t able to connect to the virtual machine the next week.</div><=
div><br></div><div>It refuses with &quot;Verbindungstyp konnte nicht von UR=
I ermittelt werden&quot; (Connection type could not be determined by URI)</=
div><div><br></div><div>Then i tried to connect with sudo and specifying th=
e user in the command line and it once again connected:</div><div><br></div=
><div><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0)=
;background-color:rgb(255,255,255)">sudo remote-viewer =C2=A0spice:=E2=81=
=84=E2=81=84<a href=3D"http://server@192.168.178.51:5900">server@192.168.17=
8.51:5900</a></span><br></span></div><div><span style=3D"font-family:monosp=
ace"><br></span></div><div><span style=3D"font-family:monospace">And now - =
again without changing anything - it doesn&#39;t connect with that command =
as well.</span></div><div><span style=3D"font-family:monospace"><br></span>=
</div><div><span style=3D"font-family:monospace">I have sadly NO clue whats=
oever where to even search for a solution - the internet didn&#39;t help me=
 here...</span></div><div><span style=3D"font-family:monospace"><br></span>=
</div><div><span style=3D"font-family:monospace">Do you have any hint at al=
l what I might do wrong here?</span></div><div><span style=3D"font-family:m=
onospace"><br></span></div><div><span style=3D"font-family:monospace">The m=
achine is available - the port is open and visible <br></span></div><div><s=
pan style=3D"font-family:monospace"><span style=3D"font-family:monospace"><=
span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">PORT =C2=
=A0=C2=A0=C2=A0=C2=A0STATE SERVICE
</span><br>22/tcp =C2=A0=C2=A0open =C2=A0ssh
<br>80/tcp =C2=A0=C2=A0open =C2=A0http
<br>3389/tcp open =C2=A0ms-wbt-server
<br>5900/tcp open =C2=A0vnc<br>
</span></span></div><div><br><span style=3D"font-family:monospace"></span><=
/div><div>ufw on the server is shut down.<br></div><div><br></div><div><spa=
n style=3D"font-family:monospace">ANY help would be greatly appreciated.</s=
pan></div><div><span style=3D"font-family:monospace"><br></span></div><div>=
<span style=3D"font-family:monospace">Best regards</span></div><div><span s=
tyle=3D"font-family:monospace"><br></span></div><div><span style=3D"font-fa=
mily:monospace">Stefan Silberstein<br></span></div></div>

--00000000000097cf5905ed888bf0--
