Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 911FF8D14D8
	for <lists+spice-devel@lfdr.de>; Tue, 28 May 2024 09:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D16EA10FCBF;
	Tue, 28 May 2024 07:01:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="iCUzbn8A";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0EF010FCBF
 for <spice-devel@lists.freedesktop.org>; Tue, 28 May 2024 07:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1716879689;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=v1idrJdahzB7gCfi9KtbEggulYrII69Zpjvoc+DnvCQ=;
 b=iCUzbn8AekfCAvIPN7xp5b1AueIH4qX3ka4iGyNjfWiF3XkR3aTvLxaF6rXAtBQhaQW7sf
 fc/KYr1YrrjmWk8CCgHMygrOmvwO0IUdewH3ZqLVSgBW9NkAHJIAzfishmwDG71XTAA6b/
 TnioFRGRCwXpMLC1rNbA6+hHynz/vkA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-44-VxZfooNnN86lfx_4R6X4Xg-1; Tue, 28 May 2024 03:01:24 -0400
X-MC-Unique: VxZfooNnN86lfx_4R6X4Xg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A7D50800169;
 Tue, 28 May 2024 07:01:24 +0000 (UTC)
Received: from localhost (unknown [10.45.225.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 12AB12026D68;
 Tue, 28 May 2024 07:01:23 +0000 (UTC)
Date: Tue, 28 May 2024 09:01:22 +0200
From: Victor Toso <victortoso@redhat.com>
To: ToddAndMargo <ToddAndMargo@zoho.com>
Cc: Spice Devel <spice-devel@lists.freedesktop.org>
Subject: Re: vdagent drag and drop question
Message-ID: <geqsewyaswk233fgk4chhibmftm3h457kej6c7g6v35e3umy2a@2ynwa4tsi5nm>
References: <e8572889-db80-43c3-aae2-40c2866c5201@zoho.com>
 <crqqaup72f7wwuig3w5rhjgwqdvwekkiy7mfkk3oyck4dimlq6@blcegm2qm4d2>
 <be5bc126-84c1-4223-9c5f-f35512f847e3@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="djalnfyfiqfmtn76"
Content-Disposition: inline
In-Reply-To: <be5bc126-84c1-4223-9c5f-f35512f847e3@zoho.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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


--djalnfyfiqfmtn76
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 27, 2024 at 12:22:54PM GMT, ToddAndMargo wrote:
> On 5/27/24 08:07, Victor Toso wrote:
> > On Wed, May 22, 2024 at 12:58:41AM GMT, ToddAndMargo wrote:
> > > Hi All,
> > >=20
> > > Host:
> > >     Fedora 39
> > >     spice-server-0.15.1-3.fc39.x86_64
> > >     spice-glib-0.42-3.fc39.x86_64
> > >     spice-gtk3-0.42-3.fc39.x86_64
> > >     spice-vdagent-0.22.1-6.fc39.x86_64
> > >     qemu-kvm-8.1.3-5.fc39.x86_64
> > >=20
> > > VM:
> > >     Windows 11 23H2
> > >     Virtio-win-driver-installer 0.1.240
> > >     Virtio-win-guest-tools  0.1.240
> > >=20
> > > I can drag and drop a file from my Linux host to a
> > > qemu-kvm Windows 11 virtual machine but I can not
> > > do it in reverse
> > >=20
> > > What am I doing wrong?
> >=20
> >  From Guest to Client, drag-and-drop does not work.
> >  From Client to Guest, it should. The data of the file is copied
> > by the client (e.g: spice-gtk) and provided to the guest agent
> > which creates the file with the contents.
>=20
> That explains it.  Thank you.
>=20
> Is there a file sharing option somewhere (other
> that Samba)?

In SPICE? We have also webdav channel, it requires spice-webdavd
daemon running in the guest plus the client being build with
phodav option enabled.

Other than that, it depends on what you are using to manage the
VM. QEMU has quite a few options, the most popular nowadays is
virtiofs I think

    https://libvirt.org/kbase/virtiofs.html

Cheers,
Victor

--djalnfyfiqfmtn76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmZVgUIACgkQl9kSPeN6
SE8kKw//ek635jvTsQe/mSvYECpMJN8NC9cwCL4/4jccfbs8/naipTQkFNw9nv7R
fv1xo/Waxm+uUlq6g+by2HUujOwIFhLlwgqqfH+hoGCPhJWLm4hloS2+eDg1b1vx
rl1Hqy5wUdcvRJiORd3fmbDemZvJRvglr4QDuqtYE8PwhLfyxf1tupCZmyuLA7qL
Y8URGdcHelZPk42uNLonjraily7GATYJDwdN5cRYwGTIsSbS+tO+vRXjMez2mWye
D4iLQvyenW+mYMDKJKkBX3qYxIOnog0HLh+P4ZRa5PnbUqKW7uQ3XnQXj0FTCdiF
DusRuXrnj4GBREXj9B09M5HcFXCQbR2Cl8vgZFx2tpTo/8+VlYuxNZEsx2pCuW+P
1HCsdH9mxi8R1knZa2hjEweQvNowdmxfhfoq4bduGLLlaQLFoDton3ttuVg2IAoJ
G0NdzdB46fq9ENTec2rcfQCQU5+Nur1OHG8glQzC1EkhJDUbPMOFb03yce8h1i6E
a1U4rloc/VW3pG/2pXfw5ObpKcbq9UxL/pXlTkReI03+lnrHVAbKA4hjeubUGUCB
tNyeq++Rsos/KQBHIm2AEQwMcQwqP7A0O+7WGysHJCJzl/g3qaaadAh+Eb+GQKp5
wCMLLJ2LtIM8kwU2q0TPDCKjfnNOJBOv1IPXPRQeCfIjC343ABM=
=a3JE
-----END PGP SIGNATURE-----

--djalnfyfiqfmtn76--

