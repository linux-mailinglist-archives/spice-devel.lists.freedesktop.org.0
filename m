Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF1381E03
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 15:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41A389C7F;
	Mon,  5 Aug 2019 13:51:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB7E189C7F
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7551F30A542C
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6331F194B9
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5A53018089C8
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:23 +0000 (UTC)
Date: Mon, 5 Aug 2019 09:51:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1398491916.4733247.1565013083306.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190723082230.10381-1-fziglio@redhat.com>
References: <20190723082230.10381-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.3]
Thread-Topic: replay: Remove some goto statement
Thread-Index: 64eJZzynucTXdmB7I24HoVH3FDa9WQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 05 Aug 2019 13:51:23 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 1/2] replay: Remove some goto
 statement
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

cGluZyB0aGUgc2VyaWVzCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzZXJ2ZXIvdGVzdHMvcmVwbGF5LmMgfCAxOCArKysr
KystLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy9yZXBsYXkuYyBiL3NlcnZl
ci90ZXN0cy9yZXBsYXkuYwo+IGluZGV4IGUzZWY3YmYxNS4uOTkyZjI2ZDYzIDEwMDY0NAo+IC0t
LSBhL3NlcnZlci90ZXN0cy9yZXBsYXkuYwo+ICsrKyBiL3NlcnZlci90ZXN0cy9yZXBsYXkuYwo+
IEBAIC0xMTYsNyArMTE2LDcgQEAgc3RhdGljIGdib29sZWFuIGZpbGxfcXVldWVfaWRsZShncG9p
bnRlciB1c2VyX2RhdGEpCj4gICAgICAgICAgaWYgKCFjbWQpIHsKPiAgICAgICAgICAgICAgZ19h
c3luY19xdWV1ZV9wdXNoKGRpc3BsYXlfcXVldWUsIEdJTlRfVE9fUE9JTlRFUigtMSkpOwo+ICAg
ICAgICAgICAgICBnX2FzeW5jX3F1ZXVlX3B1c2goY3Vyc29yX3F1ZXVlLCBHSU5UX1RPX1BPSU5U
RVIoLTEpKTsKPiAtICAgICAgICAgICAgZ290byBlbmQ7Cj4gKyAgICAgICAgICAgIGJyZWFrOwo+
ICAgICAgICAgIH0KPiAgCj4gICAgICAgICAgKytuY29tbWFuZHM7Cj4gQEAgLTEzMyw3ICsxMzMs
NiBAQCBzdGF0aWMgZ2Jvb2xlYW4gZmlsbF9xdWV1ZV9pZGxlKGdwb2ludGVyIHVzZXJfZGF0YSkK
PiAgICAgICAgICB9Cj4gICAgICB9Cj4gIAo+IC1lbmQ6Cj4gICAgICBpZiAoIWtlZXApIHsKPiAg
ICAgICAgICBwdGhyZWFkX211dGV4X2xvY2soJm11dGV4KTsKPiAgICAgICAgICBpZiAoZmlsbF9z
b3VyY2UpIHsKPiBAQCAtMTUzLDE3ICsxNTIsMTIgQEAgc3RhdGljIHZvaWQgZmlsbF9xdWV1ZSh2
b2lkKQo+ICB7Cj4gICAgICBwdGhyZWFkX211dGV4X2xvY2soJm11dGV4KTsKPiAgCj4gLSAgICBp
ZiAoIXN0YXJ0ZWQpCj4gLSAgICAgICAgZ290byBlbmQ7Cj4gLQo+IC0gICAgaWYgKGZpbGxfc291
cmNlKQo+IC0gICAgICAgIGdvdG8gZW5kOwo+IC0KPiAtICAgIGZpbGxfc291cmNlID0gZ19pZGxl
X3NvdXJjZV9uZXcoKTsKPiAtICAgIGdfc291cmNlX3NldF9jYWxsYmFjayhmaWxsX3NvdXJjZSwg
ZmlsbF9xdWV1ZV9pZGxlLCBOVUxMLCBOVUxMKTsKPiAtICAgIGdfc291cmNlX2F0dGFjaChmaWxs
X3NvdXJjZSwgYmFzaWNfZXZlbnRfbG9vcF9nZXRfY29udGV4dCgpKTsKPiArICAgIGlmIChzdGFy
dGVkICYmIGZpbGxfc291cmNlID09IE5VTEwpIHsKPiArICAgICAgICBmaWxsX3NvdXJjZSA9IGdf
aWRsZV9zb3VyY2VfbmV3KCk7Cj4gKyAgICAgICAgZ19zb3VyY2Vfc2V0X2NhbGxiYWNrKGZpbGxf
c291cmNlLCBmaWxsX3F1ZXVlX2lkbGUsIE5VTEwsIE5VTEwpOwo+ICsgICAgICAgIGdfc291cmNl
X2F0dGFjaChmaWxsX3NvdXJjZSwgYmFzaWNfZXZlbnRfbG9vcF9nZXRfY29udGV4dCgpKTsKPiAr
ICAgIH0KPiAgCj4gLWVuZDoKPiAgICAgIHB0aHJlYWRfbXV0ZXhfdW5sb2NrKCZtdXRleCk7Cj4g
IH0KPiAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
