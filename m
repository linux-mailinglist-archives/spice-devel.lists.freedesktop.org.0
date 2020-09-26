Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DCD27975F
	for <lists+spice-devel@lfdr.de>; Sat, 26 Sep 2020 08:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96ABD6EDA3;
	Sat, 26 Sep 2020 06:56:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754F36EDA3
 for <spice-devel@lists.freedesktop.org>; Sat, 26 Sep 2020 06:56:53 +0000 (UTC)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601103412;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vTSgxfivAOkor701R02V0JxkvMwDPiujR1ckTVFoaBM=;
 b=Ar/X+vFnui5qh82mEyMtv67HeSUMZfTOelrzRzdW2SPmklICx6d3rGFZGmS3rfWV3UxCA5
 rhh6kSEgGmE3e8RpoecIdvVazGBn0QZ+Aa4iB/6UO8nCF48bvOcFBJyp9/+3GCU8FDPpZf
 7QrTj8+McvUFXHw/1XBfgnmUWSPOxus=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-LpADMo6AO56bDwbfSZ59Aw-1; Sat, 26 Sep 2020 02:56:48 -0400
X-MC-Unique: LpADMo6AO56bDwbfSZ59Aw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E971801AC9;
 Sat, 26 Sep 2020 06:56:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 161F85C1BB;
 Sat, 26 Sep 2020 06:56:46 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A6B7C18095FF;
 Sat, 26 Sep 2020 06:56:46 +0000 (UTC)
Date: Sat, 26 Sep 2020 02:56:46 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: marcandre lureau <marcandre.lureau@redhat.com>
Message-ID: <1655860639.2196690.1601103406201.JavaMail.zimbra@redhat.com>
In-Reply-To: <20200925135057.291556-6-marcandre.lureau@redhat.com>
References: <20200925135057.291556-1-marcandre.lureau@redhat.com>
 <20200925135057.291556-6-marcandre.lureau@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.2, 10.4.195.5]
Thread-Topic: spice: get monitors physical dimension
Thread-Index: zbfOQqaPgi55+NGDPsw22Lqrs539EQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fziglio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] [PATCH v2 5/6] spice: get monitors physical
 dimension
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org, "Michael S. Tsirkin" <mst@redhat.com>,
 qemu-devel@nongnu.org, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBGcm9tOiBNYXJjLUFuZHLDqSBMdXJlYXUgPG1hcmNhbmRyZS5sdXJlYXVAcmVkaGF0LmNv
bT4KPiAKPiBOb3RlIHRoYXQgZm9yIGNvbnNpc3RlbmN5LCB3ZSB1c2UgdGhlIHNhbWUgbG9naWMg
YXMgTW9uaXRvcnNDb25maWcgdG8KPiBmaWd1cmUgb3V0IHRoZSBhc3NvY2lhdGVkIG1vbml0b3Iu
IEhvd2V2ZXIsIEkgY2FuJ3QgZmluZCB0cmFjZXMgb2YgdGhlCj4gZGlzY3Vzc2lvbi9wYXRjaGVz
IGFib3V0IHRoZSAibmV3IHNwaWNlLXNlcnZlciIgYmVoYXZpb3VyOiBpdCBzdGlsbCB1c2VzCj4g
dGhlIG11bHRpcGxlLWNvbmZpZ3VyYXRpb25zIHBhdGggaW4gZ2l0IG1hc3Rlci4KPiAKClRoaXMg
cGFydCBpcyBub3cgb2Jzb2xldGUuCgo+IFNpZ25lZC1vZmYtYnk6IE1hcmMtQW5kcsOpIEx1cmVh
dSA8bWFyY2FuZHJlLmx1cmVhdUByZWRoYXQuY29tPgo+IC0tLQo+ICBpbmNsdWRlL3VpL2NvbnNv
bGUuaCB8IDMgKysrCj4gIHVpL3NwaWNlLWRpc3BsYXkuYyAgIHwgOSArKysrKysrKysKPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
dWkvY29uc29sZS5oIGIvaW5jbHVkZS91aS9jb25zb2xlLmgKPiBpbmRleCAzNTNkMmU0OWExLi5l
NzMwM2Q4Yjk4IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvdWkvY29uc29sZS5oCj4gKysrIGIvaW5j
bHVkZS91aS9jb25zb2xlLmgKPiBAQCAtMTE5LDYgKzExOSw5IEBAIHR5cGVkZWYgc3RydWN0IERp
c3BsYXlTdXJmYWNlIHsKPiAgfSBEaXNwbGF5U3VyZmFjZTsKPiAgCj4gIHR5cGVkZWYgc3RydWN0
IFFlbXVVSUluZm8gewo+ICsgICAgLyogcGh5c2ljYWwgZGltZW5zaW9uICovCj4gKyAgICB1aW50
MTZfdCB3aWR0aF9tbTsKPiArICAgIHVpbnQxNl90IGhlaWdodF9tbTsKPiAgICAgIC8qIGdlb21l
dHJ5ICovCj4gICAgICBpbnQgICAgICAgeG9mZjsKPiAgICAgIGludCAgICAgICB5b2ZmOwo+IGRp
ZmYgLS1naXQgYS91aS9zcGljZS1kaXNwbGF5LmMgYi91aS9zcGljZS1kaXNwbGF5LmMKPiBpbmRl
eCBiMzA0YzEzMTQ5Li5hMTBmNzJiYzVjIDEwMDY0NAo+IC0tLSBhL3VpL3NwaWNlLWRpc3BsYXku
Ywo+ICsrKyBiL3VpL3NwaWNlLWRpc3BsYXkuYwo+IEBAIC02NzksNyArNjc5LDE2IEBAIHN0YXRp
YyBpbnQgaW50ZXJmYWNlX2NsaWVudF9tb25pdG9yc19jb25maWcoUVhMSW5zdGFuY2UKPiAqc2lu
LAo+ICAgICAgICAgIGluZm8ud2lkdGggID0gbWMtPm1vbml0b3JzW2hlYWRdLndpZHRoOwo+ICAg
ICAgICAgIGluZm8uaGVpZ2h0ID0gbWMtPm1vbml0b3JzW2hlYWRdLmhlaWdodDsKPiAgICAgIH0K
PiArI2lmIFNQSUNFX1NFUlZFUl9WRVJTSU9OID49IDB4MDAwZTA0IC8qIHJlbGVhc2UgMC4xNC40
ICovCj4gKyAgICBpZiAobWMtPmZsYWdzICYgVkRfQUdFTlRfQ09ORklHX01PTklUT1JTX0ZMQUdf
UEhZU0lDQUxfU0laRSkgewo+ICsgICAgICAgIFZEQWdlbnRNb25pdG9yTU0gKm1tID0gKHZvaWQg
KikmbWMtPm1vbml0b3JzW21jLT5udW1fb2ZfbW9uaXRvcnNdOwo+ICAKPiArICAgICAgICBpZiAo
bWMtPm51bV9vZl9tb25pdG9ycyA+IGhlYWQpIHsKClRoaXMgY2hlY2sgaXMgdGhlIHNhbWUgb2Yg
YWJvdmUuIFdvbid0IGJlIGJldHRlciB0byBtb3ZlIGFsIHRoZXNlIGJsb2NrCmluc2lkZSB0aGUg
YWJvdmUgaWYgYmxvY2sgYW5kIHJlbW92ZSBoZXJlPwoKPiArICAgICAgICAgICAgaW5mby53aWR0
aF9tbSA9IG1tW2hlYWRdLndpZHRoOwo+ICsgICAgICAgICAgICBpbmZvLmhlaWdodF9tbSA9IG1t
W2hlYWRdLmhlaWdodDsKPiArICAgICAgICB9Cj4gKyAgICB9Cj4gKyNlbmRpZgo+ICAgICAgdHJh
Y2VfcWVtdV9zcGljZV91aV9pbmZvKHNzZC0+cXhsLmlkLCBpbmZvLndpZHRoLCBpbmZvLmhlaWdo
dCk7Cj4gICAgICBkcHlfc2V0X3VpX2luZm8oc3NkLT5kY2wuY29uLCAmaW5mbyk7Cj4gICAgICBy
ZXR1cm4gMTsKCkZyZWRpYW5vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWwK
