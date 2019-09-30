Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB96CC210E
	for <lists+spice-devel@lfdr.de>; Mon, 30 Sep 2019 14:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D066E409;
	Mon, 30 Sep 2019 12:58:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5CC86E409
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:58:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 379A930833C1
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:58:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2DA145D9C9
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:58:25 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2713F1808878
 for <spice-devel@lists.freedesktop.org>; Mon, 30 Sep 2019 12:58:25 +0000 (UTC)
Date: Mon, 30 Sep 2019 08:58:24 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <195183386.3688454.1569848304978.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190918075809.5107-1-fziglio@redhat.com>
References: <20190918075809.5107-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.23]
Thread-Topic: char-device: Allow to more safely and quickly get device instance
Thread-Index: pvo/1vBWId684TQULXw5QUaAF/c5Yg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Mon, 30 Sep 2019 12:58:25 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] char-device: Allow to more
 safely and quickly get device instance
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

cGluZwoKPiAKPiBUaGlzIGluZm9ybWF0aW9uIGlzIHJldHJpZXZlZCBtdWx0aXBsZSB0aW1lLgo+
IEF2b2lkIHRvIHVzZSBqdXN0IGdfb2JqZWN0X2dldCB3aGljaCBpcyBkeW5hbWljIHNvIHBvdGVu
dGlhbGx5Cj4gdW5zYWZlIGFuZCBzbG93Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzZXJ2ZXIvY2hhci1kZXZpY2UuYyB8
IDUgKysrKysKPiAgc2VydmVyL2NoYXItZGV2aWNlLmggfCAyICsrCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9jaGFyLWRldmljZS5j
IGIvc2VydmVyL2NoYXItZGV2aWNlLmMKPiBpbmRleCAwM2FjOTkwN2MuLjM2ZTIyZGVlMyAxMDA2
NDQKPiAtLS0gYS9zZXJ2ZXIvY2hhci1kZXZpY2UuYwo+ICsrKyBiL3NlcnZlci9jaGFyLWRldmlj
ZS5jCj4gQEAgLTExNjYsNiArMTE2NiwxMSBAQCBTUElDRV9HTlVDX1ZJU0lCTEUgdm9pZAo+IHNw
aWNlX3NlcnZlcl9wb3J0X2V2ZW50KFNwaWNlQ2hhckRldmljZUluc3RhbmNlICpzaW4sIHVpCj4g
ICAgICByZXR1cm4ga2xhc3MtPnBvcnRfZXZlbnQoc2luLT5zdCwgZXZlbnQpOwo+ICB9Cj4gIAo+
ICtTcGljZUNoYXJEZXZpY2VJbnN0YW5jZSAqcmVkX2NoYXJfZGV2aWNlX2dldF9kZXZpY2VfaW5z
dGFuY2UoUmVkQ2hhckRldmljZQo+ICpkZXYpCj4gK3sKPiArICAgIHJldHVybiBkZXYtPnByaXYt
PnNpbjsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQKPiAgcmVkX2NoYXJfZGV2aWNlX2luaXQoUmVk
Q2hhckRldmljZSAqc2VsZikKPiAgewo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvY2hhci1kZXZpY2Uu
aCBiL3NlcnZlci9jaGFyLWRldmljZS5oCj4gaW5kZXggMGE4NzA0NWI3Li44MzBjYTQ1NmQgMTAw
NjQ0Cj4gLS0tIGEvc2VydmVyL2NoYXItZGV2aWNlLmgKPiArKysgYi9zZXJ2ZXIvY2hhci1kZXZp
Y2UuaAo+IEBAIC0yNDMsNiArMjQzLDggQEAgUmVkQ2hhckRldmljZSAqc3BpY2V2bWNfZGV2aWNl
X2Nvbm5lY3QoUmVkc1N0YXRlICpyZWRzLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1aW50OF90IGNoYW5uZWxfdHlwZSk7Cj4gIHZvaWQgc3BpY2V2bWNfZGV2aWNl
X2Rpc2Nvbm5lY3QoU3BpY2VDaGFyRGV2aWNlSW5zdGFuY2UgKmNoYXJfZGV2aWNlKTsKPiAgCj4g
K1NwaWNlQ2hhckRldmljZUluc3RhbmNlICpyZWRfY2hhcl9kZXZpY2VfZ2V0X2RldmljZV9pbnN0
YW5jZShSZWRDaGFyRGV2aWNlCj4gKmRldik7Cj4gKwo+ICBTcGljZUNoYXJEZXZpY2VJbnRlcmZh
Y2UKPiAgKnNwaWNlX2NoYXJfZGV2aWNlX2dldF9pbnRlcmZhY2UoU3BpY2VDaGFyRGV2aWNlSW5z
dGFuY2UgKmluc3RhbmNlKTsKPiAgCj4gICNlbmRpZiAvKiBDSEFSX0RFVklDRV9IXyAqLwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBt
YWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
