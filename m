Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12485BCAAC
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 16:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921AC88DAE;
	Tue, 24 Sep 2019 14:55:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28AD788DAE
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:55:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 740D3307D923
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:55:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 69A125B69A
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 14:55:22 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A5974EE50;
 Tue, 24 Sep 2019 14:55:22 +0000 (UTC)
Date: Tue, 24 Sep 2019 10:55:22 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1977726111.3099943.1569336922117.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190924140654.9351-1-ssheribe@redhat.com>
References: <20190924140654.9351-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.8]
Thread-Topic: gstreamer: Use the element-setup signal instead of
 deep-element-added
Thread-Index: zF6pF4b10OTaCej5e7Wt5xXuRGf8jQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 24 Sep 2019 14:55:22 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] gstreamer: Use the
 element-setup signal instead of deep-element-added
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

PiAKPiBJdHMgZnVuY3Rpb25hbGx5IGlzIGVxdWl2YWxlbnQgdG8gY29ubmVjdGluZyB0byB0aGUg
ZGVlcC1lbGVtZW50LWFkZGVkCj4gc2lnbmFsLCBidXQgYSBiaXQgbW9yZSBjb252ZW5pZW50Cj4g
CgpXaHkgaXMgbW9yZSBjb252ZW5pZW50PyBJZiB3ZSBuZWVkICJiaW4iIGluIHRoZSBmdXR1cmUg
d2Ugd29uJ3QgaGF2ZSBpdC4KCj4gU2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJp
YmVAcmVkaGF0LmNvbT4KPiAtLS0KPiAgc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyB8IDUgKyst
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1nc3QuYyBiL3NyYy9jaGFubmVsLWRp
c3BsYXktZ3N0LmMKPiBpbmRleCA2ZmNjZjYyLi40MzczMjhiIDEwMDY0NAo+IC0tLSBhL3NyYy9j
aGFubmVsLWRpc3BsYXktZ3N0LmMKPiArKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jCj4g
QEAgLTQ3MSw4ICs0NzEsNyBAQCBzaW5rX2V2ZW50X3Byb2JlKEdzdFBhZCAqcGFkLCBHc3RQYWRQ
cm9iZUluZm8gKmluZm8sCj4gZ3BvaW50ZXIgZGF0YSkKPiAgCj4gIC8qIFRoaXMgZnVuY3Rpb24g
aXMgY2FsbGVkIHRvIHVzZWQgdG8gc2V0IGEgcHJvYmUgb24gdGhlIHNpbmsgKi8KPiAgc3RhdGlj
IHZvaWQKPiAtZGVlcF9lbGVtZW50X2FkZGVkX2NiKEdzdEJpbiAqcGlwZWxpbmUsIEdzdEJpbiAq
YmluLCBHc3RFbGVtZW50ICplbGVtZW50LAo+IC0gICAgICAgICAgICAgICAgICAgICAgU3BpY2VH
c3REZWNvZGVyICpkZWNvZGVyKQo+ICtlbGVtZW50X3NldHVwX2NiKEdzdEVsZW1lbnQgKnBpcGVs
aW5lLCBHc3RFbGVtZW50ICplbGVtZW50LCBTcGljZUdzdERlY29kZXIKPiAqZGVjb2RlcikKPiAg
ewo+ICAgICAgLyogQXR0YWNoIGEgcHJvYmUgdG8gdGhlIHNpbmsgdG8gdXBkYXRlIHRoZSBzdGF0
aXN0aWNzICovCj4gICAgICBpZiAoR1NUX0lTX0JBU0VfU0lOSyhlbGVtZW50KSkgewo+IEBAIC01
NDMsNyArNTQyLDcgQEAgc3RhdGljIGdib29sZWFuIGNyZWF0ZV9waXBlbGluZShTcGljZUdzdERl
Y29kZXIgKmRlY29kZXIpCj4gICNlbmRpZgo+ICAgICAgfQo+ICAKPiAtICAgIGdfc2lnbmFsX2Nv
bm5lY3QocGxheWJpbiwgImRlZXAtZWxlbWVudC1hZGRlZCIsCj4gR19DQUxMQkFDSyhkZWVwX2Vs
ZW1lbnRfYWRkZWRfY2IpLCBkZWNvZGVyKTsKPiArICAgIGdfc2lnbmFsX2Nvbm5lY3QocGxheWJp
biwgImVsZW1lbnQtc2V0dXAiLCBHX0NBTExCQUNLKGVsZW1lbnRfc2V0dXBfY2IpLAo+IGRlY29k
ZXIpOwo+ICAgICAgZ19zaWduYWxfY29ubmVjdChwbGF5YmluLCAic291cmNlLXNldHVwIiwgR19D
QUxMQkFDSyhhcHBfc291cmNlX3NldHVwKSwKPiAgICAgIGRlY29kZXIpOwo+ICAKPiAgICAgIGdf
b2JqZWN0X3NldChwbGF5YmluLAoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
