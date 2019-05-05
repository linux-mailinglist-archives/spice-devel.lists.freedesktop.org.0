Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C1A1428C
	for <lists+spice-devel@lfdr.de>; Sun,  5 May 2019 23:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B14089269;
	Sun,  5 May 2019 21:35:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29CDA89269
 for <spice-devel@lists.freedesktop.org>; Sun,  5 May 2019 21:35:04 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id p19so3150372qkm.10
 for <spice-devel@lists.freedesktop.org>; Sun, 05 May 2019 14:35:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=eEaikoebSS6VlsKL+0lolLO8X/YSnFaLVD5NKEf6MQI=;
 b=NuSanGhC+o4f2fTGlgOxa5x5FToioA8hJKJ9J1NL7BfmpAeDpoVUzZCMdogeVUfKRP
 O1vT2cuXyc+P0ODb4kilcIWH5cNpncvPUh2ZPAGPHqtaap88KGyMdJbeAZtfECJCdRuf
 3o1nIuxNoQzk/yIvOYphutS7xxbCQ7z/BlxB8QHtpWnNnlj2QBxO1Ro38EeUiidW5Oxs
 NuiJJ/1PzU5eT1bSARddGLS/mMjtCboDaZfaSZFbr2Rfmec/KgiRxyU2GMhECpt7vo/s
 UtUHZIOcsswTgV74ZTdteBQplBQDIjCxCMSEM4Nd57VohwjwWFzf/DBNSEl4PHpv5lMt
 XHeA==
X-Gm-Message-State: APjAAAVoF42Cqpu1mrqDtlf1lJ8JAlV4PI8q5RaBhkqPVnIJh/nrBOGr
 vs1FuCbdaM2eO39W6439FIzfH6j8wfes7Pz3H/BJzA==
X-Google-Smtp-Source: APXvYqyBrQ9yXRIVjl3lGygCtQteHFP8xabGIAaLoQ4Tv0cUGpmZUVRlrY084Oo39I9AbleuMHYW2lDPaTSzQu9xBEQ=
X-Received: by 2002:a37:f50c:: with SMTP id l12mr3274673qkk.175.1557092103146; 
 Sun, 05 May 2019 14:35:03 -0700 (PDT)
MIME-Version: 1.0
From: Verucheck Baligio <veruliano@gmail.com>
Date: Sun, 5 May 2019 17:34:52 -0400
Message-ID: <CABVekY-kUQ=2JM=DVRQi4KmTRGa28v2EZTNiMa96hV+AzaUtEg@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=eEaikoebSS6VlsKL+0lolLO8X/YSnFaLVD5NKEf6MQI=;
 b=GzAtFL6UyhGYqPBkib9vKr5vMLtkUS7ob71ReFt0iiadb3/8D/PtNYwNiuQbRfTc0r
 sWOrt8K1etmCp7U0vgbSFS/pXh9JJuwoyvkWWL8p8+0tEok9icZkCGRqaFggwALxf52p
 OJzIRYAKYJ6GtzWNN36u9qtU3mPiiOSDMUe6PKw7MHG0qBj+mRnoqfb1MiecokrsZ8To
 2VPJ/ljmqid736Xn4EuHy4qGcPDFvBgk53HcS862YgIGUlbu4bFPd2pChsF+ad2iQQsV
 pMpvJT6CbZk5XNAqUrhjoOxTsxY2maeTuw42HvXm9/p43d6ivBnZd99R3iUF4NkkW71J
 QiDw==
Subject: [Spice-devel] macOS Drivers?
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0263589379=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0263589379==
Content-Type: multipart/alternative; boundary="000000000000b0d25805882ac138"

--000000000000b0d25805882ac138
Content-Type: text/plain; charset="UTF-8"

I'm curious, has any work been started to implement appropriate drives to
support SPICE on macOS? It sounds like there's a lot of resistance on this
front, but I'm curious about looking into what it would take to do this or
to contribute to the effort if someone has already started.

-Veru

--000000000000b0d25805882ac138
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m curious, has any work been started to implement ap=
propriate drives to support SPICE on macOS? It sounds like there&#39;s a lo=
t of resistance on this front, but I&#39;m curious about looking into what =
it would take to do this or to contribute to the effort if someone has alre=
ady started.<div><br></div><div>-Veru</div></div>

--000000000000b0d25805882ac138--

--===============0263589379==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0263589379==--
