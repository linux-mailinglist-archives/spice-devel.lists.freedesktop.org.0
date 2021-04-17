Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67795363087
	for <lists+spice-devel@lfdr.de>; Sat, 17 Apr 2021 16:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8096E0E3;
	Sat, 17 Apr 2021 14:07:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 344B46E0E3
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 14:07:09 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id r128so22139047lff.4
 for <spice-devel@lists.freedesktop.org>; Sat, 17 Apr 2021 07:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=up9PgIKjy3XjVRs/0IfQ1qfEu6UiUJ/m3U46hzaHnXI=;
 b=pl07aqTUf3wdTDxiWVcjIUmf1GqGhun/CdvNHqx8C3diJTA6SlJ7fGeUHLLKumHZox
 OxTD3+OX9mU49cO7tuiwQ+mZ3aRUuGnqNed2sSF7TwQjAG+D3b3CUIUubP/8E/Jn+wTz
 A0r7GD8jzffjRgLtsNSX+qrya0rmFf066+rQYSYS2o6i/VTCcxP3yQXiFhGStmSEdO/W
 X8yRsBilYg5UwlooZhpUQEWyV0o5h8Lr9NqHLeCs5x2mHLEDVhkl9vv6uGMhiN2UIJqb
 0dVL8xkbCsvHkey/Ry55u0i7lELQhMoT9LBdn3+dA+gIGZFtDMm+7S91N931FGCVdQGZ
 7Bug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=up9PgIKjy3XjVRs/0IfQ1qfEu6UiUJ/m3U46hzaHnXI=;
 b=QlJZVoeSWr9rCDkEPg4EHdBJ7pi4RAuDIrgiD813hIDkagyRqAjs02HIRvXhCTMn+f
 /k+YKI2/QySI0P5m/+SM4BWVO+Oeg7CAt8b4zZvf9k5IC8qiF4TQjiVAnxRNzyweHt/r
 E9kuTpLucwgThd1IRqZV8rjCzD7C7mhbjLwK5jHmtEGmxaWt47yrBA1o1o6f3pCt2jy5
 ucOFGX4/ioD+XURrjqN32Rm2zOmDTZRfWtSvytaC4ceeWWOuGFrffcefJ0AIu9UVfuWE
 LeBqfaOQtDjkLp08tZEyhAiQETaNz2tqCi1saQEeKYj3XUN3KMm5bpNse6+0hqTDQiqF
 ywqQ==
X-Gm-Message-State: AOAM533yi7U7LKgxmEcCklMWuHSh+ivJbDEqOYbb35TpelS0uh5cc/nE
 vbQN1C2SbTTWG+ihLVCxa6xg0fXjzmv+SjeA
X-Google-Smtp-Source: ABdhPJxYLwOcgxeZYC5cUEzm+SNouHLAKwYSU5i3EhY95a4kYzVwXHbbOFQ91bQHcqvHYMdenETtfg==
X-Received: by 2002:a05:6512:34d4:: with SMTP id
 w20mr6450063lfr.281.1618668427540; 
 Sat, 17 Apr 2021 07:07:07 -0700 (PDT)
Received: from kloomba ([31.29.254.98])
 by smtp.gmail.com with ESMTPSA id v23sm157212ljk.42.2021.04.17.07.07.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Apr 2021 07:07:06 -0700 (PDT)
Date: Sat, 17 Apr 2021 18:06:59 +0400
From: Roman Bogorodskiy <bogorodskiy@gmail.com>
To: Frediano Ziglio <freddy77@gmail.com>
Message-ID: <YHrrgxgWN84emypP@kloomba>
References: <20210417085211.88977-1-bogorodskiy@gmail.com>
 <20210417085211.88977-2-bogorodskiy@gmail.com>
 <CAHt6W4cBs7RDpeLpgj5noSkd_1mONat1o+rYcZ=Vq1_S6dUchQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHt6W4cBs7RDpeLpgj5noSkd_1mONat1o+rYcZ=Vq1_S6dUchQ@mail.gmail.com>
Subject: Re: [Spice-devel] [PATCH 1/3] build-sys: more version related fixups
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0102730416=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0102730416==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k5LR8+ySNLlGNWan"
Content-Disposition: inline


--k5LR8+ySNLlGNWan
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

  Frediano Ziglio wrote:

> Il giorno sab 17 apr 2021 alle ore 09:52 Roman Bogorodskiy
> <bogorodskiy@gmail.com> ha scritto:
> >
> > - Drop "-dirty" suffix before processing version info
> > - Don't fail on versions without 'minor' specified (e.g. v0.15)
>=20
> This is due to my fault, I didn't realize that version tags must
> contain the micro version,
> even if 0. Fixed (removed v0.15, added v0.15.0)

Thanks for clarification and the fix.

Roman Bogorodskiy

--k5LR8+ySNLlGNWan
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEi6TfKtFPmbY34ABwyW1f/gjCImoFAmB664AACgkQyW1f/gjC
ImqXdAgAgVpuZ/OLj6pLF0RBbbM4SXFDL1zaI+SOsVoa4mR+ppvUe1IgnhUTeXux
nxwvnqDlGJ1HzY+SjohVOZ+LmSHAG+VHLzRuAGmz6sBiuw87xrH5zlBOoPeI6w0A
kDKCsUQsCuGflQWVTthrS6/pGMxxTPvdw++AAnBuxzzvPo0CWdNqcC5Xhyi2DNPj
BIJ31l5T64yHWdYNddROujPMDFkIAUaJAJexQ3fvYVgwuKjl2G69OM/GCFAi/4nS
cXIZI6V9qdamx5AHtB/4OcNuMJC1tVlZndum36u2sOGK5u/dxWWRoEUQOrB+Do1k
cNF1cb3QRkosxI72NZFmPX8ulmjE5g==
=iytk
-----END PGP SIGNATURE-----

--k5LR8+ySNLlGNWan--

--===============0102730416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0102730416==--
