Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 998B52D062A
	for <lists+spice-devel@lfdr.de>; Sun,  6 Dec 2020 18:01:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7988F89C0A;
	Sun,  6 Dec 2020 17:01:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A1189C0A
 for <spice-devel@lists.freedesktop.org>; Sun,  6 Dec 2020 17:01:27 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id t6so333191plq.1
 for <spice-devel@lists.freedesktop.org>; Sun, 06 Dec 2020 09:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=m3kJNlAgZIs7npm7UWpcy+yU8ruVUglg3naPvlDL2Dc=;
 b=PIgZRe3cA2yjoeZTIZzYiAtivo6c6NdUE+O3zYxeejWpz359xB7KEFGBxS4vRqHyBT
 0ZORX2R35D3bEDXv31yPUGnzdivQqlPaCGQLIOv4BdxIFY6RIKWPMaL/noTOXBY7XTV0
 7m+KoDK9KeTUdMNuGoJw1BnX1jftu7J3/3MOLzir0aK8OgDk8TA1j4U3yhsg55z0hSJw
 KKBB8zsJ1PIIc6n7B7iNm8mYhl0VFI/XWJ9IyKmQFU2HB2eBMcWtYjskCLE9PRy+kZXI
 buNwo4J7GZ7bmq4XhnB7N5iEOycZUHDJdRNCYxLFolc6A4fjPx7g+kuhQjQRl75OMFvL
 tXBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=m3kJNlAgZIs7npm7UWpcy+yU8ruVUglg3naPvlDL2Dc=;
 b=e6kMjE6KIkJJg0VxjCRJRw041h4YjZbVtiCol6wLFDi7TmeDzwD2nXalMQYjln7l5j
 N0ni3o9YRMLksyJiVVNJeVBcg2fomU1k2lHZWJxvyw3EODXSz5ULb0UFVwRsnD/OaAce
 XfPGr2f/GPlTg5vhUcXAWFLUN8zcMAk5gRPb6ssAfLvt4ftCyERRE5lY/Ipa9uKyh8rm
 3OgEZ18F7dZZOp32HaUjqmERpLa8uEpaGGfIcm3JAKpZgD/Ln3+j1MVZ/AlZT5C0uX17
 g3aXeQc3nDtLOPVlP5z6Zpstey9FKO+FzIiYyloL+6aIG3BSRMUS+dTCzKf1xsDtrZAV
 HdmA==
X-Gm-Message-State: AOAM531rJwRiA2T71SqvXTFifisE3ro51Iuyu11Zqx2VuC1RWpyswdvT
 pb7yi/5cNQPPG+iaxPN45gk8fD75hIRd6eldn4U=
X-Google-Smtp-Source: ABdhPJw8CvjmSoSpvglTb+OcIkiDunoyPnSe+mcunf9LhIGb+prdmZ2IN9JiagoVyEHzzeFW4gg1GgSIBSKLdf3crMk=
X-Received: by 2002:a17:90b:110:: with SMTP id
 p16mr13349129pjz.54.1607274087526; 
 Sun, 06 Dec 2020 09:01:27 -0800 (PST)
MIME-Version: 1.0
References: <tencent_C0459B760E8F10B718467B3567920C04C508@qq.com>
In-Reply-To: <tencent_C0459B760E8F10B718467B3567920C04C508@qq.com>
From: Frediano Ziglio <freddy77@gmail.com>
Date: Sun, 6 Dec 2020 17:01:15 +0000
Message-ID: <CAHt6W4eY_J=qSWhVHVZouGL_1j-GmfX+fHwZ0XSaW3kBh=bEaQ@mail.gmail.com>
To: =?UTF-8?B?5Y+L5Lq65LiD5YiG?= <2291177920@qq.com>
Subject: Re: [Spice-devel] Can the latest MacBook with M1 chip use this
 spice software
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SWwgZ2lvcm5vIGRvbSA2IGRpYyAyMDIwIGFsbGUgb3JlIDE2OjUyIOWPi+S6uuS4g+WIhiA8MjI5
MTE3NzkyMEBxcS5jb20+IGhhIHNjcml0dG86Cj4KPiBDYW4gdGhlIGxhdGVzdCBNYWNCb29rIHdp
dGggTTEgY2hpcCB1c2UgdGhpcyBzcGljZSBzb2Z0d2FyZQoKSGksCiAgYXJlIHlvdSBjb25zaWRl
cmluZyB0aGUgc2VydmVyIG9yIGNsaWVudCBwYXJ0PwpUaGUgaXNzdWUgY291bGQgYmUgbW9yZSB0
aGUgTWFjIHRoYW4gdGhlIE0xLCB0aGUgY29kZSBpcyBwcmV0dHkKcG9ydGFibGUgYnV0IE1hYyBp
cyBub3Qgb2ZmaWNpYWxseSBzdXBwb3J0ZWQuCkxpYnJhcmllcyB1c2VkIHNob3VsZCBiZSBwcmV0
dHkgcG9ydGFibGUgdG9vLgoKUmVnYXJkcywKICBGcmVkaWFubwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
