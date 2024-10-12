Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 923BA99B8DE
	for <lists+spice-devel@lfdr.de>; Sun, 13 Oct 2024 10:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0AE410E08B;
	Sun, 13 Oct 2024 08:56:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UdpHYnpT";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3491410E053
 for <spice-devel@lists.freedesktop.org>; Sat, 12 Oct 2024 14:57:24 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id
 38308e7fff4ca-2fad29fcb5bso883171fa.1
 for <spice-devel@lists.freedesktop.org>; Sat, 12 Oct 2024 07:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728745042; x=1729349842; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=lxlvoGW48TJnm3wEySIirWdlntcFXS+DUCsvVX5JkS4=;
 b=UdpHYnpTQsHFZxLjVte4x6qnwNFA5oOW6Sl/Egqri6WT4jjjFt49CNCH6mggQDwjyQ
 PaTwMB78l9uMmBwKXf1G1WwJ4uiK36kVeyW3IZhUgXGXBPLPCQBks32Br3BCtPxBTDQp
 L/9tYSDaWDeeUsGSHHOXKvCe2mB1wWMbBIkF2BUPS2Pd2sugUVBGBcfyw78pxqFrWROp
 ZC+uPEx0S+In2gxdoIyM0qgqWibqvCGTz+9rMtlhA/+OxDveNkd94e2eeJYL6yikRDz9
 Pk+eHmoqGXU9Np/CxaxVkBCRtD7Ta4TbpntmDWXZroYqSD/C92PrJwsQ+KcV2+JdUJlv
 2Nyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728745042; x=1729349842;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lxlvoGW48TJnm3wEySIirWdlntcFXS+DUCsvVX5JkS4=;
 b=giLOiHg4LNjoTeGBiRPC1qeUlC9CEd9HuRDLMYPCT61zudwGeIbDeaPIxMnb8wSo37
 /vK5YiP1BpmIjc7aGGT+tzn4T+HiZN8Y5qMssV94p3lTo6uqw1GUPfCPnHBa5Py3LbWP
 /xDz5Y2PRms4xjdfAUBQpKhZ8LH+8RrWC3+V+8j0S+OHKBnfpzRVTTCW7JhF+cRzWXol
 WewFlVGmbaHQIh8Nr9MfUe15pTj+ICnhG9DiHXOr0WlFxxld+hMhbrxFDcivEmnTGdfA
 VYnRvbutHYpjXdKvbplQDTlc22QThbdqbD9B8/9woevzt+WT5SwhitirYiEqqgrpEbxf
 bq5g==
X-Gm-Message-State: AOJu0Yy/SAXG8f0KgWxhQPKB9hs+nKbEL5SZQoQv9RLc0InXL9yyyZSt
 w45XznxLmfVE+qQjHdpS/+Mx0OlyBYGc/scxTeqI1L5wbH+5OBh09vs97k6HdW+06tEhAvmWue0
 bxvz/5KGEjTkhN4QJeh37MEpJHZSzXcA6
X-Google-Smtp-Source: AGHT+IEKc7YKLRaaWlCT3d4vjb1w0BLVNX9ciOCNBJtbTLngramhH9JuH/aa8pIY3/hjo87qlECzIwT3aijAGFIhMoo=
X-Received: by 2002:a2e:a887:0:b0:2fa:ce18:9e4 with SMTP id
 38308e7fff4ca-2fb3272aad3mr8231721fa.6.1728745041557; Sat, 12 Oct 2024
 07:57:21 -0700 (PDT)
MIME-Version: 1.0
From: Michele Petrelli <michelepetrelli73@gmail.com>
Date: Sat, 12 Oct 2024 16:57:10 +0200
Message-ID: <CAKnFrarcmt3Rekqgb0zdSFJzfuU=7SkFC-wikHGNkRBuseaXUA@mail.gmail.com>
Subject: How to increase Clipboard size to Windows 10 guest?
To: spice-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000001c03d2062448d29a"
X-Mailman-Approved-At: Sun, 13 Oct 2024 08:56:51 +0000
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

--0000000000001c03d2062448d29a
Content-Type: text/plain; charset="UTF-8"

Hello I hope you can help me out. My requirement is to use copy and paste
between linux host and windows 10 guest. The problem is that beyond a
certain byte limit (I think 1024k) the image will not paste. The host keeps
loading, but there seems to be a limit on windows. I installed the spice
guest tools, but I see that they are not confiurable.
my best
Michele

-- 
--------------------------------------------------
Michele Petrelli Art
https://michelepetrelliart.com
https://instagram.com/michelepetrelliart

--0000000000001c03d2062448d29a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello I hope you can help me out. My requirement is t=
o use copy and paste between linux host and windows 10 guest. The problem i=
s that beyond a certain byte limit (I think 1024k) the image will not paste=
. The host keeps loading, but there seems to be a limit on windows. I insta=
lled the spice guest tools, but I see that they are not confiurable.</div><=
div>my best</div><div>Michele<br></div><br><span class=3D"gmail_signature_p=
refix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature">--------------------------------------------------<=
br>Michele Petrelli Art<br><a href=3D"https://michelepetrelliart.com" targe=
t=3D"_blank">https://michelepetrelliart.com</a><br><a href=3D"https://insta=
gram.com/michelepetrelliart" target=3D"_blank">https://instagram.com/michel=
epetrelliart</a><br><br><br><br><br></div></div>

--0000000000001c03d2062448d29a--
