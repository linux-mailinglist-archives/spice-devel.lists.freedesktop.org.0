Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3ED97F079
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 11:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C066ED7F;
	Fri,  2 Aug 2019 09:28:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4144E6ED89
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:28:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E27C830821A0
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Aug 2019 09:28:45 +0000 (UTC)
Received: from localhost (unknown [10.32.181.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E6B110016EA;
 Fri,  2 Aug 2019 09:28:45 +0000 (UTC)
Date: Fri, 2 Aug 2019 11:28:44 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190802092844.ktjpnqzfbs63psfi@wingsuit>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-2-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190530142254.28937-2-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 02 Aug 2019 09:28:45 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 02/13] char-device: Pull more
 code into red_char_device_send_to_client_tokens_absorb
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
Content-Type: multipart/mixed; boundary="===============0592669538=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0592669538==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tjak33jnknzmthka"
Content-Disposition: inline


--tjak33jnknzmthka
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2019 at 03:22:43PM +0100, Frediano Ziglio wrote:
> The 2 callers red_char_device_send_to_client_tokens_set and
> red_char_device_send_to_client_tokens_add are doing mostly
> the same thing so put common code to
> red_char_device_send_to_client_tokens_absorb.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
Acked-by: Victor Toso <victortoso@redhat.com>
> ---
>  server/char-device.c | 42 +++++++++++++++++++-----------------------
>  1 file changed, 19 insertions(+), 23 deletions(-)
>=20
> diff --git a/server/char-device.c b/server/char-device.c
> index 0f6a29d6f..89581ea42 100644
> --- a/server/char-device.c
> +++ b/server/char-device.c
> @@ -377,10 +377,24 @@ static void red_char_device_client_send_queue_push(=
RedCharDeviceClient *dev_clie
>      }
>  }
> =20
> -static void red_char_device_send_to_client_tokens_absorb(RedCharDeviceCl=
ient *dev_client,
> -                                                         uint32_t tokens)
> +static void
> +red_char_device_send_to_client_tokens_absorb(RedCharDevice *dev,
> +                                             RedClient *client,
> +                                             uint32_t tokens,
> +                                             bool reset)
>  {
> -    RedCharDevice *dev =3D dev_client->dev;
> +    RedCharDeviceClient *dev_client;
> +
> +    dev_client =3D red_char_device_client_find(dev, client);
> +
> +    if (!dev_client) {
> +        spice_error("client wasn't found dev %p client %p", dev, client);
> +        return;
> +    }
> +
> +    if (reset) {
> +        dev_client->num_send_tokens =3D 0;
> +    }
>      dev_client->num_send_tokens +=3D tokens;
> =20
>      if (g_queue_get_length(dev_client->send_queue)) {
> @@ -403,32 +417,14 @@ void red_char_device_send_to_client_tokens_add(RedC=
harDevice *dev,
>                                                 RedClient *client,
>                                                 uint32_t tokens)
>  {
> -    RedCharDeviceClient *dev_client;
> -
> -    dev_client =3D red_char_device_client_find(dev, client);
> -
> -    if (!dev_client) {
> -        spice_error("client wasn't found dev %p client %p", dev, client);
> -        return;
> -    }
> -    red_char_device_send_to_client_tokens_absorb(dev_client, tokens);
> +    red_char_device_send_to_client_tokens_absorb(dev, client, tokens, fa=
lse);
>  }
> =20
>  void red_char_device_send_to_client_tokens_set(RedCharDevice *dev,
>                                                 RedClient *client,
>                                                 uint32_t tokens)
>  {
> -    RedCharDeviceClient *dev_client;
> -
> -    dev_client =3D red_char_device_client_find(dev, client);
> -
> -    if (!dev_client) {
> -        spice_error("client wasn't found dev %p client %p", dev, client);
> -        return;
> -    }
> -
> -    dev_client->num_send_tokens =3D 0;
> -    red_char_device_send_to_client_tokens_absorb(dev_client, tokens);
> +    red_char_device_send_to_client_tokens_absorb(dev, client, tokens, tr=
ue);
>  }
> =20
>  /**************************
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--tjak33jnknzmthka
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1EAkwACgkQl9kSPeN6
SE8KkxAAi47MfUFJBv5vQqBWNkEBZVSZ3fJBUvaieNnDyUcZWP4vb9gO4IvoZx5x
B4hQ5puhEYfMy8aMcjm2wrdvOYkX3sdWXruZoaYBIx43GS69Mv+6YJkoVTMuBRC/
qChVCdCelMYU/Xa0SvFJsde73tLiVlhCEzdmEmKOacJIQDkBBSHsOc0za8XZO8yF
OLEERHWPxAe+zdMhMuaCiUO+LKscY9i0RN19eE/t4JeLCD5q/uXoIApkjM7NGYJD
v4Uc8/5H+rZ+So9rcsiE3eAtPYebV+3g41AnuYLCK3Y4JTUQLSVne0cFpmG1A8An
NWHyJynmNC0pLwX87IIDYVLwpw13hjtbCp8ZbKLCIZpJESNdRlBRT6Mm5q9eKmK0
m/VfEguErq3sD4bfPoAyt4scA4XQ6gKSclRx3V2yZqXResE3jRqS/kGh8nJfhAUC
iYWrx0WUZuM+5dVwHS88xHnDjYQga9XBmd9he3bc20rKpzbXFnCs5N+3AJXL7ThF
BlXCtpqZY2RUCF2WQWmxQIMcBHeKc7TdQf1HtDXe8TF3kOkB/J04TMCKYeCrQach
g4oKEYe3vtEkTsc1esNtoncf8gngYHiLmuL61xsHDmgxURti399Y1HJlrSWMvVWQ
Km2OXd/ivsDnxuUBBNpFJFPhOK6voHUJ22vX6RZ31RPd0TFa3yo=
=pjib
-----END PGP SIGNATURE-----

--tjak33jnknzmthka--

--===============0592669538==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0592669538==--
