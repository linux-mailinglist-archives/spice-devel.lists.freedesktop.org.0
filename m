Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB446A0581
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 17:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 275EC88E33;
	Wed, 28 Aug 2019 15:02:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E95B88E33
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:02:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E47252A09D4
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:02:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DBBE05D70D
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:02:34 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D51EE2551C
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:02:34 +0000 (UTC)
Date: Wed, 28 Aug 2019 11:02:34 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1842711162.9953950.1567004554696.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190815083055.13634-1-fziglio@redhat.com>
References: <20190815083055.13634-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.3]
Thread-Topic: reds: Fix indentation of spice_server_char_device_add_interface
Thread-Index: GoKDI2OtrT/Uwn6PS2kntLMYfxV22A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Wed, 28 Aug 2019 15:02:34 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] reds: Fix indentation of
 spice_server_char_device_add_interface
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

cGluZwoKb3Igc2hvdWxkIEkgYXNzdW1lIGl0IHRyaXZpYWw/Cgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzZXJ2ZXIvcmVk
cy5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWRzLmMgYi9zZXJ2ZXIvcmVkcy5jCj4g
aW5kZXggYTM3OTVhYjkwLi5jMjk0MTM3YmUgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3JlZHMuYwo+
ICsrKyBiL3NlcnZlci9yZWRzLmMKPiBAQCAtMzMwMSw4ICszMzAxLDggQEAgc3RhdGljIHZvaWQg
cmVkc19vbl9jaGFyX2RldmljZV9kZXN0cm95KFJlZHNTdGF0ZQo+ICpyZWRzLAo+ICAgICAgcmVk
cy0+Y2hhcl9kZXZpY2VzID0gZ19saXN0X3JlbW92ZShyZWRzLT5jaGFyX2RldmljZXMsIGRldik7
Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQgc3BpY2Vfc2VydmVyX2NoYXJfZGV2aWNlX2FkZF9pbnRl
cmZhY2UoU3BpY2VTZXJ2ZXIgKnJlZHMsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBTcGljZUJhc2VJbnN0YW5jZSAqc2luKQo+ICtzdGF0aWMgaW50Cj4gK3Nw
aWNlX3NlcnZlcl9jaGFyX2RldmljZV9hZGRfaW50ZXJmYWNlKFNwaWNlU2VydmVyICpyZWRzLCBT
cGljZUJhc2VJbnN0YW5jZQo+ICpzaW4pCj4gIHsKPiAgICAgIFNwaWNlQ2hhckRldmljZUluc3Rh
bmNlKiBjaGFyX2RldmljZSA9Cj4gICAgICAgICAgICAgIFNQSUNFX1VQQ0FTVChTcGljZUNoYXJE
ZXZpY2VJbnN0YW5jZSwgc2luKTsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
