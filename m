Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AFA535B62
	for <lists+spice-devel@lfdr.de>; Fri, 27 May 2022 10:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4180410E56A;
	Fri, 27 May 2022 08:23:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22CE710E950
 for <spice-devel@lists.freedesktop.org>; Fri, 27 May 2022 07:41:58 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id i23so4095786ljb.4
 for <spice-devel@lists.freedesktop.org>; Fri, 27 May 2022 00:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=9WfkYoQh1lGfoWFZXJj/HxwVxjfy4GeyDPl+idUyUVs=;
 b=AvQy1WXX/XBZ38LkE6WX6tJvCpczPsqq0FctEvSi+oSNd7e8qPkXIADPBIen3APcel
 Pvc7VNfUPJYylA01h/1p8YnHGS0Ajg1IDBZt3PfjFQgwEaDA7ahcdFg0jud2VE1fh6Kc
 Ztepkpagr7vCf/4De3MiNUS1M0Ezr1PoPQANP0PaHkbSfmO8xaK8n/02FLzd4DmntgjG
 BrRbeqjIuwx95mUSJlcz/nFKNOGsiNmXSMdL7mljJaS7U5WHIKc7GQtEX3/SM2L9K26H
 Z0su2BoXdMXed500V4CJPVV59afS2gdv6tVGw9BiCIhCHzGwREVC0qog5p4HVQRv/Vph
 sMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9WfkYoQh1lGfoWFZXJj/HxwVxjfy4GeyDPl+idUyUVs=;
 b=2dHWCMMz5NaJ9CeZMviD+ndaVsRwwOxClIBNduf2doM3dVN6+n0akosFwiwjznGpYf
 qK5A8CTDXGH3YYeMb1VVsAD/olXHjZQGRJuwEnLwDqAJlbw2QqB4POWvOXHWMIUUhEB5
 YJKogNrLEGbgZlgyff0R6O6cOJzhVAfmJALQ+/5jyeZ5+S6PKk832eoIchFAoPb6p8PP
 MkzKRsCJpxywjgJGcmYvwnMhOMD7CLMbsMU2rjeeePXLG1Gr1mBaIHUinvQEsEu3wr+A
 ANczHCUsqs4gsdZPHtxNTT3RkngyKgUGz29INHlrh0rxcrs4nrydbkzE7ICVTI0Z92g+
 KNSg==
X-Gm-Message-State: AOAM532O0IQusvd9qDgYXGm5ChVucp4Hy+gArpPObz7AQicfECGRE/49
 DKs6IaZu3BXYqo6GDe+rMW1R1txkCnVg8FV0hI9jnkEMjibxgw==
X-Google-Smtp-Source: ABdhPJwjNjfFXcdCmJknXr28w7di/lxklolxy/L5Yhpgq+NMch+1vDzluw9pcqqOyATnzWWlff1TBSELzyQQJJWkxc8=
X-Received: by 2002:a2e:7d16:0:b0:254:1eb0:63bb with SMTP id
 y22-20020a2e7d16000000b002541eb063bbmr4282853ljc.382.1653637315784; Fri, 27
 May 2022 00:41:55 -0700 (PDT)
MIME-Version: 1.0
From: Walter Mitty <waltermitty121906@gmail.com>
Date: Fri, 27 May 2022 15:41:44 +0800
Message-ID: <CAOgZG1wDC+5NPuXonD8Hp+PJa8g_fx8pa_A_dkcw_SM=k_y6Fw@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000cb74e605dff970c7"
X-Mailman-Approved-At: Fri, 27 May 2022 08:23:15 +0000
Subject: [Spice-devel] source code question: how hold_rcc works?
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

--000000000000cb74e605dff970c7
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I've been learning spice server source code for a few days. And there is a
function named *hold_rcc *that makes me confused. I can't find its
definition. I guess it is not a regular declaration. It may be generated
from a template. I wanna figure out how it is declared and what it does?
Could anyone give me some advice? Thanks in advance.

Best wishes,
Walter.

--000000000000cb74e605dff970c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div>I&#39;ve been learning spice server source co=
de for a few days. And there is a function named <b>hold_rcc </b>that makes=
 me confused. I can&#39;t find its definition. I guess it is not a regular =
declaration. It may be generated from a template. I wanna figure out how it=
 is declared and what it does?=C2=A0 Could anyone give me some advice? Than=
ks in advance.</div><div><br></div><div>Best wishes,</div><div>Walter.</div=
></div>

--000000000000cb74e605dff970c7--
