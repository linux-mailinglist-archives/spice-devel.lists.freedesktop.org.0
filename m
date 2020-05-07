Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F328B1C8759
	for <lists+spice-devel@lfdr.de>; Thu,  7 May 2020 12:54:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B256E0DE;
	Thu,  7 May 2020 10:54:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32A8B6E0DE
 for <spice-devel@lists.freedesktop.org>; Thu,  7 May 2020 10:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588848889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wn/P6mQpKx5d6JLpPs0v5+vBmStLP5VSgjDT/8JafAg=;
 b=P/epCFxiOKucBfuSQ1/JziwVfa6+7l8Gf9JuLCMuGU0ABG2SIwOvbcs7gj4HdKIIW17Rmx
 yY8ry+uCNiGu+u92rmxWeSoo0z6Zfu8A9A3czFNQHwGJRBYRR0oC+iqfobiujB1TdnQJrz
 q6vxdYEDZzHq06c7yIBqXDfIB9slrZ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-0PVi6dB3MRyUmoL3Y8NhwA-1; Thu, 07 May 2020 06:54:46 -0400
X-MC-Unique: 0PVi6dB3MRyUmoL3Y8NhwA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7DA9872FE1;
 Thu,  7 May 2020 10:54:45 +0000 (UTC)
Received: from localhost (ovpn-115-68.ams2.redhat.com [10.36.115.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 796AD64456;
 Thu,  7 May 2020 10:54:45 +0000 (UTC)
Date: Thu, 7 May 2020 12:54:44 +0200
From: Victor Toso <victortoso@redhat.com>
To: ucontacti ss <ucontacti2012@gmail.com>
Message-ID: <20200507105444.ot2nlyxlsru4ljhm@wingsuit>
References: <CAORX2YfB5x-jart4tqEPHM1wdWF26FqCTvsT73usudkb88Ocvw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAORX2YfB5x-jart4tqEPHM1wdWF26FqCTvsT73usudkb88Ocvw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Spice Seamless Migration Sequence
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
Content-Type: multipart/mixed; boundary="===============2060703284=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2060703284==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wlaibvzjcxtbgqwd"
Content-Disposition: inline

--wlaibvzjcxtbgqwd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 07, 2020 at 12:17:57PM +0200, ucontacti ss wrote:
> Dear Developers,
>=20
> I am trying to reproduce the seamless migration capability of the Spice
> Protocol. But I get this error from Inputs and Display Channel when I tri=
ed
> to send back the migration data (server closes those sockets).
> "
> 2020-05-07T10:09:48.746002Z qemu-system-x86_64: warning: Spice: inputs:0
> (0x558ddee468a0): unexpected
> 2020-05-07T10:09:48.853621Z qemu-system-x86_64: warning: Spice: display:0
> (0x558ddee45940): unexpected
> "
> Is there any prerequisite before sending migration data to the new server=
?
> Thank in advance.

Can you share the qemu command line from source and target host
to see if something might be lacking there? How are you
triggering the migration? What version of qemu + spice-server are
you running?

Cheers,
Victor

--wlaibvzjcxtbgqwd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl6z6PQACgkQl9kSPeN6
SE+l5g/+JDyAf0/ipqBUuc0VAvBSb2NZ+IKKwkNFArpjgAHlbX1vIExOzTQx9FOl
VD8Op0XHIQ0xgs6vXc4w8naTD/wkhFISlnHMb7sTHoaczSzfM54HCWsdL47LAyqu
osOSLbBTiK99myYz6uaVFCIZ8Z1C1i325pjFqPA2sVhvYCOxnWerivn/ArPTM6b1
uR0bVXWCm/3BlsuejqpGjueiYHMAG6XeFSxPcnjEKFX8wtOfqspNzoJ06kAjN7q9
fFjzzg2J7Soag1gPhEgglQRiXjD8hNU0pEt1ZJoyOrpT2XM6x2vmBxtRKbboopDB
eZ+Dn+h8s3tr/5rx7Bsxpy7bYu9wxyOH7RILxbZaKXo8Pm6IIUCybtnXow4i3daN
SP6VX1u2coZs+npLn4jrNQGjEsVD8Hiip8Vm03dUUgkyKj4Jo1Q0RNJrE+StPCHz
eP4cUG16Tk9/zO1+6+vHhW944q/g9c8Mk7KfrjRJDFMyN6g8HStnIl5sHA/tXT2l
3PdU38egu5ZkMNgxa2AQI6byUChZNsz6Uag6nSCEaI17MtabT1TOKAQhlsTU+OUM
tPGnkwtMxPenARLJ1bNxQfRc2IdGpL8F5gWLASEmYs9kvxy1OOfcNSjjucFhT30e
AgpL2kMj6cromLPfChOiEsmG/C+ZXI0pHZFaPSoF6nRrEOnKLIE=
=Q/RU
-----END PGP SIGNATURE-----

--wlaibvzjcxtbgqwd--


--===============2060703284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2060703284==--

