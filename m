Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646522EF12E
	for <lists+spice-devel@lfdr.de>; Fri,  8 Jan 2021 12:23:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34376E81C;
	Fri,  8 Jan 2021 11:23:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058798996F
 for <spice-devel@lists.freedesktop.org>; Fri,  8 Jan 2021 10:07:52 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id w1so13681384ejf.11
 for <spice-devel@lists.freedesktop.org>; Fri, 08 Jan 2021 02:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=jPyxLrr+FA9MtcAuDNSG59gjpZQsM4GRSzBR4nRijBc=;
 b=tPjPJ+HhPT/ucfOHh4RstRnnpIQyD6ZY/hnWqwOVdQTK0u/Nw5Xr3yUjb2hbFCsYB+
 ClmsG/T7S044U5B+6wJz+3JOwanD3Men8HbqOspcjFDgiWfWJK5ZjsVuEbFXeTboep1l
 3F/Ubk0ren7qgZFtNtsvDFzn551eW7fmt6cLqm4baV73e/9mKG0juCkDj7dCspTMDg10
 A7ImovbBS4b2TL18t2WIwmrgMdcjHDun5BRNJuZdblrJPwKX2opwSOk6s5G0ur+5zZvb
 hY/FnwbuK5cGrfnfJu/1u1l2hhBRF820kQVSoHWeuXOxvB2Msnsy2/QIKoN0Hk2kWipr
 D9JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jPyxLrr+FA9MtcAuDNSG59gjpZQsM4GRSzBR4nRijBc=;
 b=h30ABmr43YlTcNFL1wurnw4GX90/FnN740mlJe0zDYDMIzxsWKdJDnrJejn9l3k1H9
 aXGVbIgiuKc43c25ICrrn0ExEtlhmwHozoKFsi+S0emef5d3qWxWBEG3dpwSv1cZm5sz
 UiprF5S4caPgYuBMk5WIg/Bx3aOOPh4UwWre4WFbFeHAwX6V/BAMl/WoqEtPN0f/7d+P
 bUcO0Cu4qEBTOZbxpw9yBI7mK+uRmv1259RhCc0v+xaiktMBOOkyVNZawiiJafwhtwQB
 MBPtM9sKKPWCVVbZGtlUyPttKdLcswe/8yypxpH2ZutSqKcjd1VPvzUwI2vnBi3pwx0s
 yDfg==
X-Gm-Message-State: AOAM532arPjQqoHaeqm2exs/f80kIOb9OCsCp4t6MGh1BuDqEyZzSl2P
 g+7tbqdgpRb7YorV+bEco2Q22atw915TcUbu8ecQLliCJmhZlz8I
X-Google-Smtp-Source: ABdhPJxuyCXDpdpM9QjEIx2+Phpw/ZQfNz6wt9gXfEQrhuLwxTjjadmvFxIhicibcBvliJ9du2cosxyankNQkyHW+qU=
X-Received: by 2002:a17:906:fa82:: with SMTP id
 lt2mr2189832ejb.322.1610100470467; 
 Fri, 08 Jan 2021 02:07:50 -0800 (PST)
MIME-Version: 1.0
From: Domingo Ruiz Arroyo <ordenadordomi@gmail.com>
Date: Fri, 8 Jan 2021 11:07:39 +0100
Message-ID: <CAJdDNnLW9bPjvjF6S+HG_m2RAVr1hnPPy7dPU-X9s4bPzgv1UQ@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Approved-At: Fri, 08 Jan 2021 11:23:37 +0000
Subject: [Spice-devel] Experimental OSX Client
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
Content-Type: multipart/mixed; boundary="===============0330730630=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0330730630==
Content-Type: multipart/alternative; boundary="0000000000009850b805b860ba49"

--0000000000009850b805b860ba49
Content-Type: text/plain; charset="UTF-8"

Hi. The experimental client for os x
<https://www.spice-space.org/osx-client.html> has stopped working in macOS
Big Sur, when in the other versions it worked correctly. While this is
solved or I have not developed an alternative solution
<https://github.com/domingoruiz/remote-viewer-macos11> that I think can be
quite useful, so I am attaching it for everyone who needs it.

Thank you.

A greeting

--0000000000009850b805b860ba49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi. The <a href=3D"https://www.spice-space.org/osx-client.=
html">experimental client for os x</a> has stopped working in macOS Big Sur=
, when in the other versions it worked correctly. While this is solved or I=
 have not developed an <a href=3D"https://github.com/domingoruiz/remote-vie=
wer-macos11">alternative solution</a> that I think can be quite useful, so =
I am attaching it for everyone who needs it.=C2=A0<div><br></div><div>Thank=
 you.=C2=A0</div><div><br></div><div>A greeting<br></div></div>

--0000000000009850b805b860ba49--

--===============0330730630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0330730630==--
