Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9B5CBD43
	for <lists+spice-devel@lfdr.de>; Fri,  4 Oct 2019 16:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7368D6EBAC;
	Fri,  4 Oct 2019 14:32:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B080A6EBAC
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Oct 2019 14:32:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4C586800DF2
 for <spice-devel@lists.freedesktop.org>; Fri,  4 Oct 2019 14:32:07 +0000 (UTC)
Received: from localhost (unknown [10.32.181.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ED09B60BE1;
 Fri,  4 Oct 2019 14:32:06 +0000 (UTC)
Date: Fri, 4 Oct 2019 16:32:06 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191004143206.owfrjntzmha5pvpo@wingsuit>
References: <20191004142328.23270-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191004142328.23270-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Fri, 04 Oct 2019 14:32:07 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] ci: Update gitlab
 makecheck-centos Job to support CentOS 8
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
Content-Type: multipart/mixed; boundary="===============1943772549=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1943772549==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2pnppt5nzrstmbpp"
Content-Disposition: inline


--2pnppt5nzrstmbpp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Oct 04, 2019 at 03:23:28PM +0100, Frediano Ziglio wrote:
> Disable celt0.51, now obsolete.
> Update package names and repositories.

Time is coming to remove celt051 support :)

> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> ---
>  .gitlab-ci.yml | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> Results at https://gitlab.freedesktop.org/fziglio/spice/pipelines/68395
>=20
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index 33210cb9..01f63733 100644
> --- a/.gitlab-ci.yml
> +++ b/.gitlab-ci.yml
> @@ -85,13 +85,15 @@ distcheck:
>  # Same as makecheck job but use a Centos image
>  makecheck-centos:
>    before_script:
> +    - dnf install -y 'dnf-command(config-manager)'
> +    - dnf config-manager --set-enabled PowerTools
>      - >
> -      yum install git libtool make libasan orc-devel glib-networking
> -      yum-utils gcc glib2-devel celt051-devel
> +      dnf install git libtool make libasan orc-devel glib-networking
> +      gcc glib2-devel
>        opus-devel pixman-devel openssl-devel libjpeg-devel
>        libcacard-devel cyrus-sasl-devel lz4-devel
>        gstreamer1-devel gstreamer1-plugins-base-devel
> -      git-core pyparsing python-six
> +      git-core python3-pyparsing python3-six python3
>        -y
>      - git clone ${CI_REPOSITORY_URL/spice.git/spice-protocol.git}
>      - (cd spice-protocol && ./autogen.sh --prefix=3D/usr && make install)
> @@ -100,7 +102,7 @@ makecheck-centos:
>    - >
>      CFLAGS=3D'-O2 -pipe -g -fsanitize=3Daddress -fno-omit-frame-pointer =
-Wframe-larger-than=3D40920'
>      LDFLAGS=3D'-fsanitize=3Daddress -lasan'
> -    ./autogen.sh --enable-celt051
> +    ./autogen.sh --disable-celt051

Acked-by: Victor Toso <victortoso@redhat.com>

>    - make
>    - make -C server check || (cat server/tests/test-suite.log && exit 1)
> =20
> --=20
> 2.21.0
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--2pnppt5nzrstmbpp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2XV+YACgkQl9kSPeN6
SE/aKg/+OuQXkWqweKPTGQxOUWXZhcQQ8wK4rK8ybka1lTsUkCpJVbDFmkA623Sf
2sWTluCeeox58GsHD2CNqpWJNGUSQXyVppCLkXrtna74x97cag4SDoGMnIi691R5
DSei5Tyg3GkTjDySgOc3WNvXnATIF8NmGVNdvzZN7Bu2ywnqcWA7wLP0f8c4xfP6
Wm2VbpKnryjQyqbl5JFUBO2yV6od8WGbvNQGEG+Lk5oXn856wUs62RpHT09Go1QS
qXzbU2Y+inOugmMcrfm1ycmaxTW/Ja+nTQLGfaBM+oWJKXrvs6Om6OUQ0RsO5DQ4
CpISzPfSExP4NNop4E+vdAI/0gdqeua38VWz4uC6+eMXgayi3YDljV1B5x4Mts8k
LVF85uQosWAGS0GRQAHm3aLlIe3WhfIbp9kW7C4dxIJ2ODc8jgR+LEDqNUBEWr6/
s2/EAYdSsg0f8WKeqF9mVUQuX22QIS0jm/S051qb9XKAgpSQNs5jgwSWGHrws5QQ
A7BVtM8S6aQBv0mMBxndbpQ/OlxAADN3tRdrn3eol2/J7sfxSs3AevhcmGdfAY+B
Z7t+Ejmaqc7i4EnQDLWD+gdGxdUzVIgGMZMQXwypu5P3UxZcJSbi7pwSk0Is23eH
Qrsq+ZrIV8Tk+x5oTm9phapok9y4HU69zqC4UhOc3Nck9yEwK4w=
=RdDS
-----END PGP SIGNATURE-----

--2pnppt5nzrstmbpp--

--===============1943772549==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1943772549==--
