Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 917972FD052
	for <lists+spice-devel@lfdr.de>; Wed, 20 Jan 2021 13:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF0C6E094;
	Wed, 20 Jan 2021 12:58:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812B56E094
 for <spice-devel@lists.freedesktop.org>; Wed, 20 Jan 2021 12:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611147494;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UEU+pxaTnhiSgPPuDOG7/f4SHTqNikRaocnTfbQEJA8=;
 b=Nt98O45mnV0xNs2CyB6m836tb/aYz2ds6CN9H16ySrJk7P7dNWNB9QW9YfWClWWioQSRD9
 HmxUOxDNn8TtMPn2XIzospSsWaTPy69m6tTwLIo0QnWwgSmsFFkoACCUao0/jQz0JzHMG8
 xu/hini232/mFiufd0Jcj6T+D0JzuxI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-444-ldjYciTaMxKFfIhpGUkcJg-1; Wed, 20 Jan 2021 07:58:12 -0500
X-MC-Unique: ldjYciTaMxKFfIhpGUkcJg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 324438143EB;
 Wed, 20 Jan 2021 12:58:11 +0000 (UTC)
Received: from localhost (unknown [10.40.192.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AAE365C8A7;
 Wed, 20 Jan 2021 12:58:10 +0000 (UTC)
Date: Wed, 20 Jan 2021 13:58:09 +0100
From: Victor Toso <victortoso@redhat.com>
To: lx <lxlenovostar@gmail.com>
Message-ID: <20210120125809.woguc4hyuhprfank@wingsuit>
References: <CA+5jrfmzOEm6Ue4-tROG6_peoAWvuG0hFD4wD=7me+n4Y1Uigw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+5jrfmzOEm6Ue4-tROG6_peoAWvuG0hFD4wD=7me+n4Y1Uigw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=victortoso@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [spice-devel]Clipboard can't work
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
Content-Type: multipart/mixed; boundary="===============1015883545=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1015883545==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6zaammxlntmcjlbx"
Content-Disposition: inline

--6zaammxlntmcjlbx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 20, 2021 at 10:24:29AM +0800, lx wrote:
> Hi all:
>     I  test SPICE. I use Remote viewer on Windows10. And I install
> qemu-kvm/libvirt on Centos7, which run Windows10 in a virtual machine. I
> find I can't
> use Clipboard between my local Windows10 and Windows10 which in a virtual
> machine.   I'm a newbie in SPICE, How to debug this problem? Which log I
> should
> read?
>      Thank you
>=20
>=20
> Additionally info:
> libvirt-5.2.0, qemu-3.1.0, spice-0.14.0, spice-protocol-0.12.15,
> usbredir-0.8.0,spice-guest-tools-latest.exe

Can you confirm that you have installed
spice-guest-tools-latest.exe in your Windows10 Virtual Machine?

Configuration wise, it should work with defaults considering that
you are have installed the spice guest agent.

> virtual Machine Viewer 9.0-256

could you trying running remote-viewer.exe from the cmd with
--spice-debug? (you might need to set environment variable
G_MESSAGES_DEBUG to all)

Cheers,
Victor

--6zaammxlntmcjlbx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmAIKOEACgkQl9kSPeN6
SE/oyA/+KCvXxu+5Q+eQLEugil3D3qsOYQXZn2NniyV4CUWRoKxfV+9bOhhYVLwH
2lgBYNGre4aUkQkzrTNX0eavSisuOeRgPPWanT4OF52eeBVTzK6FGUedi44osR1Z
D1FNoRLeOYHDXetv6s1M47pzIQmzaUpRdRQHsrqlL6NUmcef9LjWiOzk596FK32H
CC2I43tJMlNnz1QaDGXeOddQtoRQeeDPLDDCaAvy3frjNNNkiS1NwTTSc4Pkb+Ji
Z1c6BR34lJKfawvOuyYACunQJd+Nvf8QBb4679srVO+iS5YtKxr0hx55buTVF1KN
MgLpbnmpmJVwji0mf5/EJqCYFki2urap42+3aJ3drlZ49U5lt2ev8uXGd5DIMG4L
ARZNvLfJlHbfhn8UNZ9LKjYxxTtk6eNB2RNArN5yFTnMPiDIbVXJgQvQf+nJbi8A
WdgykOEfbCBPRpSCwGT1mFG5p5Xgystl3Saz8jxuZXse0ke9tHY7OlBJi9cYqVzT
ZXB/+S9LbEezMEHuunLmyVaKtMI0npGb43sVX9BJKKNvJTaDjHjWxpGdZUXil8dc
6WlRdCNRHMgkgMzvOtmzmJjwoc653zlieAfYkP6uXJsw+qc3+ejQdYESK6zaXzlG
PO15h0g7u6o9p80j0MRrYWvzoBK9XHq1tq9dGFLwAg+hBQlmeQY=
=pKCX
-----END PGP SIGNATURE-----

--6zaammxlntmcjlbx--


--===============1015883545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1015883545==--

