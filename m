Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4996B6A685A
	for <lists+spice-devel@lfdr.de>; Wed,  1 Mar 2023 08:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7D7D10E1CC;
	Wed,  1 Mar 2023 07:44:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5485010E1CC
 for <spice-devel@lists.freedesktop.org>; Wed,  1 Mar 2023 07:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1677656641;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Gpxt3nog3qKRMNUHKiNjpF0Et2DoC7iPt+dGrnehof8=;
 b=TM+61WPUzISED6uE0tMQNbBzhWdzT+6VLO53kR6lPeK+hjQaTChkCZhU0uNxmjzSCdu+F2
 aty3PmmBD5OW90Q5b568tkFB+hPXWx+d7VGYaxlHaoQE7AEln5ozqsG7gsB13FCWNcVhHp
 dDb4T9YzYHPvPMerjq7nJUutxWTv69M=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-320-H3GVWNuMMp-Qvl7uys_x0w-1; Wed, 01 Mar 2023 02:43:59 -0500
X-MC-Unique: H3GVWNuMMp-Qvl7uys_x0w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3E2B41C08782;
 Wed,  1 Mar 2023 07:43:59 +0000 (UTC)
Received: from localhost (unknown [10.45.225.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC05C492C3E;
 Wed,  1 Mar 2023 07:43:58 +0000 (UTC)
Date: Wed, 1 Mar 2023 08:43:57 +0100
From: Victor Toso <victortoso@redhat.com>
To: kap tam <kaptam90@gmail.com>
Message-ID: <20230301073813.jljvma3rbiqtb7kz@tapioca>
References: <CA+vXRVhOirGb_f64YekJPWJNrYEHaEqPVVYzJwgHvJut4aPryw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="di3apm54nd6dga75"
Content-Disposition: inline
In-Reply-To: <CA+vXRVhOirGb_f64YekJPWJNrYEHaEqPVVYzJwgHvJut4aPryw@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
Subject: Re: [Spice-devel] Compiling SPICE in /usr/local
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


--di3apm54nd6dga75
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Feb 27, 2023 at 10:28:27PM +0200, kap tam wrote:
> Hello, I've tried getting this to work for about a day but I can not get
> past spice ./configure step assuming spice-protocol header files are
> installed in /usr/local/include/spice-1/spice. I tried setting the
> SPICE_PROTOCOL_CFLAGS
> to "-I/usr/local/include/spice-1/spice -I/usr/local/include/spice-1
> -I/usr/local/include" (capital I not lowercase L by the way). although I
> think the 2nd and 3rd should work, I'm desperate so I tried everything.
> Could I get some help please?

Have you tried setting PKG_CONFIG_PATH to have the pkgconfig
folder in /usr/local ?

Something like
    export PKG_CONFIG_PATH=/usr/local/pkgconfig:$PKG_CONFIG_PATH
    ./configure

Cheers,
Victor

--di3apm54nd6dga75
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmP/Aj0ACgkQl9kSPeN6
SE94gw/6A8pN7YOZT+QK/0kmyD0k2IQzrzeJvumIqtmHUdX3+6ap6DyNxR5uaYXP
f9/z8vfSfnZsPKHgkIE35aHPbL6QWGXK8r5eqG0afH+ibzEbaOhUCXMYpnALN8gs
5jOvpENGPcy5LO9FTLH0eN2v0s1DnPAQrdoNLJG8WLV6flz9Sv24WmavXXbwg0ra
0OpSQh2QYIykGhzsDB1Bs6IQUoUUULVhZyIRa++OKM697c/1XlfwhSICguJvP9zV
/t7wdhoTctV9ZJJsoT/b86RfRT3+y9Wx8Or8wAMWiaY9yljP/0cCK2iyhjXCsdc9
uKHH0Hyp1WQ4SkHSaL1SybOItl8HBFxHIXeeZEjO0BYIspUhyTM5HhF0Nbxs3aIb
GGkNlSdyDOfTCyCTEApmlycMuPzcR0SKT56KTj6bhtNsP7wDxy494c6g2Bnw8esp
RleuqVzA9MswhrHAOQBGxo39SEuJSxUQ4xt3dwZBcROTH6ULPg5ftVjgY7y8o4ag
QoUShR14eoyxlaZ8ggZZj/Fn/kvB2XxofjD1uNLVplbUpXy01bCVKQmHEF6H+lEc
38kdFJhucUQ0cpGfZdxjN1MEHtTLMAxoh3c62vFGxXDtQrSUfw5Up6pnBQvttk1R
VY9QCg3/zQNp5NbDdbWMuzuSoZSq1Sq0ImOO+P6PKqwxPUea43E=
=Az4t
-----END PGP SIGNATURE-----

--di3apm54nd6dga75--

