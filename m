Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB2457D5A
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 09:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DACAB6E819;
	Thu, 27 Jun 2019 07:43:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD5C56E819
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 07:43:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1F009307D91F
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 07:43:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 159FD60C4E
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 07:43:39 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09D324A460;
 Thu, 27 Jun 2019 07:43:39 +0000 (UTC)
Date: Thu, 27 Jun 2019 03:43:36 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1845111053.24942755.1561621416486.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190626141026.30745-2-ssheribe@redhat.com>
References: <20190626141026.30745-1-ssheribe@redhat.com>
 <20190626141026.30745-2-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.27]
Thread-Topic: gst-plugin: Use autovideoconvert element for color space
 conversion
Thread-Index: B0++F3thWL/X/A/JpT/HwknjNI3ndw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 27 Jun 2019 07:43:39 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 2/2] gst-plugin: Use
 autovideoconvert element for color space conversion
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

PiAKPiBXaGVuIHZhYXBpIGJhc2VkIGVuY29kZXIgaXMgdXNlZCBpdCdzIGxpa2VseSB0aGF0IGFs
c28gdmFhcGkgYmFzZWQKPiBjb252ZXJzaW9uIGlzIGF2YWlsYWJsZSAodXNpbmcgdGhlIHZhYXBp
cG9zdHByb2MgZWxlbWVudCkuCj4gTW92aW5nIHRvIGF1dG92aWRlb2NvbnZlcnQgd2lsbCBhdXRv
bWF0aWNhbGx5IGNob29zZSBhIHN1aXRhYmxlCj4gY29udmVydCBlbGVtZW50IGFjY29yZGluZyB0
byBlbGVtZW50cyBhdmFpbGFiaWxpdHkgKGUuZy4gaW4gdGhlCj4gdmFhcGkgY2FzZSBpdCB3b3Vs
ZCBzZWxlY3QgdmFhcGlwb3N0cHJvYyBkdWUgdG8gaXRzIGhpZ2ggcmFuaykuCj4gCj4gU2lnbmVk
LW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNvbT4KClJlYWxseSBtaW5v
cjogdmFhcGkgLT4gVkFBUEkgPwoKQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPgoKPiAtLS0KPiBBdCBmaXJzdCBpIGhhZCBhIHBhdGNoIHRvIGNob29zZSB2YWFw
aXBvc3Rwcm9jIG1hbnVhbGx5IGJ1dCB0aGVuIGkgcmVtZW1iZXJlZAo+IHRoaXMgZWxlbWVudAo+
IHdoaWNoIHN1cHBvc2UgdG8gZG8gaXQgYXV0b21hdGljYWxseSAoaXQgc2VlbXMgdmFhcGlwb3N0
cHJvYyBoYXMgaGlnaCBlbm91Z2gKPiByYW5rKS4gSSB0aGluawo+IGl0J3MgcHJlZmVycmVkIGFs
dGhvdWdoIGl0J3MgaW4gZ3N0LXBsdWdpbnMtYmFkCj4gLS0tCj4gIHNyYy9nc3QtcGx1Z2luLmNw
cCB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9nc3QtcGx1Z2luLmNwcCBiL3NyYy9nc3QtcGx1Z2luLmNw
cAo+IGluZGV4IGNmNjYwZWIuLmQ4ZTJkODkgMTAwNjQ0Cj4gLS0tIGEvc3JjL2dzdC1wbHVnaW4u
Y3BwCj4gKysrIGIvc3JjL2dzdC1wbHVnaW4uY3BwCj4gQEAgLTIxNSw3ICsyMTUsNyBAQCB2b2lk
IEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6cGlwZWxpbmVfaW5pdChjb25zdAo+IEdzdHJlYW1lckVu
Y29kZXJTZXR0aW5ncyAmc2V0dGluCj4gICAgICBpZiAoIWNhcHR1cmUpIHsKPiAgICAgICAgICB0
aHJvdyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIkdzdHJlYW1lcidzIGNhcHR1cmUgZWxlbWVudCBjYW5u
b3QgYmUKPiAgICAgICAgICBjcmVhdGVkIik7Cj4gICAgICB9Cj4gLSAgICBHc3RPYmplY3RVUHRy
PEdzdEVsZW1lbnQ+Cj4gY29udmVydChnc3RfZWxlbWVudF9mYWN0b3J5X21ha2UoInZpZGVvY29u
dmVydCIsICJjb252ZXJ0IikpOwo+ICsgICAgR3N0T2JqZWN0VVB0cjxHc3RFbGVtZW50Pgo+IGNv
bnZlcnQoZ3N0X2VsZW1lbnRfZmFjdG9yeV9tYWtlKCJhdXRvdmlkZW9jb252ZXJ0IiwgImNvbnZl
cnQiKSk7Cj4gICAgICBpZiAoIWNvbnZlcnQpIHsKPiAgICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRp
bWVfZXJyb3IoIkdzdHJlYW1lcidzICd2aWRlb2NvbnZlcnQnIGVsZW1lbnQgY2Fubm90Cj4gICAg
ICAgICAgYmUgY3JlYXRlZCIpOwoKQ2hhbmdlICd2aWRlb2NvbnZlcnQnIHRvICdhdWRpb3ZpZGVv
Y29udmVydCcgaGVyZT8KCj4gICAgICB9CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
