Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE974365958
	for <lists+spice-devel@lfdr.de>; Tue, 20 Apr 2021 14:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150926E0AC;
	Tue, 20 Apr 2021 12:57:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9490F6E0AC
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 12:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618923431;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oSiGX+tk4ZWNQS/lJWsl+ZYfrWY4b5WNw9K1V6BTSV0=;
 b=PYtWJnHFXGFoMzlNHNq7oGliI/oBapue4eBrtna+6qqcLAZlk4oX18lmwMLWC1IC8E+csg
 SjWFCeAnbjsHbnmozq34RZ753gLXBaA0Y8NaO4j9qxPAfSIhi9MzBXI3d+WRLTsM2Ye7Vj
 riIVx/rhG1ATaRICMgGDLtgxvjvmt+8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-6OLLc2aqNOGR3XZ7VD1cnA-1; Tue, 20 Apr 2021 08:57:06 -0400
X-MC-Unique: 6OLLc2aqNOGR3XZ7VD1cnA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E9ED188EF33;
 Tue, 20 Apr 2021 12:54:31 +0000 (UTC)
Received: from redhat.com (ovpn-114-178.ams2.redhat.com [10.36.114.178])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 25D482B1CD;
 Tue, 20 Apr 2021 12:54:30 +0000 (UTC)
Date: Tue, 20 Apr 2021 13:54:28 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Germano Massullo <germano.massullo@gmail.com>
Message-ID: <YH7PBECpLUGLiOFN@redhat.com>
References: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
 <YH68grWhEqF4lINL@redhat.com>
 <ec4c7b10-28dd-cfc8-3f68-96248352ae00@gmail.com>
MIME-Version: 1.0
In-Reply-To: <ec4c7b10-28dd-cfc8-3f68-96248352ae00@gmail.com>
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=berrange@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Spice-devel] Fedora 34 guests can no longer paste from host
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVHVlLCBBcHIgMjAsIDIwMjEgYXQgMDI6NDk6MzhQTSArMDIwMCwgR2VybWFubyBNYXNzdWxs
byB3cm90ZToKPiBJbCAyMC8wNC8yMSAxMzozNSwgRGFuaWVsIFAuIEJlcnJhbmfDqSBoYSBzY3Jp
dHRvOgo+ID4gT24gVHVlLCBBcHIgMjAsIDIwMjEgYXQgMTE6NTY6MjNBTSArMDIwMCwgR2VybWFu
byBNYXNzdWxsbyB3cm90ZToKPiA+PiBHb29kIGRheSwgSSBhbHdheXMgdXNlZCB3aXRoIHN1Y2Nl
c3MgYSBGZWRvcmEgMzMgS0RFIGhvc3QgKHFlbXUva3ZtL2xpYnZpcnQrdmlydC1tYW5hZ2VyKSBh
bmQgYSBGMzMgS0RFIGd1ZXN0LCBhbmQgSSBoYXZlIGFsd2F5cyBiZWVuIHRvIGNvcHkgcGFzdGUg
ZnJvbSBob3N0IHRvIGd1ZXN0IGFuZCB2aWNldmVyc2EKPiA+Pgo+ID4+IE5vdyBJIHRlc3RlZCB0
d28gRmVkb3JhIDM0IEJldGEgZ3Vlc3RzOgo+ID4+IC0gS0RFIHNwaW4KPiA+PiAtIFdvcmtzdGF0
aW9uIChHTk9NRSkKPiA+PiBhbmQgYm90aCBvZiB0aGVtIGZhaWwgdG8gcGFzdGUgdGV4dCBhbmQg
ZmlsZXMgZnJvbSB0aGUgaG9zdC4gc3BpY2UtdmRhZ2VudCB2ZXJzaW9uIGlzIHRoZSBzYW1lIG9u
IGJvdGggRjMzIGFuZCBGMzQgZ3Vlc3RzOiAwLjIxLjAuIEhvc3QgbWFjaGluZSBoYXMgc3BpY2Ut
Z3RrMy0wLjM5LTEuZmMzMy54ODZfNjQKPiA+PiBBbGwgbWFjaGluZXMgbWVudGlvbmVkIGluIHRo
aXMgYnVncmVwb3J0IGFyZSBYb3JnIGJhc2VkLgo+ID4+Cj4gPj4gSGVyZXVuZGVyIEkgYXR0YWNo
IG91dHB1dCBvZgo+ID4+ICQgU1BJQ0VfREVCVUc9MSB2aXJ0LXZpZXdlciAtLWNvbm5lY3QgcWVt
dTovLy9zeXN0ZW0KPiA+PiBodHRwczovL2dlcm1hbm8uZmVkb3JhcGVvcGxlLm9yZy9idWdyZXBv
cnQvc3BpY2Uvc3BpY2VfZGVidWcudHh0Cj4gPj4KPiA+PiAjIHZpcnNoIGR1bXB4bWwgZmVkb3Jh
MzRnbm9tZQo+ID4+IGh0dHBzOi8vZ2VybWFuby5mZWRvcmFwZW9wbGUub3JnL2J1Z3JlcG9ydC9z
cGljZS92aXJzaF9kdW1weG1sLnR4dAo+ID4gVGhhdCBzZWVtcyB0byBiZSB0aGUgaW5hY3RpdmUg
Z3Vlc3QgWE1MLgo+ID4KPiA+IElmIHlvdSBwcm92aWRlIHRoZSBhY3RpdmUgWE1MIChpZSB2aXJz
aCBkdW1wIHdoZW4gdGhlIGd1ZXN0IGlzIHJ1bm5pbmcpLAo+ID4gdGhlbiB0aGUgPGNoYW5uZWw+
IHNob3VsZCBjb25maXJtIHdoZXRoZXIgb3Igbm90IHRoZSBhZ2VudCBpcyBjb25uZWN0ZWQuCj4g
Cj4gSSBzdGFydGVkIHR3byBndWVzdHMgYW5kIHJldHJpZXZlZCB0aGVpciBYTUwKPiBodHRwczov
L2dlcm1hbm8uZmVkb3JhcGVvcGxlLm9yZy9idWdyZXBvcnQvc3BpY2Uvdmlyc2hfZHVtcF9mZWRv
cmEta2RlLWYzNC50eHQKPiBodHRwczovL2dlcm1hbm8uZmVkb3JhcGVvcGxlLm9yZy9idWdyZXBv
cnQvc3BpY2Uvdmlyc2hfZHVtcF9mZWRvcmEzNGdub21lXzIudHh0CgogICAgPGNoYW5uZWwgdHlw
ZT0ndW5peCc+CiAgICAgIDxzb3VyY2UgbW9kZT0nYmluZCcgcGF0aD0nL3Zhci9saWIvbGlidmly
dC9xZW11L2NoYW5uZWwvdGFyZ2V0L2RvbWFpbi0zMy1mZWRvcmEta2RlLWYzNC9vcmcucWVtdS5n
dWVzdF9hZ2VudC4wJy8+CiAgICAgIDx0YXJnZXQgdHlwZT0ndmlydGlvJyBuYW1lPSdvcmcucWVt
dS5ndWVzdF9hZ2VudC4wJyBzdGF0ZT0nY29ubmVjdGVkJy8+CiAgICAgIDxhbGlhcyBuYW1lPSdj
aGFubmVsMCcvPgogICAgICA8YWRkcmVzcyB0eXBlPSd2aXJ0aW8tc2VyaWFsJyBjb250cm9sbGVy
PScwJyBidXM9JzAnIHBvcnQ9JzEnLz4KICAgIDwvY2hhbm5lbD4KICAgIDxjaGFubmVsIHR5cGU9
J3NwaWNldm1jJz4KICAgICAgPHRhcmdldCB0eXBlPSd2aXJ0aW8nIG5hbWU9J2NvbS5yZWRoYXQu
c3BpY2UuMCcgc3RhdGU9J2Rpc2Nvbm5lY3RlZCcvPgogICAgICA8YWxpYXMgbmFtZT0nY2hhbm5l
bDEnLz4KICAgICAgPGFkZHJlc3MgdHlwZT0ndmlydGlvLXNlcmlhbCcgY29udHJvbGxlcj0nMCcg
YnVzPScwJyBwb3J0PScyJy8+CiAgICA8L2NoYW5uZWw+CgoKSGVyZSB3ZSBjYW4gc2VlIHRoYXQg
dGhlIFFFTVUgZ3Vlc3QgYWdlbnQgc3RhcnRlZCBmaW5lLCBidXQgdGhlIFNQSUNFCmd1ZXN0IGFn
ZW50IGZhaWxlZCB0byBzdGFydC4KClRoZSBTUElDRSBndWVzdCBhZ2VudCBpcyB0aGUgb25lIHRo
YXQgcHJvdmlkZXMgY2xpcGJvYXJkIGludGVncmF0aW9uLgoKR2l2ZW4gdGhhdCB3ZSBzZWUgUUVN
VSBhZ2VudCBydW5uaW5nLCB0aGlzIHNtZWxscyBsaWtlIGEgZ3Vlc3QgT1MKcHJvYmxlbSByYXRo
ZXIgdGhhbiBhIGhvc3QgcHJvYmxlbS4KCkNoZWNrIHdoZXRoZXIgJ3NwaWNlLXZkYWdlbnQnIGlz
IGluc3RhbGxlZCwgYW5kIHdoZXRoZXIgJ3NwaWNlLXZkYWdlbnQnCmFuZCAnc3BpY2UtdmRhZ2Vu
dGQnIGFyZSBib3RoIHJ1bm5pbmcgaW4gdGhlIGd1ZXN0CgpSZWdhcmRzLApEYW5pZWwKLS0gCnw6
IGh0dHBzOi8vYmVycmFuZ2UuY29tICAgICAgLW8tICAgIGh0dHBzOi8vd3d3LmZsaWNrci5jb20v
cGhvdG9zL2RiZXJyYW5nZSA6fAp8OiBodHRwczovL2xpYnZpcnQub3JnICAgICAgICAgLW8tICAg
ICAgICAgICAgaHR0cHM6Ly9mc3RvcDEzOC5iZXJyYW5nZS5jb20gOnwKfDogaHR0cHM6Ly9lbnRh
bmdsZS1waG90by5vcmcgICAgLW8tICAgIGh0dHBzOi8vd3d3Lmluc3RhZ3JhbS5jb20vZGJlcnJh
bmdlIDp8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWwK
