Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 937149E3F6
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BCA3898A4;
	Tue, 27 Aug 2019 09:23:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4608989E
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DBD3169060
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:17 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 372755DC18;
 Tue, 27 Aug 2019 09:23:15 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:25 +0100
Message-Id: <20190827092246.10276-9-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 27 Aug 2019 09:23:17 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 08/29] fixup! usb-redir: extend
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

SW5kZW50YXRpb24gZnVuY3Rpb24gZGVjbGFyYXRpb24KLS0tCiBzcmMvdXNiLWJhY2tlbmQuYyB8
IDQxICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3Jj
L3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwppbmRleCAxM2QyNGQ1Mi4uMzZhNzNh
ODkgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2ItYmFja2VuZC5j
CkBAIC03OTQsOSArNzk0LDkgQEAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9yZXR1cm5fd3JpdGVf
ZGF0YShTcGljZVVzYkJhY2tlbmRDaGFubmVsICpjaCwgdm9pZCAqZGF0YSkKICAgICB9CiB9CiAK
LXN0YXRpYyB2b2lkIHVzYnJlZGlyX2NvbnRyb2xfcGFja2V0KHZvaWQgKnByaXYsCi0gICAgdWlu
dDY0X3QgaWQsIHN0cnVjdCB1c2JfcmVkaXJfY29udHJvbF9wYWNrZXRfaGVhZGVyICpoLAotICAg
IHVpbnQ4X3QgKmRhdGEsIGludCBkYXRhX2xlbikKK3N0YXRpYyB2b2lkCit1c2JyZWRpcl9jb250
cm9sX3BhY2tldCh2b2lkICpwcml2LCB1aW50NjRfdCBpZCwgc3RydWN0IHVzYl9yZWRpcl9jb250
cm9sX3BhY2tldF9oZWFkZXIgKmgsCisgICAgICAgICAgICAgICAgICAgICAgICB1aW50OF90ICpk
YXRhLCBpbnQgZGF0YV9sZW4pCiB7CiAgICAgU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2ggPSBw
cml2OwogICAgIFNwaWNlVXNiQmFja2VuZERldmljZSAqZCA9IGNoLT5hdHRhY2hlZDsKQEAgLTg0
OSw5ICs4NDksOSBAQCBzdGF0aWMgdm9pZCB1c2JyZWRpcl9jb250cm9sX3BhY2tldCh2b2lkICpw
cml2LAogICAgIHVzYnJlZGlycGFyc2VyX2ZyZWVfcGFja2V0X2RhdGEoY2gtPnBhcnNlciwgZGF0
YSk7CiB9CiAKLXN0YXRpYyB2b2lkIHVzYnJlZGlyX2J1bGtfcGFja2V0KHZvaWQgKnByaXYsCi0g
ICAgdWludDY0X3QgaWQsIHN0cnVjdCB1c2JfcmVkaXJfYnVsa19wYWNrZXRfaGVhZGVyICpoLAot
ICAgIHVpbnQ4X3QgKmRhdGEsIGludCBkYXRhX2xlbikKK3N0YXRpYyB2b2lkCit1c2JyZWRpcl9i
dWxrX3BhY2tldCh2b2lkICpwcml2LCB1aW50NjRfdCBpZCwgc3RydWN0IHVzYl9yZWRpcl9idWxr
X3BhY2tldF9oZWFkZXIgKmgsCisgICAgICAgICAgICAgICAgICAgICB1aW50OF90ICpkYXRhLCBp
bnQgZGF0YV9sZW4pCiB7CiAgICAgU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2ggPSBwcml2Owog
ICAgIFNwaWNlVXNiQmFja2VuZERldmljZSAqZCA9IGNoLT5hdHRhY2hlZDsKQEAgLTg5NCwyMiAr
ODk0LDIzIEBAIHN0YXRpYyB2b2lkIHVzYnJlZGlyX2RldmljZV9yZXNldCh2b2lkICpwcml2KQog
ICAgIH0KIH0KIAotc3RhdGljIHZvaWQgdXNicmVkaXJfaW50ZXJmYWNlX2luZm8odm9pZCAqcHJp
diwKLSAgICBzdHJ1Y3QgdXNiX3JlZGlyX2ludGVyZmFjZV9pbmZvX2hlYWRlciAqaW50ZXJmYWNl
X2luZm8pCitzdGF0aWMgdm9pZAordXNicmVkaXJfaW50ZXJmYWNlX2luZm8odm9pZCAqcHJpdiwg
c3RydWN0IHVzYl9yZWRpcl9pbnRlcmZhY2VfaW5mb19oZWFkZXIgKmludGVyZmFjZV9pbmZvKQog
ewogICAgIFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoID0gcHJpdjsKICAgICBTUElDRV9ERUJV
RygiJXMgbm90IGltcGxlbWVudGVkICVwIiwgX19GVU5DVElPTl9fLCBjaCk7CiB9CiAKLXN0YXRp
YyB2b2lkIHVzYnJlZGlyX2ludGVyZmFjZV9lcF9pbmZvKHZvaWQgKnByaXYsCi0gICAgc3RydWN0
IHVzYl9yZWRpcl9lcF9pbmZvX2hlYWRlciAqZXBfaW5mbykKK3N0YXRpYyB2b2lkCit1c2JyZWRp
cl9pbnRlcmZhY2VfZXBfaW5mbyh2b2lkICpwcml2LCBzdHJ1Y3QgdXNiX3JlZGlyX2VwX2luZm9f
aGVhZGVyICplcF9pbmZvKQogewogICAgIFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoID0gcHJp
djsKICAgICBTUElDRV9ERUJVRygiJXMgbm90IGltcGxlbWVudGVkICVwIiwgX19GVU5DVElPTl9f
LCBjaCk7CiB9CiAKLXN0YXRpYyB2b2lkIHVzYnJlZGlyX3NldF9jb25maWd1cmF0aW9uKHZvaWQg
KnByaXYsCi0gICAgdWludDY0X3QgaWQsIHN0cnVjdCB1c2JfcmVkaXJfc2V0X2NvbmZpZ3VyYXRp
b25faGVhZGVyICpzZXRfY29uZmlndXJhdGlvbikKK3N0YXRpYyB2b2lkCit1c2JyZWRpcl9zZXRf
Y29uZmlndXJhdGlvbih2b2lkICpwcml2LCB1aW50NjRfdCBpZCwKKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCB1c2JfcmVkaXJfc2V0X2NvbmZpZ3VyYXRpb25faGVhZGVyICpzZXRf
Y29uZmlndXJhdGlvbikKIHsKICAgICBTcGljZVVzYkJhY2tlbmRDaGFubmVsICpjaCA9IHByaXY7
CiAgICAgc3RydWN0IHVzYl9yZWRpcl9jb25maWd1cmF0aW9uX3N0YXR1c19oZWFkZXIgaDsKQEAg
LTkzNCw4ICs5MzUsOCBAQCBzdGF0aWMgdm9pZCB1c2JyZWRpcl9nZXRfY29uZmlndXJhdGlvbih2
b2lkICpwcml2LCB1aW50NjRfdCBpZCkKICAgICB1c2JyZWRpcl93cml0ZV9mbHVzaF9jYWxsYmFj
ayhjaCk7CiB9CiAKLXN0YXRpYyB2b2lkIHVzYnJlZGlyX3NldF9hbHRfc2V0dGluZyh2b2lkICpw
cml2LAotICAgIHVpbnQ2NF90IGlkLCBzdHJ1Y3QgdXNiX3JlZGlyX3NldF9hbHRfc2V0dGluZ19o
ZWFkZXIgKnMpCitzdGF0aWMgdm9pZAordXNicmVkaXJfc2V0X2FsdF9zZXR0aW5nKHZvaWQgKnBy
aXYsIHVpbnQ2NF90IGlkLCBzdHJ1Y3QgdXNiX3JlZGlyX3NldF9hbHRfc2V0dGluZ19oZWFkZXIg
KnMpCiB7CiAgICAgU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2ggPSBwcml2OwogICAgIHN0cnVj
dCB1c2JfcmVkaXJfYWx0X3NldHRpbmdfc3RhdHVzX2hlYWRlciBzaDsKQEAgLTk0Nyw4ICs5NDgs
OCBAQCBzdGF0aWMgdm9pZCB1c2JyZWRpcl9zZXRfYWx0X3NldHRpbmcodm9pZCAqcHJpdiwKICAg
ICB1c2JyZWRpcl93cml0ZV9mbHVzaF9jYWxsYmFjayhjaCk7CiB9CiAKLXN0YXRpYyB2b2lkIHVz
YnJlZGlyX2dldF9hbHRfc2V0dGluZyh2b2lkICpwcml2LAotICAgIHVpbnQ2NF90IGlkLCBzdHJ1
Y3QgdXNiX3JlZGlyX2dldF9hbHRfc2V0dGluZ19oZWFkZXIgKnMpCitzdGF0aWMgdm9pZAordXNi
cmVkaXJfZ2V0X2FsdF9zZXR0aW5nKHZvaWQgKnByaXYsIHVpbnQ2NF90IGlkLCBzdHJ1Y3QgdXNi
X3JlZGlyX2dldF9hbHRfc2V0dGluZ19oZWFkZXIgKnMpCiB7CiAgICAgU3BpY2VVc2JCYWNrZW5k
Q2hhbm5lbCAqY2ggPSBwcml2OwogICAgIHN0cnVjdCB1c2JfcmVkaXJfYWx0X3NldHRpbmdfc3Rh
dHVzX2hlYWRlciBzaDsKQEAgLTk4MCw4ICs5ODEsOCBAQCBzdGF0aWMgdm9pZCB1c2JyZWRpcl9m
aWx0ZXJfcmVqZWN0KHZvaWQgKnByaXYpCiB9CiAKIC8qIE5vdGUgdGhhdCB0aGUgb3duZXJzaGlw
IG9mIHRoZSBydWxlcyBhcnJheSBpcyBwYXNzZWQgb24gdG8gdGhlIGNhbGxiYWNrLiAqLwotc3Rh
dGljIHZvaWQgdXNicmVkaXJfZmlsdGVyX2ZpbHRlcih2b2lkICpwcml2LAotICAgIHN0cnVjdCB1
c2JyZWRpcmZpbHRlcl9ydWxlICpyLCBpbnQgY291bnQpCitzdGF0aWMgdm9pZAordXNicmVkaXJf
ZmlsdGVyX2ZpbHRlcih2b2lkICpwcml2LCBzdHJ1Y3QgdXNicmVkaXJmaWx0ZXJfcnVsZSAqciwg
aW50IGNvdW50KQogewogICAgIFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoID0gcHJpdjsKICAg
ICBTUElDRV9ERUJVRygiJXMgY2ggJXAgJWQgZmlsdGVycyIsIF9fRlVOQ1RJT05fXywgY2gsIGNv
dW50KTsKQEAgLTEwMTIsOCArMTAxMyw4IEBAIHN0YXRpYyB2b2lkIHVzYnJlZGlyX2RldmljZV9k
aXNjb25uZWN0X2Fjayh2b2lkICpwcml2KQogICAgIGNoLT53YWl0X2Rpc2Nvbm5lY3RfYWNrID0g
MDsKIH0KIAotc3RhdGljIHZvaWQgdXNicmVkaXJfaGVsbG8odm9pZCAqcHJpdiwKLSAgICBzdHJ1
Y3QgdXNiX3JlZGlyX2hlbGxvX2hlYWRlciAqaGVsbG8pCitzdGF0aWMgdm9pZAordXNicmVkaXJf
aGVsbG8odm9pZCAqcHJpdiwgc3RydWN0IHVzYl9yZWRpcl9oZWxsb19oZWFkZXIgKmhlbGxvKQog
ewogICAgIFNwaWNlVXNiQmFja2VuZENoYW5uZWwgKmNoID0gcHJpdjsKICAgICBTcGljZVVzYkJh
Y2tlbmREZXZpY2UgKmQgPSBjaC0+YXR0YWNoZWQ7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
