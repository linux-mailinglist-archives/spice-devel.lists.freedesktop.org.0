Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA27611E1D9
	for <lists+spice-devel@lfdr.de>; Fri, 13 Dec 2019 11:21:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA2B6E31D;
	Fri, 13 Dec 2019 10:21:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D106E314
 for <spice-devel@lists.freedesktop.org>; Fri, 13 Dec 2019 10:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576232507;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=voVlPKuRMy21EQ5NTFn9NYLGycHYz0hiv/CGoCvu6ts=;
 b=HuktR/wzrevHdNstwT1ddBHpjquqAtJVyGMnsJc7UtZo1KWahLFpTYw2w3nGJ2PlD0VI/U
 dm2IS8WEGMZUcr8qCL3yB6+wLmcc2ZEvn9EoxlIQubNRrFe/miCJWC16nmppwl+TLFIjdk
 SuUcCkdUy63/ZSWx3/S4zk8IbIrfhIY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-FH9_kz10Ol-ryimV3myrfA-1; Fri, 13 Dec 2019 05:21:45 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAC79593A9;
 Fri, 13 Dec 2019 10:21:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CCA3367E4E;
 Fri, 13 Dec 2019 10:21:44 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C266A18542;
 Fri, 13 Dec 2019 10:21:44 +0000 (UTC)
Date: Fri, 13 Dec 2019 05:21:43 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: franklin zhou <codeit@live.com>
Message-ID: <555809754.16014183.1576232503508.JavaMail.zimbra@redhat.com>
In-Reply-To: <MN2PR06MB596643F8A10266D628EC096CB3540@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB5966B0FE96C8C383F432BF75B3540@MN2PR06MB5966.namprd06.prod.outlook.com>
 <2057776774.15999309.1576224649304.JavaMail.zimbra@redhat.com>
 <MN2PR06MB596643F8A10266D628EC096CB3540@MN2PR06MB5966.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.21]
Thread-Topic: [Spice-devel] spice-streaming-agent build with cmake
Thread-Index: AQHVsV2kwpPh3cBbY0C5AD4nZRbBZcAgBr8F55e01KWyM3AQuQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: FH9_kz10Ol-ryimV3myrfA-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] spice-streaming-agent build with cmake
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

VGhhbmtzLAogIGRpZCB5b3UgbWFuYWdlIHRvIGJ1aWxkPwoKQ2FuIHlvdSB3cml0ZSBzb21lIG5v
dGVzIG9uIGhvdyB5b3UgZGlkIGl0PwpJdCB3b3VsZCBiZSBoZWxwZnVsIHRvIGhhdmUgaXQgaW4g
YSBSRUFETUUubWQgZmlsZS4KClRoaXMgcHJvamVjdCAoc3BpY2Utc3RyZWFtaW5nLWFnZW50KSBj
YW1lIGluIGEgcGVyaW9kIHdoaWxlIHdlIHdlcmUgdHJ5aW5nCk1lc29uIGZvciBzb21lIG90aGVy
IHByb2plY3RzIChhbmQgcG9zc2libHkgd2UgYXJlIHNsb3dseSBzdGlsbCBtb3ZpbmcpLApidXQg
Zm9yIFdpbmRvd3MgY21ha2UgaXMgYSBiZXR0ZXIgc29sdXRpb24uCgpGcmVkaWFubwoKPiAKPiBC
ZWNhdXNlIEnigJltIHZlcnkgaW50ZXJlc3RlZCBpbiBDTWFrZQo+ICBhZnRlciBzYXcgeW91ciBi
dWlsZCBjb21tYW5kCj4gIGZvciB2ZF9hZ2VudCwgdGhhbmsgeW91IQo+IAo+IOWPkeiHquaIkeea
hGlQaG9uZQo+IAo+ID4g5ZyoIDIwMTnlubQxMuaciDEz5pel77yM5LiL5Y2INDoxMO+8jEZyZWRp
YW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPiDlhpnpgZPvvJoKPiA+IAo+ID4g77u/Cj4g
Pj4gCj4gPj4gSXMgdGhlcmUgYSBwYXRjaCB0aGF0IHN1cHBvcnRzIGNtYWtlIGJ1aWxkPwo+ID4g
Cj4gPiBOby4KPiA+IFdoeSBhcmUgeW91IGFza2luZz8KPiA+IAo+ID4gRnJlZGlhbm8KPiA+IAo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
