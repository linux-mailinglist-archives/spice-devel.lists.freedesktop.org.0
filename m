Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5076D27817
	for <lists+spice-devel@lfdr.de>; Thu, 23 May 2019 10:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7884689C96;
	Thu, 23 May 2019 08:37:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4139889C08
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 81A95C09AD11
 for <spice-devel@lists.freedesktop.org>; Thu, 23 May 2019 08:37:38 +0000 (UTC)
Received: from jjanku-t480s.redhat.com (unknown [10.40.205.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9F4F55D9D2;
 Thu, 23 May 2019 08:37:37 +0000 (UTC)
From: =?UTF-8?q?Jakub=20Jank=C5=AF?= <jjanku@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 23 May 2019 10:37:12 +0200
Message-Id: <20190523083725.1554-1-jjanku@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 23 May 2019 08:37:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH phodav 00/13] Miscellaneous series
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

SGksCgp0aGlzIHNlcmllcyBjb250YWlucyBtb3N0bHkgZml4ZXMgb2Ygc29tZSB0aGluZ3MgCnRo
YXQgSSBjYW1lIGFjcm9zcyB3aGlsZSByZWFkaW5nIHRoZSBzcGljZS13ZWJkYXZkLmMgY29kZSwK
d2l0aG91dCBhbnkgb3JkZXIuCgpDaGVlcnMsCgpKYWt1YiBKYW5rxa8gKDEzKToKICBzcGljZTog
cmVtb3ZlIEdfU09VUkNFX3tSRU1PVkUsQ09OVElOVUV9IGRlZmluaXRpb25zCiAgc3BpY2U6IHJl
bmFtZSBteV9pbnB1dF9jaGFubmVsCiAgc3BpY2U6IGhhbmRsZSBTSUdJTlQgcHJvcGVybHkKICBz
cGljZTogcXVpdCBzZXJ2aWNlIHF1aWNrbHkKICBzcGljZTogY2xlYXIgbG9vcCBwb2ludGVyIG9u
IHVucmVmCiAgc3BpY2U6IHByaW50IGVyciB3aGVuIGdfb3BlbiBmYWlscwogIHNwaWNlOiB1bnJl
ZiBHU29ja2V0QWRkcmVzcwogIHNwaWNlLXdpbjogZGVmaW5lIFNFUlZJQ0VfTkFNRQogIHNwaWNl
LXdpbjogcmVtb3ZlIE1hcERyaXZlRW51bQogIHNwaWNlLXdpbjogZG9uJ3QgYXNzaWduIGRyaXZl
X2xldHRlciBvbiBlcnJvcgogIHNwaWNlOiBtb3ZlIE91dHB1dFF1ZXVlIHRvIGZpbGUKICByZW5h
bWUgUkVBRE1FIHRvIFJFQURNRS5tZAogIHJlbmFtZSBORVdTIHRvIE5FV1MubWQKCiBORVdTID0+
IE5FV1MubWQgICAgICAgfCAgIDAKIFJFQURNRSA9PiBSRUFETUUubWQgICB8ICAyMSArKy0tCiBz
cGljZS9tZXNvbi5idWlsZCAgICAgfCAgIDggKy0KIHNwaWNlL291dHB1dC1xdWV1ZS5jICB8IDE2
NCArKysrKysrKysrKysrKysrKysrKysrKysrCiBzcGljZS9vdXRwdXQtcXVldWUuaCAgfCAgMzgg
KysrKysrCiBzcGljZS9zcGljZS13ZWJkYXZkLmMgfCAyODAgKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCiA2IGZpbGVzIGNoYW5nZWQsIDI4NiBpbnNlcnRpb25zKCsp
LCAyMjUgZGVsZXRpb25zKC0pCiByZW5hbWUgTkVXUyA9PiBORVdTLm1kICgxMDAlKQogcmVuYW1l
IFJFQURNRSA9PiBSRUFETUUubWQgKDU2JSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcGljZS9vdXRw
dXQtcXVldWUuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IHNwaWNlL291dHB1dC1xdWV1ZS5oCgotLSAK
Mi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
