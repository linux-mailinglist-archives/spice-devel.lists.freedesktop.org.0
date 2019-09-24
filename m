Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32ECFBC7D7
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 14:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882456EA15;
	Tue, 24 Sep 2019 12:25:48 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B9D76EA15
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 12:25:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AE65510CC1F4
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 12:25:46 +0000 (UTC)
Received: from localhost (unknown [10.32.181.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5A4E15B69A;
 Tue, 24 Sep 2019 12:25:46 +0000 (UTC)
Date: Tue, 24 Sep 2019 14:25:45 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190924122545.cu642kabpgozx6ww@wingsuit>
References: <20190617154011.20310-1-fziglio@redhat.com>
 <20190617154011.20310-4-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190617154011.20310-4-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.65]); Tue, 24 Sep 2019 12:25:46 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 4/4] spicevmc: Avoids DoS if
 guest device is not able to get data faster enough
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
Content-Type: multipart/mixed; boundary="===============0669304662=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0669304662==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fe6zsgkufgfnzbls"
Content-Disposition: inline


--fe6zsgkufgfnzbls
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 17, 2019 at 04:40:11PM +0100, Frediano Ziglio wrote:
> This fix half (one direction) of
> https://gitlab.freedesktop.org/spice/spice/issues/29.
> Specifically if you have attempt to transfer a file from the client
> using WebDAV.
> Previously the queue to the device was unbound. If device was not
> getting data fast enough the server started queuing data.
> To easily test this you can suspend the WebDAV daemon while transferring
> a big file from the client.
> To simplify the code and reduce the changes server buffers are
> used. This as client token implementation is written with agent
> in mind. While when we exhaust server tokens RedCharDevice doesn't
> close the client when we exhaust client tokens RedCharDevice closes
> the client which in this case it's not wanted.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Tested a bit with Fedora guest + shared folder, looks fine. For
the series,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/spicevmc.c | 26 +++++++++++++++++---------
>  1 file changed, 17 insertions(+), 9 deletions(-)
>=20
> diff --git a/server/spicevmc.c b/server/spicevmc.c
> index 02e90199c..1209e7155 100644
> --- a/server/spicevmc.c
> +++ b/server/spicevmc.c
> @@ -491,9 +491,9 @@ static bool handle_compressed_msg(RedVmcChannel *chan=
nel, RedChannelClient *rcc,
>      int decompressed_size;
>      RedCharDeviceWriteBuffer *write_buf;
> =20
> -    write_buf =3D red_char_device_write_buffer_get_client(channel->chard=
ev,
> -                                                        red_channel_clie=
nt_get_client(rcc),
> -                                                        compressed_data_=
msg->uncompressed_size);
> +    write_buf =3D red_char_device_write_buffer_get_server(channel->chard=
ev,
> +                                                        compressed_data_=
msg->uncompressed_size,
> +                                                        false);
>      if (!write_buf) {
>          return FALSE;
>      }
> @@ -565,6 +565,15 @@ static bool spicevmc_red_channel_client_handle_messa=
ge(RedChannelClient *rcc,
>      return TRUE;
>  }
> =20
> +/* if device manage to send some data attempt to unblock the channel */
> +static void spicevmc_on_free_self_token(RedCharDevice *self)
> +{
> +    RedCharDeviceSpiceVmc *vmc =3D RED_CHAR_DEVICE_SPICEVMC(self);
> +    RedVmcChannel *channel =3D RED_VMC_CHANNEL(vmc->channel);
> +
> +    red_channel_client_unblock_read(channel->rcc);
> +}
> +
>  static uint8_t *spicevmc_red_channel_alloc_msg_rcv_buf(RedChannelClient =
*rcc,
>                                                         uint16_t type,
>                                                         uint32_t size)
> @@ -572,16 +581,14 @@ static uint8_t *spicevmc_red_channel_alloc_msg_rcv_=
buf(RedChannelClient *rcc,
> =20
>      switch (type) {
>      case SPICE_MSGC_SPICEVMC_DATA: {
> -        RedClient *client =3D red_channel_client_get_client(rcc);
>          RedVmcChannel *channel =3D RED_VMC_CHANNEL(red_channel_client_ge=
t_channel(rcc));
> =20
>          assert(!channel->recv_from_client_buf);
> =20
> -        channel->recv_from_client_buf =3D red_char_device_write_buffer_g=
et_client(channel->chardev,
> -                                                                        =
        client,
> -                                                                        =
        size);
> +        channel->recv_from_client_buf =3D red_char_device_write_buffer_g=
et_server(channel->chardev,
> +                                                                        =
        size, true);
>          if (!channel->recv_from_client_buf) {
> -            spice_error("failed to allocate write buffer");
> +            red_channel_client_block_read(rcc);
>              return NULL;
>          }
>          return channel->recv_from_client_buf->buf;
> @@ -908,6 +915,7 @@ red_char_device_spicevmc_class_init(RedCharDeviceSpic=
eVmcClass *klass)
>      char_dev_class->send_msg_to_client =3D spicevmc_chardev_send_msg_to_=
client;
>      char_dev_class->remove_client =3D spicevmc_char_dev_remove_client;
>      char_dev_class->port_event =3D spicevmc_port_event;
> +    char_dev_class->on_free_self_token =3D spicevmc_on_free_self_token;
> =20
>      g_object_class_install_property(object_class,
>                                      PROP_CHANNEL,
> @@ -934,7 +942,7 @@ red_char_device_spicevmc_new(SpiceCharDeviceInstance =
*sin,
>                          "sin", sin,
>                          "spice-server", reds,
>                          "client-tokens-interval", 0ULL,
> -                        "self-tokens", ~0ULL,
> +                        "self-tokens", 128, // limit number of messages =
sent to device
>                          "channel", channel,
>                          NULL);
>  }
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--fe6zsgkufgfnzbls
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2KC0kACgkQl9kSPeN6
SE9KYg/+KqvWpVHTn6/C+snEiDi4GdKj+tLL86se48BKwEfS7BvtuILImjRqENP9
wnjVeDOXP8ASPTlVm0d9+fpXK1BId6BJCZCKdYYoWVBVw+W3IDZx3luZxYvbxzMC
0yaXrNsCjHUHODCNssMPDZ/whfju3Rj4tV0v7Ge/jvkLb5pZYR6jtorHmhp+Yey/
Auf5bOW9A8diyQriHLugrIWp3FaOcrhRxld3OSwmtSXkRsREq/3MoJLF1ReY+Nw0
5VMtUqrkmQU1b9sVj79+YHu2A2UylAG2u7aiUzA/CGpObLjxUSK7LS7dOyLVsq5L
X3b+FNZkWK+9xSLUl7TpiuZ7tS/OkGbMspRL01Rpkq2NkcpKodPPBeru9kj7EXwf
eFh88Hsco99f3dNEaOjI6jQRcxc9afSjMOBxVeU/7OKBO8RxxM0LUKrNGqbJcl4e
De9b4wWZYN545v0/k7ahTCOV8DeH+9rVj8pd/IKgDynwX0xCbq6b18A2UkecMSGA
ErSl4YU1lwz9zmcvVzwyzPOfKmtOKbn9TT97USB+87qYjkuM8D2v0PFZdkPjFvmL
4ZCXcZ1nEUpusvYO7trPQoW0LMPK0tLVPvJONgWvPgXZB9KfoghDbhItL9ZUj7qn
Uy/AsmvbgVSOtPpZl13a9oUkZna+YEGLcWzcb7JO6RlONe5TDVQ=
=UYZ6
-----END PGP SIGNATURE-----

--fe6zsgkufgfnzbls--

--===============0669304662==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0669304662==--
