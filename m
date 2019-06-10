Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B89933B45B
	for <lists+spice-devel@lfdr.de>; Mon, 10 Jun 2019 14:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05FA988FE2;
	Mon, 10 Jun 2019 12:08:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF40F88FE2
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 12:08:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 24E31F9E8C
 for <spice-devel@lists.freedesktop.org>; Mon, 10 Jun 2019 12:08:37 +0000 (UTC)
Received: from localhost (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C24EE60143;
 Mon, 10 Jun 2019 12:08:36 +0000 (UTC)
Date: Mon, 10 Jun 2019 12:08:36 +0000
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190610120836.nlt4nh3ut3wvklwq@toolbox>
References: <20190603082234.26208-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190603082234.26208-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 10 Jun 2019 12:08:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] char-device: Reuse macros to
 scan GList
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
Content-Type: multipart/mixed; boundary="===============0738691586=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0738691586==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ai7velcjrhs73fvq"
Content-Disposition: inline


--ai7velcjrhs73fvq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 03, 2019 at 09:22:34AM +0100, Frediano Ziglio wrote:
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

Looks fine,
Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  server/char-device.c | 27 ++++++++-------------------
>  1 file changed, 8 insertions(+), 19 deletions(-)
>=20
> diff --git a/server/char-device.c b/server/char-device.c
> index 9ee255664..caabdd3e1 100644
> --- a/server/char-device.c
> +++ b/server/char-device.c
> @@ -224,11 +224,9 @@ static void red_char_device_handle_client_overflow(R=
edCharDeviceClient *dev_clie
>  static RedCharDeviceClient *red_char_device_client_find(RedCharDevice *d=
ev,
>                                                          RedClient *clien=
t)
>  {
> -    GList *item;
> -
> -    for (item =3D dev->priv->clients; item !=3D NULL; item =3D item->nex=
t) {
> -        RedCharDeviceClient *dev_client =3D item->data;
> +    RedCharDeviceClient *dev_client;
> =20
> +    GLIST_FOREACH(dev->priv->clients, RedCharDeviceClient, dev_client) {
>          if (dev_client->client =3D=3D client) {
>              return dev_client;
>          }
> @@ -254,12 +252,10 @@ static int red_char_device_can_send_to_client(RedCh=
arDeviceClient *dev_client)
> =20
>  static uint64_t red_char_device_max_send_tokens(RedCharDevice *dev)
>  {
> -    GList *item;
> +    RedCharDeviceClient *dev_client;
>      uint64_t max =3D 0;
> =20
> -    for (item =3D dev->priv->clients; item !=3D NULL; item =3D item->nex=
t) {
> -        RedCharDeviceClient *dev_client =3D item->data;
> -
> +    GLIST_FOREACH(dev->priv->clients, RedCharDeviceClient, dev_client) {
>          if (!dev_client->do_flow_control) {
>              max =3D ~0;
>              break;
> @@ -294,13 +290,9 @@ static void red_char_device_add_msg_to_client_queue(=
RedCharDeviceClient *dev_cli
>  static void red_char_device_send_msg_to_clients(RedCharDevice *dev,
>                                                  RedPipeItem *msg)
>  {
> -    GList *l;
> -
> -    l =3D dev->priv->clients;
> -    while (l) {
> -        GList *next =3D l->next;
> -        RedCharDeviceClient *dev_client =3D l->data;
> +    RedCharDeviceClient *dev_client;
> =20
> +    GLIST_FOREACH(dev->priv->clients, RedCharDeviceClient, dev_client) {
>          if (red_char_device_can_send_to_client(dev_client)) {
>              dev_client->num_send_tokens--;
>              spice_assert(g_queue_is_empty(dev_client->send_queue));
> @@ -310,7 +302,6 @@ static void red_char_device_send_msg_to_clients(RedCh=
arDevice *dev,
>          } else {
>              red_char_device_add_msg_to_client_queue(dev_client, msg);
>          }
> -        l =3D next;
>      }
>  }
> =20
> @@ -823,7 +814,7 @@ void red_char_device_stop(RedCharDevice *dev)
> =20
>  void red_char_device_reset(RedCharDevice *dev)
>  {
> -    GList *client_item;
> +    RedCharDeviceClient *dev_client;
>      RedCharDeviceWriteBuffer *buf;
> =20
>      dev->priv->wait_for_migrate_data =3D FALSE;
> @@ -833,9 +824,7 @@ void red_char_device_reset(RedCharDevice *dev)
>      }
>      red_char_device_write_buffer_release(dev, &dev->priv->cur_write_buf);
> =20
> -    for (client_item =3D dev->priv->clients; client_item !=3D NULL; clie=
nt_item =3D client_item->next) {
> -        RedCharDeviceClient *dev_client =3D client_item->data;
> -
> +    GLIST_FOREACH(dev->priv->clients, RedCharDeviceClient, dev_client) {
>          spice_debug("send_queue_empty %d", g_queue_is_empty(dev_client->=
send_queue));
>          dev_client->num_send_tokens +=3D g_queue_get_length(dev_client->=
send_queue);
>          g_queue_free_full(dev_client->send_queue, (GDestroyNotify)red_pi=
pe_item_unref);
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--ai7velcjrhs73fvq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAlz+SEMACgkQl9kSPeN6
SE/u6RAAhNScgvLedW3l3uK2crLthyNeW9u0ceBKR77240aE394yD66YEJzyJHpG
QHNKWI9LCHBp2EsuDpz4O1nzr3hzGmKI1rr+tPocioA4cQ/Rxb5+b7nzgoo9W/uh
ELEaHf7yubUiLs0UFAGjlYRambMzx128yH5V8PLFEWBUSh95eJOlrCcfETdOKp+a
GGovvAmOWcry8LM/2mVNVJNUlSbmJchBPN7YUteC60HYsq3xp7Z/klphMpJdQOX3
sfhX70uBy9v2lKov1dZ6fYq6G6WYMInzvUf+7QkJLGhI5KpukTR5gcqcGTtWLlnB
UoOeCd4k/gfu7rwJjEQ8p+Jwzrz85Djh15ndP2A8hItAg3UKKKcb0U6v9q4Sbs2C
d8C1VKBsgYiOr2vlDR1hWHjdE6dbHqBId0ulSwNh0UzyHHErT8v6lI/D/D4kHk2O
nsedrk5GpUYt+xs9KfXqYYQvP8JOuug7G0NxVALc0ELVinXp7CqK4GnbxspDRwCy
7/99TihpMLSkgycC/LBKVoGLJzN5uQ8fwqdS6PbBpoGwushF2yWjTDj9Q6b4oF3x
VxsvO7290yQocRoR4lCayY81touZ+ySTg7AfvksAYT0CW5VY4cazXhaDQ/LHS2Rp
Lm6kODrk438gk6veLOPs+90wTswGDwLgNZL1oFQk37iYb9XwWLA=
=icep
-----END PGP SIGNATURE-----

--ai7velcjrhs73fvq--

--===============0738691586==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0738691586==--
