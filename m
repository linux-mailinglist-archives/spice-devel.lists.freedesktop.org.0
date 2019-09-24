Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4E9BC67C
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 13:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCFC6E9F1;
	Tue, 24 Sep 2019 11:17:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41CA36E9F1
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 11:17:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B827B8A1C82
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 11:17:34 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6688619C58;
 Tue, 24 Sep 2019 11:17:34 +0000 (UTC)
Date: Tue, 24 Sep 2019 13:17:33 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190924111733.6i4zltbv5ky2kcbn@wingsuit>
References: <20190617154011.20310-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190617154011.20310-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Tue, 24 Sep 2019 11:17:34 +0000 (UTC)
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
Content-Type: multipart/mixed; boundary="===============1285352436=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1285352436==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w7vg4i7iixezrrjh"
Content-Disposition: inline


--w7vg4i7iixezrrjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 17, 2019 at 04:40:08PM +0100, Frediano Ziglio wrote:
> As we don't use any token there's no reason to not queue directly instead
> of passing through RedCharDevice.
> This will make easier to limit the queue which currently is unlimited.
>=20
> RedCharDevice flow control has some problems:
> - it's really designed with VDI in mind. This for SpiceVMC would cause
>   code implementation to be confusing having to satisfy the agent token
>   handling;
> - it's using items as unit not allowing counting bytes;
> - it duplicates some queue management between RedChannelClient;
> - it's broken (see comments in char-device.h);
> - it forces "clients" to behave in some way not altering for instance the
>   queued items (which is very useful if items can be collapsed together);
> - it replicates the token handling on the device queue too. This could
>   seems right but is not that if you have a network card going @ 1 GBit/s
>   you are able to upload more than 1 Gbit/s just using multiple
>   connections. The kernel will use a single queue for the network interfa=
ce
>   limiting and sharing de facto the various buffers between the multiple
>   connections.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
> Changes in v2:
> - more commit message comments
> ---
>  server/spicevmc.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
>=20
> diff --git a/server/spicevmc.c b/server/spicevmc.c
> index 84bbb73c2..8c41573ae 100644
> --- a/server/spicevmc.c
> +++ b/server/spicevmc.c
> @@ -360,29 +360,24 @@ static RedPipeItem *spicevmc_chardev_read_msg_from_=
dev(RedCharDevice *self,
> =20
>          msg_item_compressed =3D try_compress_lz4(channel, n, msg_item);
>          if (msg_item_compressed !=3D NULL) {
> -            return &msg_item_compressed->base;
> +            red_channel_client_pipe_add_push(channel->rcc, &msg_item_com=
pressed->base);
> +            return NULL;
>          }
>  #endif
>          stat_inc_counter(channel->out_data, n);
>          msg_item->uncompressed_data_size =3D n;
>          msg_item->buf_used =3D n;
> -        return &msg_item->base;
> -    } else {
> -        channel->pipe_item =3D msg_item;
> +        red_channel_client_pipe_add_push(channel->rcc, &msg_item->base);
>          return NULL;
>      }
> +    channel->pipe_item =3D msg_item;
> +    return NULL;
>  }
> =20
>  static void spicevmc_chardev_send_msg_to_client(RedCharDevice *self,
>                                                  RedPipeItem *msg,
>                                                  RedClient *client)
>  {
> -    RedCharDeviceSpiceVmc *vmc =3D RED_CHAR_DEVICE_SPICEVMC(self);
> -    RedVmcChannel *channel =3D RED_VMC_CHANNEL(vmc->channel);
> -
> -    spice_assert(red_channel_client_get_client(channel->rcc) =3D=3D clie=
nt);
> -    red_pipe_item_ref(msg);
> -    red_channel_client_pipe_add_push(channel->rcc, msg);
>  }

Is it worth to 1) update char-device.h that this is is not used
in spicevmc; 2) update char-device.c with

    -   klass->send_msg_to_client(dev, msg, client);
    +   if (klass->send_msg_to_client) {
    +       klass->send_msg_to_client(dev, msg, client);
    +   }

and remove this function?;

Patch looks good.

>  static void red_port_init_item_free(struct RedPipeItem *base)
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--w7vg4i7iixezrrjh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2J+00ACgkQl9kSPeN6
SE8TMw//WZFhn6T4g9l88U7dZndj42fwONiCDJwcMuIvS6JZkreinrKfvyStymHS
o6I7s8sqA/iJcTub4/W9SsPlU1wSYVACrQvdDbVGykGg+EP8twHx1PrJwWoPT9tf
482jlNST6UDBmbWqc5Lmc37lmciV37Qrml9K0Yc4Y1lDpbYQLnwtwU7wy0Uv8xCH
IcnsL00xHaBoIkLsJKalFbPfuaAXiLbIVvcvqgPSLEgJmvaRMjdpBCIBEKgfyAQr
QE0O8UJNNxz/P565nM8A8+G/Ls7lq+rmtwVDeHPqkVuU0AKHUUCeWU3nu/3Ytq1m
zC/rFy1AoYQwnu2xGuaZ6vy8NAmbsAzmFGAJ1l8wB1aHclgqFUSwDL330d1+a4kf
lEF0Pmu7frXYS3GGHcSMns2+wczPTVC84VknIfs9kH6N7kqbBA34CthsWuzvoSgc
7Z5y6m/gzIv+A56YueLx2ZbGbvvSBsN4UjL395uXcMRsTlNGAHSw8iF2948cJVKt
uEpSvCgfrC8Z05v05swb/aIiMGy0cRUmOiFSAtm2Suoa0gAtWL7e2IOC2tqYsHwn
NQ5a5zOKLsPoSaLpNUIn5yOGIW0ZEUJZOaaM5k0ZxIbTCNWRnZ9D5x4Gjs61HVLd
QPAA0om22/mXq2u6NIIvBEXaVJOnWmRM/0sbRDTQKfFsM6aNeNE=
=+9FE
-----END PGP SIGNATURE-----

--w7vg4i7iixezrrjh--

--===============1285352436==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1285352436==--
