Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4E61CCE7
	for <lists+spice-devel@lfdr.de>; Tue, 14 May 2019 18:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD17891D4;
	Tue, 14 May 2019 16:26:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E4C891D2
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4740C5945C
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:03 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C4C365C57B
 for <spice-devel@lists.freedesktop.org>; Tue, 14 May 2019 16:26:02 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 14 May 2019 16:25:57 +0000
Message-Id: <20190514162602.3529-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 14 May 2019 16:26:03 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 0/5] Prepare for v0.37 release
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgpEdWUgdG8gc3BpY2Ut
cHJvdG9jb2wgMC4xNC4wIHJlbGVhc2UsIHdlIG5lZWQgdG8gcm9sbCBhIHNwaWNlLWd0awpyZWxl
YXNlIHRvIG1ha2UgYSBzcGljZS1jb21tb24gY29tcGF0aWJsZSB3aXRoIDAuMTQuMCBvbmUuIFRo
YXQgaXMsIDAuMzYKYW5kIHByaW9yIGhhcyB0aGUgYnVpbGQgYnJlYWtpbmcgd2l0aCBzcGljZS1w
cm90b2NvbCAwLjE0LjAuCgpJJ3ZlIG1hZGUgUkVBRE1FIGFuZCBDSEFOR0VMT0cgLm1kIGZpbGVz
IGxpa2Ugb3RoZXIgY29tcG9uZW50cyBJJ3ZlCnJlbGVhc2VkIHJlY2VudGx5LgoKU3VnZ2VzdGlv
bnMgd2VsY29tZWQuIElmIG5vdGhpbmcsIEkgaG9wZSB0byBtYWtlIHRoZSByZWxlYXNlIFRvbW9y
cm93IG9yClRodXJzZGF5LgoKQ2hlZXJzLApWaWN0b3IKClZpY3RvciBUb3NvICg1KToKICBSZW5h
bWUgUkVBRE1FIHRvIFJFQURNRS5tZAogIFJFQURNRTogVXNlIE1hcmtkb3duIGZvcm1hdAogIFJl
bmFtZSBORVdTIHRvIENIQU5HRUxPRy5tZAogIENIQU5HRUxPRzogcmVtb3ZlIGVtcHR5IGxpbmUK
ICBDSEFOR0VMT0c6IFByZXBhcmUgZm9yIHYwLjM3IHJlbGVhc2UKCiBORVdTID0+IENIQU5HRUxP
Ry5tZCB8IDMwICsrKysrKysrKysrKysrKysrKy0KIE1ha2VmaWxlLmFtICAgICAgICAgIHwgIDIg
KysKIFJFQURNRSAgICAgICAgICAgICAgIHwgNTkgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCiBSRUFETUUubWQgICAgICAgICAgICB8IDcxICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCiA0IGZpbGVzIGNoYW5nZWQsIDEwMiBpbnNlcnRpb25z
KCspLCA2MCBkZWxldGlvbnMoLSkKIHJlbmFtZSBORVdTID0+IENIQU5HRUxPRy5tZCAoOTMlKQog
ZGVsZXRlIG1vZGUgMTAwNjQ0IFJFQURNRQogY3JlYXRlIG1vZGUgMTAwNjQ0IFJFQURNRS5tZAoK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
