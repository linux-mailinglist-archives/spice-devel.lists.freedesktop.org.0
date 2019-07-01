Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEB65BEFE
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 17:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787B489C54;
	Mon,  1 Jul 2019 15:05:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170C289C54
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 15:05:17 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id n9so4344852wmi.0
 for <spice-devel@lists.freedesktop.org>; Mon, 01 Jul 2019 08:05:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s9NLRgDtGT5CxuUAl4CAYf347zyfzX3BccWXP9z6ZqM=;
 b=m8qji1q4TGJ3TY2F9Al7MfWhk5W/+aiEEjmAEnyv6whKZ1ySir+nxBUlltofebD1Kc
 RYWY5sn12oVe9Jt0mDkPN4o+x4U8BICSuZIF4MBHAhcE193xbpLG4Ko+VlvBGxSKgegX
 FWDIb6L2P4fq9Fn5Q2cKuLrNDw6vb7MuB6Xt5DfKrEGlSW3EQwD+XbY29nYeNM2hYNny
 k4t+vDILGSyys/z2N6GN6g6wW7UJsh14Yqkvt0EWJSPP+tHSZYXk5d57nUU9/k7N/Rn5
 Oxhyj4BE4LVzSWXHBF+v2mzWKlqYkmQyZMpEHhmM5Rhh0bOH627ryZKtd5pHvCKAmQRa
 S5UQ==
X-Gm-Message-State: APjAAAX/z6a24PR3vKi+stcoZSQuE0AW6wBW8dHL8nDaUkaUfqDVEEFv
 M3tzhuiYmWpqcIhjSihQ5jB7HMV9tQw=
X-Google-Smtp-Source: APXvYqwdRc/SBa5E2afT7Q/KaHHTjl6+RUr3PdYHkz0zVq/bKznpUmUOHkJQE0XJahJmzCIkN3f7nA==
X-Received: by 2002:a05:600c:204c:: with SMTP id
 p12mr17521184wmg.121.1561993515431; 
 Mon, 01 Jul 2019 08:05:15 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id y12sm8797181wrr.3.2019.07.01.08.05.14
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 08:05:14 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  1 Jul 2019 17:05:13 +0200
Message-Id: <20190701150513.6735-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701120639.31441-1-kpouget@redhat.com>
References: <20190701120639.31441-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH] gstreamer-encoder: fix compiler warning with
 Fedora 30
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
ci5jOjUxODoxNzogZXJyb3I6IHRha2luZyB0aGUgYWJzb2x1dGUgdmFsdWUgb2YgdW5zaWduZWQg
dHlwZSAndWludDY0X3QnIHtha2EgJ2xvbmcgdW5zaWduZWQgaW50J30gaGFzIG5vIGVmZmVjdCBb
LVdlcnJvcj1hYnNvbHV0ZS12YWx1ZV0KPiAgNTE4IHwgICAgIH0gZWxzZSAgaWYgKGFicyhiaXRf
cmF0ZSAtIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlKSA+IGVuY29kZXItPnZpZGVvX2JpdF9yYXRl
ICogU1BJQ0VfR1NUX1ZJREVPX0JJVFJBVEVfTUFSR0lOKSB7Cj4gICAgICB8ICAgICAgICAgICAg
ICAgICBefn4KPiBnc3RyZWFtZXItZW5jb2Rlci5jOjUxODoxNzogZXJyb3I6IGFic29sdXRlIHZh
bHVlIGZ1bmN0aW9uICdhYnMnIGdpdmVuIGFuIGFyZ3VtZW50IG9mIHR5cGUgJ3VpbnQ2NF90JyB7
YWthICdsb25nIHVuc2lnbmVkIGludCd9CgpUaGlzIHBhdGNoZXMgc29sdmVzIHRoZXNlIHR3byB3
YXJuaW5nczoKCjEpIGNhc3QgdGhlIHN1YnN0cmFjdGlvbiB0byBhIHNpZ25lZCB0eXBlIChpbnQ2
NF90IGluc3RlYWQgb2YKdWludDY0X3QpIHRvIHByZXNlcnZlIHRoZSBvcGVyYXRpb24gbWVhbmlu
ZzsKCjIpIHVzZSB0aGUgbG9uZyBpbnQgbGFicygpIGluc3RlYWQgb2YgdGhlIGludCB2ZXJzaW9u
IGFicygpIHRvIGF2b2lkCmRhdGEgdHJ1bmN0aW9uLgotLS0KCnJlc2VuZGluZyB0aGlzIHBhdGNo
IHdpdGggdGhlIGNvbW1lbnRzIGFkZHJlc3NlZAoKLS0tCiBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29k
ZXIuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIGIvc2VydmVyL2dzdHJl
YW1lci1lbmNvZGVyLmMKaW5kZXggNjQxNmI2ODguLmRhNzNjNWVlIDEwMDY0NAotLS0gYS9zZXJ2
ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYworKysgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwpA
QCAtNTE1LDcgKzUxNSw3IEBAIHN0YXRpYyB2b2lkIHNldF92aWRlb19iaXRfcmF0ZShTcGljZUdz
dEVuY29kZXIgKmVuY29kZXIsIHVpbnQ2NF90IGJpdF9yYXRlKQogICAgICAgICBlbmNvZGVyLT52
aWRlb19iaXRfcmF0ZSA9IGJpdF9yYXRlOwogICAgICAgICBzZXRfZ3N0ZW5jX2JpdHJhdGUoZW5j
b2Rlcik7CgotICAgIH0gZWxzZSAgaWYgKGFicyhiaXRfcmF0ZSAtIGVuY29kZXItPnZpZGVvX2Jp
dF9yYXRlKSA+IGVuY29kZXItPnZpZGVvX2JpdF9yYXRlICogU1BJQ0VfR1NUX1ZJREVPX0JJVFJB
VEVfTUFSR0lOKSB7CisgICAgfSBlbHNlICBpZiAobGFicygoaW50NjRfdCkoYml0X3JhdGUgLSBl
bmNvZGVyLT52aWRlb19iaXRfcmF0ZSkpID4gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUgKiBTUElD
RV9HU1RfVklERU9fQklUUkFURV9NQVJHSU4pIHsKICAgICAgICAgZW5jb2Rlci0+dmlkZW9fYml0
X3JhdGUgPSBiaXRfcmF0ZTsKICAgICAgICAgc2V0X3BpcGVsaW5lX2NoYW5nZXMoZW5jb2Rlciwg
U1BJQ0VfR1NUX1ZJREVPX1BJUEVMSU5FX0JJVFJBVEUpOwogICAgIH0KLS0KMi4yMS4wCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
