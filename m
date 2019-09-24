Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 354ACBC6B9
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 13:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE4A8902A;
	Tue, 24 Sep 2019 11:24:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71EFC6EA0D
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 11:24:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1D40818C4285
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 11:24:34 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BEB201001938;
 Tue, 24 Sep 2019 11:24:33 +0000 (UTC)
Date: Tue, 24 Sep 2019 13:24:32 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190924112432.twmzlsodey52b2ih@wingsuit>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <20190617154011.20310-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190617154011.20310-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Tue, 24 Sep 2019 11:24:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/4] spicevmc: Avoids DoS if
 client is not able to get data faster enough
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
Content-Type: multipart/mixed; boundary="===============0937507515=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0937507515==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rppwt7cax5qeqm77"
Content-Disposition: inline


--rppwt7cax5qeqm77
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2019 at 04:40:09PM +0100, Frediano Ziglio wrote:
> This fix half (one direction) of
> https://gitlab.freedesktop.org/spice/spice/issues/29.
> Specifically if you have attempt to transfer a file to the client
> using WebDAV.
> Previously the queue to the client was unbound. If client was not
> getting data fast enough the server started queuing data.
> To easily test this you can use a tool to limit bandwidth and
> transfer a big file (I used a "dd if=3D/dev/zero bs=3D1M of=3Dtest") from
> the guest.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  server/spicevmc.c | 33 ++++++++++++++++++++++++++-------
>  1 file changed, 26 insertions(+), 7 deletions(-)
>=20
> diff --git a/server/spicevmc.c b/server/spicevmc.c
> index 8c41573ae..02e90199c 100644
> --- a/server/spicevmc.c
> +++ b/server/spicevmc.c
> @@ -34,14 +34,14 @@
>  #include "reds.h"
>  #include "migration-protocol.h"
> =20
> -/* todo: add flow control. i.e.,
> - * (a) limit the tokens available for the client
> - * (b) limit the tokens available for the server
> - */
>  /* 64K should be enough for all but the largest writes + 32 bytes hdr */
>  #define BUF_SIZE (64 * 1024 + 32)
>  #define COMPRESS_THRESHOLD 1000
> =20
> +// limit of the queued data, at this limit we stop reading from device to
> +// avoid DoS
> +#define QUEUED_DATA_LIMIT (1024*1024)
> +

Looks fine,
Acked-by: Victor Toso <victortoso@redhat.com>

>  SPICE_DECLARE_TYPE(RedCharDeviceSpiceVmc, red_char_device_spicevmc, CHAR=
_DEVICE_SPICEVMC);
>  #define RED_TYPE_CHAR_DEVICE_SPICEVMC red_char_device_spicevmc_get_type()
> =20
> @@ -83,6 +83,7 @@ struct RedCharDeviceSpiceVmcClass
>  static RedCharDevice *red_char_device_spicevmc_new(SpiceCharDeviceInstan=
ce *sin,
>                                                     RedsState *reds,
>                                                     RedVmcChannel *channe=
l);
> +static void spicevmc_red_channel_queue_data(RedVmcChannel *channel, RedV=
mcPipeItem *item);
> =20
>  G_DEFINE_TYPE(RedCharDeviceSpiceVmc, red_char_device_spicevmc, RED_TYPE_=
CHAR_DEVICE)
> =20
> @@ -96,6 +97,7 @@ struct RedVmcChannel
>      RedVmcPipeItem *pipe_item;
>      RedCharDeviceWriteBuffer *recv_from_client_buf;
>      uint8_t port_opened;
> +    uint32_t queued_data;
>      RedStatCounter in_data;
>      RedStatCounter in_compressed;
>      RedStatCounter in_decompressed;
> @@ -337,7 +339,7 @@ static RedPipeItem *spicevmc_chardev_read_msg_from_de=
v(RedCharDevice *self,
> =20
>      sif =3D spice_char_device_get_interface(sin);
> =20
> -    if (!channel->rcc) {
> +    if (!channel->rcc || channel->queued_data >=3D QUEUED_DATA_LIMIT) {
>          return NULL;
>      }
> =20
> @@ -360,14 +362,14 @@ static RedPipeItem *spicevmc_chardev_read_msg_from_=
dev(RedCharDevice *self,
> =20
>          msg_item_compressed =3D try_compress_lz4(channel, n, msg_item);
>          if (msg_item_compressed !=3D NULL) {
> -            red_channel_client_pipe_add_push(channel->rcc, &msg_item_com=
pressed->base);
> +            spicevmc_red_channel_queue_data(channel, msg_item_compressed=
);
>              return NULL;
>          }
>  #endif
>          stat_inc_counter(channel->out_data, n);
>          msg_item->uncompressed_data_size =3D n;
>          msg_item->buf_used =3D n;
> -        red_channel_client_pipe_add_push(channel->rcc, &msg_item->base);
> +        spicevmc_red_channel_queue_data(channel, msg_item);
>          return NULL;
>      }
>      channel->pipe_item =3D msg_item;
> @@ -609,11 +611,19 @@ static void spicevmc_red_channel_release_msg_rcv_bu=
f(RedChannelClient *rcc,
>      }
>  }
> =20
> +static void
> +spicevmc_red_channel_queue_data(RedVmcChannel *channel, RedVmcPipeItem *=
item)
> +{
> +    channel->queued_data +=3D item->buf_used;
> +    red_channel_client_pipe_add_push(channel->rcc, &item->base);
> +}
> +
>  static void spicevmc_red_channel_send_data(RedChannelClient *rcc,
>                                             SpiceMarshaller *m,
>                                             RedPipeItem *item)
>  {
>      RedVmcPipeItem *i =3D SPICE_UPCAST(RedVmcPipeItem, item);
> +    RedVmcChannel *channel =3D RED_VMC_CHANNEL(red_channel_client_get_ch=
annel(rcc));
> =20
>      /* for compatibility send using not compressed data message */
>      if (i->type =3D=3D SPICE_DATA_COMPRESSION_TYPE_NONE) {
> @@ -630,6 +640,14 @@ static void spicevmc_red_channel_send_data(RedChanne=
lClient *rcc,
>      red_pipe_item_ref(item);
>      spice_marshaller_add_by_ref_full(m, i->buf, i->buf_used,
>                                       marshaller_unref_pipe_item, item);
> +
> +    // account for sent data and wake up device if was blocked
> +    uint32_t old_queued_data =3D channel->queued_data;
> +    channel->queued_data -=3D i->buf_used;
> +    if (channel->chardev &&
> +        old_queued_data >=3D QUEUED_DATA_LIMIT && channel->queued_data <=
 QUEUED_DATA_LIMIT) {
> +        red_char_device_wakeup(channel->chardev);
> +    }
>  }
> =20
>  static void spicevmc_red_channel_send_migrate_data(RedChannelClient *rcc,
> @@ -768,6 +786,7 @@ static void spicevmc_connect(RedChannel *channel, Red=
Client *client,
>          return;
>      }
>      vmc_channel->rcc =3D rcc;
> +    vmc_channel->queued_data =3D 0;
>      red_channel_client_ack_zero_messages_window(rcc);
> =20
>      if (strcmp(sin->subtype, "port") =3D=3D 0) {
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--rppwt7cax5qeqm77
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2J/PAACgkQl9kSPeN6
SE+wRg/+MCXw41meJ0NsGBLqj4aDOczh4/BoLcGboeo9KUwYELhqUguEeI5fAgLF
iA8arSgHLoc/z1A2dFeANPbenCp1pxZaWb1v1NILjBt8f2iku8QDmuFwcO+biER5
3QWqwtmG1/oe6HfZ58q95y6HcSgzvsDrYmIaF6E7xJEHw7v3iM42yLuuEW89UY9o
UjaaDQEer1A1YmfooEb8C+l6hd1BTnnXMkWTA1GrhwqGZPYO4ArlhgVbMdrsgTaz
4ujfEqF7SEBSH0PbmD5c48Sy4P9tTNd39QNZnkDTCl5gZZKOMbPSFaoBCjLLyGUO
bILM7BYr/gZQO6PEcv/J8cFExbw8VY1Js/M0U5GT4ct7wD1x3MTqo0b56QwbACI5
m2Y5NcZajqM8NWQCiCwtRDbcQdUn6dJtdAycwJakAQnv3c9gZjn6xkPy52ZZL77M
SYw/jWJf2IBHBAKQ2ANMbGjPat/HfZWrdZalkW0PtMfuD1o8mIMnOZSUswpRua/a
+xl6O+HdlEwvaUoTYlONw+awkUr0PXi4wuI3KzdEW8GYTWV73rjaNmaXPNwZd1bk
Kdc20sQQ50mKRCims/gl0oFloGNYX1o5sw9LxCTJfqk/OkuLmD2KhXp1NXS0o5lM
MSzsWzYzsdxQkrEGr4zQrGH7muI2onANn8SyzpKEgFkh/l5lXHI=
=W7Fl
-----END PGP SIGNATURE-----

--rppwt7cax5qeqm77--

--===============0937507515==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0937507515==--
