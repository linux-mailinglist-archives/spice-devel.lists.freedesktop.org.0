Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6836259B2BF
	for <lists+spice-devel@lfdr.de>; Sun, 21 Aug 2022 10:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD0E14AEF5;
	Sun, 21 Aug 2022 08:26:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7ED514AEF4
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Aug 2022 08:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661070378;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XcpvOS/U4GdHPLBpvJzByg5Ov95fOXSlwWPqaiQLKz4=;
 b=caoQlawjbTrqHq2W13URcLMRRlMsnH0zF0aJ1F3r8Qo1LOLfJ+433ZcubF9QhhrSz6nqtK
 ufmH+2XN84xmVN509wAx5bjnfO98aWPuppefH0E+iB56Qiszi6HiFBhjyK8xMYd6ovfbaV
 KvNRzim+GIUIbmPq1w0JNLizalWgjM8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-446-SD2ZHb1QPF60vXV2V3OdVw-1; Sun, 21 Aug 2022 04:26:17 -0400
X-MC-Unique: SD2ZHb1QPF60vXV2V3OdVw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE081811E75;
 Sun, 21 Aug 2022 08:26:16 +0000 (UTC)
Received: from localhost (unknown [10.40.192.43])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6A053492C3B;
 Sun, 21 Aug 2022 08:26:16 +0000 (UTC)
Date: Sun, 21 Aug 2022 10:26:15 +0200
From: Victor Toso <victortoso@redhat.com>
To: Jonathon Bauer <jbauer@firelandsit.com>
Message-ID: <20220821082615.vs6fpimm3gai36oq@tapioca>
References: <DM4PR17MB587332F4914A9864684C628BCF6C9@DM4PR17MB5873.namprd17.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="rxigklphq5m7yiwd"
Content-Disposition: inline
In-Reply-To: <DM4PR17MB587332F4914A9864684C628BCF6C9@DM4PR17MB5873.namprd17.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Subject: Re: [Spice-devel] Windows Spice Guest Tools Silent Install Found
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--rxigklphq5m7yiwd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Aug 19, 2022 at 07:16:04PM +0000, Jonathon Bauer wrote:
> Hi Spice Devs,
>
> I figured out a way to run the Windows spice guest tools
> installer silently, enabling automated deployment. Just run the
> installer as System, and add the /S switch (case sensitive). I
> posted more details on Reddit here:
> https://www.reddit.com/r/qemu_kvm/comments/9ivlkp/spice_windows_guest_tools_silent_install/
>
> Please consider adding this to your documentation, so it's not
> so hard to find. Adding it to the Spice-Space download page,
> under the "Windows binaries" section may be a good place.

I think this is more useful when script unattended installations,
correct?

Feel free to drop a patch to our website's repo :)

    https://gitlab.freedesktop.org/spice/spice-space-pages

Thanks,
Victor

--rxigklphq5m7yiwd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmMB7CcACgkQl9kSPeN6
SE9J9xAAuyywZM0GJa0RKykU9ugAJslJcnii6eHFQs155WhLkPxNK57n/wzfUR4S
fb7DI6d3nq3Bg3nX060c8hgmIcBclf6/lg2alNq0qSb8JNMzpy1HwhrB12ZhmzkE
X3FQrBKaJXLKCl68t63atKPfhhtemavBh+OYbUutQ7/2aaF1g8WKJ/luBvKu+EUg
AQ1zLCu4r1oEJhx7EFWoOJvuKBPmH9TxCq6jDh0kvKEMpwGIYKzj9yKiGC0Vg8nB
9NcXLH38QuKzB2yY2jfBUcEfNI2HsyjzJfOSjfSp6odwTKG7tJofdRfcvvpgdoBF
1V1Z/aTo4R5Ex4qrjTzBFosWvkj3Kqhb5+WQWLWKtfEGMbPVYC9wZC/1UBtBpA3Q
FtbTWE1N7SP4iI9Sr6PWoWDaJMpyRhMy6pxYcZzD2DCycoEuosqsLptdPZdxiy4c
W1Edz4WOXeRGULjzwdzti0TWaGxjJ4YVPSh15lATkoYkbqXEE43NlGEJkhL6H43g
pe1wo9qLOMGHO2MM9vYteUL1JMPCbpzp/IZDx1HwiMqUB6amz4Pu5RKDNN5Jl1h0
vbdgCGJfrh35Fx2SoR1YVXMugZ4dMjMHTjVyglGFqsJ+twcbiKRdOezqj2Q7RYc4
kAHcU61VfnrW7AKxgLtjSnALQhRXgORBNbcYFGa7RidysGc2KnM=
=c7hm
-----END PGP SIGNATURE-----

--rxigklphq5m7yiwd--

