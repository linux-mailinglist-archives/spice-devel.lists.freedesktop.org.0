Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 478F85541A
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B99A86E175;
	Tue, 25 Jun 2019 16:11:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 721296E171
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E7822F8BEA
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:58 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 67E4D5D70D;
 Tue, 25 Jun 2019 16:11:57 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:30 +0100
Message-Id: <20190625161147.25211-7-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 25 Jun 2019 16:11:58 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 06/23] websocket: Make websocket
 function more ABI compatibles with RedStream
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

VXNlIHNhbWUgYXJndW1lbnQgdHlwZXMgYXMgcmVkX3N0cmVhbV8qIGZ1bmN0aW9ucy4KClNpZ25l
ZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZl
ci93ZWJzb2NrZXQuYyB8IDggKysrKy0tLS0KIHNlcnZlci93ZWJzb2NrZXQuaCB8IDYgKysrLS0t
CiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9zZXJ2ZXIvd2Vic29ja2V0LmMgYi9zZXJ2ZXIvd2Vic29ja2V0LmMKaW5kZXggMTQ1
ZDgyOWY0Li5iMGVhODY3ZTYgMTAwNjQ0Ci0tLSBhL3NlcnZlci93ZWJzb2NrZXQuYworKysgYi9z
ZXJ2ZXIvd2Vic29ja2V0LmMKQEAgLTIyNiw3ICsyMjYsNyBAQCBzdGF0aWMgaW50IHJlbGF5X2Rh
dGEodWludDhfdCogYnVmLCBzaXplX3Qgc2l6ZSwgd2Vic29ja2V0X2ZyYW1lX3QgKmZyYW1lKQog
ICAgIHJldHVybiBuOwogfQogCi1pbnQgd2Vic29ja2V0X3JlYWQoUmVkc1dlYlNvY2tldCAqd3Ms
IHVpbnQ4X3QgKmJ1ZiwgaW50IHNpemUpCitpbnQgd2Vic29ja2V0X3JlYWQoUmVkc1dlYlNvY2tl
dCAqd3MsIHVpbnQ4X3QgKmJ1Ziwgc2l6ZV90IHNpemUpCiB7CiAgICAgaW50IG4gPSAwOwogICAg
IGludCByYzsKQEAgLTM0Miw3ICszNDIsNyBAQCBzdGF0aWMgdm9pZCBjb25zdHJhaW5faW92KHN0
cnVjdCBpb3ZlYyAqaW92LCBpbnQgaW92Y250LAogCiAKIC8qIFdyaXRlIGEgV2ViU29ja2V0IGZy
YW1lIHdpdGggdGhlIGVuY2xvc2VkIGRhdGEgb3V0LiAqLwotaW50IHdlYnNvY2tldF93cml0ZXYo
UmVkc1dlYlNvY2tldCAqd3MsIHN0cnVjdCBpb3ZlYyAqaW92LCBpbnQgaW92Y250KQoraW50IHdl
YnNvY2tldF93cml0ZXYoUmVkc1dlYlNvY2tldCAqd3MsIGNvbnN0IHN0cnVjdCBpb3ZlYyAqaW92
LCBpbnQgaW92Y250KQogewogICAgIHVpbnQ4X3QgaGVhZGVyW1dFQlNPQ0tFVF9NQVhfSEVBREVS
X1NJWkVdOwogICAgIHVpbnQ2NF90IGxlbjsKQEAgLTM2MCw3ICszNjAsNyBAQCBpbnQgd2Vic29j
a2V0X3dyaXRldihSZWRzV2ViU29ja2V0ICp3cywgc3RydWN0IGlvdmVjICppb3YsIGludCBpb3Zj
bnQpCiAgICAgICAgIHJldHVybiAtMTsKICAgICB9CiAgICAgaWYgKCpyZW1haW5kZXIgPiAwKSB7
Ci0gICAgICAgIGNvbnN0cmFpbl9pb3YoaW92LCBpb3ZjbnQsICZpb3Zfb3V0LCAmaW92X291dF9j
bnQsICpyZW1haW5kZXIpOworICAgICAgICBjb25zdHJhaW5faW92KChzdHJ1Y3QgaW92ZWMgKikg
aW92LCBpb3ZjbnQsICZpb3Zfb3V0LCAmaW92X291dF9jbnQsICpyZW1haW5kZXIpOwogICAgICAg
ICByYyA9IHdyaXRldl9jYihvcGFxdWUsIGlvdl9vdXQsIGlvdl9vdXRfY250KTsKICAgICAgICAg
aWYgKGlvdl9vdXQgIT0gaW92KSB7CiAgICAgICAgICAgICBnX2ZyZWUoaW92X291dCk7CkBAIC00
MDEsNyArNDAxLDcgQEAgaW50IHdlYnNvY2tldF93cml0ZXYoUmVkc1dlYlNvY2tldCAqd3MsIHN0
cnVjdCBpb3ZlYyAqaW92LCBpbnQgaW92Y250KQogICAgIHJldHVybiByYzsKIH0KIAotaW50IHdl
YnNvY2tldF93cml0ZShSZWRzV2ViU29ja2V0ICp3cywgY29uc3QgdWludDhfdCAqYnVmLCBpbnQg
bGVuKQoraW50IHdlYnNvY2tldF93cml0ZShSZWRzV2ViU29ja2V0ICp3cywgY29uc3Qgdm9pZCAq
YnVmLCBzaXplX3QgbGVuKQogewogICAgIHVpbnQ4X3QgaGVhZGVyW1dFQlNPQ0tFVF9NQVhfSEVB
REVSX1NJWkVdOwogICAgIGludCByYzsKZGlmZiAtLWdpdCBhL3NlcnZlci93ZWJzb2NrZXQuaCBi
L3NlcnZlci93ZWJzb2NrZXQuaAppbmRleCBmNjViNGUzZDAuLmUzYTYxMDAwNiAxMDA2NDQKLS0t
IGEvc2VydmVyL3dlYnNvY2tldC5oCisrKyBiL3NlcnZlci93ZWJzb2NrZXQuaApAQCAtNDgsNyAr
NDgsNyBAQCB0eXBlZGVmIHN0cnVjdCB7CiAKIGJvb2wgd2Vic29ja2V0X2lzX3N0YXJ0KGNoYXIg
KmJ1Zik7CiB2b2lkIHdlYnNvY2tldF9jcmVhdGVfcmVwbHkoY2hhciAqYnVmLCBjaGFyICpvdXRi
dWYpOwotaW50IHdlYnNvY2tldF9yZWFkKFJlZHNXZWJTb2NrZXQgKndzLCB1aW50OF90ICpidWYs
IGludCBsZW4pOwotaW50IHdlYnNvY2tldF93cml0ZShSZWRzV2ViU29ja2V0ICp3cywgY29uc3Qg
dWludDhfdCAqYnVmLCBpbnQgbGVuKTsKLWludCB3ZWJzb2NrZXRfd3JpdGV2KFJlZHNXZWJTb2Nr
ZXQgKndzLCBzdHJ1Y3QgaW92ZWMgKmlvdiwgaW50IGlvdmNudCk7CiB2b2lkIHdlYnNvY2tldF9h
Y2tfY2xvc2Uodm9pZCAqb3BhcXVlLCB3ZWJzb2NrZXRfd3JpdGVfY2JfdCB3cml0ZV9jYik7Citp
bnQgd2Vic29ja2V0X3JlYWQoUmVkc1dlYlNvY2tldCAqd3MsIHVpbnQ4X3QgKmJ1Ziwgc2l6ZV90
IGxlbik7CitpbnQgd2Vic29ja2V0X3dyaXRlKFJlZHNXZWJTb2NrZXQgKndzLCBjb25zdCB2b2lk
ICpidWYsIHNpemVfdCBsZW4pOworaW50IHdlYnNvY2tldF93cml0ZXYoUmVkc1dlYlNvY2tldCAq
d3MsIGNvbnN0IHN0cnVjdCBpb3ZlYyAqaW92LCBpbnQgaW92Y250KTsKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
