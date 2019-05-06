Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55329145E3
	for <lists+spice-devel@lfdr.de>; Mon,  6 May 2019 10:18:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B6F089208;
	Mon,  6 May 2019 08:18:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B2689208
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 08:18:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 368C53082128
 for <spice-devel@lists.freedesktop.org>; Mon,  6 May 2019 08:18:13 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D2FAF26FA6;
 Mon,  6 May 2019 08:18:12 +0000 (UTC)
Date: Mon, 6 May 2019 08:18:12 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190506081812.swbzu6ntnq5zvw23@toolbox>
References: <20190504143241.28352-1-victortoso@redhat.com>
 <20190504143241.28352-3-victortoso@redhat.com>
 <202804177.16496130.1556992369134.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <202804177.16496130.1556992369134.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 06 May 2019 08:18:13 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 2/2] channel-usbredir: reduce amount
 of #ifdef USE_USBREDIR
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
Content-Type: multipart/mixed; boundary="===============1614044134=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1614044134==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ehot35madnwlnhuc"
Content-Disposition: inline


--ehot35madnwlnhuc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, May 04, 2019 at 01:52:49PM -0400, Frediano Ziglio wrote:
> >=20
> > From: Victor Toso <me@victortoso.com>
> >=20
> > Not really interesting to keep tracking what is inside or not
> > USE_USBREDIR on channel-usbredir itself. When usbredir is disabled,
> > just a dummy functions are needed with a basic spice-client.h include.
> >=20
> > After this patch, we have a single #ifdef USE_USBREDIR and the #else
> > (when it is disabled) is defined in the end of the file.
> >=20
> > Signed-off-by: Victor Toso <victortoso@redhat.com>
>=20
> It seems good, I would add something like this
>=20
> https://gitlab.freedesktop.org/fziglio/spice-gtk/commit/b9a9fc8f886f36826=
152bf41bbeb2ac3f6732c81

Sounds reasonable. I'll add a line about it in the commit log and
send v2 as this extends what I proposed but still related ;)

Thanks,

> > ---
> >  src/channel-usbredir.c | 29 +++++++++++++----------------
> >  1 file changed, 13 insertions(+), 16 deletions(-)
> >=20
> > diff --git a/src/channel-usbredir.c b/src/channel-usbredir.c
> > index f801c8e..1910ff6 100644
> > --- a/src/channel-usbredir.c
> > +++ b/src/channel-usbredir.c
> > @@ -33,7 +33,6 @@
> >  #include "channel-usbredir-priv.h"
> >  #include "usb-device-manager-priv.h"
> >  #include "usbutil.h"
> > -#endif
> > =20
> >  #include "common/log.h"
> >  #include "spice-client.h"
> > @@ -53,8 +52,6 @@
> >   * from the Spice client to the VM. This channel handles these message=
s.
> >   */
> > =20
> > -#ifdef USE_USBREDIR
> > -
> >  #define COMPRESS_THRESHOLD 1000
> >  enum SpiceUsbredirChannelState {
> >      STATE_DISCONNECTED,
> > @@ -102,23 +99,16 @@ static void usbredir_unlock_lock(void *user_data);
> >  static void usbredir_free_lock(void *user_data);
> > =20
> >  G_DEFINE_TYPE_WITH_PRIVATE(SpiceUsbredirChannel, spice_usbredir_channe=
l,
> >  SPICE_TYPE_CHANNEL)
> > -#else
> > -G_DEFINE_TYPE(SpiceUsbredirChannel, spice_usbredir_channel,
> > SPICE_TYPE_CHANNEL)
> > -#endif
> > =20
> > =20
> >  /* ------------------------------------------------------------------ =
*/
> > =20
> >  static void spice_usbredir_channel_init(SpiceUsbredirChannel *channel)
> >  {
> > -#ifdef USE_USBREDIR
> >      channel->priv =3D spice_usbredir_channel_get_instance_private(chan=
nel);
> >      g_mutex_init(&channel->priv->device_connect_mutex);
> > -#endif
> >  }
> > =20
> > -#ifdef USE_USBREDIR
> > -
> >  static void _channel_reset_finish(SpiceUsbredirChannel *channel, gbool=
ean
> >  migrating)
> >  {
> >      SpiceUsbredirChannelPrivate *priv =3D channel->priv;
> > @@ -176,11 +166,9 @@ static void spice_usbredir_channel_reset(SpiceChan=
nel
> > *c, gboolean migrating)
> > =20
> >      _channel_reset_finish(channel, migrating);
> >  }
> > -#endif
> > =20
> >  static void spice_usbredir_channel_class_init(SpiceUsbredirChannelClass
> >  *klass)
> >  {
> > -#ifdef USE_USBREDIR
> >      GObjectClass *gobject_class =3D G_OBJECT_CLASS(klass);
> >      SpiceChannelClass *channel_class =3D SPICE_CHANNEL_CLASS(klass);
> > =20
> > @@ -190,10 +178,8 @@ static void
> > spice_usbredir_channel_class_init(SpiceUsbredirChannelClass *klass)
> >      channel_class->channel_reset =3D spice_usbredir_channel_reset;
> > =20
> >      channel_set_handlers(SPICE_CHANNEL_CLASS(klass));
> > -#endif
> >  }
> > =20
> > -#ifdef USE_USBREDIR
> >  static void spice_usbredir_channel_dispose(GObject *obj)
> >  {
> >      SpiceUsbredirChannel *channel =3D SPICE_USBREDIR_CHANNEL(obj);
> > @@ -236,9 +222,7 @@ static void spice_usbredir_channel_finalize(GObject=
 *obj)
> > =20
> >      if (channel->priv->host)
> >          usbredirhost_close(channel->priv->host);
> > -#ifdef USE_USBREDIR
> >      g_mutex_clear(&channel->priv->device_connect_mutex);
> > -#endif
> > =20
> >      /* Chain up to the parent class */
> >      if (G_OBJECT_CLASS(spice_usbredir_channel_parent_class)->finalize)
> > @@ -946,4 +930,17 @@ static void usbredir_handle_msg(SpiceChannel *c,
> > SpiceMsgIn *in)
> >      }
> >  }
> > =20
> > +#else
> > +#include "spice-client.h"
> > +
> > +G_DEFINE_TYPE(SpiceUsbredirChannel, spice_usbredir_channel,
> > SPICE_TYPE_CHANNEL)
> > +
> > +static void spice_usbredir_channel_init(SpiceUsbredirChannel *channel)
> > +{
> > +}
> > +
> > +static void spice_usbredir_channel_class_init(SpiceUsbredirChannelClass
> > *klass)
> > +{
> > +}
> > +
> >  #endif /* USE_USBREDIR */
>=20
> CI results at https://gitlab.freedesktop.org/fziglio/spice-gtk/pipelines/=
35097
>=20
> Frediano

--ehot35madnwlnhuc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlzP7cMACgkQl9kSPeN6
SE+3OQ/9GrKMEQ5+kCYjxTA+tFbY//9XJB8mpamPrUfvJeYFJjcOAeU853EoIrtH
BqRvKHHPSN/o8L8s/x2BWJf07khthZ+mvRvgBRt+SzlW+FiJNZlN+U/O80YDtVIB
cHJgYq6OLtpqhNx0udUPUDb1bCy7Rn304HJ31KWjgNcOiw4fSVxt0y4UhLyA7ZR3
PaSBO34zWj9qXyG3delqlDeZqEBdb2SwOvV1ZH1gsc45lHH50CTJcA91gANG9np9
jzcp4aWZAn7/5tKHPIJ0g+fst4GRTwPL8KwvE9EG43erIaWR1i1hmBkrbGMdit8B
QNM6aoYXNWJEPJXCIUd0bQ4fY7BLcJak9mWd0z2g9OgMKRrGW0730eLjbGJTaCQ7
IiVnHBEq6CLFsxmOwio65fgK3XPqYsIzirMJL6Q0kiXqZiLrlgaNsJhD7cHSo3gZ
chRK8qUzs1pzW0+ntWlk1SfN4eLNu33G6MVh/RJdAGfBPh6gN9m9dNa2fDZ8FVVY
XmAMUURDYrzpgIE7Fx0QMR0SDxDCfoqAzwpbbAg7RCvNLtl4a1Y13cHw/raCqdtd
WG2FMIyADgmGbOTOZK1YgCv/1DoXT6Tue9BcvHa7h5iYpl4VlJ03tfGbZZeuHHSk
KapE8pCtAkYH5wlnff0xz1zYtvA706vdCncWjfG8RSvplusntj8=
=IrkK
-----END PGP SIGNATURE-----

--ehot35madnwlnhuc--

--===============1614044134==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1614044134==--
