Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5EB55414
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 509D16E15D;
	Tue, 25 Jun 2019 16:11:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9EB06E15D
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8B0BA3087955
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:51 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 63B365D70D;
 Tue, 25 Jun 2019 16:11:50 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:24 +0100
Message-Id: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 25 Jun 2019 16:11:51 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 00/23] WebSocket support
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

VXBkYXRlZCBhIGxvbmdzdGFuZGluZyBwYXRjaCBmb3IgV2ViU29ja2V0IHN1cHBvcnQuCgpUaGlz
IGluY2x1ZGVzOgotIHN0eWxlIHVwZGF0ZXM6CiAgLSB0eXBlcyAoQzk5IGluc3RlYWQgb2YgR0xp
Yik7CiAgLSBtZW1vcnkgYWxsb2NhdGlvbiAoR0xpYiBpbnN0ZWFkIG9mIFNQSUNFIGZ1bmN0aW9u
cyk7Ci0gc3VwcG9ydCBmb3IgV2luZG93czsKLSBkaWZmZXJlbnQgZml4ZXM7Ci0gYXV0b21hdGlj
IHRlc3RzIHVzaW5nIEF1dG9iYWhuIFRlc3RzdWl0ZTsKLSBzb21lIG1pc3NpbmcgZmVhdHVyZXM6
CiAgLSBQSU5HL1BPTkcgbWVzc2FnZXM7CiAgLSBlbXB0eSAoMCBieXRlcykgZnJhbWVzLgoKRnJl
ZGlhbm8gWmlnbGlvICgyMik6CiAgdGVzdC1nbGliLWNvbXBhdDogRml4IEdfUElEX0ZPUk1BVCBk
ZWZpbml0aW9uIGZvciBvbGQgc3lzdGVtcwogIHJlZHM6IEZpeCBTU0xfQ1RYX3NldF9lY2RoX2F1
dG8gY2FsbCBmb3Igc29tZSBvbGQgT3BlblNTTAogIHdlYnNvY2tldDogU2ltcGxpZnkgYW5kIGZp
eCBjb25zdHJhaW5faW92CiAgd2Vic29ja2V0OiBNb3ZlIFJlZHNXZWJTb2NrZXQgdG8gaGVhZGVy
CiAgd2Vic29ja2V0OiBNYWtlIHdlYnNvY2tldCBmdW5jdGlvbiBtb3JlIEFCSSBjb21wYXRpYmxl
cyB3aXRoIFJlZFN0cmVhbQogIHdlYnNvY2tldDogTWFrZSB3ZWJzb2NrZXRfYWNrX2Nsb3NlIHN0
YXRpYwogIHdlYnNvY2tldDogTmV3IGludGVyZmFjZSB0byBjcmVhdGUgUmVkc1dlYlNvY2tldAog
IHdlYnNvY2tldDogQmV0dGVyIGVuY2Fwc3VsYXRpb24KICB3ZWJzb2NrZXQ6IERldGVjdCBhbmQg
aGFuZGxlIHNvbWUgaGVhZGVyIGVycm9yCiAgd2Vic29ja2V0OiBCZXR0ZXIgdmFyaWFibGUgdHlw
ZXMKICB3ZWJzb2NrZXQ6IFByb3BhZ2F0ZSBzb21lIHZhcmlhYmxlCiAgd2Vic29ja2V0OiBGaXgg
dXBkYXRpbmcgcmVtYWluaW5nIGJ5dGVzIHRvIHdyaXRlIGluIHdlYnNvY2tldF93cml0ZQogIHdl
YnNvY2tldDogQXZvaWQgcG9zc2libGUgc2VydmVyIGNyYXNoIHVzaW5nIHdlYnNvY2tldHMKICB3
ZWJzb2NrZXQ6IFN1cHBvcnQgY29ycmVjdGx5IHByb3RvY29sIHZhbHVlcwogIHdlYnNvY2tldDog
SGFuZGxlIGNhc2UgaWYgc2VydmVyIGNhbm5vdCB3cml0ZSB0aGUgaGVhZGVyIGVudGlyZWx5CiAg
d2Vic29ja2V0OiBBdm9pZHMgdG8gd3JpdGUgY2xvc2UgZnJhbWUgaW4gdGhlIG1pZGRsZSBvZiBk
YXRhCiAgd2Vic29ja2V0OiBIYW5kbGUgUElORyBhbmQgUE9ORyBmcmFtZXMKICB0ZXN0LXdlYnNv
Y2tldDogV3JpdGUgYSB0ZXN0IGhlbHBlciB0byBtYWtlIHBvc3NpYmxlIHRvIHJ1biBBdXRvYmFo
bgogICAgdGVzdHN1aXRlCiAgd2Vic29ja2V0OiBEbyBub3QgcmVxdWlyZSAiU2VjLVdlYlNvY2tl
dC1Qcm90b2NvbCIgaGVhZGVyCiAgd2Vic29ja2V0OiBIYW5kbGUgdGV4dCBkYXRhCiAgd2Vic29j
a2V0OiBIYW5kbGUgY29udGludWF0aW9uIGFuZCAwLXNpemUgZnJhbWVzCiAgY2k6IEFkZCB0ZXN0
IGZvciB3ZWJzb2NrZXRzCgpKZXJlbXkgV2hpdGUgKDEpOgogIEFkZCBzdXBwb3J0IGZvciBjbGll
bnRzIGNvbm5lY3Rpbmcgd2l0aCB0aGUgV2ViU29ja2V0IHByb3RvY29sLgoKIC5naXRsYWItY2ku
eW1sICAgICAgICAgICAgICAgICAgICAgfCAgMjAgKwogY29uZmlndXJlLmFjICAgICAgICAgICAg
ICAgICAgICAgICB8ICAgOSArCiBzZXJ2ZXIvTWFrZWZpbGUuYW0gICAgICAgICAgICAgICAgIHwg
ICAyICsKIHNlcnZlci9tZXNvbi5idWlsZCAgICAgICAgICAgICAgICAgfCAgIDIgKwogc2VydmVy
L3JlZC1zdHJlYW0uYyAgICAgICAgICAgICAgICB8ICA1NiArKwogc2VydmVyL3JlZC1zdHJlYW0u
aCAgICAgICAgICAgICAgICB8ICAgMiArCiBzZXJ2ZXIvcmVkcy5jICAgICAgICAgICAgICAgICAg
ICAgIHwgIDE1ICsKIHNlcnZlci90ZXN0cy8uZ2l0aWdub3JlICAgICAgICAgICAgfCAgIDEgKwog
c2VydmVyL3Rlc3RzL01ha2VmaWxlLmFtICAgICAgICAgICB8ICAgNiArCiBzZXJ2ZXIvdGVzdHMv
YXV0b2JhaG4tY2hlY2stcmVwb3J0IHwgIDE4ICsKIHNlcnZlci90ZXN0cy9mdXp6aW5nY2xpZW50
Lmpzb24gICAgfCAgMTEgKwogc2VydmVyL3Rlc3RzL21lc29uLmJ1aWxkICAgICAgICAgICB8ICAg
MSArCiBzZXJ2ZXIvdGVzdHMvdGVzdC1nbGliLWNvbXBhdC5oICAgIHwgICAyICstCiBzZXJ2ZXIv
dGVzdHMvdGVzdC13ZWJzb2NrZXQuYyAgICAgIHwgMjk5ICsrKysrKysrKysrCiBzZXJ2ZXIvd2Vi
c29ja2V0LmMgICAgICAgICAgICAgICAgIHwgNzk2ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCiBzZXJ2ZXIvd2Vic29ja2V0LmggICAgICAgICAgICAgICAgIHwgIDQzICsrCiAxNiBmaWxl
cyBjaGFuZ2VkLCAxMjgyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2Rl
IDEwMDc1NSBzZXJ2ZXIvdGVzdHMvYXV0b2JhaG4tY2hlY2stcmVwb3J0CiBjcmVhdGUgbW9kZSAx
MDA2NDQgc2VydmVyL3Rlc3RzL2Z1enppbmdjbGllbnQuanNvbgogY3JlYXRlIG1vZGUgMTAwNjQ0
IHNlcnZlci90ZXN0cy90ZXN0LXdlYnNvY2tldC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc2VydmVy
L3dlYnNvY2tldC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgc2VydmVyL3dlYnNvY2tldC5oCgotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
