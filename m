Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183AA98DE4
	for <lists+spice-devel@lfdr.de>; Thu, 22 Aug 2019 10:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A296EAA4;
	Thu, 22 Aug 2019 08:37:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551D06EAA4
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 08:37:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C793230917F1
 for <spice-devel@lists.freedesktop.org>; Thu, 22 Aug 2019 08:37:07 +0000 (UTC)
Received: from localhost (unknown [10.32.181.155])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 746E1600CD;
 Thu, 22 Aug 2019 08:37:07 +0000 (UTC)
Date: Thu, 22 Aug 2019 10:37:06 +0200
From: Victor Toso <victortoso@redhat.com>
To: Jakub =?utf-8?B?SmFua8Wv?= <jjanku@redhat.com>
Message-ID: <20190822083706.nekpsvsfnhzw5tek@wingsuit>
References: <20190820140547.15251-1-jjanku@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190820140547.15251-1-jjanku@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Thu, 22 Aug 2019 08:37:07 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] vmcstream: fix task
 cancellation
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
Content-Type: multipart/mixed; boundary="===============1797151448=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1797151448==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o2gbzsyzlhc2eoqa"
Content-Disposition: inline


--o2gbzsyzlhc2eoqa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 20, 2019 at 04:05:46PM +0200, Jakub Jank=C5=AF wrote:
> If the task is cancelled, g_task_propagate_pointer()
> in spice_vmc_output_stream_write_finish() returns NULL
> which produces following errors:
>=20
>     (spicy:13597): GSpice-CRITICAL **: 15:39:46.168: spice_vmc_write_fini=
sh: assertion 'result !=3D NULL' failed
>=20
>     (spicy:13597): GLib-GObject-CRITICAL **: 15:39:46.168: g_object_unref=
: assertion 'G_IS_OBJECT (object)' failed

What I found weird was actually that we do _ref() on write_cb()
but this got cleanup anyway, seems like a bug somewhere.

I don't see nothing wrong with your proposal, actually thinks it
is better to do the write on write_cb() and let the _finish()
just provide the overall feedback of the _async() call.

> To fix this, call spice_vmc_write_finish() immediately in the
> corresponding write_cb().
>=20
> Signed-off-by: Jakub Jank=C5=AF <jjanku@redhat.com>

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  src/vmcstream.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
>=20
> diff --git a/src/vmcstream.c b/src/vmcstream.c
> index b6f6d1a..b7da103 100644
> --- a/src/vmcstream.c
> +++ b/src/vmcstream.c
> @@ -397,18 +397,11 @@ spice_vmc_output_stream_write_fn(GOutputStream   *s=
tream,
> =20
>  static gssize
>  spice_vmc_output_stream_write_finish(GOutputStream *stream,
> -                                     GAsyncResult *simple,
> +                                     GAsyncResult *result,
>                                       GError **error)
>  {
> -    SpiceVmcOutputStream *self =3D SPICE_VMC_OUTPUT_STREAM(stream);
> -    GAsyncResult *res =3D g_task_propagate_pointer(G_TASK(simple), error=
);
> -    gssize bytes_written;
> -
> -    SPICE_DEBUG("spicevmc write finish");
> -    bytes_written =3D spice_vmc_write_finish(self->channel, res, error);
> -    g_object_unref(res);
> -
> -    return bytes_written;
> +    g_return_val_if_fail(g_task_is_valid(result, stream), -1);
> +    return g_task_propagate_int(G_TASK(result), error);
>  }
> =20
>  static void
> @@ -417,9 +410,17 @@ write_cb(GObject *source_object,
>           gpointer user_data)
>  {
>      GTask *task =3D user_data;
> +    GError *error =3D NULL;
> +    gssize bytes_written;
> =20
> -    g_task_return_pointer(task, g_object_ref(res), g_object_unref);
> +    SPICE_DEBUG("spicevmc write finish");
> +    bytes_written =3D spice_vmc_write_finish(SPICE_CHANNEL(source_object=
), res, &error);
> =20
> +    if (error) {
> +        g_task_return_error(task, error);
> +    } else {
> +        g_task_return_int(task, bytes_written);
> +    }
>      g_object_unref(task);
>  }
> =20
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--o2gbzsyzlhc2eoqa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1eVDIACgkQl9kSPeN6
SE/nMw//Y7Nng90W1HL+fzHbWknOdBvbiDKKrL+n5ZLRRkHzUF5D/9SMKOopIVhT
FZv8aX/dkoA7PSW9w4d1BRE8rE4qOXVZkbaTVXjjpxPMHOItOJ2VmDOHFgGQq8Ne
YC7jN2N/j84Zgea8fHPhCNkGJvfMCdF+no+aFbNl1GcHjj0PWMb7d7OiDFSbhZyo
PSyE4RtvKr4Q5n8WGoITK34XJPf57esJVnMUzF96EW7cYrqSmrg2PtMs08g5hP5v
8cq45em6XxImiAHIAaPssWtp5dPSai9p7b7SoA179FdupIRK9XkQH2H4Zeve4meR
m6+8P7yjzsn85H3Buv5BpsK8YAZmDHArBXVBqsbxVsKexwyd09eepTh+Bj4M0azV
3OMOrMp49MdyAVtzmGRSfmup2FZXxE0K06/DEqzjed9wgFaD4GEoT5SvEncItV8r
HB5cFrgVEnIT1dyppq2hQAe275W6YckptKCah2Wz0mK/GBD6Owpq233IebLS1ijr
NROZPpGRDJzye5ISVbbIII6RF3Kgk3xphvVtvkc0E9QXBjDR6KO1AJ83LN1RYk5W
KDnqYwzRSYdRWYD5vZLVVEnYLe/JYz2G5aqr7182xDslxqo3m3aARZ9kUU3fNY+8
9dry7fN44fpK2VR8WvYEQMbPuwgyTJ7M5U7BFSd/gD3Ogl85ZxU=
=N9IB
-----END PGP SIGNATURE-----

--o2gbzsyzlhc2eoqa--

--===============1797151448==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1797151448==--
