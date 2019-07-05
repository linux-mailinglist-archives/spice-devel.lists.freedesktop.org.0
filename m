Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5396020C
	for <lists+spice-devel@lfdr.de>; Fri,  5 Jul 2019 10:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A2F6E41F;
	Fri,  5 Jul 2019 08:23:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59ACF6E41F
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 08:23:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 07611307D92F
 for <spice-devel@lists.freedesktop.org>; Fri,  5 Jul 2019 08:23:06 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 08A761BC3E;
 Fri,  5 Jul 2019 08:23:04 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri,  5 Jul 2019 09:22:59 +0100
Message-Id: <20190705082259.10991-3-fziglio@redhat.com>
In-Reply-To: <CADJ1XR1ufJx6xGGRiDmNz8db5-_MRMox_YrdnVBgSjjQyOE9dA@mail.gmail.com>
References: <CADJ1XR1ufJx6xGGRiDmNz8db5-_MRMox_YrdnVBgSjjQyOE9dA@mail.gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 05 Jul 2019 08:23:06 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 3/3] fixup! reds: Add ability to
 query the video-codecs currently enabled
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

RG8gbm90IGFkZCBzZXBhcmF0b3IgYXQgdGhlIGVuZCBvZiBzdHJpbmcKLS0tCiBzZXJ2ZXIvdmlk
ZW8tc3RyZWFtLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmMgYi9zZXJ2ZXIvdmlk
ZW8tc3RyZWFtLmMKaW5kZXggZDIyNzg0ZjVmLi42YWE4NTlhMDIgMTAwNjQ0Ci0tLSBhL3NlcnZl
ci92aWRlby1zdHJlYW0uYworKysgYi9zZXJ2ZXIvdmlkZW8tc3RyZWFtLmMKQEAgLTk4Nyw3ICs5
ODcsNyBAQCBjaGFyICp2aWRlb19jb2RlY3NfdG9fc3RyaW5nKEdBcnJheSAqdmlkZW9fY29kZWNz
LCBjb25zdCBjaGFyICpzZXApCiAgICAgICAgIFJlZFZpZGVvQ29kZWMgY29kZWMgPSBnX2FycmF5
X2luZGV4KHZpZGVvX2NvZGVjcywgUmVkVmlkZW9Db2RlYywgaSk7CiAgICAgICAgIGNoYXIgKmNv
ZGVjX25hbWUgPSByZWRzX2dldF92aWRlb19jb2RlY19mdWxsbmFtZSgmY29kZWMpOwogCi0gICAg
ICAgIGdfc3RyaW5nX2FwcGVuZF9wcmludGYobXNnLCAiJXMlcyIsIGNvZGVjX25hbWUsIHNlcCk7
CisgICAgICAgIGdfc3RyaW5nX2FwcGVuZF9wcmludGYobXNnLCAiJXMlcyIsIGkgPyBzZXAgOiAi
IiwgY29kZWNfbmFtZSk7CiAgICAgICAgIGdfZnJlZShjb2RlY19uYW1lKTsKICAgICB9CiAKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRl
dmVs
