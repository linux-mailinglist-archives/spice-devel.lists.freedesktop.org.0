Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5462C7D83D8
	for <lists+spice-devel@lfdr.de>; Thu, 26 Oct 2023 15:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0636A10E7E5;
	Thu, 26 Oct 2023 13:49:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C79A10E7A5
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Oct 2023 10:39:00 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id
 af79cd13be357-778a20df8c3so58846785a.3
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Oct 2023 03:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=birt-eus.20230601.gappssmtp.com; s=20230601; t=1698316739; x=1698921539;
 darn=lists.freedesktop.org; 
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=PgP1xKWEVB0j1sOjMcQBsVp1vCiTieOdstl2MitqfXc=;
 b=pMm4x2XcBbcwK0F22U28vYV6qjxLQnQ0cpInrF9xtTbqLm/ZSc/BCRlkHCOLP40k9h
 dO4Q/snxEw5K63qkpwIVFx8G+36b0o/chpLTxYJxY3wiKMwFa7B9gkaZDskf0VacavTF
 RJWwthhYXiVsMfUkPt9Nk7HTNA+Qc79hcgDjGctByvR+IAoWvkbBLZNJJ0sixecNkA1L
 Qz8u5LOjvNM5t7bWyYPwahIyMz9nRz0Na2L08+lyjIClY9ndrtdIow8b51bT4po3W8Cd
 Hiskj5qMoVraJE2Y/D1HAglgW5XH3/rrg6frbBXa5WdsWF7uaumpsoePwdgTXLbyAV4c
 XdIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698316739; x=1698921539;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PgP1xKWEVB0j1sOjMcQBsVp1vCiTieOdstl2MitqfXc=;
 b=RGbckD2eFe1zzV1TTCxefK3DLnzv2te22exRporiCqviuZ4eeBw5QzTS2qirfOsxCX
 +tAS9QLO/RuRwOmjLVJhKWdbf19oA77SnYbSpb9C3IRx39zm7x14X75CRiYIyQC+1qZR
 GOXGE4OfC4ZiLgv5OylQQ0lofUBsmBNhq41lAogiP/RhnxkDGajlUN5mA0lrAczT6ZNx
 pcxJigqc7UwOb9Qx+4Cd4Nob7ZLdz3Rcao58l7faHZDZW7/TuRp/ttAhzNBALyGe6MoE
 Ps6AdOyAhLplpwCnz/UQ2W2IhNLN9fkvsplGyYhjdHXyGjyAdzmTEYUS5Oi8oSo2R3i1
 m+ow==
X-Gm-Message-State: AOJu0YwZyKouzGo3PEi7816gKsCVUVvtIAl5ykbMRD3SQL4t5jt1gsLT
 ECeBoYZyZbG3iLjLrOxlgPF984gZwSCYhK5VaMlVQfh/RaRPecjB
X-Google-Smtp-Source: AGHT+IEDPL/LRpMBukWZYf44jvjwmG421Kiq6BOyct/SpdKkPGs7aWe+uWzpZBcR45AXLyogfxpLfRVQmUZbw1ksOu0=
X-Received: by 2002:a05:620a:4155:b0:778:9be8:274e with SMTP id
 k21-20020a05620a415500b007789be8274emr21856439qko.1.1698316739213; Thu, 26
 Oct 2023 03:38:59 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Mikel_Goicoechea_Mart=C3=ADnez?= <migoicoechea@birt.eus>
Date: Thu, 26 Oct 2023 12:38:49 +0200
Message-ID: <CABQP8gDsGu_aXc1+=p49rcktHu8MifCijLvu70xrnMvRT4Akog@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000f5135806089c2d3b"
X-Mailman-Approved-At: Thu, 26 Oct 2023 13:49:22 +0000
Subject: [Spice-devel] Bug with MINT Distros
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

--000000000000f5135806089c2d3b
Content-Type: text/plain; charset="UTF-8"

Hello,

I've experimented a bug when working with Mint distributions. When I open
the VM in Full Screen the mouse dissapears and I can't see where the
pointer is.

Do you know something about this bug? Are you going to release a new
version of spice viewer for windows 11?

Thank you so much in advance,
Regards

--000000000000f5135806089c2d3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;ve experimented a bug when=
 working with Mint distributions. When I open the VM in Full Screen the mou=
se dissapears and I can&#39;t see where the pointer is.</div><div><br></div=
><div>Do you know something about this bug? Are you going to release a new =
version of spice viewer for windows 11?=C2=A0<br><br>Thank you so much in a=
dvance,</div><div>Regards</div></div>

--000000000000f5135806089c2d3b--
