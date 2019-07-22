Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E84E96FAC0
	for <lists+spice-devel@lfdr.de>; Mon, 22 Jul 2019 09:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8045389BD4;
	Mon, 22 Jul 2019 07:53:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 512CE89BD4
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 07:53:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C829C3091799
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 07:53:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BDB1A5D704
 for <spice-devel@lists.freedesktop.org>; Mon, 22 Jul 2019 07:53:40 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B01B51800207;
 Mon, 22 Jul 2019 07:53:40 +0000 (UTC)
Date: Mon, 22 Jul 2019 03:53:39 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1789360834.2011644.1563782019004.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190721120326.13779-1-ssheribe@redhat.com>
References: <20190721120326.13779-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.4]
Thread-Topic: gst-plugin: receive encoder properties as command parameters
Thread-Index: j8zoSVZ6SqRePVh0w8EPGrP8C2mSug==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Mon, 22 Jul 2019 07:53:40 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v3 spice-streaming-agent] gst-plugin:
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

PiAKPiBUaGlzIGFsbG93cyB0byBzZXQgcGx1Z2luIGtleT12YWx1ZSBwcm9wZXJ0aWVzIG9uIHJ1
biB0aW1lLgo+IFRvIGFkZCBlbmNvZGVyIHBsdWdpbiBwcm9wZXJ0eSB1c2UgdGhlIGZvbGxvd2lu
ZyBzeW50YXg6Cj4gLWMgZ3N0LnByb3A9InByb3BlcnR5PXZhbHVlIiAtYyBnc3QucHJvcD0icHJv
cGVydHkyPXZhbHVlMiIuLi4KPiBNYWtlIHN1cmUgc3ludGF4IGlzIGFjY3VyYXRlIGFuZCB0aGF0
IHRoZSBwcm9wZXJ0eSBpcyBzdXBwb3J0ZWQgYnkKPiB0aGUgY2hvc2VuIHBsdWdpbiwgd3Jvbmcg
cHJvcGVydGllcyBtYXkgaWdub3JlZCBzaWxlbnRseS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTbmly
IFNoZXJpYmVyIDxzc2hlcmliZUByZWRoYXQuY29tPgoKQWNrZWQuIExpbmUgbGltaXQgc2hvdWxk
IGJlIDEwMCBjaGFyYWN0ZXJzLgoKPiAtLS0KPiBDaGFuZ2VzIGZyb20gdjI6Cj4gLU1haW5seSBj
Kysgc3R5bGUgYW5kIG90aGVyIG1pbm9yIGNoYW5nZXMKPiAKPiAtLS0KPiAgc3JjL2dzdC1wbHVn
aW4uY3BwIHwgMjUgKysrKysrKysrKysrKysrKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MjAgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL2dz
dC1wbHVnaW4uY3BwIGIvc3JjL2dzdC1wbHVnaW4uY3BwCj4gaW5kZXggNGU4MDJmMS4uYTYwYWZi
NSAxMDA2NDQKPiAtLS0gYS9zcmMvZ3N0LXBsdWdpbi5jcHAKPiArKysgYi9zcmMvZ3N0LXBsdWdp
bi5jcHAKPiBAQCAtMzUsNiArMzUsNyBAQCBzdHJ1Y3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdz
Cj4gICAgICBpbnQgZnBzID0gMjU7Cj4gICAgICBTcGljZVZpZGVvQ29kZWNUeXBlIGNvZGVjID0g
U1BJQ0VfVklERU9fQ09ERUNfVFlQRV9IMjY0Owo+ICAgICAgc3RkOjpzdHJpbmcgZW5jb2RlcjsK
PiArICAgIHN0ZDo6dmVjdG9yPHN0ZDo6cGFpcjxzdGQ6OnN0cmluZywgc3RkOjpzdHJpbmc+PiBw
cm9wX3BhaXJzOwo+ICB9Owo+ICAKPiAgdGVtcGxhdGUgPHR5cGVuYW1lIFQ+Cj4gQEAgLTE3OSwx
MSArMTgwLDE4IEBAIEdzdEVsZW1lbnQKPiAqR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpnZXRfZW5j
b2Rlcl9wbHVnaW4oY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHQKPiAgICAgIH0KPiAgCj4gICAg
ICBlbmNvZGVyID0gZmFjdG9yeSA/IGdzdF9lbGVtZW50X2ZhY3RvcnlfY3JlYXRlKGZhY3Rvcnks
ICJlbmNvZGVyIikgOgo+ICAgICAgbnVsbHB0cjsKPiAtICAgIGlmIChlbmNvZGVyKSB7IC8vIElu
dmFsaWQgcHJvcGVydGllcyB3aWxsIGJlIGlnbm9yZWQgc2lsZW50bHkKPiAtICAgICAgICAvKiB4
MjY0ZW5jIHByb3BlcnRpZXMgKi8KPiAtICAgICAgICBnc3RfdXRpbF9zZXRfb2JqZWN0X2FyZyhH
X09CSkVDVChlbmNvZGVyKSwgInR1bmUiLCAiemVyb2xhdGVuY3kiKTsvLwo+IHN0aWxsaW1hZ2Us
IGZhc3RkZWNvZGUsIHplcm9sYXRlbmN5Cj4gLSAgICAgICAgZ3N0X3V0aWxfc2V0X29iamVjdF9h
cmcoR19PQkpFQ1QoZW5jb2RlciksICJiZnJhbWVzIiwgIjAiKTsKPiAtICAgICAgICBnc3RfdXRp
bF9zZXRfb2JqZWN0X2FyZyhHX09CSkVDVChlbmNvZGVyKSwgInNwZWVkLXByZXNldCIsICIxIik7
Ly8KPiAxLXVsdHJhZmFzdCwgNi1tZWQsIDktdmVyeXNsb3cKPiArICAgIGlmIChlbmNvZGVyKSB7
IC8vIFNldCBlbmNvZGVyIHByb3BlcnRpZXMKPiArICAgICAgICBmb3IgKGNvbnN0IGF1dG8gJnBy
b3AgOiBzZXR0aW5ncy5wcm9wX3BhaXJzKSB7Cj4gKyAgICAgICAgICAgIGNvbnN0IGF1dG8gJm5h
bWUgPSBwcm9wLmZpcnN0Owo+ICsgICAgICAgICAgICBjb25zdCBhdXRvICZ2YWx1ZSA9IHByb3Au
c2Vjb25kOwo+ICsgICAgICAgICAgICBpZiAoIWdfb2JqZWN0X2NsYXNzX2ZpbmRfcHJvcGVydHko
R19PQkpFQ1RfR0VUX0NMQVNTKGVuY29kZXIpLAo+IG5hbWUuY19zdHIoKSkpIHsKPiArICAgICAg
ICAgICAgICAgIGdzdF9zeXNsb2coTE9HX1dBUk5JTkcsICInJXMnIHByb3BlcnR5IHdhcyBub3Qg
Zm91bmQgZm9yCj4gdGhpcyBlbmNvZGVyIiwgbmFtZS5jX3N0cigpKTsKPiArICAgICAgICAgICAg
ICAgIGNvbnRpbnVlOwo+ICsgICAgICAgICAgICB9Cj4gKyAgICAgICAgICAgIGdzdF9zeXNsb2co
TE9HX05PVElDRSwgIlRyeWluZyB0byBzZXQgZW5jb2RlciBwcm9wZXJ0eTogJyVzID0KPiAlcyci
LCBuYW1lLmNfc3RyKCksIHZhbHVlLmNfc3RyKCkpOwo+ICsgICAgICAgICAgICAvKiBJbnZhbGlk
IHByb3BlcnRpZXMgd2lsbCBiZSBpZ25vcmVkIHNpbGVudGx5ICovCj4gKyAgICAgICAgICAgIGdz
dF91dGlsX3NldF9vYmplY3RfYXJnKEdfT0JKRUNUKGVuY29kZXIpLCBuYW1lLmNfc3RyKCksCj4g
dmFsdWUuY19zdHIoKSk7Cj4gKyAgICAgICAgfQo+ICAgICAgfQo+ICAgICAgZ3N0X3BsdWdpbl9m
ZWF0dXJlX2xpc3RfZnJlZShmaWx0ZXJlZCk7Cj4gICAgICBnc3RfcGx1Z2luX2ZlYXR1cmVfbGlz
dF9mcmVlKGVuY29kZXJzKTsKPiBAQCAtNDQ5LDYgKzQ1NywxMyBAQCB2b2lkIEdzdHJlYW1lclBs
dWdpbjo6UGFyc2VPcHRpb25zKGNvbnN0IENvbmZpZ3VyZU9wdGlvbgo+ICpvcHRpb25zKQo+ICAg
ICAgICAgICAgICB9Cj4gICAgICAgICAgfSBlbHNlIGlmIChuYW1lID09ICJnc3QuZW5jb2RlciIp
IHsKPiAgICAgICAgICAgICAgc2V0dGluZ3MuZW5jb2RlciA9IHZhbHVlOwo+ICsgICAgICAgIH0g
ZWxzZSBpZiAobmFtZSA9PSAiZ3N0LnByb3AiKSB7Cj4gKyAgICAgICAgICAgIHNpemVfdCBwb3Mg
PSB2YWx1ZS5maW5kKCc9Jyk7Cj4gKyAgICAgICAgICAgIGlmIChwb3MgPT0gMCB8fCBwb3MgPj0g
dmFsdWUuc2l6ZSgpIC0gMSkgewo+ICsgICAgICAgICAgICAgICAgZ3N0X3N5c2xvZyhMT0dfV0FS
TklORywgIlByb3BlcnR5IGlucHV0IGlzIGludmFsaWQgKCclcycKPiBJZ25vcmVkKSIsIHZhbHVl
LmNfc3RyKCkpOwo+ICsgICAgICAgICAgICAgICAgY29udGludWU7Cj4gKyAgICAgICAgICAgIH0K
PiArICAgICAgICAgICAgc2V0dGluZ3MucHJvcF9wYWlycy5wdXNoX2JhY2sobWFrZV9wYWlyKHZh
bHVlLnN1YnN0cigwLCBwb3MpLAo+IHZhbHVlLnN1YnN0cihwb3MgKyAxKSkpOwo+ICAgICAgICAg
IH0KPiAgICAgIH0KPiAgfQoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
