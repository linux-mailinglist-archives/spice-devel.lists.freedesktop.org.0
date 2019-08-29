Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB39CA20FF
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 18:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4776E12B;
	Thu, 29 Aug 2019 16:35:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CA66E118
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:35:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 904B6308218D
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:35:28 +0000 (UTC)
Received: from lub.com (dhcp-4-176.tlv.redhat.com [10.35.4.176])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0274B60872
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 16:35:27 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 29 Aug 2019 19:35:24 +0300
Message-Id: <20190829163524.25992-2-uril@redhat.com>
In-Reply-To: <20190829163524.25992-1-uril@redhat.com>
References: <20190829163524.25992-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 29 Aug 2019 16:35:28 +0000 (UTC)
Subject: [Spice-devel] [spice-vdagent PATCH v2 2/2] virtio-port: handle_fds:
 make read and write code consistent
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

QSBjb21tZW50IGFuZCBjdXJseSBicmFja2V0cyBmb3Igc3R5bGUgd2VyZSBhZGRlZC4KClNpZ25l
ZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4KLS0tCgp2MS0+djI6IHVzZSBz
aG9ydGVyIHZlcnNpb24gKGFsdGVybmF0aXZlIG9mIHYxKQogICAgICAgIGFkZCBjdXJseSBicmFj
a2V0cyB0byBpZiBibG9ja3MKCi0tLQogc3JjL3ZkYWdlbnRkL3ZpcnRpby1wb3J0LmMgfCAxMCAr
KysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL3NyYy92ZGFnZW50ZC92aXJ0aW8tcG9ydC5jIGIvc3JjL3ZkYWdlbnRk
L3ZpcnRpby1wb3J0LmMKaW5kZXggM2FlN2YyMi4uMDZmM2EzMiAxMDA2NDQKLS0tIGEvc3JjL3Zk
YWdlbnRkL3ZpcnRpby1wb3J0LmMKKysrIGIvc3JjL3ZkYWdlbnRkL3ZpcnRpby1wb3J0LmMKQEAg
LTE2NiwxNCArMTY2LDE0IEBAIGludCB2ZGFnZW50X3ZpcnRpb19wb3J0X2ZpbGxfZmRzKHN0cnVj
dCB2ZGFnZW50X3ZpcnRpb19wb3J0ICp2cG9ydCwKIHZvaWQgdmRhZ2VudF92aXJ0aW9fcG9ydF9o
YW5kbGVfZmRzKHN0cnVjdCB2ZGFnZW50X3ZpcnRpb19wb3J0ICoqdnBvcnRwLAogICAgICAgICBm
ZF9zZXQgKnJlYWRmZHMsIGZkX3NldCAqd3JpdGVmZHMpCiB7Ci0gICAgaWYgKCEqdnBvcnRwKQot
ICAgICAgICByZXR1cm47Ci0KLSAgICBpZiAoRkRfSVNTRVQoKCp2cG9ydHApLT5mZCwgcmVhZGZk
cykpCisgICAgaWYgKCp2cG9ydHAgJiYgRkRfSVNTRVQoKCp2cG9ydHApLT5mZCwgcmVhZGZkcykp
IHsKICAgICAgICAgdmRhZ2VudF92aXJ0aW9fcG9ydF9kb19yZWFkKHZwb3J0cCk7CisgICAgfQog
Ci0gICAgaWYgKCp2cG9ydHAgJiYgRkRfSVNTRVQoKCp2cG9ydHApLT5mZCwgd3JpdGVmZHMpKQor
ICAgIC8qICp2cG9ydHAgbWF5IGhhdmUgYmVlbiBkZXN0cm95ZWQgaW4gZG9fcmVhZCAqLworICAg
IGlmICgqdnBvcnRwICYmIEZEX0lTU0VUKCgqdnBvcnRwKS0+ZmQsIHdyaXRlZmRzKSkgewogICAg
ICAgICB2ZGFnZW50X3ZpcnRpb19wb3J0X2RvX3dyaXRlKHZwb3J0cCk7CisgICAgfQogfQogCiBz
dGF0aWMgc3RydWN0IHZkYWdlbnRfdmlydGlvX3BvcnRfYnVmKiB2ZGFnZW50X3ZpcnRpb19wb3J0
X2dldF9sYXN0X3didWYoCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
