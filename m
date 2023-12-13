Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBD7812098
	for <lists+spice-devel@lfdr.de>; Wed, 13 Dec 2023 22:20:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B878210E864;
	Wed, 13 Dec 2023 21:20:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CE5F10E864
 for <spice-devel@lists.freedesktop.org>; Wed, 13 Dec 2023 21:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1702502448;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qVJefSL12j66Z++7fbbf+5MvvGGwTZcH9M0mgpxU7n4=;
 b=U6/Q5cOVhVr3vPvRJrjDC2y4/mf5x0f+J1hm8bFHf3G+QIMOURZNeQ9nWGWQtw0qTOkiM0
 j60Z612oXkYRLJV/MII4aioDtMAEIJAvO/bErozDYRAF3UtMcs26z6CCs2TvGJh4mY1wcP
 GpRVcVJVY5RECGlNTpIv+eYlSH+zFa0=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-344-pmG1qLcNOhSj3k7hWuiIpw-1; Wed,
 13 Dec 2023 16:20:44 -0500
X-MC-Unique: pmG1qLcNOhSj3k7hWuiIpw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 023291C0512B;
 Wed, 13 Dec 2023 21:20:44 +0000 (UTC)
Received: from localhost (unknown [10.45.224.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8984E2026D66;
 Wed, 13 Dec 2023 21:20:43 +0000 (UTC)
Date: Wed, 13 Dec 2023 22:20:42 +0100
From: Victor Toso <victortoso@redhat.com>
To: John Paul Morrison <jmorrison@bogomips.com>
Subject: Re: usb passtrough
Message-ID: <yvkbj2yjvgqcxm6sbukc3safogig3uzu73ciualnmahqzsjtxe@mmkbtehdpomt>
References: <CAMUN1STk3fxA129c-C3mBFMAL=7_jCaT_EfZ8XazhrdS1DTzpQ@mail.gmail.com>
 <CAO-kYtHARUgu1jm7qdP2ehQ1mNXZ6L2+G5QRKnAfwq-uE2HYmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="te27p2fdixto2urw"
Content-Disposition: inline
In-Reply-To: <CAO-kYtHARUgu1jm7qdP2ehQ1mNXZ6L2+G5QRKnAfwq-uE2HYmw@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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
Cc: Fabio <cellulare3@gmail.com>, Spice-devel@lists.freedesktop.org
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--te27p2fdixto2urw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 13, 2023 at 01:14:12PM -0800, John Paul Morrison wrote:
> Which spice client?
>=20
> The windows spice client has separate usb drivers that need to installed

It us UsbDk
    https://github.com/daynix/UsbDk/releases
=20
> It's been a while since I used=C2=A0it but not all features are enabled i=
n the
> Windows builds and downgrading may help.
=20
> On Wed, Dec 13, 2023 at 8:47=E2=80=AFAM Fabio <cellulare3@gmail.com> wrot=
e:
>=20
>     Ciao, scusa se ti disturbo ma la tua guida non mi =C3=A8 chiara.
>     Io devo fare collegare una penna USB al client ed usarlo come se fosse
>     collegato alla mia macchina virtuale di windows in RDP.
>     il tuo software=C2=A0 per=C3=B2 non funziona....

RDP is not SPICE. If you are using windows build of virt-viewer,
that does have USB redirection but need the above mentioned
drivers installed in the Windows machine (Client/local, not
Guest/remote).

Cheers,
Victor

--te27p2fdixto2urw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmV6ICoACgkQl9kSPeN6
SE9ZRg/+MfSzAFwUsWbZ5FQkWfZ1VO70WgyA1Q8V0jCKKupG8cl6uEqF9gz10rZw
2yHx4xTlLuAz3o9U8zIMB9vzTi8WpiT3QtMIziM0tV/nv6RCjo1C6iTQnb7GxiC2
EfiErBhALd0t14PGwb4okD8CYmYpz1so0RweF7mvk8MMdQvJlAXzilLoxZbG5Z9m
tzX5E2Mna6/7xUqkSeZFO9OhJPh2FKn94P/ktRHMbzu9vivFdYzAIUm0+7G29jGy
utOopAQ6ErvU5Xkn57ee2l/GnXcvrxIAeubAYGILqBKTnMF6OSumZATexZ7TvU43
qfsftHq8RuhjXPXxdQEuKkOKv9yrabONXhOK6/kMzmnh3Y2YMjzfOyksdyQpOREV
hB4YgDriPeyxhrwS2uUMFrWMKZoh/yzakmBXZjsnNezVMPBKdfUqlilX0nOjRs0P
DOipmrmcUnY+5nr5NHJNNvhNnCKjhHNXqCvUoqpi4VN0oWFVdx3STxnODVEV7faB
mJNDDwV/lqgOudb/ePoLckTQeM8sxAGWtRccdQAdSiZwL59v3NijWJwDpfcO7Fth
F1xOekfkGMeVWxbG20RMKoycEJAkqPqG3EVjNUCmxDiFfdYWkvRgrpmkyc1Uz6G+
vXvEbJ2iwf+jvJh5cV9GMSeb1+n4UB6KepIFB4FY14j8CbcIwMs=
=Itn7
-----END PGP SIGNATURE-----

--te27p2fdixto2urw--

