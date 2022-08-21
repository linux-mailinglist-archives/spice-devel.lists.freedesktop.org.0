Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7453D59B2B9
	for <lists+spice-devel@lfdr.de>; Sun, 21 Aug 2022 10:20:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63FE414AE41;
	Sun, 21 Aug 2022 08:20:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D42A314ADB1
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Aug 2022 08:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661070023;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=96I4D032xZr8BqhwcGPLvDAgRJRue6XhE54O9Cjvug4=;
 b=QLfMKB5N/Lcl6if/r2QemwsoA4ierXY06zXRtrUv8Q8oU0tvA+Fbwd+8B82xzPMilHaZtw
 LX1/96YOJmf57avHrH8HgdZLsWnukgD0h3vCeQGgrw7vmO/oua76wfagN43fl+009sbRut
 mA+oSENs9tGXNLZu4ZqWh67DaSPsMdU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-398-4zjzDxVXM0uS0neqsyNIaw-1; Sun, 21 Aug 2022 04:20:19 -0400
X-MC-Unique: 4zjzDxVXM0uS0neqsyNIaw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3B758037AC;
 Sun, 21 Aug 2022 08:20:18 +0000 (UTC)
Received: from localhost (unknown [10.40.192.43])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 98394C15BC3;
 Sun, 21 Aug 2022 08:20:18 +0000 (UTC)
Date: Sun, 21 Aug 2022 10:20:17 +0200
From: Victor Toso <victortoso@redhat.com>
To: Jonathan Winterflood <jonathan.winterflood@diateam.net>
Message-ID: <20220821081942.rtfdwntvlmu6kqfk@tapioca>
References: <76c675b0-8955-82b7-9c32-1f7fb18bebe9@diateam.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="quhnjld2frvv267e"
Content-Disposition: inline
In-Reply-To: <76c675b0-8955-82b7-9c32-1f7fb18bebe9@diateam.net>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Subject: Re: [Spice-devel] x11-spice equivalent for Windows
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


--quhnjld2frvv267e
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eettc6rex2a62hoz"
Content-Disposition: inline


--eettc6rex2a62hoz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jonathan,

On Fri, Aug 19, 2022 at 06:33:18PM +0200, Jonathan Winterflood wrote:
> Hello,
>
> We are using SPICE with Qemu with much success, but were
> wondering whether a solution similar to x11-spice exists for
> sharing an existing Windows system via SPICE (rather than then
> usual RDP/VNC, etc.), for use on e.g. bare metal, VirtualBox,
> Vmware, etc. that do not provide "normal" spice servers like
> Qemu does.

I'm not aware of anyone that has started such project. I think
that should be possible as spice-sever does build on windows and
can be enabled for windows build of QEMU.

Cheers,
Victor

--eettc6rex2a62hoz--

--quhnjld2frvv267e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmMB6sEACgkQl9kSPeN6
SE89Qw/+InwQEfjl0SpjjmpgpHoETLZgezN41nQ0v62LEXJXkPxTLr6w7X3uQUqm
n0TsYiGA3N56Nn12K8rh0ZFfndNsKx4vZcBdYlSpp/NnTNR12zCj2KZmZSkS0lLH
L9PumhdQnLAUf0CKSnKhIA2+DWj52h1lyUGSgmnfz50j1AEBYWKwltgibB5Fw0Rg
5T7Xg4CYW/XhaGnPgpHzu39efo0R1+5dMjakZnsC28DKZJ+DYBQK7F9Kc9BWEozi
tK1NOWZTZi5OvvH2eZ1Mt29a6Wwr/uheeysxgLCtmHlFjjTwf+cXvT0t3LN/UABZ
NEhN2b0cp0FNIqC/8W0cmbLWUdDLPBKs6HmhQRnXQR0BonJDSlUYEIPz2iGpwd3Z
xim+ENfl0igkxHnwdXFptCmmkvauz6BHXPbpD43XYE5xNRocVpbeGRnahz6SYdAP
JBA4WYawU2NblJ+rCUjhafg4pqWj0Z5vgI6qNp6tck3wLxt1MWmrybdBF9lvx1Ls
XZBfob0ExuqVeZdgKn9ADA/R37wCPQmvfcyxct5IUQXMlYpTGC6XOO725A/pt/Ba
lrtOCrTR5X8lFddlaw8M5aWxp959rOLXMQo5BRvUhC//YSbpL52VEU7lsBZXPhON
hGRn7HCh3epu91d702Kpy3KFgTR6px/xQyOdgb0ex+F8G2aW82w=
=v0JB
-----END PGP SIGNATURE-----

--quhnjld2frvv267e--

