Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 960AC6D91D9
	for <lists+spice-devel@lfdr.de>; Thu,  6 Apr 2023 10:41:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D82110EB2F;
	Thu,  6 Apr 2023 08:41:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D45710EB2F
 for <spice-devel@lists.freedesktop.org>; Thu,  6 Apr 2023 08:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680770514;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8zbOcTTs+xLxGemNVAj2wrIYy5Y6sbs3X6Y7fKP4IH8=;
 b=Gljg3/ViQuQKYLG/RkhpZQIHB/GkBF6mXUanJBUWL7Jv5olHbVZDLDNYz98ejhx0KvXJS9
 JsQORtDWvhM06hAu/Rb3Y4bJ2pIsVqBq0QRtsic9XLgkBP+dzhZ5EAIBEGl/u2dQ/1w5UH
 +8NanjM3LsFA9AbNMnkqUwM/6Y23zW8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-418-F0EBn553Nim-AN8aWMypwg-1; Thu, 06 Apr 2023 04:41:49 -0400
X-MC-Unique: F0EBn553Nim-AN8aWMypwg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AE2F185A790;
 Thu,  6 Apr 2023 08:41:49 +0000 (UTC)
Received: from localhost (unknown [10.45.226.14])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 34DBC1121314;
 Thu,  6 Apr 2023 08:41:49 +0000 (UTC)
Date: Thu, 6 Apr 2023 10:41:47 +0200
From: Victor Toso <victortoso@redhat.com>
To: =?utf-8?B?5p2O55qG5L+K?= <a_lijiejun@163.com>
Message-ID: <2yrmsapieuvfcg3zuaull2n3uugaopfnsoq5t6elra3gnks56f@jsnwsotmvty3>
References: <64308ba1.2f53.18754ad3320.Coremail.a_lijiejun@163.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="uejnojivs3jm4fxv"
Content-Disposition: inline
In-Reply-To: <64308ba1.2f53.18754ad3320.Coremail.a_lijiejun@163.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
Subject: Re: [Spice-devel] how to build usbredirect-x64-0.13.0.msi
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--uejnojivs3jm4fxv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I'm CC'ing spice-devel mailing list.

On Thu, Apr 06, 2023 at 11:47:29AM +0800, =E6=9D=8E=E7=9A=86=E4=BF=8A wrote:
> Hi, l want to build usbredirect-x64-0.13.0.msi in centos8 stream;
> follw the doc https://github.com/freedesktop/spice-usbredir/blob/master/d=
ocs/how_to_release.md =20
>=20
> Generate the MSI installer
> On the usbredir srcdir mkdir build-win64 && cd build-win64
> mingw64-meson
> DESTDIR=3D./install-root ninja install
> DESTDIR=3D./install-root ninja data/usbredirect-x64-$version.msi
> The MSI installer is then located at build-win64/data
>=20
> when i run DESTDIR=3D./install-root ninja install is good and
> usbredirect.exe is in tools dir; and then run

=2E..

> DESTDIR=3D./install-root ninja data/usbredirect-x64-$version.msi
> have some error=EF=BC=9A[ninja: error: unknown target 'data/usbredirect-x=
64.msi'];

We used $version in the docs because it changes, so it is a
variable. Try:

    DESTDIR=3D./install-root ninja data/usbredirect-x64-0.13.0.msi

This process calls msitools binaries and uses its wxi data to
assembly the msi installer.

> so i want some help: how to build usbredirect-x64-0.13.0.msi in centos8 s=
tream
>=20
> think you very mach.

Cheers,
Victor

--uejnojivs3jm4fxv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmQuhcsACgkQl9kSPeN6
SE/K/w/+IaFuPZeHG8KKqWR2TrQZG9PgmTPI0dSfaHJInAkw/WxvXGKeglZug6tT
TticAZMtDd9SOSl37uThejxV1TxVyqS/aWNCFjxtedLlITaB5T1VOLDG5DbzB/Lw
FyfC/7rFKTuIY+hcOkKdkXfxAx/ghmzse03UEj9lpVXEy2DK+N6Sbn88RX6QGM6I
vwg3RaASggobjLby78BF3hLMIy/q5ZzdxkBuSXgnORQryDh4Im6L7N6Tpwugr9br
hLJ/Qc3XlITGd/QybmF4LIZk7zCCNvQohWY9HeBcx3tSYs8s8a3rODy/k7L9adUn
a/rZGZPu/zyLQ5kKJyPsmk8SAWxIVgdwnbK4pn1ESGdHaDHFtpkwQaRkFMfo371q
/v6oGEKMSVFXmphD19eaI4BHNWnk6Wqa1FUA4GyKT6a7dDjz/7SRnVMlAiOJvUYw
QHk4i3Jj26OkMWXBY2KFQfyAAZirM8ECWWjnoGtG68CcVagaE81vn8CUzikAkirO
9k4QgM4Z+5d6KGCHUz/i442aGad4EZg9n6R9eGuMVSJb5f1Pro8nPEnvfYbpPk12
ruXpYLM/GYl3QxnyTkIggwL1Jn3QKBep9wlOEf3+gJ1j+EiLZwznTqmuN6rVtm6R
7/M/j6Nor6fE0JomuMeK1gh/VQ/3uFyCOPxE7OifN5lvHoZatUk=
=UGrl
-----END PGP SIGNATURE-----

--uejnojivs3jm4fxv--

