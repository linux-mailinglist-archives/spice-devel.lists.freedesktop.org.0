Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 710D78D0559
	for <lists+spice-devel@lfdr.de>; Mon, 27 May 2024 17:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E0F210F661;
	Mon, 27 May 2024 15:07:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="VFiaLs/l";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4616D10EA82
 for <spice-devel@lists.freedesktop.org>; Mon, 27 May 2024 15:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1716822467;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GR20ik7+VOmmS9uiJDbhukdJ8w2/2GmOfCvW6yvDA4k=;
 b=VFiaLs/l/hvEEASA9CEDyfO5GUkmwCW86mMj78ojne+79FHvm/BllpBLVbSzPbNJtkiiQr
 iOC0Kx1bBuhXfViVfN6R+UPQn7T9c4L/RdbKI7LLj/EW95GQlnaif62LRkFoGzZuibGKcF
 nNQDF2jzcRg+nsp3m4q/4uxdzw/liDE=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-611-EyLOwrlxP72NLk0frlPTyQ-1; Mon,
 27 May 2024 11:07:45 -0400
X-MC-Unique: EyLOwrlxP72NLk0frlPTyQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A560529AA39D;
 Mon, 27 May 2024 15:07:45 +0000 (UTC)
Received: from localhost (unknown [10.45.224.179])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2DFB3105480A;
 Mon, 27 May 2024 15:07:44 +0000 (UTC)
Date: Mon, 27 May 2024 17:07:44 +0200
From: Victor Toso <victortoso@redhat.com>
To: ToddAndMargo <ToddAndMargo@zoho.com>
Cc: Spice Devel <spice-devel@lists.freedesktop.org>
Subject: Re: vdagent drag and drop question
Message-ID: <crqqaup72f7wwuig3w5rhjgwqdvwekkiy7mfkk3oyck4dimlq6@blcegm2qm4d2>
References: <e8572889-db80-43c3-aae2-40c2866c5201@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="qvzii2lm2cfpqguw"
Content-Disposition: inline
In-Reply-To: <e8572889-db80-43c3-aae2-40c2866c5201@zoho.com>
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


--qvzii2lm2cfpqguw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 22, 2024 at 12:58:41AM GMT, ToddAndMargo wrote:
> Hi All,
>=20
> Host:
>    Fedora 39
>    spice-server-0.15.1-3.fc39.x86_64
>    spice-glib-0.42-3.fc39.x86_64
>    spice-gtk3-0.42-3.fc39.x86_64
>    spice-vdagent-0.22.1-6.fc39.x86_64
>    qemu-kvm-8.1.3-5.fc39.x86_64
>=20
> VM:
>    Windows 11 23H2
>    Virtio-win-driver-installer 0.1.240
>    Virtio-win-guest-tools  0.1.240
>=20
> I can drag and drop a file from my Linux host to a
> qemu-kvm Windows 11 virtual machine but I can not
> do it in reverse
>=20
> What am I doing wrong?

=46rom Guest to Client, drag-and-drop does not work.
=46rom Client to Guest, it should. The data of the file is copied
by the client (e.g: spice-gtk) and provided to the guest agent
which creates the file with the contents.

--qvzii2lm2cfpqguw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmZUob8ACgkQl9kSPeN6
SE86/g/6Ayz0g8HmeOEn0AkDHr0tFl5rQrFsbF3eMp1AsmKLU7BekejlsN9z7l2C
4spyEL/S1pgEqRacfH1F4AsY8AC3ihY4zvJcPbn9W4pAJaFe+aKbP8LBAA2fRLMR
p6XaO/1n8N2Nw4SOaTWiSa90TTgZxPw8I2ijSl9P5F+Rfk19BV80OIAO1jjoevI3
9wpx9M7EZSzshuGnPoqCDoLblWdqWtbn6CecoILtoOtqwij5Boj1WQmpo2q7xtil
n33xveXmqPEStZSw9BTGrxS5AcwtYI/QK07ejixOXxZZuHaNs/YrYSGX8D5bVPqM
iba+aqcBev297HEuhdMABAjKeESLKqUiTremen8EtMDbPXF53GrGvdo7POc5wjW1
pw/460mKcpznLiLvlEKqLlbnLCgfeSMK6P/E8OAMt9h/7P7PKAKcgTZthMf1Ib7g
jCRoJxwDzn+za8g9jQaviMSxa2WE6v+RL2ywzxcmoFYqA54bPbLhQXCD+wRMwJ2c
mO8JyGu4/pP2yUhi66XVel23ej/X85Rn81Co3/cuavM5OuVq2Im9s1H+u0B3GH2k
Cbi7Vk5ElssWwpuMAllbidK+HKfIwcKPrEhbnMh1M7Cfd1wHFYMZLWGAkGoQnUOJ
LcUi2ul09PaLb44OzFgMvGrgnuN6rw47HY3E8WzzBAMm+XNM87w=
=jxN7
-----END PGP SIGNATURE-----

--qvzii2lm2cfpqguw--

