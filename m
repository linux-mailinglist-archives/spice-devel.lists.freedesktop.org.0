Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5A73AAB27
	for <lists+spice-devel@lfdr.de>; Thu, 17 Jun 2021 07:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A966E03A;
	Thu, 17 Jun 2021 05:39:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663486E03A
 for <spice-devel@lists.freedesktop.org>; Thu, 17 Jun 2021 05:39:28 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id z26so4075445pfj.5
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Jun 2021 22:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5ncqc8ED3D734RBjS0WXQ2V2VcTR9gQtHqmNRm5dFac=;
 b=BGD/H9HG+WKEaBg5LGZDiFgDcaV1dkjK+F6VyFpgL1KvedyvPZUkusde3x87GX6+qb
 opBpFscZ+j7cb3ad2MG5ztRHiT4gL++TRRDrJNn8XD5jdEM5m87qAIUuEgzSYuFhmwtV
 3CW5iuqh9WZI+IjiSaMDJxyGYvByJtIVCHmebC9p5hRQ5P8GQ+0SA/jbh900fHChXgFQ
 UvU0c2u3BAmSeaLNVfwIp/DMWfoIPMPTyoAa8muQZSvAPDKH/YgJt2HUXs9pYEsYFj/N
 qx0h2HJzAl04kp7IyuFmPO3KD8uakB7rIgwXI5K2DKH5gKucIPFg2BLip4VGwZfiP7Gy
 qtqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5ncqc8ED3D734RBjS0WXQ2V2VcTR9gQtHqmNRm5dFac=;
 b=uOk8jJdKgFCXr9MlMBJno0XZHDtsUN6b+mp/qb9TJ238AaQ89R0xooMvUuGbrKbnOw
 UaD5I9MAiKG1cu0GfpUK5lwV5ziVY1xZK9AJiyH9hv1Qyo5+K1O1KqZ8pGc2QWDZEXh1
 WLhvsSmMp80Y5PVkImYgJwfMWeqqnKxMT7UwrnNyNhFt8ePP2BixtrcjD9yr+IkWEFnR
 Ldugsvb+StmIOMKvVYasIKN4lPPrNc4MqX6uQUovYiY+6EZBNxeJma54uJUR8gBYrByM
 CW/bvzrUgd39plHx3T2QsBDf+ii7yNx1SZbAr/Q8VdEo7SENBFVAhQ0L+K5HIYqRA7S7
 7axQ==
X-Gm-Message-State: AOAM533bTO6i2Nb3osjqic2bh9YV5Z4XGpgYV8jUJlZYNwyvmudCD0Ki
 uwGDCT/vVnRLp7/w0DtizaPWrb7vdLGUCa5V61g=
X-Google-Smtp-Source: ABdhPJztMIvF2Zdbg9DsEnudmn7hhh3qxuYfWlg1Wtf9YlaC9UGWi9U4bJCNjIomEm+qXMF2pNfYaoQJxCFlQRglcEM=
X-Received: by 2002:a63:ef4c:: with SMTP id c12mr3364240pgk.441.1623908367963; 
 Wed, 16 Jun 2021 22:39:27 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR04MB6922A051AA74495D2FF0032AD10F9@DM6PR04MB6922.namprd04.prod.outlook.com>
In-Reply-To: <DM6PR04MB6922A051AA74495D2FF0032AD10F9@DM6PR04MB6922.namprd04.prod.outlook.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Thu, 17 Jun 2021 06:39:16 +0100
Message-ID: <CAHt6W4dSHKxiyuxwufoLG6f_AdsU8oAoWkR6SHBXRpboO7e7vA@mail.gmail.com>
To: "Shawn O. Eary" <seary@uark.edu>
Subject: Re: [Spice-devel] License and Payment Required?
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============2008146635=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2008146635==
Content-Type: multipart/alternative; boundary="0000000000006b9a9705c4efa1f3"

--0000000000006b9a9705c4efa1f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Il giorno gio 17 giu 2021 alle ore 06:35 Shawn O. Eary <seary@uark.edu> ha
scritto:

> I just created a Windows 10 Guest for QEMU\KVM on a Debian 10 host and
> unfortunately copy/paste doesn't work.
>
> Do I have to pay a fee to use your tools at?
> https://www.spice-space.org/download.html
>
> My employer will not likely be willing to pay any such fee.
>
> Confused,
>
> Shawn Eary =F0=9F=90=B1=E2=80=8D=F0=9F=91=A4
> Information Technology Services
> <http://directory.uark.edu/departmental/448/UITS>(479) 575-6943
> Systems Analyst
> University of Arkansas: ADSB 201
> Fayetteville, AR 72701
>
Hi,
  no, licenses are mainly GPL and LGPL. For Copy&paste you need to install
the agent (the SPICE vdagent also called SPICE guest agent) on the VM.

Regards,
   Frediano

--0000000000006b9a9705c4efa1f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">Il giorno gio 17 giu 2021 alle ore 06:35 Shawn O. Eary &lt;<a href=
=3D"mailto:seary@uark.edu">seary@uark.edu</a>&gt; ha scritto:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I just created a Windows 10 Guest for QEMU\KVM on a Debian 10 host and unfo=
rtunately copy/paste doesn&#39;t work.<br>
<br>
Do I have to pay a fee to use your tools at?<br>
<a href=3D"https://www.spice-space.org/download.html" id=3D"gmail-m_-368322=
0315160953187LPlnk525622" target=3D"_blank">https://www.spice-space.org/dow=
nload.html</a><br>
<br>
My employer will not likely be willing to pay any such fee.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Confused,<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_-3683220315160953187Signature">
<div>
<div></div>
<div></div>
<div style=3D"font-size:13px;font-family:Tahoma">
<div id=3D"gmail-m_-3683220315160953187appWrapper">
<div>
<div>
<p><font size=3D"2" face=3D"Courier New">Shawn Eary =F0=9F=90=B1=E2=80=8D=
=F0=9F=91=A4<br>
</font><a href=3D"http://directory.uark.edu/departmental/448/UITS" target=
=3D"_blank"><font size=3D"2" face=3D"Courier New">Information Technology Se=
rvices<br>
</font></a><font size=3D"2" face=3D"Courier New">(479) 575-6943<br>
</font><font size=3D"2" face=3D"Courier New">Systems Analyst<br>
</font><font size=3D"2" face=3D"Courier New">University of Arkansas: ADSB 2=
01<br>
</font><font size=3D"2" face=3D"Courier New">Fayetteville, AR 72701</font><=
/p></div></div></div></div></div></div></div></div></blockquote><div>Hi,</d=
iv><div>=C2=A0 no, licenses are mainly GPL and LGPL. For Copy&amp;paste you=
 need to install the agent (the SPICE vdagent also called SPICE guest agent=
) on the VM.<br></div><div><br></div><div>Regards,<br></div><div>=C2=A0=C2=
=A0 Frediano<br></div></div></div>

--0000000000006b9a9705c4efa1f3--

--===============2008146635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2008146635==--
