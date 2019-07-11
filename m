Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FE66533B
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8936E15A;
	Thu, 11 Jul 2019 08:32:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ADC26E15A
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:32:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 164FFC057E9F
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:32:57 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7AC441001B35;
 Thu, 11 Jul 2019 08:32:54 +0000 (UTC)
Date: Thu, 11 Jul 2019 10:32:53 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190711083253.ezpsy2vdnofsahyu@wingsuit>
References: <20190710174435.15833-1-uril@redhat.com>
 <20190710174435.15833-3-uril@redhat.com>
 <559172568.27119885.1562833647412.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <559172568.27119885.1562833647412.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 11 Jul 2019 08:32:57 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH v2 2/3] dcc-send: remove
 unused variable 'image'
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
Content-Type: multipart/mixed; boundary="===============0624542054=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0624542054==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qf2zvkamgz26qpyw"
Content-Disposition: inline


--qf2zvkamgz26qpyw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 11, 2019 at 04:27:27AM -0400, Frediano Ziglio wrote:
> >=20
> > From: Frediano Ziglio <fziglio@redhat.com>
> >=20
> > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
>=20
> I supposed someone else should ack it

Two maintainers agreeing should be enough, but hey
Acked-by: Victor Toso <victortoso@redhat.com>

>=20
> > ---
> >  server/dcc-send.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/server/dcc-send.c b/server/dcc-send.c
> > index 565a79f33..e0f3b8183 100644
> > --- a/server/dcc-send.c
> > +++ b/server/dcc-send.c
> > @@ -725,7 +725,6 @@ static void
> > red_pipe_replace_rendered_drawables_with_images(DisplayChannelClient
> >          RedPipeItem *pipe_item =3D l->data;
> >          Drawable *drawable;
> >          RedDrawablePipeItem *dpi;
> > -        RedImageItem *image;
> > =20
> >          if (pipe_item->type !=3D RED_PIPE_ITEM_TYPE_DRAW)
> >              continue;
> > @@ -745,13 +744,12 @@ static void
> > red_pipe_replace_rendered_drawables_with_images(DisplayChannelClient
> >              continue;
> >          }
> > =20
> > -        image =3D dcc_add_surface_area_image(dcc,
> > drawable->red_drawable->surface_id,
> > -                                           &drawable->red_drawable->bb=
ox, l,
> > TRUE);
> > +        dcc_add_surface_area_image(dcc, drawable->red_drawable->surfac=
e_id,
> > +                                   &drawable->red_drawable->bbox, l, T=
RUE);
> >          resent_surface_ids[num_resent] =3D drawable->red_drawable->sur=
face_id;
> >          resent_areas[num_resent] =3D drawable->red_drawable->bbox;
> >          num_resent++;
> > =20
> > -        spice_assert(image);
> >          red_channel_client_pipe_remove_and_release_pos(RED_CHANNEL_CLI=
ENT(dcc),
> >          l);
> >      }
> >  }
>=20
> Frediano
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--qf2zvkamgz26qpyw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl0m9DUACgkQl9kSPeN6
SE9HYw/7B5Vj6kq5Kcbu01SN+uYNSsSQf5k2f+q7KP9x634cxlrE6hN/1t0AwXuB
Y75yLd6HdAui7532ZD5wOEEizC2WanavdQKSr9io1dLvpvbHx4868DZb8s1Vduus
bJsnZq4eBDwpca81+l2Q7pQYPO+wnJbWbcW0kJXuOQR0OH0WUUqpde9XmE93cKjB
KgEPsAIRkOZnv46YM199ULzS5KYEjoeo0hlPKltJP+p0jgl603zCyxrrulpYZLXk
FRD/NTGTnlm6eUQP00w0fHx5SwpOfTc2vO7wWBXpq0ExYGOIVrjOvqmIBQS5fjEf
XUSixSF+H+nA4elRbKQRJkO52klrR1kbb8VAK7M+SlTF3FmfbeXT6kiOtiMIPyM0
nMIRk4X8NKR+2/+Zc9XkYMYC+UPtnnfvgrOwprM0vxYRdcrhPcySP7Mx6+QYPZYe
DpL0CXyRAsB7KrfxO9GpR4xSMuZSHfRSvXDzzfogbgIT0dtwayg7s6ah43d/aN9B
Gn7u+PYuRTiHQRKaC6h9qQg7WZ20HQZbEYLiP8Ksow30xb0r1haKPKY5zQUmRGpl
pIWavvuRMKJEibFj3PaCfuLnLSR4JXV/FLCSa8oW8DKrVf3TpfkUgm5sUe5neHWt
RT9YQt8oWmI+zkN/V0N4abP5DP/wCTCQPuvJU7sWS/Qkx1N94E0=
=r40t
-----END PGP SIGNATURE-----

--qf2zvkamgz26qpyw--

--===============0624542054==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0624542054==--
