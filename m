Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA686FE48
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 13:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D70C89AEB;
	Mon, 22 Jul 2019 11:07:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F3589AEB
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:07:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B1DC7368E3
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:07:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A752619C77
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:07:17 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9F4DB4E58D
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 11:07:17 +0000 (UTC)
Date: Mon, 22 Jul 2019 07:07:17 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <104869358.2027613.1563793637479.JavaMail.zimbra@redhat.com>
In-Reply-To: <661240391.26515606.1562333492194.JavaMail.zimbra@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-9-fziglio@redhat.com>
 <2087904041.23872955.1561102452028.JavaMail.zimbra@redhat.com>
 <661240391.26515606.1562333492194.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.24]
Thread-Topic: dispatcher: Use a new API to handle events
Thread-Index: iojDjXtjI+xDfLi9RvAep/vu0PflRk1niaI/EWPb0Jc=
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 22 Jul 2019 11:07:17 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 09/13] dispatcher: Use a new
 API to handle events
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

cGluZwoKPiAKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcKPiA+IAo+ID4gPiAKPiA+ID4gSW5zdGVh
ZCBvZiBoYXZpbmcgdG8gbWFudWFsbHkgcmVnaXN0ZXIgdGhlIGZpbGUgZGVzY3JpcHRvciBhbmQK
PiA+ID4gdGhhbiBuZWVkIHRvIGNhbGwgZGlzcGF0Y2hlcl9oYW5kbGVfcmVjdl9yZWFkIGp1c3Qg
cHJvdmlkZSBhIHNpbmdsZQo+ID4gPiBBUEkgdG8gY3JlYXRlIHRoZSB3YXRjaC4KPiA+ID4gVGhp
cyBoYXMgc29tZSBhZHZhbnRhZ2U6Cj4gPiA+IC0gcmVwbGFjZSAyIEFQSSB3aXRoIDE7Cj4gPiA+
IC0gY29kZSByZXVzZSBmb3IgaGFuZGxpbmcgdGhlIGV2ZW50IChyZW1vdmVkIDIgZnVuY3Rpb25z
KTsKPiA+ID4gLSBhdm9pZCB0aGUgY2FsbGVyIHRvIHVzZSB0aGUgZmlsZSBkZXNjcmlwdG9yOwo+
ID4gPiAtIGF2b2lkIHRoZSBjYWxsZXIgdG8gcmVnaXN0ZXIgd3JvbmcgZXZlbnRzLgo+ID4gPiAK
PiA+ID4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+
Cj4gPiA+IC0tLQo+ID4gPiAgc2VydmVyL2Rpc3BhdGNoZXIuYyAgICAgIHwgMTUgKysrKysrKysr
LS0tLS0tCj4gPiA+ICBzZXJ2ZXIvZGlzcGF0Y2hlci5oICAgICAgfCAyNSArKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gPiA+ICBzZXJ2ZXIvbWFpbi1kaXNwYXRjaGVyLmMgfCAxMiArLS0tLS0t
LS0tLS0KPiA+ID4gIHNlcnZlci9yZWQtd29ya2VyLmMgICAgICB8IDEwICstLS0tLS0tLS0KPiA+
ID4gIDQgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCj4g
PiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2Rpc3BhdGNoZXIuYyBiL3NlcnZlci9kaXNw
YXRjaGVyLmMKPiA+ID4gaW5kZXggNjAyZjMwYThlLi5iZDc0YjZmMzUgMTAwNjQ0Cj4gPiA+IC0t
LSBhL3NlcnZlci9kaXNwYXRjaGVyLmMKPiA+ID4gKysrIGIvc2VydmVyL2Rpc3BhdGNoZXIuYwo+
ID4gPiBAQCAtMzE3LDExICszMTcsMTMgQEAgc3RhdGljIGludCBkaXNwYXRjaGVyX2hhbmRsZV9z
aW5nbGVfcmVhZChEaXNwYXRjaGVyCj4gPiA+ICpkaXNwYXRjaGVyKQo+ID4gPiAgfQo+ID4gPiAg
Cj4gPiA+ICAvKgo+ID4gPiAtICogZGlzcGF0Y2hlcl9oYW5kbGVfcmVjdl9yZWFkCj4gPiA+ICsg
KiBkaXNwYXRjaGVyX2hhbmRsZV9ldmVudAo+ID4gPiAgICogZG9lc24ndCBoYW5kbGUgYmVpbmcg
aW4gdGhlIG1pZGRsZSBvZiBhIG1lc3NhZ2UuIGFsbCByZWFkcyBhcmUKPiA+ID4gICBibG9ja2lu
Zy4KPiA+ID4gICAqLwo+ID4gPiAtdm9pZCBkaXNwYXRjaGVyX2hhbmRsZV9yZWN2X3JlYWQoRGlz
cGF0Y2hlciAqZGlzcGF0Y2hlcikKPiA+ID4gK3N0YXRpYyB2b2lkIGRpc3BhdGNoZXJfaGFuZGxl
X2V2ZW50KGludCBmZCwgaW50IGV2ZW50LCB2b2lkICpvcGFxdWUpCj4gPiA+ICB7Cj4gPiA+ICsg
ICAgRGlzcGF0Y2hlciAqZGlzcGF0Y2hlciA9IG9wYXF1ZTsKPiA+ID4gKwo+ID4gPiAgICAgIHdo
aWxlIChkaXNwYXRjaGVyX2hhbmRsZV9zaW5nbGVfcmVhZChkaXNwYXRjaGVyKSkgewo+ID4gPiAg
ICAgIH0KPiA+ID4gIH0KPiA+ID4gQEAgLTQzMCwxNCArNDMyLDE1IEBAIHN0YXRpYyB2b2lkIHNl
dHVwX2R1bW15X3NpZ25hbF9oYW5kbGVyKHZvaWQpCj4gPiA+ICB9Cj4gPiA+ICAjZW5kaWYKPiA+
ID4gIAo+ID4gPiAtdm9pZCBkaXNwYXRjaGVyX3NldF9vcGFxdWUoRGlzcGF0Y2hlciAqc2VsZiwg
dm9pZCAqb3BhcXVlKQo+ID4gPiArU3BpY2VXYXRjaCAqZGlzcGF0Y2hlcl9jcmVhdGVfd2F0Y2go
RGlzcGF0Y2hlciAqZGlzcGF0Y2hlciwKPiA+ID4gU3BpY2VDb3JlSW50ZXJmYWNlSW50ZXJuYWwg
KmNvcmUpCj4gPiA+ICB7Cj4gPiA+IC0gICAgc2VsZi0+cHJpdi0+b3BhcXVlID0gb3BhcXVlOwo+
ID4gPiArICAgIHJldHVybiBjb3JlLT53YXRjaF9hZGQoY29yZSwgZGlzcGF0Y2hlci0+cHJpdi0+
cmVjdl9mZCwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIFNQSUNFX1dBVENIX0VW
RU5UX1JFQUQsCj4gPiA+IGRpc3BhdGNoZXJfaGFuZGxlX2V2ZW50LAo+ID4gPiBkaXNwYXRjaGVy
KTsKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAtaW50IGRpc3BhdGNoZXJfZ2V0X3JlY3ZfZmQoRGlz
cGF0Y2hlciAqZGlzcGF0Y2hlcikKPiA+ID4gK3ZvaWQgZGlzcGF0Y2hlcl9zZXRfb3BhcXVlKERp
c3BhdGNoZXIgKnNlbGYsIHZvaWQgKm9wYXF1ZSkKPiA+ID4gIHsKPiA+ID4gLSAgICByZXR1cm4g
ZGlzcGF0Y2hlci0+cHJpdi0+cmVjdl9mZDsKPiA+ID4gKyAgICBzZWxmLT5wcml2LT5vcGFxdWUg
PSBvcGFxdWU7Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gIHB0aHJlYWRfdCBkaXNwYXRjaGVyX2dl
dF90aHJlYWRfaWQoRGlzcGF0Y2hlciAqc2VsZikKPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9k
aXNwYXRjaGVyLmggYi9zZXJ2ZXIvZGlzcGF0Y2hlci5oCj4gPiA+IGluZGV4IDQ5MjE1NzgyYS4u
NWJkMGIxMDU1IDEwMDY0NAo+ID4gPiAtLS0gYS9zZXJ2ZXIvZGlzcGF0Y2hlci5oCj4gPiA+ICsr
KyBiL3NlcnZlci9kaXNwYXRjaGVyLmgKPiA+ID4gQEAgLTE0OCwyOSArMTQ4LDE0IEBAIHZvaWQg
ZGlzcGF0Y2hlcl9yZWdpc3Rlcl9oYW5kbGVyKERpc3BhdGNoZXIKPiA+ID4gKmRpc3BhdGNoZXIs
IHVpbnQzMl90IG1lc3NhZ2VfdHlwZSwKPiA+ID4gIHZvaWQgZGlzcGF0Y2hlcl9yZWdpc3Rlcl91
bml2ZXJzYWxfaGFuZGxlcihEaXNwYXRjaGVyICpkaXNwYXRjaGVyLAo+ID4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgZGlzcGF0Y2hlcl9oYW5kbGVfYW55X21lc3NhZ2UK
PiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGhhbmRsZXIpOwo+ID4g
PiAgCj4gPiA+IC0vKiBkaXNwYXRjaGVyX2hhbmRsZV9yZWN2X3JlYWQKPiA+ID4gKy8qIGRpc3Bh
dGNoZXJfY3JlYXRlX3dhdGNoCj4gPiA+ICAgKgo+ID4gPiAtICogQSBjb252ZW5pZW5jZSBmdW5j
dGlvbiB0aGF0IGlzIGludGVuZGVkIHRvIGJlIGNhbGxlZCBieSB0aGUgcmVjZWl2aW5nCj4gPiA+
IHRocmVhZAo+ID4gPiAtICogdG8gaGFuZGxlIGFsbCBpbmNvbWluZyBtZXNzYWdlcyBhbmQgZXhl
Y3V0ZSBhbnkgaGFuZGxlcnMgZm9yIHRob3NlCj4gPiA+IG1lc3NhZ2VzLgo+ID4gPiAtICogVGhp
cyBmdW5jdGlvbiB3aWxsIGhhbmRsZSBhbGwgaW5jb21pbmcgbWVzc2FnZXMgdW50aWwgdGhlcmUg
aXMgbm8KPiA+ID4gbW9yZQo+ID4gPiBkYXRhCj4gPiA+IC0gKiB0byByZWFkLCBzbyBtdWx0aXBs
ZSBoYW5kbGVycyBtYXkgYmUgZXhlY3V0ZWQgZnJvbSBhIHNpbmdsZSBjYWxsIHRvCj4gPiA+IC0g
KiBkaXNwYXRjaGVyX2hhbmRsZV9yZWN2X3JlYWQoKS4KPiA+ID4gKyAqIENyZWF0ZSBhIG5ldyB3
YXRjaCB0byBoYW5kbGUgZXZlbnRzIGZvciB0aGUgZGlzcGF0Y2hlci4KPiA+ID4gKyAqIFlvdSBz
aG91bGQgcmVsZWFzZSBpdCBiZWZvcmUgcmVsZWFzaW5nIHRoZSBkaXNwYXRjaGVyLgo+ID4gPiAg
ICoKPiA+ID4gLSAqIEBkaXNwYXRjaGVyOiBEaXNwYXRjaGVyIGluc3RhbmNlCj4gPiA+IC0gKi8K
PiA+ID4gLXZvaWQgZGlzcGF0Y2hlcl9oYW5kbGVfcmVjdl9yZWFkKERpc3BhdGNoZXIgKik7Cj4g
PiA+IC0KPiA+ID4gLS8qIGRpc3BhdGNoZXJfZ2V0X3JlY3ZfZmQKPiA+ID4gLSAqCj4gPiA+IC0g
KiBUaGlzIGZ1bmN0aW9uIHJldHVybnMgdGhlIGZpbGUgZGVzY3JpcHRvciB0aGF0IGlzIHVzZWQg
YnkgdGhlCj4gPiA+IHJlY2VpdmluZwo+ID4gPiAtICogdGhyZWFkIHRvIGxpc3RlbiBmb3IgaW5j
b21pbmcgbWVzc2FnZXMuIFlvdSBzaG91bGQgbm90IHJlYWQgb3Igd3JpdGUKPiA+ID4gLSAqIGRp
cmVjdGx5IHRvIHRoaXMgZmQsIGJ1dCBzaG91bGQgb25seSB1c2UgaXQgdG8gd2F0Y2ggZm9yIHJl
YWQgZXZlbnRzLgo+ID4gPiBXaGVuCj4gPiA+IC0gKiB0aGVyZSBpcyBhIHJlYWQgZXZlbnQsIHlv
dSBzaG91bGQgdXNlIGRpc3BhdGNoZXJfaGFuZGxlX3JlY3ZfcmVhZCgpCj4gPiA+IHRvCj4gPiA+
IC0gKiBoYW5kbGUgdGhlIGluY29taW5nIG1lc3NhZ2VzLgo+ID4gPiAtICoKPiA+ID4gLSAqIEBy
ZXR1cm46IHJlY2VpdmUgZmlsZSBkZXNjcmlwdG9yIG9mIHRoZSBkaXNwYXRjaGVyCj4gPiA+ICsg
KiBAcmV0dXJuOiBuZXdseSBjcmVhdGVkIHdhdGNoCj4gPiA+ICAgKi8KPiA+ID4gLWludCBkaXNw
YXRjaGVyX2dldF9yZWN2X2ZkKERpc3BhdGNoZXIgKik7Cj4gPiA+ICtTcGljZVdhdGNoICpkaXNw
YXRjaGVyX2NyZWF0ZV93YXRjaChEaXNwYXRjaGVyICpkaXNwYXRjaGVyLAo+ID4gPiBTcGljZUNv
cmVJbnRlcmZhY2VJbnRlcm5hbCAqY29yZSk7Cj4gPiA+ICAKPiA+ID4gIC8qIGRpc3BhdGNoZXJf
c2V0X29wYXF1ZQo+ID4gPiAgICoKPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9tYWluLWRpc3Bh
dGNoZXIuYyBiL3NlcnZlci9tYWluLWRpc3BhdGNoZXIuYwo+ID4gPiBpbmRleCA4MzllNzI0MmMu
LjJjYTY4YTRkMSAxMDA2NDQKPiA+ID4gLS0tIGEvc2VydmVyL21haW4tZGlzcGF0Y2hlci5jCj4g
PiA+ICsrKyBiL3NlcnZlci9tYWluLWRpc3BhdGNoZXIuYwo+ID4gPiBAQCAtMjQ3LDEzICsyNDcs
NiBAQCB2b2lkCj4gPiA+IG1haW5fZGlzcGF0Y2hlcl9jbGllbnRfZGlzY29ubmVjdChNYWluRGlz
cGF0Y2hlcgo+ID4gPiAqc2VsZiwgUmVkQ2xpZW50ICpjbGllbnQpCj4gPiA+ICAgICAgfQo+ID4g
PiAgfQo+ID4gPiAgCj4gPiA+IC1zdGF0aWMgdm9pZCBkaXNwYXRjaGVyX2hhbmRsZV9yZWFkKGlu
dCBmZCwgaW50IGV2ZW50LCB2b2lkICpvcGFxdWUpCj4gPiA+IC17Cj4gPiA+IC0gICAgRGlzcGF0
Y2hlciAqZGlzcGF0Y2hlciA9IG9wYXF1ZTsKPiA+ID4gLQo+ID4gPiAtICAgIGRpc3BhdGNoZXJf
aGFuZGxlX3JlY3ZfcmVhZChkaXNwYXRjaGVyKTsKPiA+ID4gLX0KPiA+ID4gLQo+ID4gPiAgLyoK
PiA+ID4gICAqIEZJWE1FOgo+ID4gPiAgICogUmVkcyByb3V0aW5lcyBzaG91bGRuJ3QgYmUgZXhw
b3NlZC4gSW5zdGVhZCByZWRzLmMgc2hvdWxkIHJlZ2lzdGVyCj4gPiA+ICAgdGhlCj4gPiA+ICAg
Y2FsbGJhY2tzLAo+ID4gPiBAQCAtMjc2LDEwICsyNjksNyBAQCB2b2lkIG1haW5fZGlzcGF0Y2hl
cl9jb25zdHJ1Y3RlZChHT2JqZWN0ICpvYmplY3QpCj4gPiA+ICAgICAgZGlzcGF0Y2hlcl9zZXRf
b3BhcXVlKERJU1BBVENIRVIoc2VsZiksIHNlbGYtPnByaXYtPnJlZHMpOwo+ID4gPiAgCj4gPiA+
ICAgICAgc2VsZi0+cHJpdi0+d2F0Y2ggPQo+ID4gPiAtICAgICAgICByZWRzX2NvcmVfd2F0Y2hf
YWRkKHNlbGYtPnByaXYtPnJlZHMsCj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ZGlzcGF0Y2hlcl9nZXRfcmVjdl9mZChESVNQQVRDSEVSKHNlbGYpKSwKPiA+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBTUElDRV9XQVRDSF9FVkVOVF9SRUFELAo+ID4gPiBkaXNwYXRj
aGVyX2hhbmRsZV9yZWFkLAo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgIERJU1BB
VENIRVIoc2VsZikpOwo+ID4gPiArICAgICAgICBkaXNwYXRjaGVyX2NyZWF0ZV93YXRjaChESVNQ
QVRDSEVSKHNlbGYpLAo+ID4gPiByZWRzX2dldF9jb3JlX2ludGVyZmFjZShzZWxmLT5wcml2LT5y
ZWRzKSk7Cj4gPiA+ICAgICAgZGlzcGF0Y2hlcl9yZWdpc3Rlcl9oYW5kbGVyKERJU1BBVENIRVIo
c2VsZiksCj4gPiA+ICAgICAgTUFJTl9ESVNQQVRDSEVSX0NIQU5ORUxfRVZFTlQsCj4gPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1haW5fZGlzcGF0Y2hlcl9oYW5kbGVfY2hh
bm5lbF9ldmVudCwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZW9m
KE1haW5EaXNwYXRjaGVyQ2hhbm5lbEV2ZW50TWVzc2FnZSksCj4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGZhbHNlKTsKPiA+ID4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQt
d29ya2VyLmMgYi9zZXJ2ZXIvcmVkLXdvcmtlci5jCj4gPiA+IGluZGV4IGIzMzM1YTUzYS4uOThh
NGE5ZGMzIDEwMDY0NAo+ID4gPiAtLS0gYS9zZXJ2ZXIvcmVkLXdvcmtlci5jCj4gPiA+ICsrKyBi
L3NlcnZlci9yZWQtd29ya2VyLmMKPiA+ID4gQEAgLTk4MCwxMyArOTgwLDYgQEAgc3RhdGljIHZv
aWQgcmVnaXN0ZXJfY2FsbGJhY2tzKERpc3BhdGNoZXIKPiA+ID4gKmRpc3BhdGNoZXIpCj4gPiA+
ICAKPiA+ID4gIAo+ID4gPiAgCj4gPiA+IC1zdGF0aWMgdm9pZCBoYW5kbGVfZGV2X2lucHV0KGlu
dCBmZCwgaW50IGV2ZW50LCB2b2lkICpvcGFxdWUpCj4gPiA+IC17Cj4gPiA+IC0gICAgRGlzcGF0
Y2hlciAqZGlzcGF0Y2hlciA9IG9wYXF1ZTsKPiA+ID4gLQo+ID4gPiAtICAgIGRpc3BhdGNoZXJf
aGFuZGxlX3JlY3ZfcmVhZChkaXNwYXRjaGVyKTsKPiA+ID4gLX0KPiA+ID4gLQo+ID4gPiAgdHlw
ZWRlZiBzdHJ1Y3QgUmVkV29ya2VyU291cmNlIHsKPiA+ID4gICAgICBHU291cmNlIHNvdXJjZTsK
PiA+ID4gICAgICBSZWRXb3JrZXIgKndvcmtlcjsKPiA+ID4gQEAgLTEwODYsOCArMTA3OSw3IEBA
IFJlZFdvcmtlciogcmVkX3dvcmtlcl9uZXcoUVhMSW5zdGFuY2UgKnF4bCkKPiA+ID4gICAgICBz
dGF0X2luaXRfY291bnRlcigmd29ya2VyLT50b3RhbF9sb29wX2NvdW50ZXIsIHJlZHMsICZ3b3Jr
ZXItPnN0YXQsCj4gPiA+ICAgICAgInRvdGFsX2xvb3BzIiwgVFJVRSk7Cj4gPiA+ICAKPiA+ID4g
ICAgICB3b3JrZXItPmRpc3BhdGNoX3dhdGNoID0KPiA+ID4gLSAgICAgICAgd29ya2VyLT5jb3Jl
LndhdGNoX2FkZCgmd29ya2VyLT5jb3JlLAo+ID4gPiBkaXNwYXRjaGVyX2dldF9yZWN2X2ZkKGRp
c3BhdGNoZXIpLAo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNQSUNFX1dB
VENIX0VWRU5UX1JFQUQsIGhhbmRsZV9kZXZfaW5wdXQsCj4gPiA+IGRpc3BhdGNoZXIpOwo+ID4g
PiArICAgICAgICBkaXNwYXRjaGVyX2NyZWF0ZV93YXRjaChkaXNwYXRjaGVyLCAmd29ya2VyLT5j
b3JlKTsKPiA+ID4gICAgICBzcGljZV9hc3NlcnQod29ya2VyLT5kaXNwYXRjaF93YXRjaCAhPSBO
VUxMKTsKPiA+ID4gIAo+ID4gPiAgICAgIEdTb3VyY2UgKnNvdXJjZSA9IGdfc291cmNlX25ldygm
d29ya2VyX3NvdXJjZV9mdW5jcywKPiA+ID4gICAgICBzaXplb2YoUmVkV29ya2VyU291cmNlKSk7
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
