Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9A758522
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 17:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D801D6E03D;
	Thu, 27 Jun 2019 15:04:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27E106E040
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 15:04:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A6F763082E90
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 15:04:03 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DA9FC60C9B;
 Thu, 27 Jun 2019 15:04:01 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Jun 2019 16:03:57 +0100
Message-Id: <20190627150358.16534-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 27 Jun 2019 15:04:03 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 1/2] websocket: Add header guards
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
c2VydmVyL3dlYnNvY2tldC5oIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL3NlcnZlci93ZWJzb2NrZXQuaCBiL3NlcnZlci93ZWJzb2NrZXQu
aAppbmRleCAyMjEyMGQ5MzkuLjc3MDdlNjgwNCAxMDA2NDQKLS0tIGEvc2VydmVyL3dlYnNvY2tl
dC5oCisrKyBiL3NlcnZlci93ZWJzb2NrZXQuaApAQCAtMTUsNiArMTUsOSBAQAogICogIExpY2Vu
c2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5v
cmcvbGljZW5zZXMvPi4KICAqLwogCisjaWZuZGVmIFdFQlNPQ0tFVF9IXworI2RlZmluZSBXRUJT
T0NLRVRfSF8KKwogdHlwZWRlZiBzc2l6ZV90ICgqd2Vic29ja2V0X3JlYWRfY2JfdCkodm9pZCAq
b3BhcXVlLCB2b2lkICpidWYsIHNpemVfdCBuYnl0ZSk7CiB0eXBlZGVmIHNzaXplX3QgKCp3ZWJz
b2NrZXRfd3JpdGVfY2JfdCkodm9pZCAqb3BhcXVlLCBjb25zdCB2b2lkICpidWYsIHNpemVfdCBu
Ynl0ZSk7CiB0eXBlZGVmIHNzaXplX3QgKCp3ZWJzb2NrZXRfd3JpdGV2X2NiX3QpKHZvaWQgKm9w
YXF1ZSwgc3RydWN0IGlvdmVjICppb3YsIGludCBpb3ZjbnQpOwpAQCAtNDEsMyArNDQsNSBAQCB2
b2lkIHdlYnNvY2tldF9mcmVlKFJlZHNXZWJTb2NrZXQgKndzKTsKIGludCB3ZWJzb2NrZXRfcmVh
ZChSZWRzV2ViU29ja2V0ICp3cywgdWludDhfdCAqYnVmLCBzaXplX3QgbGVuLCB1bnNpZ25lZCAq
ZmxhZ3MpOwogaW50IHdlYnNvY2tldF93cml0ZShSZWRzV2ViU29ja2V0ICp3cywgY29uc3Qgdm9p
ZCAqYnVmLCBzaXplX3QgbGVuLCB1bnNpZ25lZCBmbGFncyk7CiBpbnQgd2Vic29ja2V0X3dyaXRl
dihSZWRzV2ViU29ja2V0ICp3cywgY29uc3Qgc3RydWN0IGlvdmVjICppb3YsIGludCBpb3ZjbnQs
IHVuc2lnbmVkIGZsYWdzKTsKKworI2VuZGlmCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
