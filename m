Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDBF5E3DF
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jul 2019 14:27:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE1E6E12D;
	Wed,  3 Jul 2019 12:27:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9000A6E12D
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 12:27:53 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id x4so2578275wrt.6
 for <spice-devel@lists.freedesktop.org>; Wed, 03 Jul 2019 05:27:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3CWUqbYotclcdm3db4Px2/y/8QYtu/9/AjbTsnYD8gs=;
 b=bXSwwJhFfNLlFiFjFbgvHDZpMjs0e+IlPXJzNt+i6mdY4BXrJ8n1Ris9gLiE4Wq5pF
 RFlFhz1iY8PIHnjexQkQpC4mBvlXlPzxQVsbsIzVWAEohvjAARfsPLjNwi/0SOmshXjT
 rFWaji3xBKwucZIGTzr51Z2K7rUPTxBm5VgqnUVk3p4IcrZFTL8KpG7syj1jdlY+hbdu
 oYFE8AAAo+OLXETLRz/KCHoONlm63SyJwWyrAwYNCNg1f36NLKPlG2NWskmjC2jC6r5e
 xyM6ylSoOedQeelF1xAdWKqsF+vfDcQe3y13Iqn3L/EZ49blAaGb0nH6sVgkB3q6dDGR
 w77A==
X-Gm-Message-State: APjAAAUfb03V9GLRTud/ANj05QgUh6CeQFh+EDRpSbuAxwgIhCNjfSwj
 WLjmoQCHYh1My/vk2ZXomx/FfGfnMTc=
X-Google-Smtp-Source: APXvYqxfnT40zLytEXMPIFTNZx18+9rHPy66lovXOLgVy0sJSnZZgEo+pWmPeoSb88SlwzVyMEw7JQ==
X-Received: by 2002:a5d:67cd:: with SMTP id n13mr29048584wrw.138.1562156871980; 
 Wed, 03 Jul 2019 05:27:51 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id d201sm1472222wmd.19.2019.07.03.05.27.51
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 05:27:51 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  3 Jul 2019 14:27:50 +0200
Message-Id: <20190703122750.17735-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH v2 spice-server] gstreamer-encoder: fix
 compiler warning with Fedora 30
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

RmVkb3JhIDMwIC8gZ2NjIDkuMS4xIDIwMTkwNTAzIChSZWQgSGF0IDkuMS4xLTEpIGZhaWxzIHRv
IGJ1aWxkCmJlY2F1c2Ugb2YgdGhpcyBlcnJvci93YXJuaW5nOgoKPiBnc3RyZWFtZXItZW5jb2Rl
ci5jOiBJbiBmdW5jdGlvbiAnc2V0X3ZpZGVvX2JpdF9yYXRlJzoKPiBnc3RyZWFtZXItZW5jb2Rl
ci5jOjUxODoxNzogZXJyb3I6IHRha2luZyB0aGUgYWJzb2x1dGUgdmFsdWUgb2YKPiB1bnNpZ25l
ZCB0eXBlICd1aW50NjRfdCcge2FrYSAnbG9uZyB1bnNpZ25lZCBpbnQnfSBoYXMgbm8gZWZmZWN0
Cj4gWy1XZXJyb3I9YWJzb2x1dGUtdmFsdWVdCj4gIDUxOCB8ICAgICB9IGVsc2UgIGlmIChhYnMo
Yml0X3JhdGUgLSBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSkgPiBlbmNvZGVyLT52aWRlb19iaXRf
cmF0ZSAqIFNQSUNFX0dTVF9WSURFT19CSVRSQVRFX01BUkdJTikgewo+ICAgICAgfCAgICAgICAg
ICAgICAgICAgXn5+Cj4gZ3N0cmVhbWVyLWVuY29kZXIuYzo1MTg6MTc6IGVycm9yOiBhYnNvbHV0
ZSB2YWx1ZSBmdW5jdGlvbiAnYWJzJwo+IGdpdmVuIGFuIGFyZ3VtZW50IG9mIHR5cGUgJ3VpbnQ2
NF90JyB7YWthICdsb25nIHVuc2lnbmVkIGludCd9CgpUaGlzIHBhdGNoZXMgc29sdmVzIHRoZXNl
IHR3byB3YXJuaW5nczoKCjEpIGNhc3QgdGhlIHN1YnN0cmFjdGlvbiB0byBhIHNpZ25lZCB0eXBl
IChpbnQ2NF90IGluc3RlYWQgb2YKdWludDY0X3QpIHRvIHByZXNlcnZlIHRoZSBvcGVyYXRpb24g
bWVhbmluZzsKCjIpIHVzZSBhIGN1c3RvbSB2ZXJzaW9uIG9mIGFicygpIHRvIGF2b2lkIGRhdGEg
dHJ1bmNhdGlvbiBhbmQvb3IKcGxhdGZvcm0tZGVwZW5kZW50IHR5cGUgbGVuZ3RocyAoYWJzL2xh
YnMvbGxhYnMpCi0tLQogc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgfCAyICstCiBzZXJ2ZXIv
dXRpbHMuaCAgICAgICAgICAgICB8IDUgKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL2dzdHJlYW1lci1lbmNv
ZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwppbmRleCA2NDE2YjY4OC4uNTRhYTE5
NjMgMTAwNjQ0Ci0tLSBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCisrKyBiL3NlcnZlci9n
c3RyZWFtZXItZW5jb2Rlci5jCkBAIC01MTUsNyArNTE1LDcgQEAgc3RhdGljIHZvaWQgc2V0X3Zp
ZGVvX2JpdF9yYXRlKFNwaWNlR3N0RW5jb2RlciAqZW5jb2RlciwgdWludDY0X3QgYml0X3JhdGUp
CiAgICAgICAgIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlID0gYml0X3JhdGU7CiAgICAgICAgIHNl
dF9nc3RlbmNfYml0cmF0ZShlbmNvZGVyKTsKCi0gICAgfSBlbHNlICBpZiAoYWJzKGJpdF9yYXRl
IC0gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUpID4gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUgKiBT
UElDRV9HU1RfVklERU9fQklUUkFURV9NQVJHSU4pIHsKKyAgICB9IGVsc2UgIGlmIChpNjRhYnMo
KGludDY0X3QpKGJpdF9yYXRlIC0gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUpKSA+IGVuY29kZXIt
PnZpZGVvX2JpdF9yYXRlICogU1BJQ0VfR1NUX1ZJREVPX0JJVFJBVEVfTUFSR0lOKSB7CiAgICAg
ICAgIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlID0gYml0X3JhdGU7CiAgICAgICAgIHNldF9waXBl
bGluZV9jaGFuZ2VzKGVuY29kZXIsIFNQSUNFX0dTVF9WSURFT19QSVBFTElORV9CSVRSQVRFKTsK
ICAgICB9CmRpZmYgLS1naXQgYS9zZXJ2ZXIvdXRpbHMuaCBiL3NlcnZlci91dGlscy5oCmluZGV4
IDU0YmM5ZDQ5Li5hNTRkNTQzMyAxMDA2NDQKLS0tIGEvc2VydmVyL3V0aWxzLmgKKysrIGIvc2Vy
dmVyL3V0aWxzLmgKQEAgLTc1LDQgKzc1LDkgQEAgaW50IHJlZF9jaGFubmVsX25hbWVfdG9fdHlw
ZShjb25zdCBjaGFyICpuYW1lKTsKCiB2b2lkIHJlZF9kdW1wX29wZW5zc2xfZXJyb3JzKHZvaWQp
OwoKK3N0YXRpYyBpbmxpbmUgaW50NjRfdCBpNjRhYnMoaW50NjRfdCB2YWx1ZSkKK3sKKyAgICBy
ZXR1cm4gKHZhbHVlID49IDApID8gdmFsdWUgOiAtdmFsdWU7Cit9CisKICNlbmRpZiAvKiBVVElM
U19IXyAqLwotLQoyLjIxLjAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
