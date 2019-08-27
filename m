Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C58009E3F5
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F17489893;
	Tue, 27 Aug 2019 09:23:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45DA8989E
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 70BEF8BA2DA
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:15 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BBE375DA8B;
 Tue, 27 Aug 2019 09:23:13 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:24 +0100
Message-Id: <20190827092246.10276-8-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 27 Aug 2019 09:23:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 07/29] fixup! usb-redir: extend
 USB backend to support emulated devices
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

UmVuYW1lIHdhaXRfZGlzY19hY2ssIGNvbmZ1c2luZyAiZGlzYyIKLS0tCiBzcmMvdXNiLWJhY2tl
bmQuYyB8IDE0ICsrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3Vz
Yi1iYWNrZW5kLmMKaW5kZXggOTM2OWJmNWUuLjEzZDI0ZDUyIDEwMDY0NAotLS0gYS9zcmMvdXNi
LWJhY2tlbmQuYworKysgYi9zcmMvdXNiLWJhY2tlbmQuYwpAQCAtOTQsNyArOTQsNyBAQCBzdHJ1
Y3QgX1NwaWNlVXNiQmFja2VuZENoYW5uZWwKICAgICB1aW50MzJfdCBoZWxsb19kb25lX3BhcnNl
ciA6IDE7CiAgICAgdWludDMyX3QgaGVsbG9fc2VudCAgICAgICAgOiAxOwogICAgIHVpbnQzMl90
IHJlamVjdGVkICAgICAgICAgIDogMTsKLSAgICB1aW50MzJfdCB3YWl0X2Rpc2NfYWNrICAgICA6
IDE7CisgICAgdWludDMyX3Qgd2FpdF9kaXNjb25uZWN0X2FjayA6IDE7CiAgICAgU3BpY2VVc2JC
YWNrZW5kRGV2aWNlICphdHRhY2hlZDsKICAgICBTcGljZVVzYnJlZGlyQ2hhbm5lbCAgKnVzZXJf
ZGF0YTsKICAgICBTcGljZVVzYkJhY2tlbmQgKmJhY2tlbmQ7CkBAIC0xMDA0LDEyICsxMDA0LDEy
IEBAIHN0YXRpYyB2b2lkIHVzYnJlZGlyX2RldmljZV9kaXNjb25uZWN0X2Fjayh2b2lkICpwcml2
KQogewogICAgIFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoID0gcHJpdjsKICAgICBTUElDRV9E
RUJVRygiJXMgY2ggJXAiLCBfX0ZVTkNUSU9OX18sIGNoKTsKLSAgICBpZiAoY2gtPnBhcnNlciAm
JiBjaC0+d2FpdF9kaXNjX2FjaykgeworICAgIGlmIChjaC0+cGFyc2VyICYmIGNoLT53YWl0X2Rp
c2Nvbm5lY3RfYWNrKSB7CiAgICAgICAgIGNoLT5wYXJzZXIgPSBOVUxMOwogICAgICAgICBTUElD
RV9ERUJVRygiJXMgc3dpdGNoIHRvIHVzYnJlZGlyaG9zdCIsIF9fRlVOQ1RJT05fXyk7CiAgICAg
ICAgIGNoLT51c2JyZWRpcmhvc3QgPSBjaC0+aGlkZGVuX2hvc3Q7CiAgICAgfQotICAgIGNoLT53
YWl0X2Rpc2NfYWNrID0gMDsKKyAgICBjaC0+d2FpdF9kaXNjb25uZWN0X2FjayA9IDA7CiB9CiAK
IHN0YXRpYyB2b2lkIHVzYnJlZGlyX2hlbGxvKHZvaWQgKnByaXYsCkBAIC0xMTkzLDcgKzExOTMs
NyBAQCBzdGF0aWMgZ2Jvb2xlYW4gYXR0YWNoX2VkZXYoU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAq
Y2gsCiAgICAgICAgIGNoLT51c2JyZWRpcmhvc3QgPSBOVUxMOwogICAgICAgICBjaC0+cGFyc2Vy
ID0gY2gtPmhpZGRlbl9wYXJzZXI7CiAgICAgfQotICAgIGNoLT53YWl0X2Rpc2NfYWNrID0gMDsK
KyAgICBjaC0+d2FpdF9kaXNjb25uZWN0X2FjayA9IDA7CiAgICAgY2gtPmF0dGFjaGVkID0gZGV2
OwogICAgIGRldi0+YXR0YWNoZWRfdG8gPSBjaDsKICAgICBkZXZpY2Vfb3BzKGRldi0+ZWRldikt
PmF0dGFjaChkZXYtPmVkZXYsIGNoLT5oaWRkZW5fcGFyc2VyKTsKQEAgLTEyNjksOSArMTI2OSw5
IEBAIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5lbF9kZXRhY2goU3BpY2VVc2JCYWNrZW5k
Q2hhbm5lbCAqY2gpCiAgICAgICAgIH0KICAgICAgICAgdXNicmVkaXJwYXJzZXJfc2VuZF9kZXZp
Y2VfZGlzY29ubmVjdChjaC0+cGFyc2VyKTsKICAgICAgICAgdXNicmVkaXJfd3JpdGVfZmx1c2hf
Y2FsbGJhY2soY2gpOwotICAgICAgICBjaC0+d2FpdF9kaXNjX2FjayA9IHVzYnJlZGlycGFyc2Vy
X3BlZXJfaGFzX2NhcChjaC0+cGFyc2VyLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB1c2JfcmVkaXJfY2FwX2RldmljZV9kaXNjb25uZWN0
X2Fjayk7Ci0gICAgICAgIGlmICghY2gtPndhaXRfZGlzY19hY2spIHsKKyAgICAgICAgY2gtPndh
aXRfZGlzY29ubmVjdF9hY2sgPQorICAgICAgICAgICAgdXNicmVkaXJwYXJzZXJfcGVlcl9oYXNf
Y2FwKGNoLT5wYXJzZXIsIHVzYl9yZWRpcl9jYXBfZGV2aWNlX2Rpc2Nvbm5lY3RfYWNrKTsKKyAg
ICAgICAgaWYgKCFjaC0+d2FpdF9kaXNjb25uZWN0X2FjaykgewogICAgICAgICAgICAgY2gtPnVz
YnJlZGlyaG9zdCA9IGNoLT5oaWRkZW5faG9zdDsKICAgICAgICAgICAgIGNoLT5wYXJzZXIgPSBO
VUxMOwogICAgICAgICB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
