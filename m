Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C9F138A23
	for <lists+spice-devel@lfdr.de>; Mon, 13 Jan 2020 05:05:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644E089DB7;
	Mon, 13 Jan 2020 04:05:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-xc32.google.com (mail-yw1-xc32.google.com
 [IPv6:2607:f8b0:4864:20::c32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C0289DB7
 for <spice-devel@lists.freedesktop.org>; Mon, 13 Jan 2020 04:05:41 +0000 (UTC)
Received: by mail-yw1-xc32.google.com with SMTP id l14so5136195ywj.9
 for <spice-devel@lists.freedesktop.org>; Sun, 12 Jan 2020 20:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BMBTMLqkL7h/kdZ0KptDKyO/yurrkdURHrwKvUnPLlk=;
 b=W107aOfn1D1hxQwNZjLtkw//XIhrm3W/9o/xYaEQ5MIRQAurNNre6DzfrtBr4xV4+6
 fzbXnY2BdmDXXMvtdAkR+sCwvpRI9Qql0ZdpBxgRiFiSfi0EcTRN5MiyfPyD/R6/a/e5
 HqsNK1uCL1do7nI5JIxunGK9S24G8Pwk+fOZOjmSosDvZa6z/srZ0pgw0ddOQIHpSP0Y
 ZXyZUU7FV9VeE+dkZpCA0PEft9/yytmnOhF/8R1mVPWUOe7UitLPiPm5AbjJa4w9vjch
 h01Rb99pz12DdRYkrM2lkJkR8rIGLXT3i8cUzE+DZSKAnOj0cJJLjLodYCjS2cug2DFH
 g2mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BMBTMLqkL7h/kdZ0KptDKyO/yurrkdURHrwKvUnPLlk=;
 b=a9lRMhu5S8j/A5rPTI40nJEnTOhPDMRXNYkGS534uB5afQDHo4Sa6BRW54WHA1/Qty
 CETOOiiSNYniFRqWxTqw4XxvQ/xxzlE5YyWQQOpmWZ27b/IJrv4b5ScI6ZMqT0Tte/SM
 iq2tFVso3lcZUNGCRDUSh6LyNcFXwLEFmPtFW1mrV06WsSCv2Q03pWpplntnHMkZbgfU
 jJsy6eoH7O1++s3FwcB7NzG18BMpJKMlvOoeBGlm+aAE546I0mXyTHjV6UWCyYgeibbH
 0eWlY4vwyDzf7Gm94JwvEe3R7CLCFWk+V8kPL+QU4cejAtH4VZtIOTW//IKmI80hfiMK
 rqPw==
X-Gm-Message-State: APjAAAXQsGDMl867W97a0KH4stR04rFfOipmpY9zTL7Xv5uqyYq22W1V
 wxauOY6gkiUDM7ghB7Bbuvq5Tm4TqAQc3JS+dtwyzPHr
X-Google-Smtp-Source: APXvYqzd8RWlu+vjJoF5IP/N6FXoosIAjPv9NVXnkanM54iMso7OGYAXWigJBOd9d7816HbJnX7wQCkUSgrhU+bRrTQ=
X-Received: by 2002:a81:415:: with SMTP id 21mr12214828ywe.432.1578888340321; 
 Sun, 12 Jan 2020 20:05:40 -0800 (PST)
MIME-Version: 1.0
From: Valeri Aronov <valerka@gmail.com>
Date: Mon, 13 Jan 2020 15:04:55 +1100
Message-ID: <CALTE0RYrP2qQM0abXvF1TkVAK7DO1tqd3T+y_UUocyqgnxa2Sg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: [Spice-devel] fast symbolic transfer function derivatives
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
Content-Type: multipart/mixed; boundary="===============1153176217=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1153176217==
Content-Type: multipart/alternative; boundary="000000000000aa3b67059bfd96c7"

--000000000000aa3b67059bfd96c7
Content-Type: text/plain; charset="UTF-8"

Dear all,

I trust that I have an excellent proposition for the theme in the subject
of this post. Using my algorithm for the evaluation of all the first and
second derivatives (by circuit parameters) of the symbolic transfer
function asymptotically approaches the time of the evaluation of transfer
function itself.

Using these derivatives allows substantially reduce the time of circuit
parameter optimization because of much better precision of the derivatives
evaluation (in comparison with non-symbolic derivatives evaluation) and an
opportunity to apply optimization methods using the second derivatives.

I am looking for discussing with or presenting this  to ppl who implemented
symbolic transfer function generation or interested in using the symbolic
functions for parameter optimization or sensitivity evaluation.

Cheers,

Valeri A.

--000000000000aa3b67059bfd96c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Dea=
r all,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-size:small">I trust that I hav=
e an excellent proposition for the theme in the subject of this post. Using=
 my algorithm for the evaluation of all the first and second derivatives (b=
y circuit parameters) of the symbolic transfer function asymptotically appr=
oaches the time of the evaluation of transfer function itself.</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gma=
il_default" style=3D"font-size:small">Using these derivatives allows substa=
ntially reduce the time of circuit parameter optimization because of much b=
etter precision of the derivatives evaluation (in comparison with non-symbo=
lic derivatives evaluation) and an opportunity to apply optimization method=
s using the second derivatives.</div><div class=3D"gmail_default" style=3D"=
font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:=
small">I am looking for discussing with or presenting this=C2=A0 to ppl who=
 implemented symbolic transfer function generation or interested in using t=
he symbolic functions for parameter optimization or sensitivity evaluation.=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">Cheers,</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div><div dir=3D"ltr=
" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr"><div><span style=3D"font-size:small">Valeri A<span class=3D"gmail_defa=
ult" style=3D"font-size:small">.</span></span><br></div></div></div></div><=
/div>

--000000000000aa3b67059bfd96c7--

--===============1153176217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1153176217==--
