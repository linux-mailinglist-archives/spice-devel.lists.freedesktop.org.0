Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B2A50B40
	for <lists+spice-devel@lfdr.de>; Mon, 24 Jun 2019 14:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A994288810;
	Mon, 24 Jun 2019 12:58:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0ADE88810
 for <spice-devel@lists.freedesktop.org>; Mon, 24 Jun 2019 12:58:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2FC6F882FB;
 Mon, 24 Jun 2019 12:58:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2384E19C6A;
 Mon, 24 Jun 2019 12:58:50 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 196B5206D1;
 Mon, 24 Jun 2019 12:58:50 +0000 (UTC)
Date: Mon, 24 Jun 2019 08:58:48 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1628204435.24064251.1561381128534.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hfMKb-0003GP-Ge@amboise>
References: <E1hfMKb-0003GP-Ge@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.14]
Thread-Topic: macros: Remove unused SPICE_GNUC_XXX macros
Thread-Index: wKnwNtQK93zYHHvipY2x4G4iltnWjw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Mon, 24 Jun 2019 12:58:50 +0000 (UTC)
Subject: Re: [Spice-devel] [protocol v2] macros: Remove unused
 SPICE_GNUC_XXX macros
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBXZSBkb24ndCB3YW50IHRvIG1haW50YWluIG1vcmUgbWFjcm9zIHRoYW4gbmVjZXNzYXJ5
IGFuZCB0aGVzZSBoYXZlCj4gYmVlbiB1bnVzZWQgZm9yIG92ZXIgdHdvIHllYXJzLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+CgpB
Y2tlZCBmb3IgbWUgKEknbGwgd2FpdCkKCj4gLS0tCj4gCj4gdjI6IFJlbW92ZSB1bnVzZWQgbWFj
cm9zIGFsdG9nZXRoZXIgcmF0aGVyIHRoYW4gbWFya2luZyB0aGVtIGFzCj4gICAgIGRlcHJlY2F0
ZWQgKG5vIHVzZSBvZiB0aGVtIGhhcyBiZWVuIGZvdW5kIGluIHNwaWNlLCBzcGljZS1ndGssCj4g
ICAgIHNwaWNlLWNvbW1vbiwgc3BpY2UtcHJvdG9jb2wsIHZkX2FnZW50IGFuZCB4Zjg2LXZpZGVv
LXF4bCBpbiB0aGUKPiAgICAgcGFzdCB0d28geWVhcnMpLgo+IAo+ICBzcGljZS9tYWNyb3MuaCB8
IDE2IC0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9zcGljZS9tYWNyb3MuaCBiL3NwaWNlL21hY3Jvcy5oCj4gaW5kZXgg
YWIxZDA1Ni4uYTIzZTg2NiAxMDA2NDQKPiAtLS0gYS9zcGljZS9tYWNyb3MuaAo+ICsrKyBiL3Nw
aWNlL21hY3Jvcy5oCj4gQEAgLTM0LDE5ICszNCwxMSBAQAo+ICAjaW5jbHVkZSA8c3BpY2UvdHlw
ZXMuaD4KPiAgCj4gICNpZiAgICBfX0dOVUNfXyA+IDIgfHwgKF9fR05VQ19fID09IDIgJiYgX19H
TlVDX01JTk9SX18gPj0gOTYpCj4gLSNkZWZpbmUgU1BJQ0VfR05VQ19QVVJFIF9fYXR0cmlidXRl
X18oKF9fcHVyZV9fKSkKPiAgI2RlZmluZSBTUElDRV9HTlVDX01BTExPQyBfX2F0dHJpYnV0ZV9f
KChfX21hbGxvY19fKSkKPiAgI2Vsc2UKPiAtI2RlZmluZSBTUElDRV9HTlVDX1BVUkUKPiAgI2Rl
ZmluZSBTUElDRV9HTlVDX01BTExPQwo+ICAjZW5kaWYKPiAgCj4gLSNpZiAgICAgX19HTlVDX18g
Pj0gNAo+IC0jZGVmaW5lIFNQSUNFX0dOVUNfTlVMTF9URVJNSU5BVEVEIF9fYXR0cmlidXRlX18o
KF9fc2VudGluZWxfXykpCj4gLSNlbHNlCj4gLSNkZWZpbmUgU1BJQ0VfR05VQ19OVUxMX1RFUk1J
TkFURUQKPiAtI2VuZGlmCj4gLQo+ICAjaWZuZGVmIF9faGFzX2ZlYXR1cmUKPiAgI2RlZmluZSBf
X2hhc19mZWF0dXJlKHgpIDAgIC8qIENvbXBhdGliaWxpdHkgd2l0aCBub24tY2xhbmcgY29tcGls
ZXJzLiAqLwo+ICAjZW5kaWYKPiBAQCAtNjIsMjAgKzU0LDEyIEBACj4gIAo+ICAjaWYgICAgIF9f
R05VQ19fID4gMiB8fCAoX19HTlVDX18gPT0gMiAmJiBfX0dOVUNfTUlOT1JfXyA+IDQpCj4gICNk
ZWZpbmUgU1BJQ0VfR05VQ19QUklOVEYoIGZvcm1hdF9pZHgsIGFyZ19pZHggKSBfX2F0dHJpYnV0
ZV9fKChfX2Zvcm1hdF9fCj4gIChfX3ByaW50Zl9fLCBmb3JtYXRfaWR4LCBhcmdfaWR4KSkpCj4g
LSNkZWZpbmUgU1BJQ0VfR05VQ19TQ0FORiggZm9ybWF0X2lkeCwgYXJnX2lkeCApIF9fYXR0cmli
dXRlX18oKF9fZm9ybWF0X18KPiAoX19zY2FuZl9fLCBmb3JtYXRfaWR4LCBhcmdfaWR4KSkpCj4g
LSNkZWZpbmUgU1BJQ0VfR05VQ19GT1JNQVQoIGFyZ19pZHggKSBfX2F0dHJpYnV0ZV9fKChfX2Zv
cm1hdF9hcmdfXwo+IChhcmdfaWR4KSkpCj4gICNkZWZpbmUgU1BJQ0VfR05VQ19OT1JFVFVSTiBf
X2F0dHJpYnV0ZV9fKChfX25vcmV0dXJuX18pKQo+IC0jZGVmaW5lIFNQSUNFX0dOVUNfQ09OU1Qg
X19hdHRyaWJ1dGVfXygoX19jb25zdF9fKSkKPiAgI2RlZmluZSBTUElDRV9HTlVDX1VOVVNFRCBf
X2F0dHJpYnV0ZV9fKChfX3VudXNlZF9fKSkKPiAtI2RlZmluZSBTUElDRV9HTlVDX05PX0lOU1RS
VU1FTlQgX19hdHRyaWJ1dGVfXygoX19ub19pbnN0cnVtZW50X2Z1bmN0aW9uX18pKQo+ICAjZWxz
ZSAgIC8qICFfX0dOVUNfXyAqLwo+ICAjZGVmaW5lIFNQSUNFX0dOVUNfUFJJTlRGKCBmb3JtYXRf
aWR4LCBhcmdfaWR4ICkKPiAtI2RlZmluZSBTUElDRV9HTlVDX1NDQU5GKCBmb3JtYXRfaWR4LCBh
cmdfaWR4ICkKPiAtI2RlZmluZSBTUElDRV9HTlVDX0ZPUk1BVCggYXJnX2lkeCApCj4gICNkZWZp
bmUgU1BJQ0VfR05VQ19OT1JFVFVSTgo+IC0jZGVmaW5lIFNQSUNFX0dOVUNfQ09OU1QKPiAgI2Rl
ZmluZSBTUElDRV9HTlVDX1VOVVNFRAo+IC0jZGVmaW5lIFNQSUNFX0dOVUNfTk9fSU5TVFJVTUVO
VAo+ICAjZW5kaWYgIC8qICFfX0dOVUNfXyAqLwo+ICAKPiAgI2lmZGVmIEdfREVQUkVDQVRFRAoK
RnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
