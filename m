Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAD26BE8C
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 16:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 415A36E095;
	Wed, 17 Jul 2019 14:52:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6A86E095
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 14:52:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4A8E7307FBCB
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 14:52:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 40BF260BE2
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 14:52:20 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 376B418089C8;
 Wed, 17 Jul 2019 14:52:20 +0000 (UTC)
Date: Wed, 17 Jul 2019 10:52:20 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <466094510.601436.1563375140052.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190717143943.8126-1-ssheribe@redhat.com>
References: <20190717143943.8126-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.28]
Thread-Topic: gst-plugin: receive encoder properties as command parameters
Thread-Index: mriz5gxTyL6HB7HyNs4iB0Rzr3klLw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 17 Jul 2019 14:52:20 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v2 spice-streaming-agent] gst-plugin:
 receive encoder properties as command parameters
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBGcm9tOiB0ZXN0IDx0ZXN0QGxvY2FsaG9zdC5sb2NhbGRvbWFpbj4KPiAKPiBUaGlzIGFs
bG93cyB0byBzZXQgcGx1Z2luIGtleT12YWx1ZSBwcm9wZXJ0aWVzIG9uIHJ1biB0aW1lLgo+IFRv
IGFkZCBlbmNvZGVyIHBsdWdpbiBwcm9wZXJ0eSB1c2UgdGhlIGZvbGxvd2luZyBzeW50YXg6Cj4g
LWMgZ3N0LnByb3A9InByb3BlcnR5PXZhbHVlIiAtYyBnc3QucHJvcD0icHJvcGVydHkyPXZhbHVl
MiIuLi4KPiBNYWtlIHN1cmUgc3ludGF4IGlzIGFjY3VyYXRlIGFuZCB0aGF0IHRoZSBwcm9wZXJ0
eSBpcyBzdXBwb3J0ZWQgYnkKPiB0aGUgY2hvc2VuIHBsdWdpbiwgd3JvbmcgcHJvcGVydGllcyBt
YXkgaWdub3JlZCBzaWxlbnRseS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTbmlyIFNoZXJpYmVyIDxz
c2hlcmliZUByZWRoYXQuY29tPgo+IC0tLQo+IAo+IERpZmZlcmVuY2UgZnJvbSB2MToKPiAtVmFy
aWFibGVzIG5hbWluZwo+IC1Vc2luZyB2ZWN0b3Igb2YgcGFpcnMKPiAtQWRkIHdhcm5pbmdzIGZv
ciB3cm9uZyBpbnB1dAo+IC1TZXQgcHJvcGV0aWVzIGFmdGVyIGxvZyBtc2cKPiAtRml4IGNvbW1p
dCBtc2cKPiAKPiAqVGhlcmUgaXMgb25seSBiYXNpYyBpbnB1dCB2YWxpZGF0aW9uLCBhc3N1bWlu
ZyB0aGUgdXNlciBpcwo+ICBhY2N1cmF0ZSB3aXRoIHRoZSBwcm9wZXJ0aWVzIGhlIHNldHMuCj4g
IEN1cnJlbnRseSB0aGUgY29kZSBjaGVja3MgcHJvcGVydHkgbmFtZSBleGlzdHMgZm9yIHRoZSBl
bmNvZGVyCj4gIG9iamVjdCwgaSBoYWQgYSB2ZXJzaW9uIHRoYXQgY2hlY2tzIGFsc28gdGhlIHZh
bHVlIG1hdGNoZXMgdGhlCj4gIHByb3BlcnR5IHR5cGUgYnV0IGl0IHNlZW1zIHRvIGJlIG92ZXIt
Y29kaW5nIGZvciB0aGlzIHB1cnBvc2UuCj4gIAo+IC0tLQo+ICBzcmMvZ3N0LXBsdWdpbi5jcHAg
fCAyOCArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvZ3N0LXBs
dWdpbi5jcHAgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKPiBpbmRleCA0ZTgwMmYxLi4zMjcwY2NlIDEw
MDY0NAo+IC0tLSBhL3NyYy9nc3QtcGx1Z2luLmNwcAo+ICsrKyBiL3NyYy9nc3QtcGx1Z2luLmNw
cAo+IEBAIC0zNSw2ICszNSw3IEBAIHN0cnVjdCBHc3RyZWFtZXJFbmNvZGVyU2V0dGluZ3MKPiAg
ICAgIGludCBmcHMgPSAyNTsKPiAgICAgIFNwaWNlVmlkZW9Db2RlY1R5cGUgY29kZWMgPSBTUElD
RV9WSURFT19DT0RFQ19UWVBFX0gyNjQ7Cj4gICAgICBzdGQ6OnN0cmluZyBlbmNvZGVyOwo+ICsg
ICAgc3RkOjp2ZWN0b3I8c3RkOjpwYWlyPHN0ZDo6c3RyaW5nLCBzdGQ6OnN0cmluZz4+IHByb3Bf
cGFpcnM7Cj4gIH07Cj4gIAo+ICB0ZW1wbGF0ZSA8dHlwZW5hbWUgVD4KPiBAQCAtMTc5LDExICsx
ODAsMTggQEAgR3N0RWxlbWVudAo+ICpHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OmdldF9lbmNvZGVy
X3BsdWdpbihjb25zdCBHc3RyZWFtZXJFbmNvZGVyU2V0dAo+ICAgICAgfQo+ICAKPiAgICAgIGVu
Y29kZXIgPSBmYWN0b3J5ID8gZ3N0X2VsZW1lbnRfZmFjdG9yeV9jcmVhdGUoZmFjdG9yeSwgImVu
Y29kZXIiKSA6Cj4gICAgICBudWxscHRyOwo+IC0gICAgaWYgKGVuY29kZXIpIHsgLy8gSW52YWxp
ZCBwcm9wZXJ0aWVzIHdpbGwgYmUgaWdub3JlZCBzaWxlbnRseQo+IC0gICAgICAgIC8qIHgyNjRl
bmMgcHJvcGVydGllcyAqLwo+IC0gICAgICAgIGdzdF91dGlsX3NldF9vYmplY3RfYXJnKEdfT0JK
RUNUKGVuY29kZXIpLCAidHVuZSIsICJ6ZXJvbGF0ZW5jeSIpOy8vCj4gc3RpbGxpbWFnZSwgZmFz
dGRlY29kZSwgemVyb2xhdGVuY3kKPiAtICAgICAgICBnc3RfdXRpbF9zZXRfb2JqZWN0X2FyZyhH
X09CSkVDVChlbmNvZGVyKSwgImJmcmFtZXMiLCAiMCIpOwo+IC0gICAgICAgIGdzdF91dGlsX3Nl
dF9vYmplY3RfYXJnKEdfT0JKRUNUKGVuY29kZXIpLCAic3BlZWQtcHJlc2V0IiwgIjEiKTsvLwo+
IDEtdWx0cmFmYXN0LCA2LW1lZCwgOS12ZXJ5c2xvdwo+ICsgICAgaWYgKGVuY29kZXIpIHsgLy8g
U2V0IGVuY29kZXIgcHJvcGVydGllcwo+ICsgICAgICAgIGZvciAoaW50IGkgPSAwOyBpIDwgc2V0
dGluZ3MucHJvcF9wYWlycy5zaXplKCk7IGkrKykgewoKSSB3b3VsZCB1c2UgYSBzaW1wbGUKCiAg
IGZvciAoY29uc3QgYXV0byAmcHJvcDogc2V0dGluZ3MucHJvcF9wYWlycykgewoKPiArICAgICAg
ICAgICAgY29uc3QgY2hhciAqcHJvcF9uYW1lID0gc2V0dGluZ3MucHJvcF9wYWlyc1tpXS5maXJz
dC5jX3N0cigpOwoKSSB3b3VsZCBwZXJzb25hbGx5IGF2b2lkIHRoZSB0ZW1wIGFuZCB1c2UgInBy
b3AuZmlyc3QuY19zdHIoKSIgYmVsb3cKb3IgdXNlIGFuIGFsaWFzIGxpa2UKCiAgICAgICAgICAg
ICAgIGNvbnN0IGF1dG8gJm5hbWUgPSBwcm9wLmZpcnN0OwogICAgICAgICAgICAgICBjb25zdCBh
dXRvICZ2YWx1ZSA9IHByb3Auc2Vjb25kOwoKPiArICAgICAgICAgICAgaWYgKCFnX29iamVjdF9j
bGFzc19maW5kX3Byb3BlcnR5KEdfT0JKRUNUX0dFVF9DTEFTUyhlbmNvZGVyKSwKPiBwcm9wX25h
bWUpKSB7Cj4gKyAgICAgICAgICAgICAgICBnc3Rfc3lzbG9nKExPR19XQVJOSU5HLCAiJyVzJyBw
cm9wZXJ0eSB3YXMgbm90IGZvdW5kIGZvcgo+IHRoaXMgZW5jb2RlciIsIHByb3BfbmFtZSk7Cj4g
KyAgICAgICAgICAgICAgICBjb250aW51ZTsKPiArICAgICAgICAgICAgfQo+ICsgICAgICAgICAg
ICBjb25zdCBjaGFyICpwcm9wX3ZhbCA9IHNldHRpbmdzLnByb3BfcGFpcnNbaV0uc2Vjb25kLmNf
c3RyKCk7Cj4gKyAgICAgICAgICAgIGdzdF9zeXNsb2coTE9HX05PVElDRSwgIlRyeWluZyB0byBz
ZXQgZW5jb2RlciBwcm9wZXJ0eTogJyVzID0KPiAlcyciLCBwcm9wX25hbWUsIHByb3BfdmFsKTsK
PiArICAgICAgICAgICAgLyogSW52YWxpZCBwcm9wZXJ0aWVzIHdpbGwgYmUgaWdub3JlZCBzaWxl
bnRseSAqLwo+ICsgICAgICAgICAgICBnc3RfdXRpbF9zZXRfb2JqZWN0X2FyZyhHX09CSkVDVChl
bmNvZGVyKSwgcHJvcF9uYW1lLCBwcm9wX3ZhbCk7Cj4gKyAgICAgICAgfQo+ICAgICAgfQo+ICAg
ICAgZ3N0X3BsdWdpbl9mZWF0dXJlX2xpc3RfZnJlZShmaWx0ZXJlZCk7Cj4gICAgICBnc3RfcGx1
Z2luX2ZlYXR1cmVfbGlzdF9mcmVlKGVuY29kZXJzKTsKPiBAQCAtNDQ5LDYgKzQ1NywxNiBAQCB2
b2lkIEdzdHJlYW1lclBsdWdpbjo6UGFyc2VPcHRpb25zKGNvbnN0IENvbmZpZ3VyZU9wdGlvbgo+
ICpvcHRpb25zKQo+ICAgICAgICAgICAgICB9Cj4gICAgICAgICAgfSBlbHNlIGlmIChuYW1lID09
ICJnc3QuZW5jb2RlciIpIHsKPiAgICAgICAgICAgICAgc2V0dGluZ3MuZW5jb2RlciA9IHZhbHVl
Owo+ICsgICAgICAgIH0gZWxzZSBpZiAobmFtZSA9PSAiZ3N0LnByb3AiKSB7Cj4gKyAgICAgICAg
ICAgIHN0ZDo6c3RyaW5nIHByb3BfbmFtZSwgcHJvcF92YWw7Cj4gKyAgICAgICAgICAgIHNpemVf
dCBwb3MgPSB2YWx1ZS5maW5kKCc9Jyk7Cj4gKyAgICAgICAgICAgIGlmICghcG9zIHx8IHBvcyA+
PSB2YWx1ZS5zaXplKCkgLSAxKSB7CgpJIHdvdWxkIHVzZSBhCgogICBpZiAocG9zID09IHN0ZDo6
c3RyaW5nOjpucG9zIHx8IHBvcyA9PSAwKSB7Cgo+ICsgICAgICAgICAgICAgICAgZ3N0X3N5c2xv
ZyhMT0dfV0FSTklORywgIlByb3BlcnR5IGlucHV0IGlzIGludmFsaWQgKCclcycKPiBJZ25vcmVk
KSIsIHZhbHVlLmNfc3RyKCkpOwo+ICsgICAgICAgICAgICAgICAgY29udGludWU7Cj4gKyAgICAg
ICAgICAgIH0KPiArICAgICAgICAgICAgcHJvcF9uYW1lID0gdmFsdWUuc3Vic3RyKDAsIHBvcyk7
Cj4gKyAgICAgICAgICAgIHByb3BfdmFsID0gdmFsdWUuc3Vic3RyKHBvcyArIDEpOwoKV2h5IG5v
dCB1c2UgYXV0byBhbmQgYXZvaWQgc2VwYXJhdGVkIGRlY2xhcmF0aW9uPyBQb3RlbnRpYWxseSB0
aGlzIHdpbGwgYXZvaWQKY29uc3RydWN0aW5nIGVtcHR5IHN0cmluZyBhbmQgdGhlbiBjaGFuZ2lu
ZyB0aGVtLgoKPiArICAgICAgICAgICAgc2V0dGluZ3MucHJvcF9wYWlycy5wdXNoX2JhY2sobWFr
ZV9wYWlyKHByb3BfbmFtZSwgcHJvcF92YWwpKTsKPiAgICAgICAgICB9Cj4gICAgICB9Cj4gIH0K
CkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
