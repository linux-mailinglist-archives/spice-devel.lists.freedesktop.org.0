Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AAF57123A
	for <lists+spice-devel@lfdr.de>; Tue, 12 Jul 2022 08:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 003C314B182;
	Tue, 12 Jul 2022 06:27:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D74F12B4A7
 for <spice-devel@lists.freedesktop.org>; Tue, 12 Jul 2022 06:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1657607267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=De8dg0vpjY85Cmr9qnDWwsJ2ERBC05K1NgM5HFqwiu8=;
 b=SqVzez2U8RUdqpd4VgnNwbFPDbJe+PpiuDYOd0w0T1sEF8B4kJ2MFEN/PZMGgUQez3bdU2
 hfGni35z1K+f0T3pBOiwmPhS1OvwtNrM/0+AGMoTU+HOytAbsnkF+l2SXPB1ii6CssgJVA
 70eeY84JzelcCEmUNGNO2QUzIrgvLME=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-644-lVgxJ4XjNTa5aQxEg5ozqw-1; Tue, 12 Jul 2022 02:27:43 -0400
X-MC-Unique: lVgxJ4XjNTa5aQxEg5ozqw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 555D1811E81;
 Tue, 12 Jul 2022 06:27:43 +0000 (UTC)
Received: from localhost (unknown [10.40.192.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E3F3F2166B2A;
 Tue, 12 Jul 2022 06:27:42 +0000 (UTC)
Date: Tue, 12 Jul 2022 08:27:41 +0200
From: Victor Toso <victortoso@redhat.com>
To: Nick Couchman <vnick@apache.org>
Message-ID: <20220712062741.nlpexan4kh3gicwv@tapioca>
References: <CAFjj601s+L1mXUOk4r5p6KshAf5Ae5+6z7MauQ-sUcKuSX-BCA@mail.gmail.com>
 <CAFjj602NVft5gTTPTCiwAmDvou=3BUdAiLjwZmPTF9=J8Luwzw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="5iwirhjh4dqoycgv"
Content-Disposition: inline
In-Reply-To: <CAFjj602NVft5gTTPTCiwAmDvou=3BUdAiLjwZmPTF9=J8Luwzw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Subject: Re: [Spice-devel] Spice, VDAgent, and Clipboard
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--5iwirhjh4dqoycgv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nick,

On Tue, Jul 05, 2022 at 03:33:33PM -0400, Nick Couchman wrote:
> On Sun, Jul 3, 2022 at 2:40 PM Nick Couchman <vnick@apache.org> wrote:
>=20
> > Then, once the clipboard is settled on the client side, I call
> > guac_main_channel_clipboard_selection_notify() to send the data along,
> > followed by guac_main_channel_clipboard_selection_release() to release =
the
> > previously-called grab:
> >
> > --
> >     /* Send via VNC only if finished connecting */
> >     if (spice_client->main_channel !=3D NULL) {
> >
> > spice_main_channel_clipboard_selection_notify(spice_client->main_channe=
l,
> >             VD_AGENT_CLIPBOARD_SELECTION_CLIPBOARD,
> >             VD_AGENT_CLIPBOARD_UTF8_TEXT,
> >             (const unsigned char*) input,
> >             spice_client->clipboard->length);
> >
> > spice_main_channel_clipboard_selection_release(spice_client->main_chann=
el,
> >             VD_AGENT_CLIPBOARD_SELECTION_CLIPBOARD);
> >     }
> > --
> >
> >
> To answer my own question, this was the issue - apparently the
> call to spice_main_channel_clipboard_selection_release()
> actually clears the clipboard. Removing this call allows the
> clipboard from client (Guacamole) to Spice server to function
> properly. I'm not sure if there's anything that needs to be
> done to "ungrab" the clipboard after sending the data, or if it
> is done automatically?

IIRC, the "ungrab" on client-side should happen when the Widget
is not on focus anymore. I think it is fine to keep the "grab"
while the widget has focus.

There are several scenarios around this, so it can be a bit
tricky to understand/debug, specially the differences between X11
and Wayland. For example, the comment in owner_change's callback:

    https://gitlab.freedesktop.org/spice/spice-gtk/-/blob/master/src/spice-=
gtk-session.c#L721

In the past, we used to have some race conditions that I'd bet
you should be hitting with your dev environment but, if you are
not, it should be thanks to the fixes for=20
   =20
    https://gitlab.freedesktop.org/spice/spice-gtk/-/issues/82

Thanks for your interest in SPICE, I'm looking forward to testing
Guacamole (the food I already love!) :)

Cheers,
Victor

--5iwirhjh4dqoycgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmLNFF0ACgkQl9kSPeN6
SE+4dxAAksCciavhENZe0WorB4FOP6qrN3zoQVeOn+b7GiAcZSzMrbBUwhgCDqfh
eFD9Gb6k7j4rH0xmLOBMci2I9I0j+F0IfCijQoj+AjYzPMZfUfg+Jj8+eIkxkkrK
aq7rDHVX85bFy8yNu+E9mSVanCN8JWtVXJIqqbC+R+59MpwM+xdeHYOc6gu9c/Vj
cReP4mgkqbr2Wih8jKfrim7R1cnuPhzfytjeIR49O8clRjXKgdYtoSAeEjQTaR7q
JrkrXdS1L1QHQsLoi0mukVvlYGUrLLf8yEBqp6NuZ2l0T9n2pagTQ+bdvGTmp/Zf
YAZU0iJDsQepJQLSCRQbuhWRgkoG4gOfdDnDHfQj2Pwg2i008ejckJ0b3oPl0VDC
zbiI16oqQ3xwjg+JTM+g5XIuK1cD+g4f79VqxaYLEekfVYDr7wVAD63mm19mt9BT
cyXvhWJG55r9AF7ZayWunug67dIUArRM+6TwOaSlMk4k3Ko0nBTolzoBtUpAgn5J
mtlkDAwOX9pJL2eu8rLIIbyzTiZSwoQD8jWEBaw60nuKNcYrdLKwD1bUs/fSSAgk
7EH7eqRc/6OFTB39Y0MAYT+V2iA/vjtPdDlPa2m3kf+nAbPO+NJXXIVwcqYdMj7y
hHcUAzPGQDFLv2BUXfHVHvFdBym4vT4FCA5VN4xC3GC+ZdMXIT8=
=kEbI
-----END PGP SIGNATURE-----

--5iwirhjh4dqoycgv--

