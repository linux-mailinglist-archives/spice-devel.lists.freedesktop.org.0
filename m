Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D997A96CEE3
	for <lists+spice-devel@lfdr.de>; Thu,  5 Sep 2024 08:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8428110E6DA;
	Thu,  5 Sep 2024 06:08:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="X23vJJgo";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D02710E042
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Jul 2024 21:12:08 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-a7ac469e4c4so773827266b.0
 for <spice-devel@lists.freedesktop.org>; Mon, 29 Jul 2024 14:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1722287526; x=1722892326; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CSYg9EgTcpgjP+Ws7PiUoBjobKxEC1RXJqBeRIfUAtc=;
 b=X23vJJgomNxW8XNhy2ubXu3CYTM3ZLmFoyNGqXYz+smYbNqncdmdiMq0Av/TTxrs3G
 DtFuOwZgAtNGzxtxXPbmtH54vuXLwLYtF6psBBJowY/zbvEi/FtQ6ouWrsRrkN5VFd0A
 sfnd0nZYAQAl8hvv6p3KVdWeKKZRjath25ywEIyGv/hcwoTJLdiIwIkyZbjRrLWWBReu
 YauVhf1tJjJ4AffqHJhON+P+aebj3vUdc51BNwjgy8+a2Wsvds6/RDNWgTainLBE0wOc
 sOBfnfoemnwXlN5/94dQP6jGu7MZaLsMO2+evhhKyDHaAuk40OhElWIgkUGKhb/hamGi
 r76A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722287526; x=1722892326;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CSYg9EgTcpgjP+Ws7PiUoBjobKxEC1RXJqBeRIfUAtc=;
 b=Ud+VVb1eq7vnMNw6qzYUpuEl6xKz3GnjTugcy4A0FuVVEW3nTunxb3d6NBYXubFWPw
 X3U++OmsPrxZqweGPgiLfvdY0iO552yhdoaqjj+nKfHS2tzO282xHGf733qkzwsPIiNX
 JkWytlboe/oKgM8X++LNcsdaf0FG5afZkX45COr168LmY4U4ChiQpSTJcpndDArCsIC7
 axa4fvKaRx0oRJVm3ZF+ahg2gdh/0aHovGEomd0u+WxB0tELIqi7vjnwPeg0x65o0u8v
 Gr8HJR1QzSwMc1QCLkCdjo6W8uAu10fEKVyJFpKGhC/sm7p/lpGpG1/8Ny19K+mSnmW8
 +XEA==
X-Gm-Message-State: AOJu0YzAAosdTPI6mjpBC0Iz6MsklkLxJ2b59MWiL91o0brRbUJz0P2I
 /cVyBuarPsHHjtPKhL9EeXibUe38qyMg9If/37VcejxKyggGODi1DOwLoKSMHv8iw/eZOVsceTa
 jg3/VpNW8eVeYyuP0ZDzLo739fTE=
X-Google-Smtp-Source: AGHT+IEfC7YRFqn998MqD9c+dkHggd1hfd9WUDBGALyWCfs0qoIpkoq4QhZzRRch34rEKX05ynY/c7WHYwSUD4mtKQg=
X-Received: by 2002:a17:907:3207:b0:a7a:acae:340b with SMTP id
 a640c23a62f3a-a7d3fb6cf46mr828458066b.31.1722287526431; Mon, 29 Jul 2024
 14:12:06 -0700 (PDT)
MIME-Version: 1.0
References: <CA+mZ-_JE5f7qdNFyS-zKzYwx8e22xyzNG9oU4B7cNOyCUFAENQ@mail.gmail.com>
 <CAHt6W4eAR8gN6=d9LWH4EOukuWgx76UfBj0QGT0ctdr=UbWF_Q@mail.gmail.com>
 <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
In-Reply-To: <CA+mZ-_LwGmvUhFDjqgLzfkc0aMy0SsWXH9U_Ekdsg0rLZKZQdA@mail.gmail.com>
From: Randall Suter <randallsuter@gmail.com>
Date: Tue, 30 Jul 2024 00:11:55 +0300
Message-ID: <CA+mZ-_LJNue6N6vqRdm8VGZFG_ohwjUPdXc_mfbuRgtj8bN7Rw@mail.gmail.com>
Subject: Re: Guest Post Request
To: Frediano Ziglio <freddy77@gmail.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="00000000000036d2f3061e69503f"
X-Mailman-Approved-At: Thu, 05 Sep 2024 06:08:03 +0000
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

--00000000000036d2f3061e69503f
Content-Type: text/plain; charset="UTF-8"

Hi! I really want to hear from you, so please reply soon.
When will you be able to respond to me?

Best Regards,
Randall Suter


On Sat, 20 Jul 2024 at 01:13, Randall Suter <randallsuter@gmail.com> wrote:

> Hi! Thank you for your reply! I'm interested in sponsored posts with a
> do-follow link. I have several projects on different topics. I would like
> to know the terms of publication and prices on your site to begin with.
> Please give me more details about it if you accept such posts.
>
> Best Regards,
> Randall Suter
>
>
> On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio <freddy77@gmail.com> wrote:
>
>> Il giorno ven 19 lug 2024 alle ore 11:20 Randall Suter
>> <randallsuter@gmail.com> ha scritto:
>> >
>> > Good day! My name is Randall. I would like to contribute to your
>> website (spice-space.org) by submitting a guest post. Are there any
>> specific requirements that I need to follow?
>> >
>> > Best Regards,
>> > Randall Suter
>>
>> Hi Randall,
>>    pages are generated from
>> https://gitlab.freedesktop.org/spice/spice-space-pages.
>> What'a a "guest post" ?
>>
>> Frediano
>>
>

--00000000000036d2f3061e69503f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi! I really want to hear from you, =
so please reply soon.</div><div>When will you be able to respond to me?</di=
v><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><br=
></div><div><font face=3D"arial, sans-serif">Best Regards,<br></font></div>=
<div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><font face=3D"ar=
ial, sans-serif">Randall Suter</font></span><br></div></div></div></div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, 20 Jul 2024 at 01:13, Randall Suter &lt;<a href=3D"mailto:ra=
ndallsuter@gmail.com">randallsuter@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"lt=
r"><span style=3D"color:rgb(0,0,0);font-size:10pt;font-family:Arial">Hi! Th=
ank you for your reply! I&#39;m interested in sponsored posts with a do-fol=
low link. I have several projects on different topics. I would like to know=
 the terms of publication and prices on your site to begin with. Please giv=
e me more details about it if you accept such posts.</span><br clear=3D"all=
"><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><br=
></div><div><font face=3D"arial, sans-serif">Best Regards,<br></font></div>=
<div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><font face=3D"ar=
ial, sans-serif">Randall Suter</font></span><br></div></div></div></div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, 19 Jul 2024 at 13:47, Frediano Ziglio &lt;<a href=3D"mailto:=
freddy77@gmail.com" target=3D"_blank">freddy77@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Il giorno ven 19 lu=
g 2024 alle ore 11:20 Randall Suter<br>
&lt;<a href=3D"mailto:randallsuter@gmail.com" target=3D"_blank">randallsute=
r@gmail.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt; Good day! My name is Randall. I would like to contribute to your websi=
te (<a href=3D"http://spice-space.org" rel=3D"noreferrer" target=3D"_blank"=
>spice-space.org</a>) by submitting a guest post. Are there any specific re=
quirements that I need to follow?<br>
&gt;<br>
&gt; Best Regards,<br>
&gt; Randall Suter<br>
<br>
Hi Randall,<br>
=C2=A0 =C2=A0pages are generated from<br>
<a href=3D"https://gitlab.freedesktop.org/spice/spice-space-pages" rel=3D"n=
oreferrer" target=3D"_blank">https://gitlab.freedesktop.org/spice/spice-spa=
ce-pages</a>.<br>
What&#39;a a &quot;guest post&quot; ?<br>
<br>
Frediano<br>
</blockquote></div>
</blockquote></div>

--00000000000036d2f3061e69503f--
