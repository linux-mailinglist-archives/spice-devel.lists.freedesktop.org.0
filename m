Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6637BBCC
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 10:36:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A76C89CA8;
	Wed, 31 Jul 2019 08:36:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF10E89C82
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 08:36:43 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id p17so68654755wrf.11
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 01:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B/2ydnNy+bV6aojjzVqOW75n1jUELUO5hVBJ2P8v+00=;
 b=fnbZJpIQm469Parpo2XzJhiGGOzges61xp/Nmn9JN2wBL7JDO6C3OhaHC4QZCPEZLt
 UjIV5OTCcZ2pozmLw312CefyX6HK0qXKQ39dZfg4XZBeun6wStHC3FcVXtodoRMyk/It
 5sI9ACggqBp4N/Ar/xiQI0oHHCdaKvU1msLq48gswEXOAfI57bOQB5ndv37Df+T6ilUd
 FQAMnRP3lcCTBqiAhhcNJvBeqtTUxVZd5+SiecZbzB5Vs8+A3g5RdCVxNhgfTivpP9Gb
 r7UhwZBeXFMA6DWVvQo92iczogi+M2E8dpmXZZHzr1RXrpaY1+X4THBtrCIPq9vFVLtx
 o94w==
X-Gm-Message-State: APjAAAXzW6vY6KGYvOhmLdd/yr0XPQZUM30l4+lR0325DxTKIIp5sj9D
 KnmwVxh43L9CsckNFCay8ghiNkbyzRKBNw==
X-Google-Smtp-Source: APXvYqys7w7nHEXBFA1FhC+cU25xfklURIwyXEJVa8EhRqMzFVlZ78GEp3toUhAP/8jwicCkEjWmGQ==
X-Received: by 2002:adf:b1d1:: with SMTP id
 r17mr133882364wra.273.1564562202384; 
 Wed, 31 Jul 2019 01:36:42 -0700 (PDT)
Received: from localhost.localdomain (25.119.19.109.rev.sfr.net.
 [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id j17sm111641863wrb.35.2019.07.31.01.36.41
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:36:41 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Date: Wed, 31 Jul 2019 10:36:35 +0200
Message-Id: <20190731083636.21493-4-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190731083636.21493-1-kpouget@redhat.com>
References: <20190731083636.21493-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-streaming-agent 2/2]
 spice-streaming-agent: fully reset the capture loop on start/stop requests
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

V2l0aCB0aGlzIHBhdGNoLCBzcGljZS1zdHJlYW1pbmctYWdlbnQgZXhpdHMgdGhlIGZyYW1lLXNl
bmRpbmcgbG9vcAp3aGVuIFNUQVJUL1NUT1AgcmVxdWVzdHMgYXJlIHJlY2VpdmVkLiBUaGlzIGFs
bG93cyB0aGUgcmVjb21wdXRhdGlvbgpvZiB0aGUgbW9zdCBzdWl0YWJsZSBjYXB0dXJlL2VuY29k
aW5nIHBsdWdpbiwgdGhhdCBtYXkgaGF2ZSBiZWVuCnVwZGF0ZWQgd2l0aCBTVEFSVC9TVE9QIG1l
c3NhZ2UuCi0tLQogc3JjL3NwaWNlLXN0cmVhbWluZy1hZ2VudC5jcHAgfCA5ICsrKysrKystLQog
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9zcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50LmNwcCBiL3NyYy9zcGljZS1zdHJlYW1pbmct
YWdlbnQuY3BwCmluZGV4IDQ5ZjVkYzQuLjM2MjZlY2MgMTAwNjQ0Ci0tLSBhL3NyYy9zcGljZS1z
dHJlYW1pbmctYWdlbnQuY3BwCisrKyBiL3NyYy9zcGljZS1zdHJlYW1pbmctYWdlbnQuY3BwCkBA
IC0xMjYsNiArMTI2LDcgQEAgcHJpdmF0ZToKIH07CiAKIHN0YXRpYyBib29sIHN0cmVhbWluZ19y
ZXF1ZXN0ZWQgPSBmYWxzZTsKK3N0YXRpYyBib29sIHJlc2V0X3JlcXVlc3RlZCA9IGZhbHNlOwog
c3RhdGljIGJvb2wgcXVpdF9yZXF1ZXN0ZWQgPSBmYWxzZTsKIHN0YXRpYyBzdGQ6OnNldDxTcGlj
ZVZpZGVvQ29kZWNUeXBlPiBjbGllbnRfY29kZWNzOwogCkBAIC0xNjksNiArMTcwLDcgQEAgc3Rh
dGljIHZvaWQgcmVhZF9jb21tYW5kX2Zyb21fZGV2aWNlKFN0cmVhbVBvcnQgJnN0cmVhbV9wb3J0
KQogICAgICAgICBTdGFydFN0b3BNZXNzYWdlIG1zZyA9IGluX21lc3NhZ2UuZ2V0X3BheWxvYWQ8
U3RhcnRTdG9wTWVzc2FnZT4oKTsKICAgICAgICAgc3RyZWFtaW5nX3JlcXVlc3RlZCA9IG1zZy5z
dGFydF9zdHJlYW1pbmc7CiAgICAgICAgIGNsaWVudF9jb2RlY3MgPSBtc2cuY2xpZW50X2NvZGVj
czsKKyAgICAgICAgcmVzZXRfcmVxdWVzdGVkID0gdHJ1ZTsKIAogICAgICAgICBzeXNsb2coTE9H
X0lORk8sICJHT1QgU1RBUlRfU1RPUCBtZXNzYWdlIC0tIHJlcXVlc3QgdG8gJXMgc3RyZWFtaW5n
IiwKICAgICAgICAgICAgICAgIHN0cmVhbWluZ19yZXF1ZXN0ZWQgPyAiU1RBUlQiIDogIlNUT1Ai
KTsKQEAgLTI0MCwxMyArMjQyLDE2IEBAIGRvX2NhcHR1cmUoU3RyZWFtUG9ydCAmc3RyZWFtX3Bv
cnQsIEZyYW1lTG9nICZmcmFtZV9sb2csIENvbmNyZXRlQWdlbnQgJmFnZW50KQogICAgICAgICBp
ZiAocXVpdF9yZXF1ZXN0ZWQpIHsKICAgICAgICAgICAgIHJldHVybjsKICAgICAgICAgfQorICAg
ICAgICByZXNldF9yZXF1ZXN0ZWQgPSBmYWxzZTsKIAogICAgICAgICBzeXNsb2coTE9HX0lORk8s
ICJzdHJlYW1pbmcgc3RhcnRzIG5vdyIpOwogICAgICAgICB1aW50NjRfdCB0aW1lX2xhc3QgPSAw
OwogCiAgICAgICAgIHN0ZDo6dW5pcXVlX3B0cjxGcmFtZUNhcHR1cmU+IGNhcHR1cmUoYWdlbnQu
R2V0QmVzdEZyYW1lQ2FwdHVyZShjbGllbnRfY29kZWNzKSk7CiAgICAgICAgIGlmICghY2FwdHVy
ZSkgewotICAgICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJjYW5ub3QgZmluZCBh
IHN1aXRhYmxlIGNhcHR1cmUgc3lzdGVtIik7CisgICAgICAgICAgICBzeXNsb2coTE9HX0VSUiwg
IkVycm9yIGNhbm5vdCBmaW5kIGEgc3VpdGFibGUgY2FwdHVyZSBzeXN0ZW0iKTsKKyAgICAgICAg
ICAgIHN0cmVhbWluZ19yZXF1ZXN0ZWQgPSBmYWxzZTsKKyAgICAgICAgICAgIGNvbnRpbnVlOwog
ICAgICAgICB9CiAKICAgICAgICAgc3RkOjp2ZWN0b3I8RGV2aWNlRGlzcGxheUluZm8+IGRpc3Bs
YXlfaW5mbzsKQEAgLTI3NSw3ICsyODAsNyBAQCBkb19jYXB0dXJlKFN0cmVhbVBvcnQgJnN0cmVh
bV9wb3J0LCBGcmFtZUxvZyAmZnJhbWVfbG9nLCBDb25jcmV0ZUFnZW50ICZhZ2VudCkKICAgICAg
ICAgICAgIHN5c2xvZyhMT0dfRVJSLCAiRW1wdHkgZGV2aWNlIGRpc3BsYXkgaW5mbyBmcm9tIHRo
ZSBwbHVnaW4iKTsKICAgICAgICAgfQogCi0gICAgICAgIHdoaWxlICghcXVpdF9yZXF1ZXN0ZWQg
JiYgc3RyZWFtaW5nX3JlcXVlc3RlZCkgeworICAgICAgICB3aGlsZSAoIXF1aXRfcmVxdWVzdGVk
ICYmIHN0cmVhbWluZ19yZXF1ZXN0ZWQgJiYgIXJlc2V0X3JlcXVlc3RlZCkgewogICAgICAgICAg
ICAgaWYgKCsrZnJhbWVfY291bnQgJSAxMDAgPT0gMCkgewogICAgICAgICAgICAgICAgIHN5c2xv
ZyhMT0dfREVCVUcsICJTRU5UICVkIGZyYW1lcyIsIGZyYW1lX2NvdW50KTsKICAgICAgICAgICAg
IH0KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
