Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C038C21B3
	for <lists+spice-devel@lfdr.de>; Fri, 10 May 2024 12:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB6710E2FB;
	Fri, 10 May 2024 10:09:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Ppggpsmm";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7BE10E2FB
 for <spice-devel@lists.freedesktop.org>; Fri, 10 May 2024 10:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1715335780;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4er4NaFTsxIIDyV8CejKnU1gZGSKp5ptFZw19jUd7fY=;
 b=Ppggpsmm1yG4CGyT93mmVDox4us+VBhmaewK3hmgNanq40vtc4l9V9n25myXWyMBLb/QRS
 4t12C76ioWKoYADOPGEwxzy12zDbPCVProSHIFNd9/zUVK0HM+RPW8wOxO5uxDGWnU8bRs
 rSTUwa81JUDYeRzJrYo9XSCgw1drXhA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-629--Hj4RcPGOZ-10LjeRNnc0g-1; Fri, 10 May 2024 06:09:36 -0400
X-MC-Unique: -Hj4RcPGOZ-10LjeRNnc0g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E32B185A78E;
 Fri, 10 May 2024 10:09:36 +0000 (UTC)
Received: from localhost (unknown [10.45.225.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9F29310B3059;
 Fri, 10 May 2024 10:09:35 +0000 (UTC)
Date: Fri, 10 May 2024 12:09:34 +0200
From: Victor Toso <victortoso@redhat.com>
To: Dorothy Calhoon <rdservants@att.net>
Cc: spice-devel@lists.freedesktop.org
Subject: Re: Audio through spice
Message-ID: <zifbl3lshkwq2zluyekp2h5qzchcdeaxpf7rwwczwgngpojjbp@aqqntccgf7q2>
References: <6B9928C0-3CC8-4F38-8A5D-234142717682.ref@att.net>
 <6B9928C0-3CC8-4F38-8A5D-234142717682@att.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="dbude457jgphjspe"
Content-Disposition: inline
In-Reply-To: <6B9928C0-3CC8-4F38-8A5D-234142717682@att.net>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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


--dbude457jgphjspe
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Dorothy,

On Sat, Apr 27, 2024 at 12:57:49PM GMT, Dorothy Calhoon wrote:
> Hi!
>=20
> I use spice to redirect the usb ports from my POPos host to my
> Mac Catalina operating system in my QEMU virtual machine which
> was set up using quickemu and now is accessed via quickgui.
> Spice works fine for redirecting the keyboard, mouse, wifi and
> printer. Now I need it for audio.

SPICE supports playback and record audio channels. Playback is
audio coming from the Guest to your Client and Record is client's
microphone to redirect to the guest.

If you already uses usbredir channel, chances are that your spice
client already supports playback/record too. Which spice client
are you using?

> I know that audio has been a problem in virtual machines with
> Mac operating systems later than Catalina, but it is supposed
> to work in Catalina.=20

If you are using spice-gtk, the audio backend should be gstreamer
and the right plugins need to be installed

> I have a small speaker that plugs into the guest via a usb port
> but it is not recognized. I also tried headphones in the audio
> out ports and still Preferences show nothing for sound and
> there is none.
>=20
> I understand that spice can allow the audio sound card from the
> host to pass through to the guest. How do I implement that
> feature? Somewhere I read that inputting the following into the
> host terminal would do it: QEMU_AUDIO_DRV=3D spice. However,
> terminal did nothing and just wanted more instructions. The
> directions I had found said that after this command you could
> then use -soundhw hda options. However, terminal does not
> recognize soundhw and I wasn=E2=80=99t sure exactly what the =E2=80=9Copt=
ions"
> were.
>=20
> I also tried -audiodev spice,id=3Did[,prop[=3Dvalue][,=E2=80=A6.]] and the
> terminal said that the audiodev command was not found.

I'm not familiar with quickemu nor quickgui, but again, if you
are already using some spice channels, I'd guess the problem is
on the client-side.
=20
> It appears that there are just a couple of commands that would
> allow the audio passthrough feature of spice to work, but I
> don=E2=80=99t know exactly what they are. I am new to using terminal so
> I need very precise instructions. I would appreciate your help
> in this.=20
>=20
> Thanking you in advance.
>=20
> Dorothy

Cheers,
Victor

--dbude457jgphjspe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmY98l4ACgkQl9kSPeN6
SE+dBQ//XDRLw1FtrjTaPeY1Zn94obbyIOPkvVbWpgZwaqlHrCi8WgN96SHtXHT1
AAooTjHadHmj9EZ2yRyStMS/P3MZbF8iAE45ZFoJ31r3XxPNn5WnQ/gHWCLFXYE+
IHBed9803j/K3dcwog3CnAEsE7RMdj4IU7qTSsbF1ecD/vnsG1rBpnZAET7sd1Xs
9AHjd/8KIY7UwVg8aeTJafI+gPoBuphxUgpLMt9uJhMiqACOvzdAJAGb9BZEotKO
o+oRDiJ9pJryHv/r1HMDGIeHyVOHoAnP6ik0hrbDEkUKkr+A0G4uvsb9OP/dc9Yy
qomA59pQaI/33iRQFZ2+xNB9crY3ny3d3hWbY6YBEadUuliR/hN/s6mKiW0Uhtee
P1bhu7nYwT4O/8iszIhT8t555dWF+XUZNGap8VR9iOpkplZGefjHQffBFmrSN7NZ
iYfHKY7FYRRp+DUMMSxxH4Sjxeph3C8S+ZmttkhlPLmEDMHk2tdgYIRUBLJbCjsE
WVVhJ0dYfuZX+D0CieOqjmgRJjqHNOPYGhhgQyjodu5eK4DvLbR0UHu6j+RBKTJZ
vyuYa3mDOfDvkQ09O9aagVLwXSByV9Dx2f29REf7GKraHTUJk3SBTPri/dZrAZFA
7ow2LKfVTDCHfLUcZhQR4CF9hbyjOc9KGD16cB+Pynjlxs8Szxk=
=AZ9o
-----END PGP SIGNATURE-----

--dbude457jgphjspe--

