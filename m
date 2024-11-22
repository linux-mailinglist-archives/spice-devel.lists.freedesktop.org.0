Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C30E59D59E3
	for <lists+spice-devel@lfdr.de>; Fri, 22 Nov 2024 08:21:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D244110E082;
	Fri, 22 Nov 2024 07:21:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U4SnHqst";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com
 [209.85.128.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35EDD10E082
 for <spice-devel@lists.freedesktop.org>; Fri, 22 Nov 2024 07:21:07 +0000 (UTC)
Received: by mail-yw1-f177.google.com with SMTP id
 00721157ae682-6ee59ae27dfso15234037b3.2
 for <spice-devel@lists.freedesktop.org>; Thu, 21 Nov 2024 23:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732260066; x=1732864866; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=atbFNk4WqolJRybPRKuCqoswpsK5UwLD87sxgQSd6kc=;
 b=U4SnHqst0WQl5kBk0tMgz3xQar6Oc6DT1Z6s0c1Q43eYRIae8tika+I1TtrVVEbmKh
 5thFtvksPZYntCjJFSFZieNlSIIU2X/B7n/+2QvUndIJm9d1Y4AnAUqHM+h/qFXZ53Yi
 W+MVI5IaKYy4rL9dDLC8OTo6ZArX02t2LvCU0aEHWXSxdh07AmLJDws+WGIt41L+z/bC
 opuwonvCgKcxkGWJpWMAbEAA3EBYYuj1hu+FuWQogG54Ih5a8/bnN/6bWiTB77ANjfLR
 X4wyU6s1PgyfA6xr/SFx2/tIWDzm+okOP++/HfrqJ98apq434zd/FH8S8EM+vFD0DzWk
 osSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732260066; x=1732864866;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=atbFNk4WqolJRybPRKuCqoswpsK5UwLD87sxgQSd6kc=;
 b=j7HDCXO7mU5V9Sg6CzJsbv/ywoSFCuF6glQkMfGX3/cVFeCvaiNVJsstfUHWeROthz
 imPLJ5STItVwBhVWUvkPS5eH31D+goJZuZJVtRaZB3DarvWgyak9NwOwM4qXC2sVGfwg
 nURm3p7cl9uQrZpSd6GfjKiqtkqlSk2PFoBjfkjshWlGsYX7CTWNiKwBjYWgh90biQV/
 n0WeLygpI+/hy0ySJixh4tBaLzz/VL1CVeEC5kEK5Sr/uTkFz8qbrtBahrLVvTcX6/4S
 3Og1d8ZcbYwlglakpG0cUTD8DnQCltiO8hTUami6r62inOjQQ8UaDNUciHWA/FF37izF
 1pMQ==
X-Gm-Message-State: AOJu0Yz7e2o0JLcJIXleGhsPDEyrGfaHIVV1G7dfs2QedYQ53SqEwrp4
 MfG2MRfly1jpQ0E9H5AVOTVlHz8Yi6jZFulePp8zLpirgd9Abd9T+OWDW0Xvw1iOCeUIMzarTDm
 2f7yRcfLHW1cJwvELZ8CnWeSxL5I=
X-Gm-Gg: ASbGnctDl8hAauroWgAfz6o597MgelTl3lr5EarOUYpeR1hSqjRmrEkIzuGBDiOcmkb
 gVIP+VOjhkZ8/EQKE7fElpG74e6WGC/0=
X-Google-Smtp-Source: AGHT+IH2WaiQ15aJEvi8L/fq5lM0gEn0zuNcpPkz+zE1VCBbedy9EiBFD9NYlKVuhcT56cHIgJGNCErgz/M+4v7ukGU=
X-Received: by 2002:a05:690c:6c0f:b0:6ea:98d8:a61 with SMTP id
 00721157ae682-6eee0a27517mr23776067b3.28.1732260065984; Thu, 21 Nov 2024
 23:21:05 -0800 (PST)
MIME-Version: 1.0
References: <CAAxL8Xn2fT8K-or0ANR5aTMsw_UjJu74tbeNVAyGf1KJbqGpHQ@mail.gmail.com>
In-Reply-To: <CAAxL8Xn2fT8K-or0ANR5aTMsw_UjJu74tbeNVAyGf1KJbqGpHQ@mail.gmail.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Fri, 22 Nov 2024 07:20:53 +0000
Message-ID: <CAHt6W4d0A3MgSmJMb6pCH_=rh=1k7PMytMcJptAbd4NAA2bpXw@mail.gmail.com>
Subject: Re: SPICE UDP
To: =?UTF-8?B?0JDQu9C10LrRgdC10Lkg0KHQsNGE0L7QvdC+0LI=?= <segs509@gmail.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000e44fe106277b39f9"
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

--000000000000e44fe106277b39f9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 21, 2024 at 4:04=E2=80=AFPM =D0=90=D0=BB=D0=B5=D0=BA=D1=81=D0=
=B5=D0=B9 =D0=A1=D0=B0=D1=84=D0=BE=D0=BD=D0=BE=D0=B2 <segs509@gmail.com> wr=
ote:

> Good day.
> We use the SPICE protocol in our VDI implementation.
> The documentation does not explicitly say whether SPICE supports UDP
> transport.
>
> Now I'm arguing with chatgpt on this topic, I ask you to clarify how the
> developers implemented UDP support?
>
> Thank you for the answer.
>
> Greetings.
>

No, no UDP, only TCP.

Options are TLS and WebSockets, on top of SPICE protocol.

Regards,
   Frediano

--000000000000e44fe106277b39f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Nov 21, 2024 at 4:04=E2=80=AFPM =D0=90=D0=BB=D0=B5=D0=BA=D1=
=81=D0=B5=D0=B9 =D0=A1=D0=B0=D1=84=D0=BE=D0=BD=D0=BE=D0=B2 &lt;<a href=3D"m=
ailto:segs509@gmail.com">segs509@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Good day.<div>We=
 use the SPICE protocol in our VDI implementation.=C2=A0</div><div>The docu=
mentation does not explicitly say whether SPICE supports UDP transport.=C2=
=A0</div><div><br></div><div>Now I&#39;m arguing with chatgpt on this topic=
, I ask you to clarify how the developers implemented UDP support?<br></div=
><div><br></div><div>Thank you for the answer.</div><div><br></div><div>Gre=
etings.</div></div></blockquote><div><br></div><div>No, no UDP, only TCP.</=
div><div><br></div><div>Options are TLS and WebSockets, on top of SPICE pro=
tocol.<br></div><div><br></div><div>Regards,<br></div><div>=C2=A0=C2=A0 Fre=
diano</div><div>=C2=A0<br></div></div></div>

--000000000000e44fe106277b39f9--
