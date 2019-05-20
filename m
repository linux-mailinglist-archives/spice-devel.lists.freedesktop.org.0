Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF01022D46
	for <lists+spice-devel@lfdr.de>; Mon, 20 May 2019 09:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38ABB891C7;
	Mon, 20 May 2019 07:39:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3614C891C7
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D8B8A30842A0
 for <spice-devel@lists.freedesktop.org>; Mon, 20 May 2019 07:39:54 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C9C765C57D;
 Mon, 20 May 2019 07:39:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 20 May 2019 08:39:45 +0100
Message-Id: <20190520073947.5382-3-fziglio@redhat.com>
In-Reply-To: <20190520073947.5382-1-fziglio@redhat.com>
References: <20190520073947.5382-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Mon, 20 May 2019 07:39:54 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 2/4] spice-client-gtk-module: Remove
 unused file
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
c3JjL3NwaWNlLWNsaWVudC1ndGstbW9kdWxlLmMgfCA0NSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQ1IGRlbGV0aW9ucygtKQogZGVsZXRlIG1v
ZGUgMTAwNjQ0IHNyYy9zcGljZS1jbGllbnQtZ3RrLW1vZHVsZS5jCgpkaWZmIC0tZ2l0IGEvc3Jj
L3NwaWNlLWNsaWVudC1ndGstbW9kdWxlLmMgYi9zcmMvc3BpY2UtY2xpZW50LWd0ay1tb2R1bGUu
YwpkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggYjgyZjFlMzQuLjAwMDAwMDAwCi0tLSBh
L3NyYy9zcGljZS1jbGllbnQtZ3RrLW1vZHVsZS5jCisrKyAvZGV2L251bGwKQEAgLTEsNDUgKzAs
MCBAQAotLyogLSotIE1vZGU6IEM7IGMtYmFzaWMtb2Zmc2V0OiA0OyBpbmRlbnQtdGFicy1tb2Rl
OiBuaWwgLSotICovCi0vKgotICAgQ29weXJpZ2h0IChDKSAyMDEwIFJlZCBIYXQsIEluYy4KLQot
ICAgVGhpcyBsaWJyYXJ5IGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0
IGFuZC9vcgotICAgbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIExlc3NlciBH
ZW5lcmFsIFB1YmxpYwotICAgTGljZW5zZSBhcyBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29mdHdh
cmUgRm91bmRhdGlvbjsgZWl0aGVyCi0gICB2ZXJzaW9uIDIuMSBvZiB0aGUgTGljZW5zZSwgb3Ig
KGF0IHlvdXIgb3B0aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4KLQotICAgVGhpcyBsaWJyYXJ5IGlz
IGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2lsbCBiZSB1c2VmdWwsCi0gICBidXQg
V0lUSE9VVCBBTlkgV0FSUkFOVFk7IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBv
ZgotICAgTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NF
LiAgU2VlIHRoZSBHTlUKLSAgIExlc3NlciBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIGZvciBtb3Jl
IGRldGFpbHMuCi0KLSAgIFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdO
VSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKLSAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJh
cnk7IGlmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4KLSovCi0jaW5j
bHVkZSAiY29uZmlnLmgiCi0jaW5jbHVkZSA8cHlnb2JqZWN0Lmg+Ci0KLXZvaWQgc3BpY2VfcmVn
aXN0ZXJfY2xhc3NlcyAoUHlPYmplY3QgKmQpOwotdm9pZCBzcGljZV9hZGRfY29uc3RhbnRzKFB5
T2JqZWN0ICptb2R1bGUsIGNvbnN0IGdjaGFyICpzdHJpcF9wcmVmaXgpOwotZXh0ZXJuIFB5TWV0
aG9kRGVmIHNwaWNlX2Z1bmN0aW9uc1tdOwotCi1ETF9FWFBPUlQodm9pZCkgaW5pdFNwaWNlQ2xp
ZW50R3RrKHZvaWQpCi17Ci0gICAgUHlPYmplY3QgKm0sICpkOwotCi0gICAgaW5pdF9weWdvYmpl
Y3QoKTsKLQotICAgIG0gPSBQeV9Jbml0TW9kdWxlKCJTcGljZUNsaWVudEd0ayIsIHNwaWNlX2Z1
bmN0aW9ucyk7Ci0gICAgaWYgKFB5RXJyX09jY3VycmVkKCkpCi0gICAgICAgIFB5X0ZhdGFsRXJy
b3IoImNhbid0IGluaXQgbW9kdWxlIik7Ci0KLSAgICBkID0gUHlNb2R1bGVfR2V0RGljdChtKTsK
LSAgICBpZiAoUHlFcnJfT2NjdXJyZWQoKSkKLSAgICAgICAgUHlfRmF0YWxFcnJvcigiY2FuJ3Qg
Z2V0IGRpY3QiKTsKLQotICAgIHNwaWNlX3JlZ2lzdGVyX2NsYXNzZXMoZCk7Ci0gICAgc3BpY2Vf
YWRkX2NvbnN0YW50cyhtLCAiU1BJQ0VfIik7Ci0KLSAgICBpZiAoUHlFcnJfT2NjdXJyZWQoKSkg
ewotICAgICAgICBQeV9GYXRhbEVycm9yKCJjYW4ndCBpbml0aWFsaXNlIG1vZHVsZSBTcGljZUNs
aWVudEd0ayIpOwotICAgIH0KLX0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
