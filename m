Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7309662B503
	for <lists+spice-devel@lfdr.de>; Wed, 16 Nov 2022 09:21:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8EE510E438;
	Wed, 16 Nov 2022 08:21:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CC410E435
 for <spice-devel@lists.freedesktop.org>; Wed, 16 Nov 2022 08:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668586866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/RENGkj2EMmgHktxNG8qUaiTKKW3dVi4VcDonvs0UAE=;
 b=dI27JxrHB7rP27M1j0mpPenOxjkws15ysxPdvPtskgocJe9QGkC6grSqCwOpikMsznoZpg
 r7g3RPjtdvfOsyiUKuCzvn7i+62h0XlzWU0uL2eSxSSUmAXxRgNDPe0AqBG+zlwLckgc2j
 WhGAcmQkdtQFvUNwucIoZgVF3JFgQiI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-25-4X66zV7SNeuu_uKJDT_FCw-1; Wed, 16 Nov 2022 03:21:04 -0500
X-MC-Unique: 4X66zV7SNeuu_uKJDT_FCw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E50FE3C0F246;
 Wed, 16 Nov 2022 08:21:03 +0000 (UTC)
Received: from localhost (ovpn-192-9.brq.redhat.com [10.40.192.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 86AFB40C83DA;
 Wed, 16 Nov 2022 08:21:03 +0000 (UTC)
Date: Wed, 16 Nov 2022 09:21:02 +0100
From: Victor Toso <victortoso@redhat.com>
To: Stefan Silberstein <linuxstony@gmail.com>
Message-ID: <20221116082102.uasas3k4whcjcbqv@tapioca>
References: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="pwu6opvce7cbqgfg"
Content-Disposition: inline
In-Reply-To: <CADiWsK9fxPnCdAYUek0nkWgY476-svZ78d=Pqm_RQoV4FfCSKA@mail.gmail.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
Subject: Re: [Spice-devel] Userquestion - remote-viewer connection fails
 with "Connection type could not be determined by URI"
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


--pwu6opvce7cbqgfg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On Tue, Nov 15, 2022 at 09:53:05PM +0100, Stefan Silberstein wrote:
> Hello developers,
>
> I can imagine that this will be an annoying question for you -
> so I apologize in advance.
>
> I am a user - with a longer history with linux BUT i am
> completely new to virtualization.
> Due to the fact that I got a server donated to me I wanted to
> give it a go and it worked like a charm.
>
> Installed virt-manager, installed Windows10  connected with
> virt-manager - absolutely no problem.
>
> Due to the fact that I need dual monitors I learned that I
> could add another display and connect with spice - and it
> worked immediately.
>
> BUT - without me changing anything (consciously) I wasn't able
> to connect to the virtual machine the next week.
>
> It refuses with "Verbindungstyp konnte nicht von URI ermittelt werden"
> (Connection type could not be determined by URI)
>
> Then i tried to connect with sudo and specifying the user in
> the command line and it once again connected:
>
> sudo remote-viewer  spice:=E2=81=84=E2=81=84server@192.168.178.51:5900

Perhaps the URL is the problem. If the IP is 192.168.178.51 and
the port for the VM is 5900, then try

    remote-viewer spice://192.168.178.51:5900

If server is a dns that can be resolved, should be fine to use it
instead of ip address

    remote-viewer spice://server:5900


> And now - again without changing anything - it doesn't connect
> with that command as well.
>
> I have sadly NO clue whatsoever where to even search for a
> solution - the internet didn't help me here...
>
> Do you have any hint at all what I might do wrong here?
>
> The machine is available - the port is open and visible
> PORT     STATE SERVICE
> 22/tcp   open  ssh
> 80/tcp   open  http
> 3389/tcp open  ms-wbt-server
> 5900/tcp open  vnc
>
> ufw on the server is shut down.
>
> ANY help would be greatly appreciated.

You can get more verbose information of issues with --spice-debug
command line option too.

Cheers,
Victor

--pwu6opvce7cbqgfg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmN0nW4ACgkQl9kSPeN6
SE+PwhAAlokihvwX/VX96JYH2XlswZ4+tM/H0MfW6ehEfnXoiM6WVHJPBRP0gZwz
+JA3Z9OmmoSM7eB0VSPbdnbdKGqh2ZI8Q33izox2itD0urLvqTprbdppMKtgbs5a
ICcXwzbnN5w+VWg04KnCZMCFG45XOEHY+8pXkg86Da8rPONJyuxUdO3GFJziPbYi
EU6+9m99z623+y67bmSsOos54gvg/L8O1Ym5MmpeUMeaZDXJSdELkWZECaOGYXsI
e0sJKHrnUaTVbngDb+Iq1gq8ASkgFl+bUIilZ+Ow8Y8GS1sRcbPo68YTgMNrAVyU
ZampFRlLqDa4beIe72LhgoJfSiiTleAFtr5r2Y2CfHRnMeZ7q8i6kmqzgUDbIOuo
OQNRV4yEgEOrmVhFP/c0scBTeW6PddNFhcHm7pj8b9ikRxeDONo0s/NZWOqSF8n9
+FNXspGM/UaTittdKzCX4LK85g/AI/fLbArQdYKjaSvaq4TFkJXbDuFAF3L+nbdH
Ov0bS+Fdgfs69IjSqHQh5/tGQX7VCUH6SXX4arJFKwvrr/DjyDcfaXyDsQNUoc1o
IDSDhdt++YwBuBoEcJFF0igKXPgJWFKLb4WivWWdimAROlWKYEu+YpbjF8gYonSm
2pMcr0oLhUK98JpZsphYsNYqVIBiNlMhlhykMH2w+zYMs7SPlW8=
=l5r8
-----END PGP SIGNATURE-----

--pwu6opvce7cbqgfg--

