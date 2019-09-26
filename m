Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27621BF595
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 17:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0976ED72;
	Thu, 26 Sep 2019 15:13:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1CDB6ED6F
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9B0E210C095A
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:27 +0000 (UTC)
Received: from lub.com (dhcp-4-213.tlv.redhat.com [10.35.4.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 05D1F9F72
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:26 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 26 Sep 2019 18:13:20 +0300
Message-Id: <20190926151320.18868-5-uril@redhat.com>
In-Reply-To: <20190926151320.18868-1-uril@redhat.com>
References: <20190926151320.18868-1-uril@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Thu, 26 Sep 2019 15:13:27 +0000 (UTC)
Subject: [Spice-devel] [spice-streaming-agent PATCH 4/4] Prepare for v0.3
 release
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

MS4gdXBkYXRlIE5FV1MKMi4gdXBkYXRlIGNvbmZpZ3VyZS5hYwozLiB1cGRhdGUgc3BlYyBmaWxl
CgpTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+Ci0tLQogTkVXUyAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAxNyArKysrKysrKysrKysrKysrKwogY29uZmlndXJl
LmFjICAgICAgICAgICAgICAgICAgfCAgMiArLQogc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMu
aW4gfCAgMyArKysKIDMgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL05FV1MgYi9ORVdTCmluZGV4IGFlZGYwN2EuLjJiZDZiMTggMTAw
NjQ0Ci0tLSBhL05FV1MKKysrIGIvTkVXUwpAQCAtMSwzICsxLDIwIEBACitNYWpvciBjaGFuZ2Vz
IGluIDAuMzoKKz09PT09PT09PT09PT09PT09PT09PQorLSBJbXByb3ZlIHRoZSBpbnZhbGlkIG9w
dGlvbiBhcmd1bWVudCAoLWMpIGVycm9yIG1lc3NhZ2UKKy0gSW1wcm92ZSB0aGUgZnJhbWUgbG9n
IG1lc3NhZ2VzCistIE1ha2UgdGhlIHRyeS1jYXRjaCBibG9jayBpbiBtYWluKCkgYSBjYXRjaC1h
bGwKKy0gU2V0IGRlZmF1bHQgc3lzbG9nIG1hc2sgdG8gYSBsb3dlciBsZXZlbAorLSBGaXggc29t
ZSBjbGFuZyBidWlsZCBlcnJvcnMKKy0gQWRkaW5nIGdzdHJlYW1lciBiYXNlZCBwbHVnaW4KKy0g
TWFrZSBlcnJvci5ocHAgYW5kIHRoZSBFcnJvciBjbGFzcyBhIHB1YmxpYyBBUEkKKy0gRXhwb3J0
IHN5bWJvbHMgaW4gdGhlIGJpbmFyeSB0byBiZSB1c2VkIGJ5IHBsdWdpbnMKKy0gSW50ZXJmYWNl
ICsgaW1wbGVtZW50YXRpb24gb2YgZ2V0dGluZyBkZXZpY2UgZGlzcGxheSBpbmZvCistIFNlbmQg
dGhlIEdyYXBoaWNzRGV2aWNlSW5mbyB0byB0aGUgc2VydmVyCistIEFkZCBzdXBwb3J0IGZvciBs
b2dnaW5nIHN0YXRpc3RpY3MgZnJvbSBwbHVnaW5zCistIEVuYWJsZSBidWlsZGluZyB3aXRoIEdD
QyA5CistIEFkZCBhIG1hbiBwYWdlCisKKwogTWFqb3IgY2hhbmdlcyBpbiAwLjI6CiA9PT09PT09
PT09PT09PT09PT09PT0KIC0gRmlyc3QgcmVsZWFzZQpkaWZmIC0tZ2l0IGEvY29uZmlndXJlLmFj
IGIvY29uZmlndXJlLmFjCmluZGV4IDFjNzc4OGIuLmJhYjFjYzcgMTAwNjQ0Ci0tLSBhL2NvbmZp
Z3VyZS5hYworKysgYi9jb25maWd1cmUuYWMKQEAgLTEsNiArMSw2IEBACiBBQ19QUkVSRVEoWzIu
NTddKQogCi1BQ19JTklUKHNwaWNlLXN0cmVhbWluZy1hZ2VudCwgMC4yLAorQUNfSU5JVChzcGlj
ZS1zdHJlYW1pbmctYWdlbnQsIDAuMywKICAgICAgICAgW3NwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZ10pCiAKIEFNX0NPTkZJR19IRUFERVIoW2NvbmZpZy5oXSkKZGlmZiAtLWdpdCBh
L3NwaWNlLXN0cmVhbWluZy1hZ2VudC5zcGVjLmluIGIvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNw
ZWMuaW4KaW5kZXggZmNiODIzMS4uOGZhZWVjZiAxMDA2NDQKLS0tIGEvc3BpY2Utc3RyZWFtaW5n
LWFnZW50LnNwZWMuaW4KKysrIGIvc3BpY2Utc3RyZWFtaW5nLWFnZW50LnNwZWMuaW4KQEAgLTc3
LDYgKzc3LDkgQEAgZmkKICV7X2xpYmRpcn0vcGtnY29uZmlnCiAKICVjaGFuZ2Vsb2cKKyogVGh1
IFNlcCAxOSAyMDE5IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0LmNvbT4gLSAwLjMtMQorLSBVcGRh
dGUgdG8gMC4zIHJlbGVhc2UKKwogKiBUaHUgTWF5IDMxIDIwMTggVXJpIEx1YmxpbiA8dXJpbEBy
ZWRoYXQuY29tPiAtIDAuMi0xCiAtIEZpcnN0IHJlbGVhc2UKIAotLSAKMi4yMS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
