Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5842ACB889
	for <lists+spice-devel@lfdr.de>; Fri,  4 Oct 2019 12:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42BB6EB1C;
	Fri,  4 Oct 2019 10:42:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA646EB1A
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Oct 2019 10:42:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A17FB8A1C9F
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Oct 2019 10:42:06 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 50A995DA60;
 Fri,  4 Oct 2019 10:42:06 +0000 (UTC)
Date: Fri, 4 Oct 2019 12:42:05 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191004104205.chwqhdyknb5y32jr@wingsuit>
References: <20190929110336.9613-1-fziglio@redhat.com>
 <1394890379.3737526.1569864645820.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1394890379.3737526.1569864645820.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Fri, 04 Oct 2019 10:42:06 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-channel-client: Use
 SpiceMsgcAckSync structure
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
Content-Type: multipart/mixed; boundary="===============0284432371=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0284432371==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x55icy5z4gtqszdd"
Content-Disposition: inline


--x55icy5z4gtqszdd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 30, 2019 at 01:30:45PM -0400, Frediano Ziglio wrote:
> >=20
> > red_channel_client_handle_message is called after parsing the
> > message so it's not necessary to check it again or parse manually.
> >=20
> > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> > ---
> >  server/red-channel-client.c | 6 +-----
> >  1 file changed, 1 insertion(+), 5 deletions(-)
> >=20
> > diff --git a/server/red-channel-client.c b/server/red-channel-client.c
> > index 66b8fd4a..f861cce5 100644
> > --- a/server/red-channel-client.c
> > +++ b/server/red-channel-client.c
> > @@ -1473,11 +1473,7 @@ bool
> > red_channel_client_handle_message(RedChannelClient *rcc, uint16_t type,
> >  {
> >      switch (type) {
> >      case SPICE_MSGC_ACK_SYNC:
> > -        if (size !=3D sizeof(uint32_t)) {
> > -            red_channel_warning(red_channel_client_get_channel(rcc), "=
bad
> > message size");
> > -            return FALSE;
> > -        }
> > -        rcc->priv->ack_data.client_generation =3D *(uint32_t *)(messag=
e);
> > +        rcc->priv->ack_data.client_generation =3D ((SpiceMsgcAckSync *)
> > message)->generation;
>=20
> This last line is fine but I realized that for some reasons smartcard
> channel is not setting the parser so would be better to leave the check.
> Even better to use the parser maybe.

Does it mean you nacked your patch?

--x55icy5z4gtqszdd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2XIf0ACgkQl9kSPeN6
SE+oGA//ZC4bpxrxyEpxfUcU5nuNB+lkTcqjOgNR/8QKjvJZvwAIp7hsoV3zx1BT
PD+nFfLn1Pbi7TpNDRdXD97/bHKqr7HM7PYwfTdf22XrAGTvUwA4/mjzRirn9Wj0
UvK5glE9YyUOn6h8FAfsCptKsHpcakXf1yNy35cLhMAf5JBO0qSRW16Sn1YFUOJs
FE6xNUBDbdmwMRrCdZflwQOTx0DV4wr6E0jV/aJOOUrvd1ahNMLioRh0setzy6jD
dPJ1q9wLbStyvT6SxOGknu2SlBsQjjzI6gvdJQUZA9byzBnme1qt8qzNia6+wVHI
Ej36p3ZIQM2YQdcM+VTn/rTkHf/1EsbeP172v+m83cVBqh4jR+Qd2nk2Hhc7G3Qa
thSVYnyzS1nesJc4TxNr8opJG1GUjK9Q6zrwGHP6LV4ep7byZ3p0RGMmpgkTbQVj
Rv4+RaMxwJFWWnqdDhGLLG1HcTGltqnfp9/NugX5s5IuTq6SnpaivVNPOrBRZ/FU
L9x0wXd3SfTEG+6voPVcskGbibDEPPHuHLnFHrLF38r9e1WpIzN+/fZyLOZzc0cE
VcPlpcCDpSukcKfZweDrQBkB6NqZCwCbpkzTzibXVmvQqTOjnW4cSunCtLeSHtpz
WcIvGxXjAlRgV7kyNeu21FCTdoatwsdTiq8bAUH2KvncPjPDF/s=
=ix2l
-----END PGP SIGNATURE-----

--x55icy5z4gtqszdd--

--===============0284432371==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0284432371==--
