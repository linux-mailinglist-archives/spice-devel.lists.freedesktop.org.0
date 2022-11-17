Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C3962D550
	for <lists+spice-devel@lfdr.de>; Thu, 17 Nov 2022 09:44:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1D610E1E5;
	Thu, 17 Nov 2022 08:44:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133FD10E1E5
 for <spice-devel@lists.freedesktop.org>; Thu, 17 Nov 2022 08:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668674663;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EukYW8gXnJeRfiC+8EFWIznH0yhk4M15dv13ZNKcbW4=;
 b=caYDXPCmTu14MfzwDuRYGbxHp2lmFydQwOedBJRlznl31XEMtp3a3cs6E+tiyS8w40tqLq
 IoAx6B0Y2YYQJrK3FeaSwNb89YkaT4wIbuMJQjcP1zP5P0IltcprlBMXtfmnjv69UdIgoE
 RksjEAvyaNnVb8iwBtJ98K+bP2rgA+Q=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-497-LvyucbsLMLO6ZEcyLQ2f1Q-1; Thu, 17 Nov 2022 03:44:19 -0500
X-MC-Unique: LvyucbsLMLO6ZEcyLQ2f1Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB2D7185A78B;
 Thu, 17 Nov 2022 08:44:18 +0000 (UTC)
Received: from localhost (ovpn-192-7.brq.redhat.com [10.40.192.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 766D440C83EB;
 Thu, 17 Nov 2022 08:44:18 +0000 (UTC)
Date: Thu, 17 Nov 2022 09:44:17 +0100
From: Victor Toso <victortoso@redhat.com>
To: let-me-use-copy-and-paste <let-me-use-copy-and-paste@proton.me>
Message-ID: <20221117084417.6lzclrstp7ljwneq@tapioca>
References: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="lgkqk6rvj2r5mkq2"
Content-Disposition: inline
In-Reply-To: <PYPGGnYoyG-Z7cu7sTB5CUQnfLogiolh-k4lRx8ajo4vNyZDFnkqPNzftiZIDVzziqXf6LxYpAQt3kw5rnHWNdOrao_ObxBN58ZAM_IHGCY=@proton.me>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
Subject: Re: [Spice-devel] Agent crashes on Alpine Linux guest due to lack
 of /dev/uinput
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


--lgkqk6rvj2r5mkq2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry the delay, I've been away :)

On Sun, Nov 06, 2022 at 07:02:12AM +0000, let-me-use-copy-and-paste wrote:
> I installed Alpine Linux 3.16 virtual machine edition on
> QEMU/KVM using Virt-Manager. I installed XFCE on it. I wanted
> to enable copy-and-paste, so I tried to install spice-vdagent
> on it, but it kept crashing. I checked the output using the
> "-x" parameter, and basically, it crashed due to the lack of
> /dev/uinput. The screenshot is
> at=A0https://i.imgur.com/9WKaVG8.png
>
> I do not know Linux much, so I am not sure if /dev/uinput is
> not present due to the settings of the virtual machine or
> because I have not installed something on Alpine Linux. I tried
> the standard edition of Alpine, and right after the
> installation, /dev/uinput was not present.
>
> In case that Alpine Linux indeed does not support /dev/uinput,
> can't the spice service run anyway? All I want is text
> copy-and-paste between the host and the guest, and does that
> feature need /dev/uinput?


Well, seems that they do build uinput.ko

    https://pkgs.alpinelinux.org/contents?file=3Duinput.ko&path=3D&name=3Dl=
inux-vanilla&branch=3Dv3.4&repo=3Dmain&arch=3Dx86_64

It might be a matter of installing the right package and/or
modprobe uinput

Cheers,
Victor

--lgkqk6rvj2r5mkq2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAmN19GEACgkQl9kSPeN6
SE/sbxAAhpujRii/9M8ejn9Xp20I+WsA/IFbURniSCVjGfzaWHLJQuBTn6wxzCEp
Tq+lm7JwUX3GkNHN3f5sWBikcR/JCyZ2PAPN7DzhhlluJPss7+rsgJTnoFUW3Fh0
B9q9u0SBl8TNML/BME90J9KEitotrqZI1aPgYgKt/+QMVxprkjEAtc3NxsaM+5jS
VRYWS9dytMBSF8pPc9Frfo0cTN2qSnXFeZ4kGmkt9ckpxUm+4DM//xLfYvfrmF4x
Vfck4OG2jTAA2tPXqVITfpWyvUMQ71SoxAtl1d+pC8NfTTppts6MPGFKP/Cg/hNb
ctC5b84eQGfG6e/ayRLnFR2UGcyWNobVL3jco9nmG2QWY9LaAiQEmC0zsH8s2Iko
zSsqXXk3msgbbiLcd2i607U6+PxJgHikPkRn9aWeDqtlkdnmNuhHuCuoxUA+ioMJ
yy9eFI7hnik8hKjG/3vxifon8WcvDnDlthukyWbZNki/WCRHXKJEJjHH5NTibRVN
cPlswHWwNZu/2Jx/EBYgpHz94P8AcDmcxbUWOzaT5V5E5CMfWMzlcRRq2zpiBCsh
Au5hFzlJeBgp9ims6GXFAniIeoVmiTHUbdcv/ZQPb4Lm8QWk3/MtYehGCT1lXnvH
4vSQbKVffrYKn3SJiTNdfXj+1iNINON/PIHSxq8Jlnpjz+H47oU=
=w21w
-----END PGP SIGNATURE-----

--lgkqk6rvj2r5mkq2--

