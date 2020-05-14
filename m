Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5235D1D2F04
	for <lists+spice-devel@lfdr.de>; Thu, 14 May 2020 14:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6645D6E334;
	Thu, 14 May 2020 12:02:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806896E334
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 12:02:37 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id h4so30031975wmb.4
 for <spice-devel@lists.freedesktop.org>; Thu, 14 May 2020 05:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Iu4tUg6TZzCMujVuh60s7emHxmVJvz3RkfNm8bn7sjg=;
 b=UqCReKsl4tZxh093S+IiLxmEA5YqUP31dCb8TjuiMl0O/a1qiQibI59goPf4j4O9Bo
 hgGPV/DXxKqBc47jehMOMTwOK7tWQM89ygc1ymYcgf1h5PV373hInRERAr6w1x8F4ChN
 SI2tRnY9gmi5PQSO6oaHuFEMl3D2zeHe8RTMGXXfsAa4PU01DARla+J+GclGKUfD0CMN
 +g8j91v6DX+Hycjq1n3pv7cKK2CvKJe2adEhGDOKTNBRgL2F59JbiBc/ixLPwQsPhytk
 ETBw31moTenTU/ZWP3azJwvYOm2ze86I1B13ka8r3UOpgY/Na7/nuQ8RfJ+u++nFXvW2
 f1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Iu4tUg6TZzCMujVuh60s7emHxmVJvz3RkfNm8bn7sjg=;
 b=Ekpmmd9SiCV0HP7coHSTiofEgcry8ZzUjXJfRWSEAl5V5wDsyqhE70CDg/yAgQBK0a
 xOzIxXSBnWlGiTfirEAGjBuzgBhSr8aS2/c3qddNCgq6QE2wRyCgMq4cYDFDvFMHHXzr
 19AKyPAs6AXXHMUOAcBL3LTxVp+KjbT+GnDywauiOu6CNtIJ8m+EJc3FjBkvGApj38+z
 ILzwjP/8QjIgj0uOpkPK+FvJAexhfNR8ebMHTkz2BYC7EPzRH5NwzJLVOcSOzFtXofYm
 oHWFPJm6iSqhn17hjzsg26yOQU3njIHPKbcvRPtqEa2d5xoTOlF1c1GLgaqJ4XQhdCj+
 iz7g==
X-Gm-Message-State: AGi0PuY6OarxvxJX4ePeoLvlY0478Qb6EJCjTm8gdVzuNA/qTA00UIEC
 HTVyZvZ5qORGNSW93u236RD8njR7cjmccFoNlDMCL22mfd0=
X-Google-Smtp-Source: APiQypJPkmi4itgUe1dE/nbtUKpKLMwkIFlZzxBrUoK0x1BSU5M1zQG5a6dTk49KmAsulGAHl638vvfjsVNnYuP8GB4=
X-Received: by 2002:a1c:e4c1:: with SMTP id b184mr32276482wmh.4.1589457756179; 
 Thu, 14 May 2020 05:02:36 -0700 (PDT)
MIME-Version: 1.0
References: <4ca6628d-7930-d01e-8001-0d0640b4f6ea@thinsia.com>
In-Reply-To: <4ca6628d-7930-d01e-8001-0d0640b4f6ea@thinsia.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 14 May 2020 14:02:23 +0200
Message-ID: <CAJ+F1C+SWYeUqoGnGZBGV11=8x05qTW5ZNQ3_Z6MDLLXdNt7yw@mail.gmail.com>
To: sassen@thinsia.com
Subject: Re: [Spice-devel] virtual gl
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============2008882109=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2008882109==
Content-Type: multipart/alternative; boundary="000000000000f15d9305a59a78eb"

--000000000000f15d9305a59a78eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi

On Wed, May 13, 2020 at 5:30 PM Roland Sassen <sassen@thinsia.com> wrote:

> Hello, is it possible to use spice together with virtual GL?
>

If you are talking about VirtualGL (https://virtualgl.org/), Spice doesn't
provide 3d rendering itself. However, you may use 3d/opengl in the
guest/remote, by various means. Either via cpu rendering, gpu passthrough,
or virgl. Thus, you can use VirtualGL together with Spice, but the 2
solutions will remain distinct. They offer different trade-offs. Spice is
designed to work at the display/monitor level, whatever the OS, while
VirtualGL is more an X11 application-level solution, afaik.


--=20
Marc-Andr=C3=A9 Lureau

--000000000000f15d9305a59a78eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020 at 5:30 PM Rol=
and Sassen &lt;<a href=3D"mailto:sassen@thinsia.com">sassen@thinsia.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div>
    Hello, is it possible to use spice together with virtual GL?<br></div><=
/blockquote><div><br></div><div>If you are talking about VirtualGL (<a href=
=3D"https://virtualgl.org/">https://virtualgl.org/</a>), Spice doesn&#39;t =
provide 3d rendering itself. However, you may use 3d/opengl in the guest/re=
mote, by various means. Either via cpu rendering, gpu passthrough, or virgl=
. Thus, you can use VirtualGL together with Spice, but the 2 solutions will=
 remain distinct. They offer different trade-offs. Spice is designed to wor=
k at the display/monitor level, whatever the OS, while VirtualGL is more an=
 X11 application-level solution, afaik. <br></div><div><br></div><br></div>=
-- <br><div dir=3D"ltr" class=3D"gmail_signature">Marc-Andr=C3=A9 Lureau<br=
></div></div>

--000000000000f15d9305a59a78eb--

--===============2008882109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2008882109==--
