Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBFB27E4D
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 15:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7D289811;
	Thu, 23 May 2019 13:39:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3291B89811
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 13:39:50 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id b18so6305756wrq.12
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 06:39:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qJWcrLRWfUWMHZ8xEIBtqkKFGYumwPQSlf3sFYsrKkI=;
 b=t06mQPtYXmRUpPgif0lkCopCBZSt/bhZ2CDHZ7+29C2aeJnhHqPtm9jR5ohHTtWpFZ
 2XvOGaY9IkgDoOjbRzZjGdXsYb5gQQvqGUyoPYg62MI6eu+YLUYF+r/CaHj1My/q5OhN
 Dqk+MLWo77wjdsehbjdusFms4DGO7SrUSx7WtJfsk/axGPzv8ISIANXfWRLmp3h4VQhm
 W7cBwSo4EcOm0zxpPYR8ubIPlrzPHfO5ejLW+Y+AQq+RHbgq6k3aQ3FFCr8EnURvgI5+
 M0aMj0Mk81tkwtNG6bJVCTXRplTlEddtbJfSD6Gcu60b2ZY/D9ShVYW4gu+YZVIUvcT4
 H1eA==
X-Gm-Message-State: APjAAAX28H+6En+m5A9PXZ+srETVOpPI7JhdhO6kFmL26nww0Sbt5wnB
 pDiZi/qMZTCmlfmc4rAyU5/Tae9bXms4ec5+fEk=
X-Google-Smtp-Source: APXvYqwj7C8OA2EUd1qCh4RG80w/Q5FNByfyn9yweGkDgssDQhaxEBtAVxzEyu7/ezDlax1gm20KOxFzNROBQsgsEfY=
X-Received: by 2002:adf:c149:: with SMTP id w9mr48798288wre.40.1558618788861; 
 Thu, 23 May 2019 06:39:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190523083725.1554-1-jjanku@redhat.com>
 <20190523083725.1554-9-jjanku@redhat.com>
In-Reply-To: <20190523083725.1554-9-jjanku@redhat.com>
From: =?UTF-8?B?TWFyYy1BbmRyw6kgTHVyZWF1?= <marcandre.lureau@gmail.com>
Date: Thu, 23 May 2019 15:39:37 +0200
Message-ID: <CAJ+F1CJ5rxkF8q2r2G5DtT_WgTgxGfP7paae+Mh5oXm1d9o2vQ@mail.gmail.com>
To: =?UTF-8?B?SmFrdWIgSmFua8Wv?= <jjanku@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qJWcrLRWfUWMHZ8xEIBtqkKFGYumwPQSlf3sFYsrKkI=;
 b=tQAegtRgHyuVVgKLj4GolQLwdjDKYQlsZ204qGFvmEsSfrFusgsVpI3yM0Y4D9e9Ot
 ycqzbauLXcW8RDj8YSkBeSbpUOZSLbNfunqPOdgS2Wuf1qrpdByDIxefZ1hsRlMTI52x
 5AIpmqZFsS2yFdVWPubmSpxnhYf+r9qMlNoaUfppBcIx3aaEepaLmCQ/3uW7fKVYva3k
 2Fij9QpknV+5Mxh030YRkBCgT3lqZyFW/9fzKt8a2/MGOlhmEffbZf4jktMh1ftldq2h
 5pxKYIstATwj2AuZ7WruR2nb5+9+qJhKDvmOMp7f/OwejlTXrqhDXTmwoo7ucuQFuYFc
 6uOw==
Subject: Re: [Spice-devel] [PATCH phodav 08/13] spice-win: define
 SERVICE_NAME
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

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTA6MzcgQU0gSmFrdWIgSmFua8WvIDxqamFua3VAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWt1YiBKYW5rxa8gPGpqYW5rdUBy
ZWRoYXQuY29tPgoKYWNrCgo+IC0tLQo+ICBzcGljZS9zcGljZS13ZWJkYXZkLmMgfCA1ICsrKy0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5jIGIvc3BpY2Uvc3BpY2Utd2ViZGF2ZC5j
Cj4gaW5kZXggNjgxZTkwOS4uYzc3Yzg3MCAxMDA2NDQKPiAtLS0gYS9zcGljZS9zcGljZS13ZWJk
YXZkLmMKPiArKysgYi9zcGljZS9zcGljZS13ZWJkYXZkLmMKPiBAQCAtMzEsNiArMzEsNyBAQAo+
ICAjaW5jbHVkZSA8Z2lvL2d3aW4zMmlucHV0c3RyZWFtLmg+Cj4gICNpbmNsdWRlIDxnaW8vZ3dp
bjMyb3V0cHV0c3RyZWFtLmg+Cj4gICNpbmNsdWRlIDx3aW5kb3dzLmg+Cj4gKyNkZWZpbmUgU0VS
VklDRV9OQU1FICJzcGljZS13ZWJkYXZkIgo+ICAjZW5kaWYKPgo+ICAjaWZkZWYgV0lUSF9BVkFI
SQo+IEBAIC0xMDYyLDcgKzEwNjMsNyBAQCBzZXJ2aWNlX21haW4gKERXT1JEIGFyZ2MsIFRDSEFS
ICphcmd2W10pCj4gICAgZ19tdXRleF9pbml0KCZzZXJ2aWNlX2RhdGEubXV0ZXgpOwo+Cj4gICAg
c2VydmljZV9zdGF0dXNfaGFuZGxlID0KPiAtICAgIFJlZ2lzdGVyU2VydmljZUN0cmxIYW5kbGVy
RXggKCJzcGljZS13ZWJkYXZkIiwgc2VydmljZV9jdHJsX2hhbmRsZXIsICZzZXJ2aWNlX2RhdGEp
Owo+ICsgICAgUmVnaXN0ZXJTZXJ2aWNlQ3RybEhhbmRsZXJFeCAoU0VSVklDRV9OQU1FLCBzZXJ2
aWNlX2N0cmxfaGFuZGxlciwgJnNlcnZpY2VfZGF0YSk7Cj4KPiAgICBnX3JldHVybl9pZl9mYWls
IChzZXJ2aWNlX3N0YXR1c19oYW5kbGUgIT0gMCk7Cj4KPiBAQCAtMTE1NCw3ICsxMTU1LDcgQEAg
bWFpbiAoaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPgo+ICAgIFNFUlZJQ0VfVEFCTEVfRU5UUlkg
c2VydmljZV90YWJsZVtdID0KPiAgICAgIHsKPiAtICAgICAgeyAoY2hhciAqKSJzcGljZS13ZWJk
YXZkIiwgc2VydmljZV9tYWluIH0sIHsgTlVMTCwgTlVMTCB9Cj4gKyAgICAgIHsgU0VSVklDRV9O
QU1FLCBzZXJ2aWNlX21haW4gfSwgeyBOVUxMLCBOVUxMIH0KPiAgICAgIH07Cj4gICAgaWYgKCFu
b19zZXJ2aWNlICYmICFnZXRlbnYoIkRFQlVHIikpCj4gICAgICB7Cj4gLS0KPiAyLjIxLjAKPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bAoKCgotLSAKTWFyYy1BbmRyw6kgTHVyZWF1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
