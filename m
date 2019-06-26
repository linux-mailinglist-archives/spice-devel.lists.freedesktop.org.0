Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D792456B89
	for <lists+spice-devel@lfdr.de>; Wed, 26 Jun 2019 16:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB516E447;
	Wed, 26 Jun 2019 14:10:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E9396E446
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 14:10:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BF83730BB523
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 14:10:29 +0000 (UTC)
Received: from dhcp-4-93.tlv.redhat.com (dhcp-4-93.tlv.redhat.com [10.35.4.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2CD1B1001B04
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 14:10:28 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 26 Jun 2019 17:10:26 +0300
Message-Id: <20190626141026.30745-2-ssheribe@redhat.com>
In-Reply-To: <20190626141026.30745-1-ssheribe@redhat.com>
References: <20190626141026.30745-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 26 Jun 2019 14:10:29 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent 2/2] gst-plugin: Use
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

V2hlbiB2YWFwaSBiYXNlZCBlbmNvZGVyIGlzIHVzZWQgaXQncyBsaWtlbHkgdGhhdCBhbHNvIHZh
YXBpIGJhc2VkCmNvbnZlcnNpb24gaXMgYXZhaWxhYmxlICh1c2luZyB0aGUgdmFhcGlwb3N0cHJv
YyBlbGVtZW50KS4KTW92aW5nIHRvIGF1dG92aWRlb2NvbnZlcnQgd2lsbCBhdXRvbWF0aWNhbGx5
IGNob29zZSBhIHN1aXRhYmxlCmNvbnZlcnQgZWxlbWVudCBhY2NvcmRpbmcgdG8gZWxlbWVudHMg
YXZhaWxhYmlsaXR5IChlLmcuIGluIHRoZQp2YWFwaSBjYXNlIGl0IHdvdWxkIHNlbGVjdCB2YWFw
aXBvc3Rwcm9jIGR1ZSB0byBpdHMgaGlnaCByYW5rKS4KClNpZ25lZC1vZmYtYnk6IFNuaXIgU2hl
cmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+Ci0tLQpBdCBmaXJzdCBpIGhhZCBhIHBhdGNoIHRv
IGNob29zZSB2YWFwaXBvc3Rwcm9jIG1hbnVhbGx5IGJ1dCB0aGVuIGkgcmVtZW1iZXJlZCB0aGlz
IGVsZW1lbnQKd2hpY2ggc3VwcG9zZSB0byBkbyBpdCBhdXRvbWF0aWNhbGx5IChpdCBzZWVtcyB2
YWFwaXBvc3Rwcm9jIGhhcyBoaWdoIGVub3VnaCByYW5rKS4gSSB0aGluawppdCdzIHByZWZlcnJl
ZCBhbHRob3VnaCBpdCdzIGluIGdzdC1wbHVnaW5zLWJhZAotLS0KIHNyYy9nc3QtcGx1Z2luLmNw
cCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL3NyYy9nc3QtcGx1Z2luLmNwcCBiL3NyYy9nc3QtcGx1Z2luLmNwcAppbmRl
eCBjZjY2MGViLi5kOGUyZDg5IDEwMDY0NAotLS0gYS9zcmMvZ3N0LXBsdWdpbi5jcHAKKysrIGIv
c3JjL2dzdC1wbHVnaW4uY3BwCkBAIC0yMTUsNyArMjE1LDcgQEAgdm9pZCBHc3RyZWFtZXJGcmFt
ZUNhcHR1cmU6OnBpcGVsaW5lX2luaXQoY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHRpbmdzICZz
ZXR0aW4KICAgICBpZiAoIWNhcHR1cmUpIHsKICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vy
cm9yKCJHc3RyZWFtZXIncyBjYXB0dXJlIGVsZW1lbnQgY2Fubm90IGJlIGNyZWF0ZWQiKTsKICAg
ICB9Ci0gICAgR3N0T2JqZWN0VVB0cjxHc3RFbGVtZW50PiBjb252ZXJ0KGdzdF9lbGVtZW50X2Zh
Y3RvcnlfbWFrZSgidmlkZW9jb252ZXJ0IiwgImNvbnZlcnQiKSk7CisgICAgR3N0T2JqZWN0VVB0
cjxHc3RFbGVtZW50PiBjb252ZXJ0KGdzdF9lbGVtZW50X2ZhY3RvcnlfbWFrZSgiYXV0b3ZpZGVv
Y29udmVydCIsICJjb252ZXJ0IikpOwogICAgIGlmICghY29udmVydCkgewogICAgICAgICB0aHJv
dyBzdGQ6OnJ1bnRpbWVfZXJyb3IoIkdzdHJlYW1lcidzICd2aWRlb2NvbnZlcnQnIGVsZW1lbnQg
Y2Fubm90IGJlIGNyZWF0ZWQiKTsKICAgICB9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
