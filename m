Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E59D13CB9C9
	for <lists+spice-devel@lfdr.de>; Fri, 16 Jul 2021 17:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 328AD6E9B4;
	Fri, 16 Jul 2021 15:25:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70EBA6E9B4
 for <spice-devel@lists.freedesktop.org>; Fri, 16 Jul 2021 15:25:47 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id 22so16537637lfy.12
 for <spice-devel@lists.freedesktop.org>; Fri, 16 Jul 2021 08:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=amYz8m4NMuLxf9ca2havOAMhCRZz8DBvOnQIhNcPY18=;
 b=hL6dPU+0RFzidS141Lf3iOPjTxcopjuDqhYYdhZyKR1reNTGQLQzZIOuk5E8Lt/kGo
 WIZzxV3uw94p68LmtYsyUUgLP2dqZc2KLqTtGPCyNbLqsSOgxOy9TjH6pDw8tC5YS7zl
 7DqDw9qXINkkGonERKXkNC7TjA6Kd+Z9y4Fv5AmGz/zd/51D7wbIU8s9E6e/GDTA56D8
 0mjLWVgzA8XEOXfmDcShjWsLZ90Vd7JLgdMJQYFojW8KsCyPVa/Z6av2LAffDhLs8irs
 fZD9xhS7SpK7A3r7eU6PnMMIB1IhSGUihR+DUFt0wLDK7aJADMuJ0RUPSLjs1t03mhA0
 NTNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=amYz8m4NMuLxf9ca2havOAMhCRZz8DBvOnQIhNcPY18=;
 b=B2NAFKEmZ6/qgPA7Dfdle+/zD7sUsUBEF94qjuCHsDa4pzv2iMxkRQhMeulhIpL//H
 T0kEM1WSiVatpw04SaMrxjSGEXXjMyknVvl5NpK7czThIULwCFrXJcqeJkFuRd6Dl8Oe
 B2c0qoYdMZI+DjJj+VHfn3dGFvAPbDs7o/jUGIVcpc1+vdHvt+E8AjXOIzq7CN5PI9f2
 aHVxKFsBw+SyQqpTzFuKie8VPhyXkQe2MjpPZCtuR1qQmkBchn5ikrtiDXWsbvR+NYU4
 A7n3UKtoIYPWwjCLDhXMl+GTc0HkPbSE11d+Mi9qW+NkgyZENdlEgmdYcIyIZ/TNxmvl
 iMag==
X-Gm-Message-State: AOAM530CHCtOvCyhRPYIuNdqOKxvIPnPwxjwnOHEHUT9kiVABPSr6ijo
 fPzvjm84pCVtsRbE1bSwgI3m7wki3Nvh9maxwcYKHEXxrLzELA==
X-Google-Smtp-Source: ABdhPJz3PXKf1fDj5TbbWeOX0Xr4HVcn4GoC05XBlLOjz5dA8A1ii7LCRtlwggccNfhHw+bkpLict3bl9tjdYKsM73c=
X-Received: by 2002:a05:6512:3708:: with SMTP id
 z8mr7834914lfr.416.1626449143913; 
 Fri, 16 Jul 2021 08:25:43 -0700 (PDT)
MIME-Version: 1.0
From: Rex Dieter <rdieter@gmail.com>
Date: Fri, 16 Jul 2021 10:25:32 -0500
Message-ID: <CANFsObc3nd6AbmeSYr0fhErhB9J+GRKe2QwqdGRWzeyiFa0LnA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: [Spice-devel] spice-vdagent user systemd unit
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
Content-Type: multipart/mixed; boundary="===============1073893426=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1073893426==
Content-Type: multipart/alternative; boundary="00000000000077e23205c73f33e0"

--00000000000077e23205c73f33e0
Content-Type: text/plain; charset="UTF-8"

Just a quick followup to old thread
"Fedora 34 guests can no longer paste from host"
https://lists.freedesktop.org/archives/spice-devel/2021-April/052351.html

The problem is purely relying on autostart which can be buggy in this case,
see downstream bug:
https://bugzilla.redhat.com/show_bug.cgi?id=1951580
and relevant upstream bug,
https://github.com/systemd/systemd/issues/18791

One workaround is to provide a systemd user unit to run spice-vdagent
also/instead.  Here's the first iteration I came up with:
https://src.fedoraproject.org/rpms/spice-vdagent/blob/rawhide/f/spice-vdagent.service
(pretty simple)

Feedback is welcome, and I'd encourage you to adopt this upstream too.
Thanks.

-- Rex

--00000000000077e23205c73f33e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Just a quick followup to=
 old thread<br>&quot;Fedora 34 guests can no longer paste from host&quot;</=
div><div dir=3D"ltr"><a href=3D"https://lists.freedesktop.org/archives/spic=
e-devel/2021-April/052351.html">https://lists.freedesktop.org/archives/spic=
e-devel/2021-April/052351.html</a><br></div><div dir=3D"ltr"><br></div><div=
>The problem is purely relying on autostart which can be buggy in this case=
, see downstream bug:</div><div><a href=3D"https://bugzilla.redhat.com/show=
_bug.cgi?id=3D1951580">https://bugzilla.redhat.com/show_bug.cgi?id=3D195158=
0</a><br>and relevant=C2=A0upstream bug,<br><a href=3D"https://github.com/s=
ystemd/systemd/issues/18791">https://github.com/systemd/systemd/issues/1879=
1</a><br></div><div dir=3D"ltr"><br></div><div>One workaround is to provide=
 a systemd user unit to run spice-vdagent also/instead.=C2=A0 Here&#39;s th=
e first iteration=C2=A0I came up with:</div><div><a href=3D"https://src.fed=
oraproject.org/rpms/spice-vdagent/blob/rawhide/f/spice-vdagent.service">htt=
ps://src.fedoraproject.org/rpms/spice-vdagent/blob/rawhide/f/spice-vdagent.=
service</a><br>(pretty simple)</div><div><br></div><div>Feedback is welcome=
, and I&#39;d encourage you to adopt this upstream too.=C2=A0 Thanks.</div>=
<div><br></div><div>-- Rex</div></div></div>

--00000000000077e23205c73f33e0--

--===============1073893426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1073893426==--
