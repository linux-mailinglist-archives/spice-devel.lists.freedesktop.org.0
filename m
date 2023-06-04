Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2098C7217D6
	for <lists+spice-devel@lfdr.de>; Sun,  4 Jun 2023 16:37:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24CC410E13F;
	Sun,  4 Jun 2023 14:37:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6DD10E13F
 for <spice-devel@lists.freedesktop.org>; Sun,  4 Jun 2023 14:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1685889445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zQPONMHp4Wu3tcWCQN2qY+giWhE0jqqkfoEXBnSxEyk=;
 b=fYDkM5/yeHUxqD4/yf/APDaC4o4J0Ynvz/y2nfR4W1B5krhY75sRt3Y3gy/XDnQYkR2AmM
 OMJySfFhRQuTlroWbqKPhNrNXtCPqNdLYmij09stN0OkXeZvnbCCdoG1CRh1BIYRV4hT0/
 Ro2HvSPduYk2SydWJqqbNkWAEKqvcII=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-DjlMeO2vMOuA_Y1DJHx3rg-1; Sun, 04 Jun 2023 10:37:23 -0400
X-MC-Unique: DjlMeO2vMOuA_Y1DJHx3rg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 379E4101A52C;
 Sun,  4 Jun 2023 14:37:23 +0000 (UTC)
Received: from localhost (unknown [10.45.224.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C0CB8400F5F;
 Sun,  4 Jun 2023 14:37:22 +0000 (UTC)
Date: Sun, 4 Jun 2023 16:37:21 +0200
From: Victor Toso <victortoso@redhat.com>
To: Serle Shuman <serle.shuman@gmail.com>
Message-ID: <scerqlh5wbkvngny65fcvaoa4fe35bn6idywgp3gqi2mcjtquh@fb6uht5jtnfh>
References: <CAPuHtzRHg1C3yjm-rSDOn-bGOQfUvuu3OS3OhkARb-Pxw46Q0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="2omcdoybwd6j5aun"
Content-Disposition: inline
In-Reply-To: <CAPuHtzRHg1C3yjm-rSDOn-bGOQfUvuu3OS3OhkARb-Pxw46Q0g@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
Subject: Re: [Spice-devel] Need simple spice copy and past device (for
 terminal use)
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


--2omcdoybwd6j5aun
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Not sure if you are asking for help, suggesting a feature or
interested in implementing this.

On Sun, Jun 04, 2023 at 07:04:54AM +0100, Serle Shuman wrote:
> Assuming that the host is a windows based environment and the
> guest is s qemu based linux terminal only environment e.g
> ubuntu server without x11, then there are currently no features
> targeted specifically at exposing a character device in the
> terminal that one can redirect text to and from the host's
> clipboard. e.g.

With SPICE you can't do it. SPICE copies the clipboard data from
the client, transfer it to spice-vdagent which transfer it to
guest's clipboard (x11 only, no wayland support)

> 1. from host -> guest (via spice clipboard)
> host: copy from cheetsheet to clipboard
> guest shell: dev/cb > <command>         # redirect from clipboard device =
to
> standard out
>=20
> 2. from guest -> host (via spice clipboard)
> guest: <command> > dev/cb                  # redirect standard out to the
> clipboard device
> host:
>   a. graphical paste menu item in some application
>   b. dev/cb > command                          # redirect from spice cb
> device on host to another command

You could hack spice-vdagent to interact with something else
other than x11's clipboard if that's something you are interested
in.

Cheers,
Victor

--2omcdoybwd6j5aun
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmR8oaEACgkQl9kSPeN6
SE+t2A/+M/oSAyFy63wwkpyAQrKzb0/tzYAr91VprT8frRZppHJaYkJ5DGp5L2yx
9KiJg6Nn2t5PPk4j79/iN7J2GhJytQKwM/y4TQTMbBHWFbnP8rqWv+ZG84oqvcUW
cWMr9JusnT09P7V1G31TYsWtZXldM4oENnF4pzvqi5okKsdjXkKAj8ZwLJePo/Ux
ANCeprxOPxLd56BSZXX8Z/CakYzKZNO4gwLY338/joKer6cJ1RYz01dpfztAvXNi
D0yJwMCmOZ5T+OzgUONFGzxVJ7RouED/sUcaQ11JkJ9umdhI4O/xTnuBjwN4O7Yp
jE5bGBp4MjBGT3EYxa5wJoVuAHXJ5VNchIEhURVx2zsfLI/HOZQr+nP0arvmXVjx
0fhpct3dmcR4ZqSzJv3r5UYRaQRcBl+U1DX3tJcR4FbKPQYadcqWslmHHKl6PO2P
IVQ9qp4nxvpX5K+dgI9pis0Y0yXR/OJYC3/vTaYsGj8eqZvmvNWK6WMd8iAM0c8r
MI2sUNCw/KTTLurJAJwCmdSNgtDlOlvmAMgNdVDD4b6SRH+ZFUeLW/y2uveNI5Xg
snsSwjAN1ES/HjkCUNP47n7uxHA0pMbvBucn6pXPfW4h0y/RFU+m2Wt591uvk89T
TSIGgTAEdr3AVt9f11FEK32TaKnYpmrw39hvanEkQIK9HDXm/so=
=eKi/
-----END PGP SIGNATURE-----

--2omcdoybwd6j5aun--

