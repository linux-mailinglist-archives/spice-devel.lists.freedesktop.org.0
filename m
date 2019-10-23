Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D805AE1997
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 14:06:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50F716EA58;
	Wed, 23 Oct 2019 12:06:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E9156EA58
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 12:06:30 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-v15fId6jN76p8gc0fgdWUw-1; Wed, 23 Oct 2019 08:06:27 -0400
X-MC-Unique: v15fId6jN76p8gc0fgdWUw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC285800D54
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 12:06:26 +0000 (UTC)
Received: from localhost (unknown [10.40.206.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3E42460628;
 Wed, 23 Oct 2019 12:06:25 +0000 (UTC)
Date: Wed, 23 Oct 2019 14:06:25 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191023120625.xn7okfjih2ns2jvd@wingsuit>
References: <20191023100632.26265-1-fziglio@redhat.com>
 <20191023100632.26265-4-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191023100632.26265-4-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571832389;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KNl3MSuKpiqanw3ZcUf3TsPnqAIStgMPnqJqCiDLVCc=;
 b=U3q3d6wZk+O87d9tH6To0BrB+JiFf3KJ4YyuTYB9El36WyuOnrom54E402On+eCxSu4RNX
 +rHABXaPCU+zOv2+rVDZJzhf+4DMIKJmaK+ze51tTv9kQIcxSl8GtIiAmWBmadXivt1+RO
 eaOi3HBYg5LCOJBkohbC8ZEzT40nL38=
Subject: Re: [Spice-devel] [PATCH spice-protocol v4 4/5] build-sys: Allows
 spec file to build MingW packages
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
Content-Type: multipart/mixed; boundary="===============0855051653=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0855051653==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3u274gy5ltwrzat4"
Content-Disposition: inline

--3u274gy5ltwrzat4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Oct 23, 2019 at 11:06:31AM +0100, Frediano Ziglio wrote:
> Add MingW support. This allows to build MingW packages easily with a
>=20
>   $ rpmbuild -ta spice-protocol-XXXX.tar.bz2
>=20
> This is base on some work by Eduardo Lima adding MingW support to SPEC
> files.
> Part of dependencies, description and names came from Fedora SPEC file
> for mingw-spice-protocol package.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>
> Signed-off-by: Victor Toso <victortoso@redhat.com>

For the series,
Acked-by: Victor Toso <victortoso@redhat.com>

> --
> Changes since v3:
> - add gitlab ci from Victor
> ---
>  .gitlab-ci.yml         |  3 ++-
>  spice-protocol.spec.in | 32 ++++++++++++++++++++++++++++++++
>  2 files changed, 34 insertions(+), 1 deletion(-)
>=20
> diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
> index a20776e..02406ca 100644
> --- a/.gitlab-ci.yml
> +++ b/.gitlab-ci.yml
> @@ -4,9 +4,10 @@ variables:
>    DEPS_COMMON: git libtool make python3 python3-six redhat-rpm-config
>                 python3-pyparsing meson ninja-build gtk-doc glib2-devel
>                 gettext gettext-devel bzip2 rpmlint rpm-build python-unve=
rsioned-command
> +  DEPS_MINGW: mingw32-filesystem mingw64-filesystem
> =20
>  before_script:
> -- dnf install -y $DEPS_COMMON
> +- dnf install -y $DEPS_COMMON $DEPS_MINGW
> =20
>  fedora-autotools:
>    script:
> diff --git a/spice-protocol.spec.in b/spice-protocol.spec.in
> index 49724c6..54aacfd 100644
> --- a/spice-protocol.spec.in
> +++ b/spice-protocol.spec.in
> @@ -8,21 +8,53 @@ License:        BSD and LGPLv2+
>  URL:            https://www.spice-space.org
>  Source0:        https://www.spice-space.org/download/releases/%{name}-%{=
version}.tar.bz2
>  BuildArch:      noarch
> +BuildRequires:  mingw32-filesystem >=3D 95
> +BuildRequires:  mingw64-filesystem >=3D 95
> =20
>  %description
>  Header files describing the spice protocol
>  and the para-virtual graphics card QXL.
> =20
> =20
> +%define mingw_files() \
> +%package -n %{1}-spice-protocol \
> +Summary:        Spice protocol header files \
> +Requires:       pkgconfig \
> +\
> +%description -n %{1}-spice-protocol \
> +Header files describing the spice protocol \
> +and the para-virtual graphics card QXL. \
> +\
> +%files -n %{1}-spice-protocol \
> +%doc COPYING CHANGELOG.md \
> +%{expand:%%{%{1}_includedir}}/spice-1 \
> +%{expand:%%{%{1}_datadir}}/pkgconfig/spice-protocol.pc
> +
> +%mingw_files mingw32
> +%mingw_files mingw64
> +
> +
>  %prep
>  %setup -q
> =20
>  %build
> +cp -rl . ../build_spice_protocol_tmp
> +mv ../build_spice_protocol_tmp build
> +pushd build
>  %configure
>  make %{?_smp_mflags}
> +popd
> +
> +%mingw_configure
> +%mingw_make %{?_smp_mflags} V=3D1
> +
> =20
>  %install
> +pushd build
>  make DESTDIR=3D%{buildroot} install
> +popd
> +
> +%mingw_make install DESTDIR=3D%{buildroot}
> =20
> =20
>  %files
> --=20
> 2.21.0
>=20

--3u274gy5ltwrzat4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2wQkEACgkQl9kSPeN6
SE+59g/8CwZ1jYVWesyyx4NN5K1dnpu2xEu9kOJkuHcbw3cqtpy/d65Jmiu79NuR
6wsQYY1kJUGqGJwREl9Q3bs3XPyBxOAfOIqAAt0+c/XLCA4tuXezIAsQO/vjCcfr
8ib9Eqjt8aQPZw+jAEtW7Wtge6Zi4h2IYWw/bS+OsEP3JdEU7FFb4T5P+j8KgPJT
EdpiQFYiwkYNkVM5rvOVT29t7J/PCwdsOMDJcU8uTaaUyysWsUiJGABngLwHVGej
mmlyfCIF2L9LXBA12u0fpohvCIn+qoZ5jCAoKSTghhopsNUNFHEbMyo9lv8WCLWo
R1QFvag/DLCUDxW+RzHcGojAK2qjWm4nJ0z3dXMmCUfDpR1e5QVNznFPjKA2OvNr
H2Qf024jVwRNZ8pp6ue+VngGHUSuXGeka4+oBHxiXXkh8wTbRkvVwKlKhSXHL6zQ
wi4jLWAKQe01f/piYnOUCQf5q/OmUxS+YyaNVpNumGFDNzTwGw9LQy8PBVjCUFmK
oqv+lzkUw8nFSRI9CSQwJ6ZQwtGB7pn2HVzxuXdvOwcuP863bPqzYC6IhOHl6mR8
z8oOfSdy1BpdfCPjuj+1RBbDCxOgqbdQcsuBVSsJGjHvMetQJtepEXI+G9zLBJHR
mc2+nlzdOW46UIYI1SXMNVcoK/+Iq1Ff8wh1oBrV8+oE7JTMVVo=
=M2oN
-----END PGP SIGNATURE-----

--3u274gy5ltwrzat4--


--===============0855051653==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0855051653==--

