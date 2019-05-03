Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A7A12EE7
	for <lists+spice-devel@lfdr.de>; Fri,  3 May 2019 15:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 703FB89FEC;
	Fri,  3 May 2019 13:21:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9403789FEC
 for <spice-devel@lists.freedesktop.org>; Fri,  3 May 2019 13:21:12 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id h11so6722667wmb.5
 for <spice-devel@lists.freedesktop.org>; Fri, 03 May 2019 06:21:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:cc:to;
 bh=iitR8ylrYuF/T8EzpbMIfkj6A0ymcHu8SkfkZZR/dkc=;
 b=tjPnaMMFCi1NHc35fF3BS4iKmF53/7c41/CeVtobmUIs3hjFzauLgw2IicmhkGNJ2P
 ingwhLsl+nUm1bnrZhaZ2Wz/6FdPALrCPtyz39fTyG2xWjGK3bPvvulKF7p/2wWPTb0E
 K2feFeUXg6Ot6PjLPyHy9cTGtTnMbgJlVMr1RuwLy++mFeLhpVATcBMrsyh0r1Ylq1Ih
 fi7QpyCsPbbtGzAHL4YHK5z4ltnkvyuKA67+eEdS5Sxfd4tgc9N0DQ4lATR5YMWjVZaI
 9Yi+VG5jMH1ATHvdQigbZZNLpX6OF9DP/P2khOJxMItSJ45KrLM0Y74Csx6Np1S9jkBr
 gafg==
X-Gm-Message-State: APjAAAUzwTHx/C8KGWm7Xew5rXEPNfzhVJn9t75BRygFTvrjR6tGD7Nk
 f5c/UVcb1SlAldcfEDEJsb2FSg==
X-Google-Smtp-Source: APXvYqyBrl3fUOyIKohRnwkrQYMhsVlr1wYb09OGguj8bRVCsB35MuBTkvlTCZb8bBhCCGrGNYerXg==
X-Received: by 2002:a1c:9689:: with SMTP id y131mr6657606wmd.74.1556889671199; 
 Fri, 03 May 2019 06:21:11 -0700 (PDT)
Received: from [192.168.77.22] (val06-1-88-182-161-34.fbx.proxad.net.
 [88.182.161.34])
 by smtp.gmail.com with ESMTPSA id t2sm2062327wma.13.2019.05.03.06.21.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 06:21:10 -0700 (PDT)
From: Christophe de Dinechin <dinechin@redhat.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Message-Id: <ED7F853E-C347-49BC-A50B-CEB1ABECDE3B@redhat.com>
Date: Fri, 3 May 2019 15:21:09 +0200
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailer: Apple Mail (2.3445.104.8)
Subject: [Spice-devel] LGPL or GPL for recorder library
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sCgoKV2UgZGlzY3Vzc2VkIEdQTCB2cyBMR1BMIGZvciB0aGUgcmVjb3JkZXIg
bGlicmFyeS4KCkkgbWFkZSBhIG1pc3Rha2UgaW4gY29tbWl0IGU3ZGYxMDQxMTc2ZWRhODhhZWE2
MTAyZDFjNGVjZDlmMTQ0MzIxYTYgb2YgdGhlIHJlY29yZGVyIGxpYnJhcnkgdHJ5aW5nIHRvIOKA
nHJlbm9ybWFsaXpl4oCdIHRoZSBoZWFkZXJzIGJlZm9yZSBzdWJtaXR0aW5nIHRoZSBGZWRvcmEg
cGFja2FnZSAodGhlIOKAnG5vcm3igJ0gYmVpbmcgdGhhdCBlYWNoIGZpbGUgc2hvdWxkIGNvbnRh
aW4gdGhlIGxpY2Vuc2UgYmx1cmIpLiBUaGUgc2NyaXB0IEkgYXBwbGllZCBwdXQgYSBHUEwgbGlj
ZW5zZSBibHVyYiBvbiBlYWNoIGZpbGUsIG5vdCBMR1BMLiBJIGJlbGlldmUgb3VyIGFncmVlbWVu
dCB3YXMgdG8gc3RpY2sgdG8gTEdQTCBpbiBvcmRlciB0byBmYWNpbGl0YXRlIHRoZSBpbnRlZ3Jh
dGlvbiBpbiBTUElDRS4KClNvIGZpcnN0LCB0aGlzIGVtYWlsIGlzIGEgcHVibGljIHJlY29yZCB0
aGF0IHRoaXMgaXMgYSBtaXN0YWtlIG9uIG15IHBhcnQsIHRoYXQgdGhlIGludGVudCBpcyBhbmQg
cmVtYWluIHRvIGhhdmUgYSBsaWNlbnNlIHRoYXQgbWFrZXMgaXQgcG9zc2libGUgdG8gaW50ZWdy
YXRlIGluIFNQSUNFLCBhbmQgdGhhdCBpZiBHUEwgbWFrZXMgdGhpcyBpbXBvc3NpYmxlLCB0aGUg
bGlicmFyeSB3aWxsIGJlIHJldmVydGVkIHRvIExHUEwgQVNBUC4KClNlY29uZCwgSSB2YWd1ZWx5
IHJlbWVtYmVyIHRoZXJlIHdhcyBhbiBvYmplY3Rpb24gdG8gc29tZSB2YXJpYW50IG9mIExHUEwg
KHYyIG9yIHYzKS4gVGhlIHByaW1hcnkgbGljZW5zZSB0ZXh0IGZvciB0aGUgcmVjb3JkZXIgbGli
cmFyeSBpcyBjdXJyZW50bHkgTEdQTHYzLiBDYW4geW91IHBsZWFzZSBjb25maXJtIHRoYXQgTEdQ
THYzIHdvcmtzIGZvciBTUElDRT8KClNvcnJ5IGZvciB0aGUgbWlzdGFrZSBhbmQgZm9yIHRoZSBl
bnN1aW5nIG5vaXNlLgoKClRoYW5rcwpDaHJpc3RvcGhlCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
