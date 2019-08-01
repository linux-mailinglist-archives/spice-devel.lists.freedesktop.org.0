Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B58F07E011
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 18:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0B56E72C;
	Thu,  1 Aug 2019 16:22:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2C86E733
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EAEA631E7C5
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E0CCA10002B5
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:41 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D698F19722
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 16:22:41 +0000 (UTC)
Date: Thu, 1 Aug 2019 12:22:41 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1093294510.4230601.1564676561836.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190722110841.31711-2-fziglio@redhat.com>
References: <20190722110841.31711-1-fziglio@redhat.com>
 <20190722110841.31711-2-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.21]
Thread-Topic: glz-encoder: Remove useless __packed__ attribute
Thread-Index: oD9Kx7+7C/y80tzVva1yg0d9KQc6ZQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 01 Aug 2019 16:22:41 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/3] glz-encoder: Remove
 useless __packed__ attribute
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

cGluZwoKPiAKPiBUaGVzZSBzdHJ1Y3R1cmUgY29udGFpbiBvbmx5IGJ5dGVzLCBubyBuZWVkIGZv
ciB0aGlzIGF0dHJpYnV0ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6
aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgc2VydmVyL2dsei1lbmNvZGVyLmMgfCA2ICsrKy0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZ2x6LWVuY29kZXIuYyBiL3NlcnZlci9nbHotZW5jb2Rlci5j
Cj4gaW5kZXggMzQxMjk0MDM1Li5lZTlkOTVhZTkgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL2dsei1l
bmNvZGVyLmMKPiArKysgYi9zZXJ2ZXIvZ2x6LWVuY29kZXIuYwo+IEBAIC0xNjgsMTggKzE2OCwx
OCBAQCB2b2lkIGdsel9lbmNvZGVyX2Rlc3Ryb3koR2x6RW5jb2RlckNvbnRleHQKPiAqb3BhcXVl
X2VuY29kZXIpCj4gIAo+ICB0eXBlZGVmIHVpbnQ4X3QgQllURTsKPiAgCj4gLXR5cGVkZWYgc3Ry
dWN0IF9fYXR0cmlidXRlX18gKChfX3BhY2tlZF9fKSkgb25lX2J5dGVfcGl4ZWxfdCB7Cj4gK3R5
cGVkZWYgc3RydWN0IG9uZV9ieXRlX3BpeGVsX3Qgewo+ICAgICAgQllURSBhOwo+ICB9IG9uZV9i
eXRlX3BpeGVsX3Q7Cj4gIAo+IC10eXBlZGVmIHN0cnVjdCBfX2F0dHJpYnV0ZV9fICgoX19wYWNr
ZWRfXykpIHJnYjMyX3BpeGVsX3Qgewo+ICt0eXBlZGVmIHN0cnVjdCByZ2IzMl9waXhlbF90IHsK
PiAgICAgIEJZVEUgYjsKPiAgICAgIEJZVEUgZzsKPiAgICAgIEJZVEUgcjsKPiAgICAgIEJZVEUg
cGFkOwo+ICB9IHJnYjMyX3BpeGVsX3Q7Cj4gIAo+IC10eXBlZGVmIHN0cnVjdCBfX2F0dHJpYnV0
ZV9fICgoX19wYWNrZWRfXykpIHJnYjI0X3BpeGVsX3Qgewo+ICt0eXBlZGVmIHN0cnVjdCByZ2Iy
NF9waXhlbF90IHsKPiAgICAgIEJZVEUgYjsKPiAgICAgIEJZVEUgZzsKPiAgICAgIEJZVEUgcjsK
PiAtLQo+IDIuMjAuMQo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
