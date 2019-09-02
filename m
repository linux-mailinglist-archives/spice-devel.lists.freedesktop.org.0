Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCD9A5404
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 12:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2B789A74;
	Mon,  2 Sep 2019 10:30:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F2F89B38
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:30:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1C08D18C4288
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:30:12 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA02560603;
 Mon,  2 Sep 2019 10:30:11 +0000 (UTC)
Date: Mon, 2 Sep 2019 12:30:11 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190902103011.qq6gp3wzu7lm2e75@wingsuit>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <96521433.26515657.1562333538668.JavaMail.zimbra@redhat.com>
 <619051383.688251.1563435760458.JavaMail.zimbra@redhat.com>
 <903011879.4230440.1564676513757.JavaMail.zimbra@redhat.com>
 <167099742.5430313.1565416918870.JavaMail.zimbra@redhat.com>
 <1964755682.7680572.1566286821676.JavaMail.zimbra@redhat.com>
 <956511970.10215186.1567173258125.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
In-Reply-To: <956511970.10215186.1567173258125.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Mon, 02 Sep 2019 10:30:12 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============0954425308=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0954425308==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="26cvxoov6dfcradm"
Content-Disposition: inline


--26cvxoov6dfcradm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Aug 30, 2019 at 09:54:18AM -0400, Frediano Ziglio wrote:
> ping
>=20
> >=20
> > ping
> >=20
> > >=20
> > > ping
> > >=20
> > > >=20
> > > > ping
> > > >=20
> > > > >=20
> > > > > ping
> > > > >=20
> > > > > >=20
> > > > > > ping the series

I swear I was testing this last week and it seemed fine but
trying to review it properly might take yet some more days!

> > > > > >=20
> > > > > > >=20
> > > > > > > As we don't use any token there's no reason to not queue dire=
ctly
> > > > > > > instead
> > > > > > > of passing through RedCharDevice.
> > > > > > > This will make easier to limit the queue which currently is
> > > > > > > unlimited.
> > > > > > >=20
> > > > > > > RedCharDevice flow control has some problems:
> > > > > > > - it's really designed with VDI in mind. This for SpiceVMC wo=
uld
> > > > > > > cause
> > > > > > >   code implementation to be confusing having to satisfy the a=
gent
> > > > > > >   token
> > > > > > >   handling;
> > > > > > > - it's using items as unit not allowing counting bytes;
> > > > > > > - it duplicates some queue management between RedChannelClien=
t;
> > > > > > > - it's broken (see comments in char-device.h);
> > > > > > > - it forces "clients" to behave in some way not altering for
> > > > > > > instance
> > > > > > > the
> > > > > > >   queued items (which is very useful if items can be collapsed
> > > > > > >   together);
> > > > > > > - it replicates the token handling on the device queue too. T=
his
> > > > > > > could
> > > > > > >   seems right but is not that if you have a network card goin=
g @ 1
> > > > > > >   GBit/s
> > > > > > >   you are able to upload more than 1 Gbit/s just using multip=
le
> > > > > > >   connections. The kernel will use a single queue for the net=
work
> > > > > > >   interface
> > > > > > >   limiting and sharing de facto the various buffers between t=
he
> > > > > > >   multiple
> > > > > > >   connections.
> > > > > > >=20
> > > > > > > Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> > > > > > > ---
> > > > > > > Changes in v2:
> > > > > > > - more commit message comments
> > > > > > > ---
> > > > > > >  server/spicevmc.c | 15 +++++----------
> > > > > > >  1 file changed, 5 insertions(+), 10 deletions(-)
> > > > > > >=20
> > > > > > > diff --git a/server/spicevmc.c b/server/spicevmc.c
> > > > > > > index 84bbb73c2..8c41573ae 100644
> > > > > > > --- a/server/spicevmc.c
> > > > > > > +++ b/server/spicevmc.c
> > > > > > > @@ -360,29 +360,24 @@ static RedPipeItem
> > > > > > > *spicevmc_chardev_read_msg_from_dev(RedCharDevice *self,
> > > > > > > =20
> > > > > > >          msg_item_compressed =3D try_compress_lz4(channel, n,
> > > > > > >          msg_item);
> > > > > > >          if (msg_item_compressed !=3D NULL) {
> > > > > > > -            return &msg_item_compressed->base;
> > > > > > > +            red_channel_client_pipe_add_push(channel->rcc,
> > > > > > > &msg_item_compressed->base);
> > > > > > > +            return NULL;
> > > > > > >          }
> > > > > > >  #endif
> > > > > > >          stat_inc_counter(channel->out_data, n);
> > > > > > >          msg_item->uncompressed_data_size =3D n;
> > > > > > >          msg_item->buf_used =3D n;
> > > > > > > -        return &msg_item->base;
> > > > > > > -    } else {
> > > > > > > -        channel->pipe_item =3D msg_item;
> > > > > > > +        red_channel_client_pipe_add_push(channel->rcc,
> > > > > > > &msg_item->base);
> > > > > > >          return NULL;
> > > > > > >      }
> > > > > > > +    channel->pipe_item =3D msg_item;
> > > > > > > +    return NULL;
> > > > > > >  }
> > > > > > > =20
> > > > > > >  static void spicevmc_chardev_send_msg_to_client(RedCharDevice
> > > > > > >  *self,
> > > > > > >                                                  RedPipeItem =
*msg,
> > > > > > >                                                  RedClient *c=
lient)
> > > > > > >  {
> > > > > > > -    RedCharDeviceSpiceVmc *vmc =3D RED_CHAR_DEVICE_SPICEVMC(=
self);
> > > > > > > -    RedVmcChannel *channel =3D RED_VMC_CHANNEL(vmc->channel);
> > > > > > > -
> > > > > > > -    spice_assert(red_channel_client_get_client(channel->rcc)=
 =3D=3D
> > > > > > > client);
> > > > > > > -    red_pipe_item_ref(msg);
> > > > > > > -    red_channel_client_pipe_add_push(channel->rcc, msg);
> > > > > > >  }
> > > > > > > =20
> > > > > > >  static void red_port_init_item_free(struct RedPipeItem *base)
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--26cvxoov6dfcradm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1s7zIACgkQl9kSPeN6
SE/pyQ/+JanQ9VspcojHJin6k1/2Acyjb1Ierxer8PQOqo57Qn4xSTy7M+UF/iVi
WL3BgAwl7aDeLHqf8rkT5P9sslN+94+yHsiJ+cD+u8sxZWFwDBLGz32ikqyy8Mm0
Ly5+q2AF5iB0jEocD+Lv96o2RvZVtP2f+nCg4Nodi0Yue1YYXnMrMwSwvg3GmgFU
7Ial/KEurOqpWQdwtUwwzplLQTqb++ChDgv4yeD9F1CDCuMyrJJKdRtPEV/VkvXp
MBsw8RGJVVGpWIjmAIdDdnbn5zczERstB65ucCzTdbK3tuNstt1/ymQvLvfBt1Ul
kRj9CF+JEONZh8IDGe/OeTmERMm4CeD2mr6J2q3qx+gjoQ0hnbkrnxnuZnW0niDQ
cDJ/GAd6UecYAj8mmedU1MX00tBvisWNMqQpv4EFDX4v+qjEwldm3TWfMDrq1LKr
zgy2vbpHMgFKmbAsiDNHhtIfZ26m/yV7TU/Xhk27AqlDd+TjFSPb6NcfnIYgukqY
s1nKF4ze5q28scuYc60wTMeWKIa0OF7l8DuuHDavDJFuYl1AttZ3CW+JgLgJ/OYM
LoBQdcnSsVVMiAaRH6z1ZQ2Qf7Lwj8/p7UgXxpSqX9MMtToX2Y+Z9qsYSj+mgCPT
OwgvDA84hv0TIRu8cAePIQxIdEf49S/9nl1FuesAKjdBSq26YfM=
=RQ12
-----END PGP SIGNATURE-----

--26cvxoov6dfcradm--

--===============0954425308==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0954425308==--
