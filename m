Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E337FF2A9
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 11:20:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E1689173;
	Tue, 30 Apr 2019 09:20:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-yw1-xc30.google.com (mail-yw1-xc30.google.com
 [IPv6:2607:f8b0:4864:20::c30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EE6F89173
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 09:20:54 +0000 (UTC)
Received: by mail-yw1-xc30.google.com with SMTP id n188so2763189ywe.2
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 02:20:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=LB9BdhFRuvwaKRiT4NaVjQR67cYAX633UdGivay2TxM=;
 b=hNuG81NFSiK++znuoKXmaSni3LvlW4G2ajJ0thS/UhQRkU5ULU8KjiKl3IRpDPeajA
 VRgn626qZuTKXYVZcTYHG8WYPTvGS94erYQ38ZWmplTvrYdgVSxnkcdVt5a9bEq2NqUU
 vb34aurU2NsocU0cmKcrnmLZfEsv8j1eo0lfdtaXRbnEpGwa6yd61vR82cj8pC8+zCYC
 TKHUWU1Wtrvv10Vb+OzrYwIQEFn5vZ2n53co/Lh0LEERvaM66n0fTccIJFB6q+r5yp5l
 /tQyRQF3Zt7Bdz3kLUtSnBnkYSVibspbQNBV87cgg4MIsal9/iVac6oLHGWbCcGm30HL
 azUg==
X-Gm-Message-State: APjAAAUsXGOJHYwZ5oQptxqgyPcnJyK8oUTDtch5s1Xa6QPfF4guA+oy
 VT35+w3fkNGdPAFeafU9Hbc6e5fb6S8v+FqEGGdYn/xews4YgA==
X-Google-Smtp-Source: APXvYqzGyAtEP5UOMOT7IhHIYfiWFYfckLSwAOCjW5NZmDJ0Rc2oLxbzdW1EOfzEg8ZCVgc7l2kGft4EwbUZQqVJ/n8=
X-Received: by 2002:a0d:fb03:: with SMTP id l3mr30151184ywf.419.1556616053598; 
 Tue, 30 Apr 2019 02:20:53 -0700 (PDT)
MIME-Version: 1.0
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Tue, 30 Apr 2019 12:19:48 +0300
Message-ID: <CAOEp5OfH-bX-th2EXfah8HCxoM084=q_fQvbVOdX3hMnihabyg@mail.gmail.com>
To: Spice List <spice-devel@lists.freedesktop.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=LB9BdhFRuvwaKRiT4NaVjQR67cYAX633UdGivay2TxM=;
 b=SgXcX9xnELIxEomxPRcWLXcQcZiz/ssJk0D32tLtrErUcKFA3Dw9TDS6MO0sLDp2io
 zvZtoQAh22Gzc98K+jQX+zlHv7Au05YxEH5PUFJUyzkv57WpXJMVp8a6UT56wg5Znyjb
 suBuCHnEi2r5SdF7E6c5aM3gqgrW+eVtbe8/fPUBG7A3P/6RQ1HTAAJgn81N7rY8DP8r
 92XNHcg0skPMDFcDo2PSQ8JofzF0PkoT5obkW6cOYv5HBhRnZtYerCQrLdvDvzXpJN1d
 Z+6GOkZDzYHiJN8YoGjH8LNBnoBZny3NLczvphOXQ8Uh5BQJmjNaIc7oNSOt2hAlw1Lt
 h95w==
Subject: [Spice-devel] UsbDk 1.0-21 released
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgYWxsLApVc2JEayAxLjAtMjEgaGFzIGJlZW4gcmVsZWFzZWQKTGF0ZXN0IHNvdXJjZSBjb2Rl
OgpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uvd2luMzIvdXNiZGsKQmluYXJp
ZXMgKE1TSSk6Cmh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9kb3dubG9hZC93aW5kb3dzL3Vz
YmRrL1VzYkRrXzEuMC4yMV94NjQubXNpCmh0dHBzOi8vd3d3LnNwaWNlLXNwYWNlLm9yZy9kb3du
bG9hZC93aW5kb3dzL3VzYmRrL1VzYkRrXzEuMC4yMV94ODYubXNpCgpUaGFua3MsCll1cmkgQmVu
ZGl0b3ZpY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
