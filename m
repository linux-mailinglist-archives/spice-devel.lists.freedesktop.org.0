Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C96E255429
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491366E17F;
	Tue, 25 Jun 2019 16:12:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1FD6E17F
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9690F309704F
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:18 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0A18A5D70D;
 Tue, 25 Jun 2019 16:12:16 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:42 +0100
Message-Id: <20190625161147.25211-19-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 25 Jun 2019 16:12:18 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 18/23] websocket: Handle PING and
 PONG frames
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

V2Vic29ja2V0IGltcGxlbWVudGF0aW9ucyBhcmUgcmVxdWlyZWQgdG8gaW1wbGVtZW50IHN1Y2gg
bWVzc2FnZXMuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0
LmNvbT4KLS0tCiBzZXJ2ZXIvd2Vic29ja2V0LmMgfCAxMjcgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEyIGluc2VydGlvbnMo
KyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci93ZWJzb2NrZXQuYyBiL3Nl
cnZlci93ZWJzb2NrZXQuYwppbmRleCA3MmE0YjA2NGIuLmNiMjIyYzY5MyAxMDA2NDQKLS0tIGEv
c2VydmVyL3dlYnNvY2tldC5jCisrKyBiL3NlcnZlci93ZWJzb2NrZXQuYwpAQCAtNjcsNiArNjcs
MjEgQEAKIAogI2RlZmluZSBXRUJTT0NLRVRfTUFYX0hFQURFUl9TSVpFICgxICsgOSArIDQpCiAK
KyNkZWZpbmUgTUFYX0NPTlRST0xfREFUQSAxMjUKKyNkZWZpbmUgQ09OVFJPTF9IRFJfTEVOIDIK
KwordHlwZWRlZiBzdHJ1Y3QgeworICAgIHVpbnQ4X3QgcmF3X3BvczsKKyAgICB1bmlvbiB7Cisg
ICAgICAgIHVpbnQ4X3QgcmF3X2RhdGFbTUFYX0NPTlRST0xfREFUQSArIENPTlRST0xfSERSX0xF
Tl07CisgICAgICAgIHN0cnVjdCB7CisgICAgICAgICAgICB1aW50OF90IHR5cGU7CisgICAgICAg
ICAgICB1aW50OF90IGRhdGFfbGVuOworICAgICAgICAgICAgdWludDhfdCBkYXRhW01BWF9DT05U
Uk9MX0RBVEFdOworICAgICAgICB9OworICAgIH07Cit9IFdlYlNvY2tldENvbnRyb2w7CisKIHR5
cGVkZWYgc3RydWN0IHsKICAgICB1aW50OF90IHR5cGU7CiAgICAgdWludDhfdCBoZWFkZXJbV0VC
U09DS0VUX01BWF9IRUFERVJfU0laRV07CkBAIC04Niw2ICsxMDEsOCBAQCBzdHJ1Y3QgUmVkc1dl
YlNvY2tldCB7CiAgICAgdWludDhfdCB3cml0ZV9oZWFkZXJbV0VCU09DS0VUX01BWF9IRUFERVJf
U0laRV07CiAgICAgdWludDhfdCB3cml0ZV9oZWFkZXJfcG9zLCB3cml0ZV9oZWFkZXJfbGVuOwog
ICAgIGJvb2wgY2xvc2VfcGVuZGluZzsKKyAgICBXZWJTb2NrZXRDb250cm9sIHBvbmc7CisgICAg
V2ViU29ja2V0Q29udHJvbCBwZW5kaW5nX3Bvbmc7CiAKICAgICB2b2lkICpyYXdfc3RyZWFtOwog
ICAgIHdlYnNvY2tldF9yZWFkX2NiX3QgcmF3X3JlYWQ7CkBAIC05Niw2ICsxMTMsMjggQEAgc3Ry
dWN0IFJlZHNXZWJTb2NrZXQgewogc3RhdGljIGludCB3ZWJzb2NrZXRfYWNrX2Nsb3NlKFJlZHNX
ZWJTb2NrZXQgKndzKTsKIHN0YXRpYyBpbnQgc2VuZF9wZW5kaW5nX2RhdGEoUmVkc1dlYlNvY2tl
dCAqd3MpOwogCitzdGF0aWMgaW5saW5lIGludCBnZXRfY29udHJvbF9yYXdfbGVuKGNvbnN0IFdl
YlNvY2tldENvbnRyb2wgKmNvbnRyb2wpCit7CisgICAgcmV0dXJuIGNvbnRyb2wtPmRhdGFfbGVu
ICsgQ09OVFJPTF9IRFJfTEVOOworfQorCitzdGF0aWMgaW5saW5lIHZvaWQgY29udHJvbF9pbml0
KFdlYlNvY2tldENvbnRyb2wgKmNvbnRyb2wsIHVpbnQ4X3QgdHlwZSkKK3sKKyAgICBjb250cm9s
LT5yYXdfcG9zID0gQ09OVFJPTF9IRFJfTEVOOworICAgIGNvbnRyb2wtPnR5cGUgPSB0eXBlOwor
ICAgIGNvbnRyb2wtPmRhdGFfbGVuID0gMDsKK30KKworc3RhdGljIGlubGluZSBib29sIGNvbnRy
b2xfc2VudChjb25zdCBXZWJTb2NrZXRDb250cm9sICpjb250cm9sKQoreworICAgIHJldHVybiBj
b250cm9sLT5yYXdfcG9zID49IGdldF9jb250cm9sX3Jhd19sZW4oY29udHJvbCk7Cit9CisKK3N0
YXRpYyBpbmxpbmUgdm9pZCBwb25nX2luaXQoV2ViU29ja2V0Q29udHJvbCAqcG9uZykKK3sKKyAg
ICBjb250cm9sX2luaXQocG9uZywgRklOX0ZMQUcgfCBQT05HX0ZSQU1FKTsKK30KKwogLyogUGVy
Zm9ybSBhIGNhc2UgaW5zZW5zaXRpdmUgc2VhcmNoIGZvciBuZWVkbGUgaW4gaGF5c3RhY2suCiAg
ICBJZiBmb3VuZCwgcmV0dXJuIGEgcG9pbnRlciB0byB0aGUgYnl0ZSBhZnRlciB0aGUgZW5kIG9m
IG5lZWRsZS4KICAgIE90aGVyd2lzZSwgcmV0dXJuIE5VTEwgKi8KQEAgLTI2NCwxOCArMzAzLDE0
IEBAIHN0YXRpYyBib29sIHdlYnNvY2tldF9nZXRfZnJhbWVfaGVhZGVyKHdlYnNvY2tldF9mcmFt
ZV90ICpmcmFtZSkKICAgICByZXR1cm4gdHJ1ZTsKIH0KIAotc3RhdGljIGludCByZWxheV9kYXRh
KHVpbnQ4X3QqIGJ1Ziwgc2l6ZV90IHNpemUsIHdlYnNvY2tldF9mcmFtZV90ICpmcmFtZSkKK3N0
YXRpYyB2b2lkIHJlbGF5X2RhdGEodWludDhfdCogYnVmLCBzaXplX3Qgc2l6ZSwgd2Vic29ja2V0
X2ZyYW1lX3QgKmZyYW1lKQogewotICAgIGludCBpOwotICAgIGludCBuID0gTUlOKHNpemUsIGZy
YW1lLT5leHBlY3RlZF9sZW4gLSBmcmFtZS0+cmVsYXllZCk7Ci0KICAgICBpZiAoZnJhbWUtPm1h
c2tlZCkgewotICAgICAgICBmb3IgKGkgPSAwOyBpIDwgbjsgaSsrLCBmcmFtZS0+cmVsYXllZCsr
KSB7Ci0gICAgICAgICAgICAqYnVmKysgXj0gZnJhbWUtPm1hc2tbZnJhbWUtPnJlbGF5ZWQgJSA0
XTsKKyAgICAgICAgc2l6ZV90IGk7CisgICAgICAgIGZvciAoaSA9IDA7IGkgPCBzaXplOyBpKysp
IHsKKyAgICAgICAgICAgICpidWYrKyBePSBmcmFtZS0+bWFza1soZnJhbWUtPnJlbGF5ZWQgKyBp
KSAlIDRdOwogICAgICAgICB9CiAgICAgfQotCi0gICAgcmV0dXJuIG47CiB9CiAKIGludCB3ZWJz
b2NrZXRfcmVhZChSZWRzV2ViU29ja2V0ICp3cywgdWludDhfdCAqYnVmLCBzaXplX3Qgc2l6ZSkK
QEAgLTMwNyw3ICszNDIsMTUgQEAgaW50IHdlYnNvY2tldF9yZWFkKFJlZHNXZWJTb2NrZXQgKndz
LCB1aW50OF90ICpidWYsIHNpemVfdCBzaXplKQogICAgICAgICAgICAgICAgIGVycm5vID0gRUlP
OwogICAgICAgICAgICAgICAgIHJldHVybiAtMTsKICAgICAgICAgICAgIH0KLSAgICAgICAgfSBl
bHNlIGlmIChmcmFtZS0+dHlwZSA9PSBDTE9TRV9GUkFNRSkgeworICAgICAgICAgICAgLyogZGlz
Y2FyZCBhIHBlbmRpbmcgcGluZywgcmVwbGFjZSB3aXRoIGN1cnJlbnQgb25lICovCisgICAgICAg
ICAgICBpZiAoZnJhbWUtPmZyYW1lX3JlYWR5ICYmIGZyYW1lLT50eXBlID09IFBJTkdfRlJBTUUp
IHsKKyAgICAgICAgICAgICAgICBwb25nX2luaXQoJndzLT5wb25nKTsKKyAgICAgICAgICAgICAg
ICB3cy0+cG9uZy5kYXRhX2xlbiA9IGZyYW1lLT5leHBlY3RlZF9sZW47CisgICAgICAgICAgICB9
CisgICAgICAgICAgICBjb250aW51ZTsKKyAgICAgICAgfQorCisgICAgICAgIGlmIChmcmFtZS0+
dHlwZSA9PSBDTE9TRV9GUkFNRSkgewogICAgICAgICAgICAgd3MtPmNsb3NlX3BlbmRpbmcgPSB0
cnVlOwogICAgICAgICAgICAgd2Vic29ja2V0X2NsZWFyX2ZyYW1lKGZyYW1lKTsKICAgICAgICAg
ICAgIHNlbmRfcGVuZGluZ19kYXRhKHdzKTsKQEAgLTMxOSwxOCArMzYyLDUwIEBAIGludCB3ZWJz
b2NrZXRfcmVhZChSZWRzV2ViU29ja2V0ICp3cywgdWludDhfdCAqYnVmLCBzaXplX3Qgc2l6ZSkK
ICAgICAgICAgICAgICAgICBnb3RvIHJlYWRfZXJyb3I7CiAgICAgICAgICAgICB9CiAKLSAgICAg
ICAgICAgIHJjID0gcmVsYXlfZGF0YShidWYsIHJjLCBmcmFtZSk7CisgICAgICAgICAgICByZWxh
eV9kYXRhKGJ1ZiwgcmMsIGZyYW1lKTsKICAgICAgICAgICAgIG4gKz0gcmM7CiAgICAgICAgICAg
ICBidWYgKz0gcmM7CiAgICAgICAgICAgICBzaXplIC09IHJjOwotICAgICAgICAgICAgaWYgKGZy
YW1lLT5yZWxheWVkID49IGZyYW1lLT5leHBlY3RlZF9sZW4pIHsKLSAgICAgICAgICAgICAgICB3
ZWJzb2NrZXRfY2xlYXJfZnJhbWUoZnJhbWUpOworICAgICAgICB9IGVsc2UgaWYgKGZyYW1lLT50
eXBlID09IFBJTkdfRlJBTUUpIHsKKyAgICAgICAgICAgIHNwaWNlX2Fzc2VydCh3cy0+cG9uZy5k
YXRhX2xlbiA9PSBmcmFtZS0+ZXhwZWN0ZWRfbGVuKTsKKyAgICAgICAgICAgIHJjID0gMDsKKyAg
ICAgICAgICAgIGlmICh3cy0+cG9uZy5kYXRhX2xlbiA+ICh3cy0+cG9uZy5yYXdfcG9zIC0gQ09O
VFJPTF9IRFJfTEVOKSkgeworICAgICAgICAgICAgICAgIHJjID0gd3MtPnJhd19yZWFkKHdzLT5y
YXdfc3RyZWFtLCB3cy0+cG9uZy5yYXdfZGF0YSArIHdzLT5wb25nLnJhd19wb3MsCisgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgd3MtPnBvbmcuZGF0YV9sZW4gLSAod3MtPnBvbmcu
cmF3X3BvcyAtIENPTlRST0xfSERSX0xFTikpOworICAgICAgICAgICAgICAgIGlmIChyYyA8PSAw
KSB7CisgICAgICAgICAgICAgICAgICAgIGdvdG8gcmVhZF9lcnJvcjsKKyAgICAgICAgICAgICAg
ICB9CisgICAgICAgICAgICAgICAgcmVsYXlfZGF0YSh3cy0+cG9uZy5yYXdfZGF0YSArIHdzLT5w
b25nLnJhd19wb3MsIHJjLCBmcmFtZSk7CisgICAgICAgICAgICAgICAgd3MtPnBvbmcucmF3X3Bv
cyArPSByYzsKKyAgICAgICAgICAgIH0KKyAgICAgICAgICAgIGlmICh3cy0+cG9uZy5yYXdfcG9z
IC0gQ09OVFJPTF9IRFJfTEVOID49IHdzLT5wb25nLmRhdGFfbGVuKSB7CisgICAgICAgICAgICAg
ICAgd3MtPnBvbmcucmF3X3BvcyA9IDA7CisgICAgICAgICAgICAgICAgaWYgKGNvbnRyb2xfc2Vu
dCgmd3MtPnBlbmRpbmdfcG9uZykpIHsKKyAgICAgICAgICAgICAgICAgICAgd3MtPnBlbmRpbmdf
cG9uZyA9IHdzLT5wb25nOworICAgICAgICAgICAgICAgICAgICBwb25nX2luaXQoJndzLT5wb25n
KTsKKyAgICAgICAgICAgICAgICB9CisgICAgICAgICAgICAgICAgc2VuZF9wZW5kaW5nX2RhdGEo
d3MpOwogICAgICAgICAgICAgfQogICAgICAgICB9IGVsc2UgewotICAgICAgICAgICAgLyogVE9E
TyAtIFdlIGRvbid0IGhhbmRsZSBQSU5HIGF0IHRoaXMgcG9pbnQgKi8KLSAgICAgICAgICAgIHNw
aWNlX3dhcm5pbmcoIlVuZXhwZWN0ZWQgV2ViU29ja2V0IGZyYW1lLnR5cGUgJWQuICBGYWlsdXJl
IG5vdyBsaWtlbHkuIiwgZnJhbWUtPnR5cGUpOworICAgICAgICAgICAgLyogY2xpZW50IGNvdWxk
IHNlbnQgYSBQT05HIGp1c3QgYXMgaGVhcnRiZWF0ICovCisgICAgICAgICAgICBpZiAoZnJhbWUt
PnR5cGUgIT0gUE9OR19GUkFNRSkgeworICAgICAgICAgICAgICAgIHNwaWNlX3dhcm5pbmcoIlVu
ZXhwZWN0ZWQgV2ViU29ja2V0IGZyYW1lLnR5cGUgJWQuICBGYWlsdXJlIG5vdyBsaWtlbHkuIiwg
ZnJhbWUtPnR5cGUpOworICAgICAgICAgICAgfQorCisgICAgICAgICAgICAvLyBkaXNjYXJkIHRo
aXMgZGF0YQorICAgICAgICAgICAgdWludDhfdCBkaXNjYXJkWzEyOF07CisgICAgICAgICAgICBy
YyA9IDA7CisgICAgICAgICAgICBpZiAoZnJhbWUtPmV4cGVjdGVkX2xlbiA+IGZyYW1lLT5yZWxh
eWVkKSB7CisgICAgICAgICAgICAgICAgcmMgPSB3cy0+cmF3X3JlYWQod3MtPnJhd19zdHJlYW0s
IGRpc2NhcmQsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTUlOKHNpemVvZihk
aXNjYXJkKSwgZnJhbWUtPmV4cGVjdGVkX2xlbiAtIGZyYW1lLT5yZWxheWVkKSk7CisgICAgICAg
ICAgICAgICAgaWYgKHJjIDw9IDApIHsKKyAgICAgICAgICAgICAgICAgICAgZ290byByZWFkX2Vy
cm9yOworICAgICAgICAgICAgICAgIH0KKyAgICAgICAgICAgIH0KKyAgICAgICAgfQorICAgICAg
ICBmcmFtZS0+cmVsYXllZCArPSByYzsKKyAgICAgICAgaWYgKGZyYW1lLT5yZWxheWVkID49IGZy
YW1lLT5leHBlY3RlZF9sZW4pIHsKICAgICAgICAgICAgIHdlYnNvY2tldF9jbGVhcl9mcmFtZShm
cmFtZSk7Ci0gICAgICAgICAgICBjb250aW51ZTsKICAgICAgICAgfQogICAgIH0KIApAQCAtNDU5
LDYgKzUzNCwyNSBAQCBzdGF0aWMgaW50IHNlbmRfcGVuZGluZ19kYXRhKFJlZHNXZWJTb2NrZXQg
KndzKQogICAgICAgICAgICAgcmV0dXJuIHJjOwogICAgICAgICB9CiAgICAgfQorCisgICAgV2Vi
U29ja2V0Q29udHJvbCAqcG9uZyA9ICZ3cy0+cGVuZGluZ19wb25nOworICAgIGlmICghY29udHJv
bF9zZW50KHBvbmcpKSB7CisgICAgICAgIHJjID0gd3MtPnJhd193cml0ZSh3cy0+cmF3X3N0cmVh
bSwgcG9uZy0+cmF3X2RhdGEgKyBwb25nLT5yYXdfcG9zLAorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZ2V0X2NvbnRyb2xfcmF3X2xlbihwb25nKSAtIHBvbmctPnJhd19wb3MpOworICAgICAg
ICBpZiAocmMgPD0gMCkgeworICAgICAgICAgICAgcmV0dXJuIHJjOworICAgICAgICB9CisgICAg
ICAgIHBvbmctPnJhd19wb3MgKz0gcmM7CisgICAgICAgIGlmICghY29udHJvbF9zZW50KHBvbmcp
KSB7CisgICAgICAgICAgICBlcnJubyA9IEVBR0FJTjsKKyAgICAgICAgICAgIHJldHVybiAtMTsK
KyAgICAgICAgfQorICAgICAgICAvKiBhbHJlYWR5IGFub3RoZXIgcGVuZGluZyAqLworICAgICAg
ICBpZiAod3MtPnBvbmcucmF3X3BvcyA9PSAwKSB7CisgICAgICAgICAgICB3cy0+cGVuZGluZ19w
b25nID0gd3MtPnBvbmc7CisgICAgICAgICAgICBwb25nX2luaXQoJndzLT5wb25nKTsKKyAgICAg
ICAgfQorICAgIH0KICAgICByZXR1cm4gMTsKIH0KIApAQCAtNjU2LDYgKzc1MCw5IEBAIFJlZHNX
ZWJTb2NrZXQgKndlYnNvY2tldF9uZXcoY29uc3Qgdm9pZCAqYnVmLCBzaXplX3QgbGVuLCB2b2lk
ICpzdHJlYW0sIHdlYnNvY2tlCiAgICAgd3MtPnJhd193cml0ZSA9IHdyaXRlX2NiOwogICAgIHdz
LT5yYXdfd3JpdGV2ID0gd3JpdGV2X2NiOwogCisgICAgcG9uZ19pbml0KCZ3cy0+cG9uZyk7Cisg
ICAgcG9uZ19pbml0KCZ3cy0+cGVuZGluZ19wb25nKTsKKwogICAgIHJldHVybiB3czsKIH0KIAot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2Ut
ZGV2ZWw=
