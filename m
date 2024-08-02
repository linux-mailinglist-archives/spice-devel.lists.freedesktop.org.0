Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6D49481FC
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2024 20:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 633D310E162;
	Mon,  5 Aug 2024 18:55:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fi/hg3iz";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com
 [209.85.160.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316D810E09B
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2024 12:15:28 +0000 (UTC)
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-260f863109cso4729740fac.1
 for <spice-devel@lists.freedesktop.org>; Fri, 02 Aug 2024 05:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722600927; x=1723205727; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=2yH/I1jWXXe4k4SsxVGoCjSeqRf3yIFIFIMexfHWlLo=;
 b=fi/hg3izc0Seaum8fwMPFHMOBjF6+dTq40SNyc0wa3YlxcninoRfG4C9AH7n+BzHll
 8df6+ZNcWfjJMNAz0S8yO0jvfZM6EEviNnz+/HHQifWPjdFjU0OlyA425UALzYBrZPqO
 3D1FcyLjHfFBBR4WYbbHpCCxF3WPF/Qm/euSo5jib4eMpb09whQxxAJ04Es0MWaWgCyG
 OD6oMAKkAzJKgb+tzsbNiS3jWJh6VTrwGqizywbednqg81a0MMbV7GMhjMxg48foAaAs
 +IDh7CIxNlIfSY2hsaPtyoj/oDyYy8QR/eeNjI48V2Vy8snQNVzZlivCCeNTaYbx/QnX
 sUaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722600927; x=1723205727;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2yH/I1jWXXe4k4SsxVGoCjSeqRf3yIFIFIMexfHWlLo=;
 b=fR+iWVodwmODc6TM5Y8Y1xNEe/BqaMB4322MypDlVmJ6tQh94cLTA00lVkjKZgIlcI
 45xhPhybmcCfbwdluuiOrrPjXI21s+0wPWtJPEKM6cJlW3ALKd4sv2l+pw5LqA3kG+8e
 oz6fzlSAfDQhiBM7Z9XR1NB6oVmfFdESRqIf2TEm5q9+z0X4QapDMIJKhpIte5VWPL3G
 eO4zgQDgpffBlKmo/1x7RHIy9jw8B6mysqDJMtfVEvNzHSS7Xcp63Z8f4ymteSDp0YNq
 DZ9K1A04caM/hSTrZNVkNwasNgBI254yDFxs4gxnjgx2UhuGQuabxzBeFNKuY2lQfKeS
 H5ZA==
X-Gm-Message-State: AOJu0Yx/xugui9XOw3DvJ2ypSGevop1LqK6S9FuEha7aLK5lTA/71iof
 SBvUHcO+5dgMjQdBfiD8NY0Nkuxa6lBzQJh/XP/UMiVuUU4KXt/q3E+kqsVXDQSgSY12EXrxxCl
 RSh53ULt+z7RXNCH+A05HsZe162zm+A==
X-Google-Smtp-Source: AGHT+IGabnIHONFh2QwSJhsJdC+rB1l0bxqWSPaospVgjQLyqF7rnW82NQpNhbrPS02AIVXLHps5/p+Z559tUhbUGgo=
X-Received: by 2002:a05:6871:7992:b0:261:858:1982 with SMTP id
 586e51a60fabf-26891eb09afmr3371391fac.36.1722600927315; Fri, 02 Aug 2024
 05:15:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAAkeHDZcCEOUdJpijZ9HmZFGtDSsGFumUUhLqkzKi2PBTqvKBA@mail.gmail.com>
 <vowcjbkdvxtrtz7sz5b2r2iyfndiutv7neff2zxwly4kcmtxqr@72r4tbxvsict>
In-Reply-To: <vowcjbkdvxtrtz7sz5b2r2iyfndiutv7neff2zxwly4kcmtxqr@72r4tbxvsict>
From: David Counter <davidjcounter@gmail.com>
Date: Fri, 2 Aug 2024 08:15:15 -0400
Message-ID: <CAAkeHDa7LtpQzv0qG78e0B3QODLqW+WaQMeLUfCXsmURbd90kg@mail.gmail.com>
Subject: Re: Question regarding suitability of Spice for my workplace
To: Victor Toso <victortoso@redhat.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000005cce99061eb248fc"
X-Mailman-Approved-At: Mon, 05 Aug 2024 18:55:48 +0000
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

--0000000000005cce99061eb248fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Awesome, thank you so much!

On Fri, Aug 2, 2024, 5:37=E2=80=AFAM Victor Toso <victortoso@redhat.com> wr=
ote:

> On Fri, Jul 19, 2024 at 03:03:56PM GMT, David Counter wrote:
> > Good Afternoon
> >
> > Quick question - is it possible to stream video from two separate
> sources to
> > two instances of the Spice client program on the desktop of a thin
> client? I'm
> > looking to display Windows and Linux concurrently on two monitors
> attached to
> > my Wyse 5070.
>
> Yes, just by running two spice clients.
>
> >
> > Thanks in advance,
> >
> > David Counter
> >
> > Systems Support Technician | Union County Emergency Services
> >
> > C: (941) 953-6282
> > E: davidjcounter@gmail.com
>

--0000000000005cce99061eb248fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Awesome, thank you so much!</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, Aug 2, 2024, 5:37=E2=80=AFAM Victor Toso &lt;<a href=3D"mailto:victortoso=
@redhat.com">victortoso@redhat.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">On Fri, Jul 19, 2024 at 03:03:56PM GMT, David Counter wrote:=
<br>
&gt; Good Afternoon<br>
&gt; <br>
&gt; Quick question - is it possible to stream video from two separate sour=
ces to<br>
&gt; two instances of the Spice client program on the desktop of a thin cli=
ent? I&#39;m<br>
&gt; looking to display Windows and Linux concurrently on two monitors atta=
ched to<br>
&gt; my Wyse 5070.<br>
<br>
Yes, just by running two spice clients.<br>
<br>
&gt; <br>
&gt; Thanks in advance,<br>
&gt; <br>
&gt; David Counter<br>
&gt; <br>
&gt; Systems Support Technician | Union County Emergency Services=C2=A0<br>
&gt; <br>
&gt; C: (941) 953-6282<br>
&gt; E: <a href=3D"mailto:davidjcounter@gmail.com" target=3D"_blank" rel=3D=
"noreferrer">davidjcounter@gmail.com</a><br>
</blockquote></div>

--0000000000005cce99061eb248fc--
