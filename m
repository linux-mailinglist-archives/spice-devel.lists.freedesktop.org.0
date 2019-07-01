Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1D35BB8E
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 14:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40D8389C55;
	Mon,  1 Jul 2019 12:32:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8897689C55
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 12:32:10 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id e3so4115094wrs.11
 for <spice-devel@lists.freedesktop.org>; Mon, 01 Jul 2019 05:32:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=ziCxWVUKZCEwovjZjMvtC00VQ3kegiNO6x1gjDvlD8o=;
 b=C7fH7Z54iUHc3G5fJHQ9acZ99GSF2KtyGtC6j8y52EgpjGueVM/yx9aKfDY/6KEUpp
 JNOZ8oM98KA3yVnLcmfnoRKHDR2ZCkLMgGLdJhF8qBfNdAtD1aQ5cjjsSfkZ9CppSnGh
 cplrUPHt1tU47eKHKYsyiiEjKGTUxQ/P3b+NAofFUeoMpJcj9eRk5XO73Eh/Tn09qAgQ
 ivUtWGrgFez2zXDyPLpfMT1SWclicoCt57BR7gUcr0E6pl8uiKmSoix9c7v+tWL+od0v
 40F/rfcQn6bWSdhtjsf2ISND4mr9hFOtKHcP2shMhzV5mckb9H9AqCy2jCscpu+cLT9Z
 zRLg==
X-Gm-Message-State: APjAAAWODJRmXVPh8+4qbET81+dlfk5M29Vo176ustAU5Tpa8Vesz3u2
 UAPMoBXSD/LmK4HlbWMIyKkhvAGcqzo=
X-Google-Smtp-Source: APXvYqxwS90KdRZ1ymVnju0CXLuufZZpCZl5L6oF0k8CzFzL9ufWNScIppH6CBiqKguM8y6ybS0Tkg==
X-Received: by 2002:adf:fc85:: with SMTP id g5mr18844554wrr.324.1561984328867; 
 Mon, 01 Jul 2019 05:32:08 -0700 (PDT)
Received: from ptitpuce ([134.59.215.253])
 by smtp.gmail.com with ESMTPSA id y18sm9738694wmi.23.2019.07.01.05.32.07
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 05:32:08 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
References: <20190701120639.31441-1-kpouget@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
To: spice-devel@lists.freedesktop.org
In-reply-to: <20190701120639.31441-1-kpouget@redhat.com>
Date: Mon, 01 Jul 2019 14:32:04 +0200
Message-ID: <m1pnmugcl7.fsf@dinechin.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:references:user-agent:to:subject:in-reply-to:date:message-id
 :mime-version;
 bh=ziCxWVUKZCEwovjZjMvtC00VQ3kegiNO6x1gjDvlD8o=;
 b=q2G29tCSKUQKixi/hDXpbnpFePoPt12YT6iW5+ZuTZfVs4u+LXModnuAC+7UohCm6x
 3XGZt1jwQjcz4aYoDz64UzOblEwrJRW8Lhl2Tw03JRtLU5u42uYwyNYe45suDYCf/L/T
 jv3AHh9L+eixd6HPCu6lreGCn+MrcZEvQwNfm0sAVxCoCcfW8GVFeFJbONrH8T9kkC4a
 NKARxfVIx3VxrP0iVDVa6O48ddcCtUHJB74k7AowWPWyjTyv6VpGU/o/sRnk3t9XNAcg
 ewYEQVWTDpkVyT+cWyJkDg11yAg6yB3YHTTYbQAkoNrJeLUibeUgAYdT+xzHyjTRFxsL
 ebgg==
Subject: Re: [Spice-devel] [PATCH] gstreamer-encoder: fix compiler warning
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

CktldmluIFBvdWdldCB3cml0ZXM6Cgo+IHRoaXMgd2FybmluZyBpcyBmYWlsaW5nIG15IGJ1aWxk
LCBJIGFzc3VtZSBpdCBjb21lcyBmcm9tIGEgbmV3IHZlcnNpb24KPiBvZiB0aGUgY29tcGlsZXIg
Y2F0Y2hpbmcgdGhlIHVzZWxlc3MgY2FsbCB0byBhYnMoKS4KCklzIGl0IHVzZWxlc3MsIG9yIGlz
IHRoZXJlIGEgc2lnbmVkL3Vuc2lnbmVkIG1pc21hdGNoPwoKSSBzdXNwZWN0IHRoZSBpbnRlbnQg
aXMgbW9yZSBzb21ldGhpbmcgbGlrZToKCiAgICBhYnMoKGludDY0KSAoYml0X3JhdGUgLSBlbmNv
ZGVyLT52aWRlb19iaXRfcmF0ZSkpCgppbiBvcmRlciB0byBjYXRjaCB0aGUgZGVsdGEgaW4gYml0
cmF0ZSBpbiBlaXRoZXIgZGlyZWN0aW9uLgoKPgo+IC0tLQo+Cj4+IGVycm9yOiB0YWtpbmcgdGhl
IGFic29sdXRlIHZhbHVlIG9mIHVuc2lnbmVkIHR5cGUgJ3VpbnQ2NF90Jwo+PiB7YWthICdsb25n
IHVuc2lnbmVkIGludCd9IGhhcyBubyBlZmZlY3QgWy1XZXJyb3I9YWJzb2x1dGUtdmFsdWVdCj4g
LS0tCj4gIHNlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIv
Z3N0cmVhbWVyLWVuY29kZXIuYyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCj4gaW5kZXgg
NjQxNmI2ODguLmRiZDRiMTFkIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rl
ci5jCj4gKysrIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiBAQCAtNTE1LDcgKzUxNSw3
IEBAIHN0YXRpYyB2b2lkIHNldF92aWRlb19iaXRfcmF0ZShTcGljZUdzdEVuY29kZXIgKmVuY29k
ZXIsIHVpbnQ2NF90IGJpdF9yYXRlKQo+ICAgICAgICAgIGVuY29kZXItPnZpZGVvX2JpdF9yYXRl
ID0gYml0X3JhdGU7Cj4gICAgICAgICAgc2V0X2dzdGVuY19iaXRyYXRlKGVuY29kZXIpOwo+Cj4g
LSAgICB9IGVsc2UgIGlmIChhYnMoYml0X3JhdGUgLSBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSkg
PiBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSAqIFNQSUNFX0dTVF9WSURFT19CSVRSQVRFX01BUkdJ
Tikgewo+ICsgICAgfSBlbHNlICBpZiAoKGJpdF9yYXRlIC0gZW5jb2Rlci0+dmlkZW9fYml0X3Jh
dGUpID4gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUgKiBTUElDRV9HU1RfVklERU9fQklUUkFURV9N
QVJHSU4pIHsKPiAgICAgICAgICBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSA9IGJpdF9yYXRlOwo+
ICAgICAgICAgIHNldF9waXBlbGluZV9jaGFuZ2VzKGVuY29kZXIsIFNQSUNFX0dTVF9WSURFT19Q
SVBFTElORV9CSVRSQVRFKTsKPiAgICAgIH0KCgotLQpDaGVlcnMsCkNocmlzdG9waGUgZGUgRGlu
ZWNoaW4gKElSQyBjM2QpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
