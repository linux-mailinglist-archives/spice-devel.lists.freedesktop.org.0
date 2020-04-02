Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFE719C2D6
	for <lists+spice-devel@lfdr.de>; Thu,  2 Apr 2020 15:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6C66EA90;
	Thu,  2 Apr 2020 13:41:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45CA96EA90
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Apr 2020 13:38:36 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id n20so2708411lfl.10
 for <spice-devel@lists.freedesktop.org>; Thu, 02 Apr 2020 06:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=MiF/tx2y7c3xKzJ+y+8guLAWFayqqCSqDhJnF1eLqQc=;
 b=GSa4LRlqzDXzol5SkjuG53FJQRocwFokS3pm17gjqTaJCeFhVFLipsWR1q7WI1GNVV
 ZgUaWSgEoUn8is97Psfx6rSls/eXCZ4lsRLuDKcPRWkCZgYykytvlmegF/jHumPUAvjj
 VqtQj2z0XtZ1nFqF3IMQU0xnzUSuJNfF5WKJX30nvSwDN58ec3OKLxgVyu+rdoPFXWAX
 B8uVB1lwMT303nNyT2i6SH1AJeuq436a3Nn+6INjdmNIObc+q8JMp+XhzYE85bI73KVj
 EckZy1//OiHWC2g302AJuq5GpweEJcA7ImR1vJ5EF6d5fNbTUf4va1svTpCq36yF//62
 pEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=MiF/tx2y7c3xKzJ+y+8guLAWFayqqCSqDhJnF1eLqQc=;
 b=A+WxvnSuaYBiZkOnbI3z1IlAfp2xwRMB//2qp7CGwqycgNmRPx2TMZKS1Va5W29N7r
 L+eAf0HH5yYT/CpiWu51QzjJETy2J9TFCG+VW6aZG0nyEXpmmm30WklZvcCg8IUMTLCW
 e1zYFp/orLDMCo38HE9fwH0M+nbIiiTzr5plyASdem2kAV2FO4ufFX4IekGFDVXJgYQ3
 kbtkKMx1UhhsUGevHrPZum6hwjmOhLEKbBOVqwYhYnRk2ghbmzxK6hqq/5sB1z8BJyHv
 8VlmKkrPXF+n3CaTboe9VeP24dQnxkIInTjWQTUiGlue98yQQ18C3xNCRVm2LIk2Ot3Q
 Qt6g==
X-Gm-Message-State: AGi0PubUxPQR5Ldu/3VE9b/XO0paUX5xdlcHt4Ng/ai2cGpM6PEGlFTL
 HeZ+7j7f41ungKZ9D54fTq7uV6AzTZi28Xv/Z3qhtcnE
X-Google-Smtp-Source: APiQypLaNIHd2uRfYpCRFBml1waE0P0DGHOraqq62y5M1T04Z8ED9PBOSYMmQwZfqlyPBpsEky3EjKbKIeVdVP0kj70=
X-Received: by 2002:a19:e345:: with SMTP id c5mr2152280lfk.188.1585834714335; 
 Thu, 02 Apr 2020 06:38:34 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Lo=C3=AFck_CHOVET?= <loickchovet@gmail.com>
Date: Thu, 2 Apr 2020 15:38:23 +0200
Message-ID: <CA+2SNj+t9WBrqGr_UqnC_cyC0v6LE2mHi+UjrKqZ20ANGktDDg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Thu, 02 Apr 2020 13:41:15 +0000
Subject: [Spice-devel] Kvm
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
Content-Type: multipart/mixed; boundary="===============0824846266=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0824846266==
Content-Type: multipart/alternative; boundary="000000000000d20df905a24eea8c"

--000000000000d20df905a24eea8c
Content-Type: text/plain; charset="UTF-8"

Greetings,

For my internship of Computer Science Engineer student, I have to realise a
KVM.

The objective is to link embedded card (an Arduino mkr vidor 4000)  to a
server and  to connect remotely from our computer to the card to access the
server and control it remotely.
My internship tutor recommended me to look at spice for this but I'm not
sure because spice is more for VM.
Do you think it will be possible to install a Spice server on such embedded
system ?

Also, I have a tiny problem while trying spice on my own computer. I don't
understand how to compile the last spice-protocol (
https://gitlab.freedesktop.org/spice/spice-protocol) and spice 0.14 needs
spice protocol >= 0.14

Thank you so much for your attention.

--000000000000d20df905a24eea8c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Greetings,<div><br></div><div>For my internship of Compute=
r=C2=A0Science Engineer student, I have to realise a KVM.</div><div><br></d=
iv><div>The objective is to link embedded card (an Arduino mkr vidor 4000)=
=C2=A0 to a server and=C2=A0 to connect remotely from our computer to the c=
ard to access the server and control it remotely.=C2=A0</div><div>My intern=
ship=C2=A0tutor recommended me to look at spice for this but I&#39;m not su=
re because spice is more for VM.</div><div>Do you think it will be possible=
 to install a Spice server on such embedded system ?</div><div><br></div><d=
iv>Also, I have a tiny problem while trying spice on my own computer. I don=
&#39;t understand=C2=A0how to compile the last spice-protocol (<a href=3D"h=
ttps://gitlab.freedesktop.org/spice/spice-protocol">https://gitlab.freedesk=
top.org/spice/spice-protocol</a>) and spice 0.14 needs spice protocol &gt;=
=3D 0.14</div><div><br></div><div>Thank you so much for your attention.=C2=
=A0</div></div>

--000000000000d20df905a24eea8c--

--===============0824846266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0824846266==--
