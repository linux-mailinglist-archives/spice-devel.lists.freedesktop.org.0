Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 841135AA85E
	for <lists+spice-devel@lfdr.de>; Fri,  2 Sep 2022 08:53:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF0A710E770;
	Fri,  2 Sep 2022 06:53:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6EEA10E770
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Sep 2022 06:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1662101610;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VMalhr/p924f6PR2MQd6gW3dqlxVqXYxRPS5Gny8ghE=;
 b=VSgNgD40yWQjDACFK/fvtDF1oX+rtdt66yQX73JkqxcOp/NdwLWUywFvXiJl+NByOfFp73
 RiLu2sO9xYQ1bNpGVdK+e8VBAliK6YoobKriQSVouldS0OGIlAdchr7c4owvYP+/uhCvRz
 TEq/6gZyv9zYJhr0pT5N0lhhBWpZNkQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-o9rdz4IzP5SGk5qooHp1ZQ-1; Fri, 02 Sep 2022 02:53:26 -0400
X-MC-Unique: o9rdz4IzP5SGk5qooHp1ZQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0767B29AA3AC;
 Fri,  2 Sep 2022 06:53:26 +0000 (UTC)
Received: from localhost (unknown [10.40.193.90])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 930CC40B40C7;
 Fri,  2 Sep 2022 06:53:25 +0000 (UTC)
Date: Fri, 2 Sep 2022 08:53:24 +0200
From: Victor Toso <victortoso@redhat.com>
To: Carlos =?utf-8?B?R29uesOhbGV6?= <piteccelaya@gmail.com>
Message-ID: <20220902065324.kqoezlbkidndyx4m@tapioca>
References: <CAGeBE=yhPCXNeR72Oiy83yS+gC+P82_tSX59XQ4dSvUMDHJGRA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="oay3tbox73fmgzrv"
Content-Disposition: inline
In-Reply-To: <CAGeBE=yhPCXNeR72Oiy83yS+gC+P82_tSX59XQ4dSvUMDHJGRA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Subject: Re: [Spice-devel] qxldod driver for Windows 11
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


--oay3tbox73fmgzrv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Carlos,

On Fri, Sep 02, 2022 at 12:08:04AM +0000, Carlos Gonz=E1lez wrote:
> I downloaded latest virtio-win ISO, and by browsing it I
> noticed that, unlike the other drivers, for the qxldod one
> there's only up to win10, and no explicit win11 versions.
>
> Does this mean that there are no drivers for Windows 11, and no
> possibility of setting up a VM with full SPICE support?
>
> Thanks beforehand.

You are correct, the last cycle of development was focused for
windows 10.

I expect windows 11 to maintain some compatibility with windows
10 so the drivers should work to some extent but I did not test
it.

I'd not hope for further development on qxl unless there is
someone interested in investing time on it (and it would take
some time).

I'd instead switch to virtio-vga / virtio-gpu as this seems to
have an active community.

    https://github.com/virtio-win/kvm-guest-drivers-windows

Cheers,
Victor

--oay3tbox73fmgzrv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmMRqGMACgkQl9kSPeN6
SE9YURAAqx8WKZXCyWqYIAwD/8FIPtWIlU0wyGbpI6rMJz+bPnU+JSYYFMVxV9qd
CMexcqkJhUVjJ7Wfd7svkfSJQpgf+nE1GBDFohlYOjA4HB2WJGEzCms1ELjbWZG1
/0xeUJLPCTMCQRk7wIJA35tCQkwLFSCXQYE2Wlj4cETU5sTpuePUA/thmCLlUsRS
Ojh1J+q9D/6n3ewYEhFIw6gjnxxF7jsr/Z0A1LAfGghZBA5cydOku5sBjUlRaX2i
CUxfy2toV4Qms92F4NzhU1lOAcaMHuO5LiIfxcJd5bWOMJaTSGOC3EENEnElPohh
P6d9OtqE23gJBuogTR/qrjcqZVJUqitRx9T/y9He1MAb3f4UUD80MY/xXUbYDD+I
oDdXXTG/2Lf9ZFqmVPJq+w3t9K84D0dFaY08OgCfBatwHOw2Ii9mzSA8KdA/L9dN
kW67OFnMr1MaBnovet/nOx28gsPUozTys5GbH/otiH7lx52rNXOL99eLgZ6s+aqm
SzsNZLE25AvN7UT6QYDhVBweJNvU8U178hlKE0I9yv9UkNlHufqOvWB8bg2R3Mjl
XVtq92turYD6ZTa8YW300U9e6b96BWwkbD9OI4jh07o5I9a/f6sWMoKXpr/U6n6w
vPbhFgAQftMsTy87d+QSdOfYD17SR9tx51q0xq1U3qLxwDOVpNQ=
=gTug
-----END PGP SIGNATURE-----

--oay3tbox73fmgzrv--

