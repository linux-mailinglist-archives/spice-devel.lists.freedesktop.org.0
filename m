Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B34A71566D
	for <lists+spice-devel@lfdr.de>; Tue, 30 May 2023 09:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA6910E34B;
	Tue, 30 May 2023 07:17:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0D010E34B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 May 2023 07:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1685431047;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ytr7YN0VgwewRD40XtfIR4C33gToeloURhhfJLakzuo=;
 b=W/Nj6ReJX8ycF5G/liTvOBmdHQlmOcXhG4v3jErZE/VIr042rsyvj17uz83xt6ypq/Ar+T
 NxnkLfHlvSbWHsVsvbwMY9BBOy40wolm9663L1qMB+raVzIrOF4Rdk1nzWGZq3a7RCjkin
 ReQQMK+Wi0l92rI51j8XddOrmDtAYkI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-653-ptKs2RNlPXKXdcZOL93kYA-1; Tue, 30 May 2023 03:17:25 -0400
X-MC-Unique: ptKs2RNlPXKXdcZOL93kYA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE53F8032E4;
 Tue, 30 May 2023 07:17:24 +0000 (UTC)
Received: from localhost (unknown [10.45.226.253])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 357C6492B00;
 Tue, 30 May 2023 07:17:23 +0000 (UTC)
Date: Tue, 30 May 2023 09:17:22 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <itf3io2kwurtz2iz7tfssfgvqblzfwr7ajsye6wje4uoxywqdz@vmszqtnibd47>
References: <tencent_D5878955D45FD159A97AED741F2635A8D50A@qq.com>
 <CAHt6W4cTwoFMvkVYs-VmJp05FXoOTQ=HZM7WvxgN9ks1PfE2WQ@mail.gmail.com>
 <CAHt6W4d1nF_ceWGqVOR-Nmt+kS44jqJaHGTggdUWqQbm+_WqAg@mail.gmail.com>
 <cw6btodzv2qdseyupheevxmspytiatv2d2mzyfjj3asnysjnn4@zl3bnes6pclt>
 <CAHt6W4efRjKatr5TaXareKt16N7Swiufcjdpd88Cx8CmohkEuw@mail.gmail.com>
 <dbaospexta5gz2i2rvvl6q62bc5nz4tntjyv6quwoesv4dcdjq@a7itrvwlcnsu>
 <CAHt6W4cOWGs1YzqciY-qMYY1MCun5c+9Z56_PsTnXceBzhj3Ag@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="xw2o4ly25bx6xfmo"
Content-Disposition: inline
In-Reply-To: <CAHt6W4cOWGs1YzqciY-qMYY1MCun5c+9Z56_PsTnXceBzhj3Ag@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
Subject: Re: [Spice-devel] About the website download error
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
Cc: 2656017036 <2656017036@qq.com>,
 spice-devel <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--xw2o4ly25bx6xfmo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 29, 2023 at 05:47:17PM +0100, Frediano Ziglio wrote:
> > > I would personally add configuration to the server, MSI files are
> > > probably used by Windows users.
> >
> > Could you try adding the download attribute (by changing the html
> > first and then trying to download the file), just to see if that
> > as a workaround works?
>=20
> I could try to reproduce the issue using another server but our
> HTML pages are generated so we would need to change the
> generator, so we will also need to change the system. It would
> take me some time, I don't use Apache every day. Do you think
> it's worth doing?

What I meant was to edit the html in the browser (e.g: both
firefox and chrome support right click > inspect plus edit)

If that works out, we might not need to touch the server, only
the generation of the HTML by adding the download attribute.

By all means, we can wait to see if the mime.types change can be
done first.

Cheers,
Victor

--xw2o4ly25bx6xfmo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmR1owIACgkQl9kSPeN6
SE+ADA/6A4gmgPZ87g0ZE4D622VvNXVTs88hDKEmVja+3ZlvolQ5OoGcppHMa0n9
KHUQl4n0WazPYOQoGyFn7nCKl0VfQnXDP8VR5v3/6eymEbzveaaCVbhgJPIJskl6
2oRnRMatXu5+7wE9vZ4duPM1eBC3+lgLfndHYxGpRiypU4g81cDsi8tEuNe4RxiJ
7mc+o4CoDPfgIGKZzsBACLoIH91Gh3SjvygM4ceXFGsE2iM6sNb/bIuDzb9QJXGS
WHKO30zVUWkflrtSKxPi0C8tduxdc3ySEOxoXtNmhzLTIPdnn9myFNLdtsefrmYv
yn1sMcUb334lhpx0QaffYEJgG8WFAo/cvgCothK1M275Vz3ShtmRzuUo/f3GVGGy
aPLM85zX3zJYG/0rlQ5SyBDCEI9DDixmF3JzntuJnbeVmVMJ9bZApByV3la2t9SF
rUDD/uLyH6geFTs1fB0N53jLUiKEpyDOpKHN8DR4ThG9unoOAkhEcc1K62HnQ45+
IuFNx7aY7wAn9lP3lTthpHtHio6KcC4I+pHbskkt+ORBPzGFJU376jS9ujRwM0Nv
gMDv4SDJgfIhPx0iSn1ecDEFqC5dMMpm5vpHNINIEB4WfqYwDxC85cNfxhPRho2i
9Ni08cQFcVovGHvvm+RwfaycVZVMttHFvYCOGWAJcWRc7S9T7J4=
=tdZz
-----END PGP SIGNATURE-----

--xw2o4ly25bx6xfmo--

