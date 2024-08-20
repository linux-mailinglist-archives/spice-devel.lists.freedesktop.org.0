Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AB5958605
	for <lists+spice-devel@lfdr.de>; Tue, 20 Aug 2024 13:43:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D7110E747;
	Tue, 20 Aug 2024 11:43:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="U/G5ZWnX";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A8B10E747
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2024 11:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724154193;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fQ/VB2IcyZiOcDbxrcFzAZk1hHIk3xWcUkGoEs3ypIc=;
 b=U/G5ZWnXqqVCBll1XYq2w/72fTWa/ch7ltgXmHRbUOb4H2f45kBLbvZxBLSxithxOV5lCz
 V/ppYkOWZLfwIE3WTf6dqI5uJwtTDMb2u686NUZLfOCI/z4toZUKPeLQu69PqiERB4ARDw
 lltZpJZy7hyvG163sbPCogZkNWusxG8=
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com
 [209.85.160.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-490-lOt25-2ZOdu3NoRKHZVIaA-1; Tue, 20 Aug 2024 07:43:11 -0400
X-MC-Unique: lOt25-2ZOdu3NoRKHZVIaA-1
Received: by mail-oa1-f70.google.com with SMTP id
 586e51a60fabf-2705e14211dso2804606fac.3
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Aug 2024 04:43:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724154191; x=1724758991;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fQ/VB2IcyZiOcDbxrcFzAZk1hHIk3xWcUkGoEs3ypIc=;
 b=XXhYlY4Gr+YftCGOuoP165VTtdLYyDlxnFxDCD0UTn5bA80/mDj7bzCC6AUSHe3lz2
 bmwojyZ8i730E1LXadZautp+XUrN4Ftje7eppUXl2GAZivraiqGY8rbXbvthhzsISbEZ
 +CY7GZtjYx7F1zCJaIt6d+JPwda2qo0/GPdkUWSqdbldiztIV3Wv+bYS2ppQ+QPnWoXS
 rCMMZaH+myTnvl5i7Iqkd8cpquqzgZXYjbPznVCxfyxtSkM+7e19ySLLSKatLjJLOc1e
 qH0ojr3B9vXrpjyzFX+Lbtj123xLUKnG/kDZh1VzcOFUeG87QVcZNDbwAcHpdIICWqhw
 1iQA==
X-Gm-Message-State: AOJu0YzuDspzVqfOJBAvD0DBb8Kw3Oe8wLkDSRbQGgOWaLZCdX78tKmg
 0snUY2W1mQh+w9lVUsT9A0ycjNgmudN7CPH7BBaUTaa5fUC1OTsHh3tlD3hXjZl8VfKM5gpkFnp
 2A4K6zdYUhZWbFaRLDzL9Ab4V/O3svp08e9WKrTPFsfnSHWtq5aKgE+t4L71YsUOJwpghhV4w5P
 ligmkZKfPHC+pRDkXUkn6ZX8UWbekAJARbFKUWIvipcE0=
X-Received: by 2002:a05:6870:289a:b0:270:b0a:cc35 with SMTP id
 586e51a60fabf-2701c34656dmr14629269fac.8.1724154191167; 
 Tue, 20 Aug 2024 04:43:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJzUArr0n1Gtb1pLn7HMmqgUNdG7MHCxFkkQTejJeGIOhO9B3ZLeBbyXilyWkGA+IEHkmfl8M8NpJ2A/36s28=
X-Received: by 2002:a05:6870:289a:b0:270:b0a:cc35 with SMTP id
 586e51a60fabf-2701c34656dmr14629256fac.8.1724154190888; Tue, 20 Aug 2024
 04:43:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240701111154.11633-1-abelova@astralinux.ru>
 <50b0785d-78be-4819-8498-8f4ad3ccab8a@astralinux.ru>
In-Reply-To: <50b0785d-78be-4819-8498-8f4ad3ccab8a@astralinux.ru>
From: Uri Lublin <ulublin@redhat.com>
Date: Tue, 20 Aug 2024 14:42:58 +0300
Message-ID: <CAAg9qJ0aGnQYiBmYZbG6EWYZcmN3YV-BsKzM66hkfnDKRsPHWw@mail.gmail.com>
Subject: Re: [PATCH] usbredirhost: prevent overflow in
 usbredirhost_set_iso_threshold
To: Anastasia Belova <abelova@astralinux.ru>
Cc: spice-devel@lists.freedesktop.org, sdl.qemu@linuxtesting.org, 
 victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000016165706201bee98"
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

--00000000000016165706201bee98
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anastasia,

Thanks for sending a patch.

On Tue, Aug 13, 2024 at 12:34=E2=80=AFPM Anastasia Belova <abelova@astralin=
ux.ru>
wrote:

> Cc'ing Victor Toso
>
> 01/07/24 14:11, Anastasia Belova:
> > pkts_per_transfer < MAX_PACKETS_PER_TRANSFER =3D 32.
> > transfer_count < MAX_TRANSFER_COUNT =3D 16.
> > max_packetsize =3D maxp * mult. mult <=3D 3.
> > maxp <=3D 0x7ff. If all variables have their max value,
> > the result will be bigger that uint16_t.
> > Add an explicit cast.
> >
> > Signed-off-by: Anastasia Belova <abelova@astralinux.ru>
> > ---
> >   usbredirhost/usbredirhost.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/usbredirhost/usbredirhost.c b/usbredirhost/usbredirhost.c
> > index 03c56e9..ca19473 100644
> > --- a/usbredirhost/usbredirhost.c
> > +++ b/usbredirhost/usbredirhost.c
> > @@ -1193,7 +1193,7 @@ static void usbredirhost_stop_stream(struct
> usbredirhost *host,
> >   static void usbredirhost_set_iso_threshold(struct usbredirhost *host,
> >       uint8_t pkts_per_transfer, uint8_t transfer_count, uint16_t
> max_packetsize)
> >   {
> > -    uint64_t reference =3D pkts_per_transfer * transfer_count *
> max_packetsize;
> > +    uint64_t reference =3D (uint64_t)pkts_per_transfer * transfer_coun=
t *
> max_packetsize;
>

It feels safer.
I think it's already not a problem, since all multiplication arguments are
of
small integer types, so they are promoted to int, like
      uint64_t reference =3D (int)pkts_per_transfer * (int)transfer_count *
(int)max_packetsize
which is smaller than 32*16*3*2048 < INT_MAX (for a 4 bytes int)

Regards,
    Uri.

>       host->iso_threshold.lower =3D reference / 2;
> >       host->iso_threshold.higher =3D reference * 3;
> >       DEBUG("higher threshold is %" PRIu64 " bytes | lower threshold is
> %" PRIu64 " bytes",
>
>

--00000000000016165706201bee98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Anastasia,<br></div><div><br></div><di=
v>Thanks for sending a patch.</div><div><br></div><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 13, 2024 at 12:34=E2=80=
=AFPM Anastasia Belova &lt;<a href=3D"mailto:abelova@astralinux.ru" target=
=3D"_blank">abelova@astralinux.ru</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Cc&#39;ing Victor Toso<br>
<br>
01/07/24 14:11, Anastasia Belova:<br>
&gt; pkts_per_transfer &lt; MAX_PACKETS_PER_TRANSFER =3D 32.<br>
&gt; transfer_count &lt; MAX_TRANSFER_COUNT =3D 16.<br>
&gt; max_packetsize =3D maxp * mult. mult &lt;=3D 3.<br>
&gt; maxp &lt;=3D 0x7ff. If all variables have their max value,<br>
&gt; the result will be bigger that uint16_t.<br>
&gt; Add an explicit cast.<br>
&gt;<br>
&gt; Signed-off-by: Anastasia Belova &lt;<a href=3D"mailto:abelova@astralin=
ux.ru" target=3D"_blank">abelova@astralinux.ru</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0usbredirhost/usbredirhost.c | 2 +-<br>
&gt;=C2=A0 =C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/usbredirhost/usbredirhost.c b/usbredirhost/usbredirhost.c=
<br>
&gt; index 03c56e9..ca19473 100644<br>
&gt; --- a/usbredirhost/usbredirhost.c<br>
&gt; +++ b/usbredirhost/usbredirhost.c<br>
&gt; @@ -1193,7 +1193,7 @@ static void usbredirhost_stop_stream(struct usbr=
edirhost *host,<br>
&gt;=C2=A0 =C2=A0static void usbredirhost_set_iso_threshold(struct usbredir=
host *host,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0uint8_t pkts_per_transfer, uint8_t transfer_=
count, uint16_t max_packetsize)<br>
&gt;=C2=A0 =C2=A0{<br>
&gt; -=C2=A0 =C2=A0 uint64_t reference =3D pkts_per_transfer * transfer_cou=
nt * max_packetsize;<br>
&gt; +=C2=A0 =C2=A0 uint64_t reference =3D (uint64_t)pkts_per_transfer * tr=
ansfer_count * max_packetsize;<br></blockquote><div><br></div><div>It feels=
 safer.</div><div>I think it&#39;s already not a problem, since all multipl=
ication arguments are of</div><div>small integer types, so they are promote=
d to int, like</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uint64_t reference =
=3D (int)pkts_per_transfer * (int)transfer_count * (int)max_packetsize</div=
><div>which is smaller than 32*16*3*2048 &lt; INT_MAX (for a 4 bytes int)</=
div><div><br></div><div>Regards,</div><div>=C2=A0=C2=A0=C2=A0 Uri.</div><di=
v><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0host-&gt;iso_threshold.lower =3D reference /=
 2;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0host-&gt;iso_threshold.higher =3D reference =
* 3;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0DEBUG(&quot;higher threshold is %&quot; PRIu=
64 &quot; bytes | lower threshold is %&quot; PRIu64 &quot; bytes&quot;,<br>
<br>
</blockquote></div></div>

--00000000000016165706201bee98--

