Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B3F7DE5D
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 17:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C256E6C3;
	Thu,  1 Aug 2019 15:01:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5B86E6BB
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:01:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 38159313D878
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:01:22 +0000 (UTC)
Received: from dhcp-4-93.tlv.redhat.com (dhcp-4-93.tlv.redhat.com [10.35.4.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8746E19696
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:01:21 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  1 Aug 2019 18:01:17 +0300
Message-Id: <20190801150119.29179-2-ssheribe@redhat.com>
In-Reply-To: <20190801150119.29179-1-ssheribe@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Thu, 01 Aug 2019 15:01:22 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent 2/4] gst-plugin: Allow
 generation gstreamer dot file
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

U2V0IEdTVF9ERUJVR19EVU1QX0RPVF9ESVIgdG8gc3BlY2lmeSB3aGVyZSB0byBwbGFjZSB0aGUg
Z2VuZXJhdGVkCi5kb3QgZmlsZQotLS0KIHNyYy9nc3QtcGx1Z2luLmNwcCB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Ny
Yy9nc3QtcGx1Z2luLmNwcCBiL3NyYy9nc3QtcGx1Z2luLmNwcAppbmRleCBlOWQ5MzY0Li4wYTFk
MDQxIDEwMDY0NAotLS0gYS9zcmMvZ3N0LXBsdWdpbi5jcHAKKysrIGIvc3JjL2dzdC1wbHVnaW4u
Y3BwCkBAIC0yNjEsNyArMjYxLDcgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBpcGVs
aW5lX2luaXQoY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzICZzZXR0aW4KICAgICB9CiAK
ICAgICBnc3RfZWxlbWVudF9zZXRfc3RhdGUocGlwZWxpbmUuZ2V0KCksIEdTVF9TVEFURV9QTEFZ
SU5HKTsKLQorICAgIEdTVF9ERUJVR19CSU5fVE9fRE9UX0ZJTEUoYmluLCBHU1RfREVCVUdfR1JB
UEhfU0hPV19WRVJCT1NFLCAiZ3N0LXBsdWdpbi1waXBlbGluZS1kZWJ1ZyIpOwogI2lmICFYTElC
X0NBUFRVUkUKICAgICBpbnQgc3gsIHN5LCBleCwgZXk7CiAgICAgZ19vYmplY3RfZ2V0KGNhcHR1
cmUuZ2V0KCksCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
