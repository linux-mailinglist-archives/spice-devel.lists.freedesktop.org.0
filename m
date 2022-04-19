Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A448C5068C9
	for <lists+spice-devel@lfdr.de>; Tue, 19 Apr 2022 12:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D6C510E7C1;
	Tue, 19 Apr 2022 10:29:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA4010E7C1
 for <spice-devel@lists.freedesktop.org>; Tue, 19 Apr 2022 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650364192;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=O+PJbA3EceqSL1G3cfE1OKg7oJweXkT0Po1d9KBRHw0=;
 b=Ia0+lVbatfqgExaJHsB98m3ZvN+e4gGSA2RiE7nwnPOowIRzcdBTDXO4oQ+CdlGX2Vnf10
 boVLUzB3be3OPnpPEGMBjG/PO5ZYKJ+64hj1zTZvItkzMQUKZD6k5gaX8hm5ZXhHjQfXvZ
 xaCO7h5rSiml2JSDzIAlFW0ls7ckyb0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-670-tDK1Th6WM9Ogxl3MLVGk9Q-1; Tue, 19 Apr 2022 06:29:51 -0400
X-MC-Unique: tDK1Th6WM9Ogxl3MLVGk9Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B19941014A61;
 Tue, 19 Apr 2022 10:29:50 +0000 (UTC)
Received: from localhost (unknown [10.40.192.233])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 433E6C53526;
 Tue, 19 Apr 2022 10:29:50 +0000 (UTC)
Date: Tue, 19 Apr 2022 12:29:49 +0200
From: Victor Toso <victortoso@redhat.com>
To: Walter Mitty <waltermitty121906@gmail.com>
Message-ID: <20220419102949.wjainq7icd3fhpnj@tapioca>
References: <BE152BD8-547B-497C-AB2C-CCF553D3AEA5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="yiwkrvnnlnz7bain"
Content-Disposition: inline
In-Reply-To: <BE152BD8-547B-497C-AB2C-CCF553D3AEA5@gmail.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Subject: Re: [Spice-devel] Does SPICE support long time single touch to
 trigger right click action?
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


--yiwkrvnnlnz7bain
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 18, 2022 at 11:32:26AM +0800, Walter Mitty wrote:
> As we all know, on windows 10 touch device, user can long touch
> to trigger right click. I found that it does not work on SPICE.
> My question is: Is this a SPICE BUG or some hidden features
> that enabled by some params?=20
> Thanks in advance.

Spice client sends the events to Spice sever which handles it out
to QEMU to do the emulation part on the guest. That is, client
sends mouse_press and eventually mouse_release.

If this is not working, you can consider it a bug. Needs to track
it down in which component it'd be.

> Regards,
> Walter.

Sorry long delays on replying here.

Cheers,
Victor

--yiwkrvnnlnz7bain
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmJejxwACgkQl9kSPeN6
SE8+iQ/+PUVccohilnxMW7Cu1LICeYWj1QL/Y4b52RXC4CL2m0fDhRR9hD4k97l3
kAT+uQfIRQ2gxPVwsG7zBnCTHjR7l8EvQ+N23JP80WHeXtHCrHY9uY8b/0u/4TCw
4sfGMGLaGg7RbuuxZmRMQtD+/aXa60qCb10mi45GFkP6dHKk8I4EVtI9upLufbyJ
H+JKBga7ngh4HT8+2hOXYUffZrECVyCt5ANHo3AASd6rwK11p/95rpQKtEFF8h7g
7LZsU045kMhKWjrdb4rx+BL7YmXNoC6rjJezDeVsWUXWN0okF3OYBfchGhKWhOYn
f3puuPx1gs6AaalkHH7Fpw0fNQfezKPnieOwXEb1BkKHehdZSwHBYXT4oP2gPz0h
vmWepnZr/YxN2xpucEJs1SqvCz5Jy1KhprwjDCAMWOw8lhj5rZSHSZRZ5pcEZJU/
qNrrMbbPzJeXtdk+39QiZTEfJQMIaf7HBh8u6VPFPRvJphQEeAYz2HC8cKi8AGWi
YV8oythgyZ0E4WunP1FRNrFYvpioxL3rGKEnQ3MqMnLGPVq5EIQEFJ1tRemLuC9B
yoVJyEYTZhGPu9JtoFOzc780SWzN2aZGNRPq58J56jgUsatopb+aOHJGmsG3N2f7
ua9Nw9YxzjGvmXPt8rWmCEDKdlaX0XseYXJQBeVfQZOXKLMA9T0=
=xl/f
-----END PGP SIGNATURE-----

--yiwkrvnnlnz7bain--

