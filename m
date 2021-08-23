Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2553F4D91
	for <lists+spice-devel@lfdr.de>; Mon, 23 Aug 2021 17:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BA989AC6;
	Mon, 23 Aug 2021 15:34:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC75589AC6
 for <spice-devel@lists.freedesktop.org>; Mon, 23 Aug 2021 15:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629732877;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=oBGrMu9pgNxyRdMM6CE9sqXb/V/DJUuNZstVRo8AEgg=;
 b=HgzGfp5KEPYDNAUYbwv7xcKAtRSf06CWNBnp6Dw1phZsqp5tpXEEgoD8+V5cZwV7nBr1/G
 Alfw9Y48nk8KM2KrZ7amlphsxty2fnOpoKqxizHdXx0juY8IWyxN/31batiuDVBoyf63Jn
 bjLb/6dHpoULF76qEj565rGFMpCLJEU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-529-HXh9wHeNPICKVPRuWMBArg-1; Mon, 23 Aug 2021 11:34:35 -0400
X-MC-Unique: HXh9wHeNPICKVPRuWMBArg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 733B33E743;
 Mon, 23 Aug 2021 15:34:34 +0000 (UTC)
Received: from localhost (unknown [10.40.194.98])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F2FA45D9D3;
 Mon, 23 Aug 2021 15:34:33 +0000 (UTC)
Date: Mon, 23 Aug 2021 17:34:32 +0200
From: Victor Toso <victortoso@redhat.com>
To: ole-krutov@yandex.ru
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Message-ID: <20210823153432.3nuxkasg7tr5zz23@tapioca>
References: <260041629725350@mail.yandex.ru>
MIME-Version: 1.0
In-Reply-To: <260041629725350@mail.yandex.ru>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="hjpdqiyfv6xysyas"
Content-Disposition: inline
Subject: Re: [Spice-devel] No mouse with nvidia driver (spice-vdagent not
 working)
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--hjpdqiyfv6xysyas
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Aug 23, 2021 at 05:14:00PM +0300, ole-krutov@yandex.ru wrote:
> - nvidia vGPU with proprietary driver is the only video
> adapter.

This is a know issue. NVIDIA driver does not provide a guest
cursor. You can probably verify it with VNC too.

The proper fix is to NVIDIA implement this feature, otherwise all
we have is workarounds.

You can try running a spice-gtk based client like remote-viewer
with SPICE_DEBUG_CURSOR=1 as that might give you something
rendered in the client side.

You could also try to set "HWCursor" "off" in the xorg
configuration file.

> - spice-vdagent v.0.20 and qemu-guest-agent are installed.

You should try v0.21 as I recall people were doing work around
testing NVDIA and Wayland based systems, although I can't
pinpoint something that would fix the logs I see.

Cheers,
Victor

--hjpdqiyfv6xysyas
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmEjwAgACgkQl9kSPeN6
SE8SXg//XDiQsCc/WxjZ28E3i/AAJz9TYnbgxxEv7D/eW9txKCaPBOBY7P7KXDYX
y0r+TymAc+HaQXVWFFXqyLXKjCSUofguuQj+e8he3eqWIMRByEISVYXOKcUtiwR7
Jk76sQWl6NNxhmivGUBlMGUw/KKUbgkIOYbWydgyDvjMZdEldPpO6JoU+NNMDFnf
ngR8IUeGQ7gl0G/ETAV0qqB8WRNvqZv84KTLiFasBd3hb+Hw1zmIXFg3MHqZEu1f
W6+duAzcrNNv49Cn6RGNmUSuNS5cKlN7u1rnnlXY5kFnc1u55yImTTmdCOdr2/uW
T835+X/HunZ/6GUNHAaAdoySCVC+xebWS8lmucVRwn30foFcXfrRt0VxZ5lW/Gfb
OukS1mEQUOJHXKD52zrd500SSzFgpyhCM0Lgq4j5XfAxFBSDRZkEhrNwDVNmilmK
ITJD/mafXQKPjkh7myQnMchkmGBONOwckSmXOtInrMuWVg0xOIUEt1bfrT39LG5t
JWDEoZ687AS9cACLggxgVGwsERfoVFz9GgjTHtwaFeEB+HL2Fm6bNdHunIcP1N6j
FWMz895naXSjB7CglQtj3GtneZil+hHA6MZKLmzYGAbUNe4sRbpUI6u7DFPrj/iJ
eLfPjiso6srMw81+qFxUjywScS/h9HCFTR9NG1MfVDrOvarZFjQ=
=eix+
-----END PGP SIGNATURE-----

--hjpdqiyfv6xysyas--

