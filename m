Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162505F3F04
	for <lists+spice-devel@lfdr.de>; Tue,  4 Oct 2022 10:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DC9010E344;
	Tue,  4 Oct 2022 08:59:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D73D10E40F
 for <spice-devel@lists.freedesktop.org>; Tue,  4 Oct 2022 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1664873992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wdaPIeyctlAcPob4ykYvHl49jAiIKMfgyJIKOoYatiQ=;
 b=TkP2XkyKmgaETPkDxyRJLaBZV/49oU6lE8aVLeI8Cf1DXlSZisJqLES91PybxXjoRbtAJW
 RS/WCklqbd9YioE9mxY4hCmx9xvJwcbrs5finPcYcb4vQmjvXDhox+PbWEPGVjK+cpgxNH
 OhjRv6Ik/OTJnauYKR1dHBO8Xo9MCP4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-248-dNFqFRDiMPKYfUEfBsuqdg-1; Tue, 04 Oct 2022 04:59:50 -0400
X-MC-Unique: dNFqFRDiMPKYfUEfBsuqdg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 45997100DEB5;
 Tue,  4 Oct 2022 08:59:50 +0000 (UTC)
Received: from localhost (unknown [10.40.194.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D5678C15BA4;
 Tue,  4 Oct 2022 08:59:49 +0000 (UTC)
Date: Tue, 4 Oct 2022 10:59:48 +0200
From: Victor Toso <victortoso@redhat.com>
To: "Yury A. Produnov" <YAProdunov@greenatom.ru>
Message-ID: <20221004085948.y3m2kvq3m27if7q7@tapioca>
References: <9d1283403bde42b39b6db664a9dee1fd@Greenatom.ru>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="bnbko5nnc7ojqhg6"
Content-Disposition: inline
In-Reply-To: <9d1283403bde42b39b6db664a9dee1fd@Greenatom.ru>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
Subject: Re: [Spice-devel] spice webdav proxy
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


--bnbko5nnc7ojqhg6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Sep 30, 2022 at 11:38:12AM +0000, Yury A. Produnov wrote:
> Hello.
> I installed spice-webdavd-latest inside the guest.
> Everything works and the drive connects with the letter Z:/
> But I need to change the letter to W:/
> If I use the map-drive.bat script I get two identical drives with different letters.
> Please help me to configure it.
>
> Best regards,
> Yuriy Produnov

If I recall correctly [0], the latest spice-webdavd should map to the
next letter available (since v2.1).

Looking briefly at `REG ADD` [1] of map-drive.bat, not sure what
is the correct argument to chose a target driver name, if
possible... I think you would need another command to map "Spice
client" to a "W:/".

[0] https://gitlab.gnome.org/GNOME/phodav/-/commit/13151735cb97bc4e95deb72597c1024d139504e3
[1] https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/reg-add

Cheers,
Victor

--bnbko5nnc7ojqhg6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmM79gMACgkQl9kSPeN6
SE8nAg//bVauC1KI4seNJgZi/CzGqIXSjj/1zFdql0LjcCXqS4U/SF7xKiFJhHAh
JfzQPs50gR2zUoXeE8GrYkJLACKn19X0yQfibeTceOo+GXCvpg1rp6BO6+uOCywa
ovmedfhlAb17npzZPwk8uLXsQIqInlt+7QtlSq3x9xvEVDxZhi7geE+KG9MgWN4E
XZgKUEg7LVjrHT6sRtUAvlkaZ2bzSZj6QOgbIao8cPJ6FGJK1GgSKQ+vjR/3cKYH
cGcBi3/yfOZ3CZKD0vEo33i0OxeaKRtpRJul9ATKR1yPCKon9OeWtDeisvAzSK6m
agOl3avbE4sdYwJUfyel5BJTxlWxebJVqHLYwv11WExwmLzaitd3wEM7MJ10DBIf
+8jdQNYQYoBoNDqoGaaLvWv+/3sjy0Dmpze61HEmudTV2TMCr7w6LvEwsQIV7hyg
RGBT0Q1jVok8TVdXcHyRwAid7hVzjC7OiLv53GXHdRbauY+Dx5ppTabtgHEMJiDX
qgutznewQevX02t1a/hqyWRC+00Jo70RcEVskdqYj97Eptqau1QqZwSBNaY3drlg
ZLVovh9lkP6UxEzT+AtAtrDwciLsz9sn0HF0Qlk6roJHqptGmuEzsDfeU/Dwomnp
yPnRVxRbT2sXn3GWVYYkBVVpZ1wInEapYLmRxND22svf8ZU17BM=
=k+UC
-----END PGP SIGNATURE-----

--bnbko5nnc7ojqhg6--

