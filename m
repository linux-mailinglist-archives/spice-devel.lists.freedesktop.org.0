Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AA5BC7AA
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 14:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC3A6EA14;
	Tue, 24 Sep 2019 12:10:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843DF6EA14
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 12:10:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2525230821C2
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 12:10:49 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BD3641001B05;
 Tue, 24 Sep 2019 12:10:48 +0000 (UTC)
Date: Tue, 24 Sep 2019 14:10:47 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190924121047.3ktgqdbnluxsly6c@wingsuit>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <20190924111733.6i4zltbv5ky2kcbn@wingsuit>
 <953184562.3068982.1569326608824.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <953184562.3068982.1569326608824.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 24 Sep 2019 12:10:49 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server v2 1/4] spicevmc: Do not use
 RedCharDevice pipe items handling
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
Content-Type: multipart/mixed; boundary="===============0095056435=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0095056435==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="76sd7g2usr3rai2c"
Content-Disposition: inline


--76sd7g2usr3rai2c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Sep 24, 2019 at 08:03:28AM -0400, Frediano Ziglio wrote:
> >=20
> > Hi,
> >=20
> > On Mon, Jun 17, 2019 at 04:40:08PM +0100, Frediano Ziglio wrote:
> > > As we don't use any token there's no reason to not queue directly ins=
tead
> > > of passing through RedCharDevice.
> > > This will make easier to limit the queue which currently is unlimited.
> > >=20
> > > RedCharDevice flow control has some problems:
> > > - it's really designed with VDI in mind. This for SpiceVMC would cause
> > >   code implementation to be confusing having to satisfy the agent tok=
en
> > >   handling;
> > > - it's using items as unit not allowing counting bytes;
> > > - it duplicates some queue management between RedChannelClient;
> > > - it's broken (see comments in char-device.h);
> > > - it forces "clients" to behave in some way not altering for instance=
 the
> > >   queued items (which is very useful if items can be collapsed togeth=
er);
> > > - it replicates the token handling on the device queue too. This could
> > >   seems right but is not that if you have a network card going @ 1 GB=
it/s
> > >   you are able to upload more than 1 Gbit/s just using multiple
> > >   connections. The kernel will use a single queue for the network int=
erface
> > >   limiting and sharing de facto the various buffers between the multi=
ple
> > >   connections.
> > >=20
> > > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> > > ---
> > > Changes in v2:
> > > - more commit message comments
> > > ---
> > >  server/spicevmc.c | 15 +++++----------
> > >  1 file changed, 5 insertions(+), 10 deletions(-)
> > >=20
> > > diff --git a/server/spicevmc.c b/server/spicevmc.c
> > > index 84bbb73c2..8c41573ae 100644
> > > --- a/server/spicevmc.c
> > > +++ b/server/spicevmc.c
> > > @@ -360,29 +360,24 @@ static RedPipeItem
> > > *spicevmc_chardev_read_msg_from_dev(RedCharDevice *self,
> > > =20
> > >          msg_item_compressed =3D try_compress_lz4(channel, n, msg_ite=
m);
> > >          if (msg_item_compressed !=3D NULL) {
> > > -            return &msg_item_compressed->base;
> > > +            red_channel_client_pipe_add_push(channel->rcc,
> > > &msg_item_compressed->base);
> > > +            return NULL;
> > >          }
> > >  #endif
> > >          stat_inc_counter(channel->out_data, n);
> > >          msg_item->uncompressed_data_size =3D n;
> > >          msg_item->buf_used =3D n;
> > > -        return &msg_item->base;
> > > -    } else {
> > > -        channel->pipe_item =3D msg_item;
> > > +        red_channel_client_pipe_add_push(channel->rcc, &msg_item->ba=
se);
> > >          return NULL;
> > >      }
> > > +    channel->pipe_item =3D msg_item;
> > > +    return NULL;
> > >  }
> > > =20
> > >  static void spicevmc_chardev_send_msg_to_client(RedCharDevice *self,
> > >                                                  RedPipeItem *msg,
> > >                                                  RedClient *client)
> > >  {
> > > -    RedCharDeviceSpiceVmc *vmc =3D RED_CHAR_DEVICE_SPICEVMC(self);
> > > -    RedVmcChannel *channel =3D RED_VMC_CHANNEL(vmc->channel);
> > > -
> > > -    spice_assert(red_channel_client_get_client(channel->rcc) =3D=3D =
client);
> > > -    red_pipe_item_ref(msg);
> > > -    red_channel_client_pipe_add_push(channel->rcc, msg);
> > >  }
> >=20
> > Is it worth to 1) update char-device.h that this is is not used
>=20
> It does not seem a great idea to me.
>=20
> I would just add to send_msg_to_client that this callback can be
> NULL if we allow that. And probably it's a good idea as messages
> are accounted for token computation and token callbacks are protected
> by a "if (callback !=3D NULL)" check.
>=20
> Isn't better the change in a follow up patch?

Not really a requirement..

> > in spicevmc; 2) update char-device.c with
> >=20
> >     -   klass->send_msg_to_client(dev, msg, client);
> >     +   if (klass->send_msg_to_client) {
> >     +       klass->send_msg_to_client(dev, msg, client);
> >     +   }
> >=20
> > and remove this function?;
> >=20
> > Patch looks good.

Acked-by: Victor Toso <victortoso@redhat.com>

> >=20
> > >  static void red_port_init_item_free(struct RedPipeItem *base)
>=20
> Frediano

--76sd7g2usr3rai2c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2KB8cACgkQl9kSPeN6
SE97Zg//SKFIIvwa/MKnV11hDehVeQeqNljacWgC4QNjw/84Qx+Xl3mnl9wZeNst
jLOtcdOPj/uEP6SeUBtB7Rkjiln2zQEHw+ClwZV55MzwoJsKsDdJJGf/RWSlP08C
Yukps+e25GAlogM89MjC4IfTSpAmHGhkinOif0Z8HdUmFqXVq1dAynFVvbm99e8V
UdEBkkEJWER7xm8dVa5WIffsrJ0XDlL/k3aq+7py2CLTOHTiZbipCcXzeyRQ7ISG
xRt8m18UHe7CSaBfgsr94EtFHAtQIAnooAGu2TxMv8h2GdhhlG9U09Sup1+nf5Ua
bXPff9cudCTRulAnEsEgVVbNm7caG/NPmt7UUDM2HoLdDOqkSvfU1igKNg0yfn0x
fdqGLqnWRgxPCIsxr7HNF4n3cWQxm3B5hw0hSi3nm9z/v3AhHPXWD4N8oLGDgwAI
MQ8dxnsm3aLIerhqqsVdQ+sSTIKYuitzW/HAH3fDrCab+40h3FB4oaUyhFS/O1mZ
CyFBs4zwbWsE1C16VClNoTJLKijoLFvayoAVM75/YPuTqtPeVAUTh6QH/Na0+v6q
hL6nq08/3dJrTcVCvuWhThuoQLjHO1u5n/7S75jhalD7kWjZysoOzbUdxak8WH57
Mm5F4qqpOJ5Wf1t6gAcH1JhLnejm04EnPx1cMJndh6t7SLDPGAo=
=Gpfv
-----END PGP SIGNATURE-----

--76sd7g2usr3rai2c--

--===============0095056435==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0095056435==--
