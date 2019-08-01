Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9B77DF21
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 17:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69786E6F2;
	Thu,  1 Aug 2019 15:30:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8EA56E6F2
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:30:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 49E132F366F
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:30:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BA9919D7A
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:30:33 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 320B71800202;
 Thu,  1 Aug 2019 15:30:33 +0000 (UTC)
Date: Thu, 1 Aug 2019 11:30:32 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <669939202.4201626.1564673432892.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190801150119.29179-1-ssheribe@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.29]
Thread-Topic: gst-plugin: Allow ANY memory type to pass from convertor to
 encoder
Thread-Index: oGg4F+FMgSZz1MEPaUA95llh4XSFfw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 01 Aug 2019 15:30:33 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 1/4] gst-plugin:
 Allow ANY memory type to pass from convertor to encoder
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

TG9va3MgZmluZS4KCkJ1dCB3aGF0IGFyZSB0aGUgZGlmZmVyZW5jZT8gRm9yIGluc3RhbmNlIHdo
YXQgYWRkaXRpb25hbCBtZW1vcnkgdHlwZXMgd2UKd2FudCB0byBmZWVkIHRvIHRoZSBwaXBlbGlu
ZT8KCj4gCj4gLS0tCj4gIHNyYy9nc3QtcGx1Z2luLmNwcCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9n
c3QtcGx1Z2luLmNwcCBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+IGluZGV4IDY0MTVhYzAuLmU5ZDkz
NjQgMTAwNjQ0Cj4gLS0tIGEvc3JjL2dzdC1wbHVnaW4uY3BwCj4gKysrIGIvc3JjL2dzdC1wbHVn
aW4uY3BwCj4gQEAgLTI1Miw3ICsyNTIsNyBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6
cGlwZWxpbmVfaW5pdChjb25zdAo+IEdzdHJlYW1lckVuY29kZXJTZXR0aW5ncyAmc2V0dGluCj4g
ICAgICBnc3RfYmluX2FkZChiaW4sIGVuY29kZXIpOwo+ICAgICAgZ3N0X2Jpbl9hZGQoYmluLCBz
aW5rKTsKPiAgCj4gLSAgICBHc3RDYXBzVVB0ciBjYXBzKGdzdF9jYXBzX2Zyb21fc3RyaW5nKCJ2
aWRlby94LXJhdyIpKTsKPiArICAgIEdzdENhcHNVUHRyIGNhcHMoZ3N0X2NhcHNfZnJvbV9zdHJp
bmcoInZpZGVvL3gtcmF3KEFOWSkiKSk7Cj4gICAgICBsaW5rID0gZ3N0X2VsZW1lbnRfbGluayhj
YXB0dXJlLmdldCgpLCBjb252ZXJ0LmdldCgpKSAmJgo+ICAgICAgICAgICAgIGdzdF9lbGVtZW50
X2xpbmtfZmlsdGVyZWQoY29udmVydC5nZXQoKSwgZW5jb2Rlci5nZXQoKSwKPiAgICAgICAgICAg
ICBjYXBzLmdldCgpKSAmJgo+ICAgICAgICAgICAgIGdzdF9lbGVtZW50X2xpbmtfZmlsdGVyZWQo
ZW5jb2Rlci5nZXQoKSwgc2luay5nZXQoKSwKPiAgICAgICAgICAgICBzaW5rX2NhcHMuZ2V0KCkp
OwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1k
ZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
