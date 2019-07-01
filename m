Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D465BAFF
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 13:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7809089B69;
	Mon,  1 Jul 2019 11:50:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADFA89CBC
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 11:50:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 263073082200
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 11:50:18 +0000 (UTC)
Received: from localhost.localdomain.com (unknown [10.35.206.61])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3210766617
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 11:50:16 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  1 Jul 2019 14:50:14 +0300
Message-Id: <20190701115014.11866-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Mon, 01 Jul 2019 11:50:18 +0000 (UTC)
Subject: [Spice-devel] [PATCH v3 spice-streaming-agent] drop sstream and use
 dedicated functions instead
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

SW5zdGVhZCBvZiBtYW5pcHVsYXRpbmcgYSBzdHJpbmcgYW5kIGNvbnZlcnQgaXQgdG8gY2FwcyBq
dXN0CnVzZSBkZWRpY2F0ZWQgZnVuY3Rpb25zIGluc3RlYWQKClNpZ25lZC1vZmYtYnk6IFNuaXIg
U2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+Ci0tLQpDaGFuZ2VzIGZyb20gdjI6CiAtdXNl
IGdfZnJlZSBhcyBhIGRlbGV0ZXIKIChleGFjdGx5IDEwMCBjaGFyYWN0ZXJzIHdpZHRoKQoKLS0t
CiBzcmMvZ3N0LXBsdWdpbi5jcHAgfCAzNCArKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvc3JjL2dzdC1wbHVnaW4uY3BwIGIvc3JjL2dzdC1wbHVnaW4uY3BwCmluZGV4
IGNiMzEwZDAuLjQ0NGE5MDggMTAwNjQ0Ci0tLSBhL3NyYy9nc3QtcGx1Z2luLmNwcAorKysgYi9z
cmMvZ3N0LXBsdWdpbi5jcHAKQEAgLTgsNyArOCw2IEBACiAjaW5jbHVkZSA8Y3N0cmluZz4KICNp
bmNsdWRlIDxleGNlcHRpb24+CiAjaW5jbHVkZSA8c3RkZXhjZXB0PgotI2luY2x1ZGUgPHNzdHJl
YW0+CiAjaW5jbHVkZSA8bWVtb3J5PgogI2luY2x1ZGUgPHN5c2xvZy5oPgogI2luY2x1ZGUgPHVu
aXN0ZC5oPgpAQCAtMTMyLDM0ICsxMzEsMzUgQEAgR3N0RWxlbWVudCAqR3N0cmVhbWVyRnJhbWVD
YXB0dXJlOjpnZXRfZW5jb2Rlcl9wbHVnaW4oY29uc3QgR3N0cmVhbWVyRW5jb2RlclNldHQKICAg
ICBHTGlzdCAqZmlsdGVyZWQ7CiAgICAgR3N0RWxlbWVudCAqZW5jb2RlcjsKICAgICBHc3RFbGVt
ZW50RmFjdG9yeSAqZmFjdG9yeSA9IG51bGxwdHI7Ci0gICAgc3RkOjpzdHJpbmdzdHJlYW0gY2Fw
c19zczsKIAogICAgIHN3aXRjaCAoc2V0dGluZ3MuY29kZWMpIHsKICAgICBjYXNlIFNQSUNFX1ZJ
REVPX0NPREVDX1RZUEVfSDI2NDoKLSAgICAgICAgY2Fwc19zcyA8PCAidmlkZW8veC1oMjY0IiA8
PCAiLHN0cmVhbS1mb3JtYXQ9KHN0cmluZylieXRlLXN0cmVhbSI7CisgICAgICAgIHNpbmtfY2Fw
cy5yZXNldChnc3RfY2Fwc19uZXdfc2ltcGxlKCJ2aWRlby94LWgyNjQiLAorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAic3RyZWFtLWZvcm1hdCIsIEdfVFlQRV9T
VFJJTkcsICJieXRlLXN0cmVhbSIsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIE5VTEwpKTsKICAgICAgICAgYnJlYWs7CiAgICAgY2FzZSBTUElDRV9WSURFT19D
T0RFQ19UWVBFX01KUEVHOgotICAgICAgICBjYXBzX3NzIDw8ICJpbWFnZS9qcGVnIjsKKyAgICAg
ICAgc2lua19jYXBzLnJlc2V0KGdzdF9jYXBzX25ld19lbXB0eV9zaW1wbGUoImltYWdlL2pwZWci
KSk7CiAgICAgICAgIGJyZWFrOwogICAgIGNhc2UgU1BJQ0VfVklERU9fQ09ERUNfVFlQRV9WUDg6
Ci0gICAgICAgIGNhcHNfc3MgPDwgInZpZGVvL3gtdnA4IjsKKyAgICAgICAgc2lua19jYXBzLnJl
c2V0KGdzdF9jYXBzX25ld19lbXB0eV9zaW1wbGUoInZpZGVvL3gtdnA4IikpOwogICAgICAgICBi
cmVhazsKICAgICBjYXNlIFNQSUNFX1ZJREVPX0NPREVDX1RZUEVfVlA5OgotICAgICAgICBjYXBz
X3NzIDw8ICJ2aWRlby94LXZwOSI7CisgICAgICAgIHNpbmtfY2Fwcy5yZXNldChnc3RfY2Fwc19u
ZXdfZW1wdHlfc2ltcGxlKCJ2aWRlby94LXZwOSIpKTsKICAgICAgICAgYnJlYWs7CiAgICAgY2Fz
ZSBTUElDRV9WSURFT19DT0RFQ19UWVBFX0gyNjU6Ci0gICAgICAgIGNhcHNfc3MgPDwgInZpZGVv
L3gtaDI2NSI7CisgICAgICAgIHNpbmtfY2Fwcy5yZXNldChnc3RfY2Fwc19uZXdfZW1wdHlfc2lt
cGxlKCJ2aWRlby94LWgyNjUiKSk7CiAgICAgICAgIGJyZWFrOwogICAgIGRlZmF1bHQgOiAvKiBT
aG91bGQgbm90IGhhcHBlbiAtIGp1c3QgdG8gYXZvaWQgY29tcGlsZXIncyBjb21wbGFpbnQgKi8K
ICAgICAgICAgdGhyb3cgc3RkOjpsb2dpY19lcnJvcigiVW5rbm93biBjb2RlYyIpOwogICAgIH0K
LSAgICBjYXBzX3NzIDw8ICIsZnJhbWVyYXRlPSIgPDwgc2V0dGluZ3MuZnBzIDw8ICIvMSI7Cisg
ICAgZ3N0X2NhcHNfc2V0X3NpbXBsZShzaW5rX2NhcHMuZ2V0KCksICJmcmFtZXJhdGUiLCBHU1Rf
VFlQRV9GUkFDVElPTiwgc2V0dGluZ3MuZnBzLCAxLCBudWxscHRyKTsKKyAgICBzdGQ6OnVuaXF1
ZV9wdHI8Z2NoYXIsIGRlY2x0eXBlKCZnX2ZyZWUpPiBjYXBzX3N0cihnc3RfY2Fwc190b19zdHJp
bmcoc2lua19jYXBzLmdldCgpKSwgZ19mcmVlKTsKIAogICAgIGVuY29kZXJzID0gZ3N0X2VsZW1l
bnRfZmFjdG9yeV9saXN0X2dldF9lbGVtZW50cyhHU1RfRUxFTUVOVF9GQUNUT1JZX1RZUEVfVklE
RU9fRU5DT0RFUiwgR1NUX1JBTktfTk9ORSk7Ci0gICAgc2lua19jYXBzLnJlc2V0KGdzdF9jYXBz
X2Zyb21fc3RyaW5nKGNhcHNfc3Muc3RyKCkuY19zdHIoKSkpOwogICAgIGZpbHRlcmVkID0gZ3N0
X2VsZW1lbnRfZmFjdG9yeV9saXN0X2ZpbHRlcihlbmNvZGVycywgc2lua19jYXBzLmdldCgpLCBH
U1RfUEFEX1NSQywgZmFsc2UpOwogICAgIGlmIChmaWx0ZXJlZCkgewotICAgICAgICBnc3Rfc3lz
bG9nKExPR19OT1RJQ0UsICJMb29raW5nIGZvciBlbmNvZGVyIHBsdWdpbnMgd2hpY2ggY2FuIHBy
b2R1Y2UgYSAnJXMnIHN0cmVhbSIsIGNhcHNfc3Muc3RyKCkuY19zdHIoKSk7CisgICAgICAgIGdz
dF9zeXNsb2coTE9HX05PVElDRSwgIkxvb2tpbmcgZm9yIGVuY29kZXIgcGx1Z2lucyB3aGljaCBj
YW4gcHJvZHVjZSBhICclcycgc3RyZWFtIiwgY2Fwc19zdHIuZ2V0KCkpOwogICAgICAgICBmb3Ig
KEdMaXN0ICpsID0gZmlsdGVyZWQ7IGwgIT0gbnVsbHB0cjsgbCA9IGwtPm5leHQpIHsKICAgICAg
ICAgICAgIGlmICghZmFjdG9yeSAmJiAhc2V0dGluZ3MuZW5jb2Rlci5jb21wYXJlKEdTVF9FTEVN
RU5UX05BTUUobC0+ZGF0YSkpKSB7CiAgICAgICAgICAgICAgICAgZmFjdG9yeSA9IChHc3RFbGVt
ZW50RmFjdG9yeSopbC0+ZGF0YTsKQEAgLTE2OSwxMyArMTY5LDEzIEBAIEdzdEVsZW1lbnQgKkdz
dHJlYW1lckZyYW1lQ2FwdHVyZTo6Z2V0X2VuY29kZXJfcGx1Z2luKGNvbnN0IEdzdHJlYW1lckVu
Y29kZXJTZXR0CiAgICAgICAgIGlmICghZmFjdG9yeSAmJiAhc2V0dGluZ3MuZW5jb2Rlci5lbXB0
eSgpKSB7CiAgICAgICAgICAgICBnc3Rfc3lzbG9nKExPR19XQVJOSU5HLAogICAgICAgICAgICAg
ICAgICAgICAgICAiU3BlY2lmaWVkIGVuY29kZXIgbmFtZWQgJyVzJyBjYW5ub3QgcHJvZHVjZSAn
JXMnIHN0cmVhbSwgbWFrZSBzdXJlIG1hdGNoaW5nIGdzdC5jb2RlYyBpcyBzcGVjaWZpZWQgYW5k
IHBsdWdpbidzIGF2YWlsYWJpbGl0eSIsCi0gICAgICAgICAgICAgICAgICAgICAgIHNldHRpbmdz
LmVuY29kZXIuY19zdHIoKSwgY2Fwc19zcy5zdHIoKS5jX3N0cigpKTsKKyAgICAgICAgICAgICAg
ICAgICAgICAgc2V0dGluZ3MuZW5jb2Rlci5jX3N0cigpLCBjYXBzX3N0ci5nZXQoKSk7CiAgICAg
ICAgIH0KICAgICAgICAgZmFjdG9yeSA9IGZhY3RvcnkgPyBmYWN0b3J5IDogKEdzdEVsZW1lbnRG
YWN0b3J5KilmaWx0ZXJlZC0+ZGF0YTsKICAgICAgICAgZ3N0X3N5c2xvZyhMT0dfTk9USUNFLCAi
JyVzJyBlbmNvZGVyIHBsdWdpbiBpcyB1c2VkIiwgR1NUX0VMRU1FTlRfTkFNRShmYWN0b3J5KSk7
CiAKICAgICB9IGVsc2UgewotICAgICAgICBnc3Rfc3lzbG9nKExPR19FUlIsICJObyBzdWl0YWJs
ZSBlbmNvZGVyIHdhcyBmb3VuZCBmb3IgJyVzJyIsIGNhcHNfc3Muc3RyKCkuY19zdHIoKSk7Cisg
ICAgICAgIGdzdF9zeXNsb2coTE9HX0VSUiwgIk5vIHN1aXRhYmxlIGVuY29kZXIgd2FzIGZvdW5k
IGZvciAnJXMnIiwgY2Fwc19zdHIuZ2V0KCkpOwogICAgIH0KIAogICAgIGVuY29kZXIgPSBmYWN0
b3J5ID8gZ3N0X2VsZW1lbnRfZmFjdG9yeV9jcmVhdGUoZmFjdG9yeSwgImVuY29kZXIiKSA6IG51
bGxwdHI7CkBAIC0zNTEsMTAgKzM1MSwxMiBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6
eGxpYl9jYXB0dXJlKCkKICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJGYWlsZWQg
dG8gd3JhcCBpbWFnZSBpbiBnc3RyZWFtZXIgYnVmZmVyIik7CiAgICAgfQogCi0gICAgc3RkOjpz
dHJpbmdzdHJlYW0gc3M7Ci0KLSAgICBzcyA8PCAidmlkZW8veC1yYXcsZm9ybWF0PUJHUngsd2lk
dGg9IiA8PCBpbWFnZS0+d2lkdGggPDwgIixoZWlnaHQ9IiA8PCBpbWFnZS0+aGVpZ2h0IDw8ICIs
ZnJhbWVyYXRlPSIgPDwgc2V0dGluZ3MuZnBzIDw8ICIvMSI7Ci0gICAgR3N0Q2Fwc1VQdHIgY2Fw
cyhnc3RfY2Fwc19mcm9tX3N0cmluZyhzcy5zdHIoKS5jX3N0cigpKSk7CisgICAgR3N0Q2Fwc1VQ
dHIgY2Fwcyhnc3RfY2Fwc19uZXdfc2ltcGxlKCJ2aWRlby94LXJhdyIsCisgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICJmb3JtYXQiLCBHX1RZUEVfU1RSSU5HLCAiQkdS
eCIsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ3aWR0aCIsIEdf
VFlQRV9JTlQsIGltYWdlLT53aWR0aCwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgImhlaWdodCIsIEdfVFlQRV9JTlQsIGltYWdlLT5oZWlnaHQsCisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJmcmFtZXJhdGUiLCBHU1RfVFlQRV9GUkFD
VElPTiwgc2V0dGluZ3MuZnBzLCAxLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBOVUxMKSk7CiAKICAgICAvLyBQdXNoIHNhbXBsZQogICAgIEdzdFNhbXBsZVVQdHIg
YXBwc3JjX3NhbXBsZShnc3Rfc2FtcGxlX25ldyhidWYsIGNhcHMuZ2V0KCksIG51bGxwdHIsIG51
bGxwdHIpKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
