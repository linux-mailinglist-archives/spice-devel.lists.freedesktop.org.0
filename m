Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2D465351
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C6A56E165;
	Thu, 11 Jul 2019 08:47:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B705B6E161
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:47:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4E4A35AFE9
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:47:51 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB80E1A4D9;
 Thu, 11 Jul 2019 08:47:50 +0000 (UTC)
Date: Thu, 11 Jul 2019 10:47:50 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190711084750.ejtr43o7rw7dtiic@wingsuit>
References: <20190704080841.21403-1-kpouget@redhat.com>
 <984723011.27120737.1562834105738.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <984723011.27120737.1562834105738.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 11 Jul 2019 08:47:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] streaming: Restart streams
 on video-codec changes
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1417274047=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1417274047==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n3imzz3pa4knwpj7"
Content-Disposition: inline


--n3imzz3pa4knwpj7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 11, 2019 at 04:35:05AM -0400, Frediano Ziglio wrote:
> >=20
> > Interrupt the video streams when the user changes the preferred
> > video-codecs (dcc_handle_preferred_video_codec_type) or when the host
> > admin updates the list of video-codecs allowed
> > (display_channel_set_video_codecs).
> >=20
> > The video streaming will be automatically restarted by spice
> > video-detection rules.
>=20
> I suppose it would be more smart to check if the used codec is still
> fine and also if a single client wants to change the list of codecs
> it would be good to check all clients.

Ah, that's a good point. I missed it.

> On the other hand the list of codecs is not supposed to be
> changed much and the support for multiple clients is something
> never been production ready and disabled (only an experimental
> feature with plenty of bugs)

Yes, but it is nice to keep in mind. I'd say that we only change
the ongoing stream if not to disrupt existing connected clients,
a check that can be added in the future if we need it...

> Acked
>=20
> Frediano
>=20
> > ---
> >  server/dcc.c             | 2 ++
> >  server/display-channel.c | 2 ++
> >  2 files changed, 4 insertions(+)
> >=20
> > diff --git a/server/dcc.c b/server/dcc.c
> > index 71d09b77..86893ffe 100644
> > --- a/server/dcc.c
> > +++ b/server/dcc.c
> > @@ -1198,6 +1198,8 @@ static int
> > dcc_handle_preferred_video_codec_type(DisplayChannelClient *dcc,
> > =20
> >      /* New client preference */
> >      dcc_update_preferred_video_codecs(dcc);
> > +    video_stream_detach_and_stop(DCC_TO_DC(dcc));
> > +
> >      return TRUE;
> >  }
> > =20
> > diff --git a/server/display-channel.c b/server/display-channel.c
> > index 4677c261..75266598 100644
> > --- a/server/display-channel.c
> > +++ b/server/display-channel.c
> > @@ -255,6 +255,8 @@ void display_channel_set_video_codecs(DisplayChannel
> > *display, GArray *video_cod
> >      g_clear_pointer(&display->priv->video_codecs, g_array_unref);
> >      display->priv->video_codecs =3D g_array_ref(video_codecs);
> >      g_object_notify(G_OBJECT(display), "video-codecs");
> > +
> > +    video_stream_detach_and_stop(display);
> >  }
> > =20
> >  GArray *display_channel_get_video_codecs(DisplayChannel *display)
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--n3imzz3pa4knwpj7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0m97YACgkQl9kSPeN6
SE+ehw/+Kh7SrLyMmeDjdq+02oIJbQUAvpGbk5Y/L6R5e2g614eqY+Ht6TMO/CCu
JLthmLOAuNM0vb60Wq4LHJYxt78fAKlW2DQ7/spd5ndahgF97VgV3MLoESVjQn8M
JK+/o1P31ClkqcTAlFXTxiD1WDpCysSNYMAHv7d8uSW7xmPfsbs/FIGlwkwnbDXY
IsEvoOJo1tBJ3+xnSiDEQtUk16f+41faJBDoz+jLlP12liRBBKP45rAshBkmDJ/3
YkXS6b7AoXY0jz8P089eM+O8ZQ5/boDEsZQiRfHKeM+BMcnMCPCmwNQmzxiJScC9
264TmNTusU62lOcPE0kSmtyPPopYm7PRPqrM5CMzTXzE2VCWMTGE/cHpgdtRPzsW
lk9e8HQGUhMlsoizmYiSyMFmCfPkYbQdlBHIAH4NgP8Z+47UvffH12rXCshh8dYA
MOI7gWM2Md4LfgR0eB2tacZmiDdpWcFd9JaCm7oQW1m1spp+GHUdW+n12OrUmVjv
NF+ecVh/BuBP3/et4A4eZoqzNBLtW2pwUtujOmZ/f6oX/tLnscoobAKLx0lfd3VQ
4evDJtAgJ5Ob0SviBMuS4gFPbpjB5YLjVF7JjZyLQdNYFQ0wOv/BBB3ct59HhBKB
NVj5GLJhNxqt6qC5yZQz3AbrR+U8zbk1sQvOOcUGnptm38XwJms=
=sbBX
-----END PGP SIGNATURE-----

--n3imzz3pa4knwpj7--

--===============1417274047==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1417274047==--
