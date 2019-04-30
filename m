Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E37F8C1
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 14:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B99AF891D4;
	Tue, 30 Apr 2019 12:24:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3508891D4
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 80544307B96B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 12:24:27 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 736FE2B3DE;
 Tue, 30 Apr 2019 12:24:26 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Apr 2019 13:24:02 +0100
Message-Id: <20190430122419.16241-3-fziglio@redhat.com>
In-Reply-To: <20190430122419.16241-1-fziglio@redhat.com>
References: <20190430122419.16241-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Tue, 30 Apr 2019 12:24:27 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v6 02/19] Avoids %m in formatting
 for Windows
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

Tm90IHN1cHBvcnRlZCwgJW0gaXMgYSBHTlUgZXh0ZW5zaW9uIG9mIHNzY2FuZi4KClNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9y
ZWRzLmMgfCAyOSArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDE0IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NlcnZlci9y
ZWRzLmMgYi9zZXJ2ZXIvcmVkcy5jCmluZGV4IDVhNTUzODc4Li40ZTk5MDM1MSAxMDA2NDQKLS0t
IGEvc2VydmVyL3JlZHMuYworKysgYi9zZXJ2ZXIvcmVkcy5jCkBAIC0zNzM5LDggKzM3MzksNyBA
QCBzdGF0aWMgY29uc3QgaW50IHZpZGVvX2NvZGVjX2NhcHNbXSA9IHsKICAqIEBjb2RlYzogYSBs
b2NhdGlvbiB0byByZXR1cm4gdGhlIHBhcnNlZCBjb2RlYwogICogQHJldHVybiB0aGUgcG9zaXRp
b24gb2YgdGhlIG5leHQgY29kZWMgaW4gdGhlIHN0cmluZwogICovCi1zdGF0aWMgY29uc3QgY2hh
ciogcGFyc2VfbmV4dF92aWRlb19jb2RlYyhjb25zdCBjaGFyICpjb2RlY3MsIGNoYXIgKiplbmNv
ZGVyLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2hhciAqKmNv
ZGVjKQorc3RhdGljIGNoYXIqIHBhcnNlX25leHRfdmlkZW9fY29kZWMoY2hhciAqY29kZWNzLCBj
aGFyICoqZW5jb2RlciwgY2hhciAqKmNvZGVjKQogewogICAgIGlmICghY29kZWNzKSB7CiAgICAg
ICAgIHJldHVybiBOVUxMOwpAQCAtMzc0OSwxNCArMzc0OCwxNSBAQCBzdGF0aWMgY29uc3QgY2hh
ciogcGFyc2VfbmV4dF92aWRlb19jb2RlYyhjb25zdCBjaGFyICpjb2RlY3MsIGNoYXIgKiplbmNv
ZGVyLAogICAgIGlmICghKmNvZGVjcykgewogICAgICAgICByZXR1cm4gTlVMTDsKICAgICB9Ci0g
ICAgaW50IG47CisgICAgaW50IGVuZF9lbmNvZGVyLCBlbmRfY29kZWMgPSAtMTsKICAgICAqZW5j
b2RlciA9ICpjb2RlYyA9IE5VTEw7Ci0gICAgaWYgKHNzY2FuZihjb2RlY3MsICIlbVswLTlhLXpB
LVpfXTolbVswLTlhLXpBLVpfXSVuIiwgZW5jb2RlciwgY29kZWMsICZuKSA9PSAyKSB7Ci0gICAg
ICAgIC8vIHRoaXMgYXZvaWRzIGFjY2VwdGluZyAiZW5jb2Rlcjpjb2RlYyIgZm9sbG93ZWQgYnkg
Z2FyYmFnZSBsaWtlICIkJSoiCi0gICAgICAgIGlmIChjb2RlY3Nbbl0gIT0gJzsnICYmIGNvZGVj
c1tuXSAhPSAnXDAnKSB7Ci0gICAgICAgICAgICBmcmVlKCpjb2RlYyk7Ci0gICAgICAgICAgICAq
Y29kZWMgPSBOVUxMOwotICAgICAgICB9CisgICAgaWYgKHNzY2FuZihjb2RlY3MsICIlKlswLTlh
LXpBLVpfXTolbiUqWzAtOWEtekEtWl9dOyVuIiwgJmVuZF9lbmNvZGVyLCAmZW5kX2NvZGVjKSA9
PSAwCisgICAgICAgICYmIGVuZF9jb2RlYyA+IDApIHsKKyAgICAgICAgY29kZWNzW2VuZF9lbmNv
ZGVyIC0gMV0gPSAnXDAnOworICAgICAgICBjb2RlY3NbZW5kX2NvZGVjIC0gMV0gPSAnXDAnOwor
ICAgICAgICAqZW5jb2RlciA9IGNvZGVjczsKKyAgICAgICAgKmNvZGVjID0gY29kZWNzICsgZW5k
X2VuY29kZXI7CisgICAgICAgIHJldHVybiBjb2RlY3MgKyBlbmRfY29kZWM7CiAgICAgfQogICAg
IHJldHVybiBjb2RlY3MgKyBzdHJjc3BuKGNvZGVjcywgIjsiKTsKIH0KQEAgLTM3NzMsNyArMzc3
Myw4IEBAIHN0YXRpYyB2b2lkIHJlZHNfc2V0X3ZpZGVvX2NvZGVjc19mcm9tX3N0cmluZyhSZWRz
U3RhdGUgKnJlZHMsIGNvbnN0IGNoYXIgKmNvZGVjCiAgICAgfQogCiAgICAgdmlkZW9fY29kZWNz
ID0gZ19hcnJheV9uZXcoRkFMU0UsIEZBTFNFLCBzaXplb2YoUmVkVmlkZW9Db2RlYykpOwotICAg
IGNvbnN0IGNoYXIgKmMgPSBjb2RlY3M7CisgICAgY2hhciAqY29kZWNzX2NvcHkgPSBnX3N0cmR1
cF9wcmludGYoIiVzOyIsIGNvZGVjcyk7CisgICAgY2hhciAqYyA9IGNvZGVjc19jb3B5OwogICAg
IHdoaWxlICggKGMgPSBwYXJzZV9uZXh0X3ZpZGVvX2NvZGVjKGMsICZlbmNvZGVyX25hbWUsICZj
b2RlY19uYW1lKSkgKSB7CiAgICAgICAgIHVpbnQzMl90IGVuY29kZXJfaW5kZXgsIGNvZGVjX2lu
ZGV4OwogICAgICAgICBpZiAoIWVuY29kZXJfbmFtZSB8fCAhY29kZWNfbmFtZSkgewpAQCAtMzc5
NiwxOSArMzc5NywxNyBAQCBzdGF0aWMgdm9pZCByZWRzX3NldF92aWRlb19jb2RlY3NfZnJvbV9z
dHJpbmcoUmVkc1N0YXRlICpyZWRzLCBjb25zdCBjaGFyICpjb2RlYwogICAgICAgICAgICAgZ19h
cnJheV9hcHBlbmRfdmFsKHZpZGVvX2NvZGVjcywgbmV3X2NvZGVjKTsKICAgICAgICAgfQogCi0g
ICAgICAgIC8qIHRoZXNlIGFyZSBhbGxvY2F0ZWQgYnkgc3NjYW5mLCBkbyBub3QgdXNlIGdfZnJl
ZSAqLwotICAgICAgICBmcmVlKGVuY29kZXJfbmFtZSk7Ci0gICAgICAgIGZyZWUoY29kZWNfbmFt
ZSk7CiAgICAgICAgIGNvZGVjcyA9IGM7CiAgICAgfQogCiAgICAgaWYgKHZpZGVvX2NvZGVjcy0+
bGVuID09IDApIHsKICAgICAgICAgc3BpY2Vfd2FybmluZygiRmFpbGVkIHRvIHNldCB2aWRlbyBj
b2RlY3MsIGlucHV0IHN0cmluZzogJyVzJyIsIGNvZGVjcyk7CiAgICAgICAgIGdfYXJyYXlfdW5y
ZWYodmlkZW9fY29kZWNzKTsKLSAgICAgICAgcmV0dXJuOworICAgIH0gZWxzZSB7CisgICAgICAg
IHJlZHNfc2V0X3ZpZGVvX2NvZGVjcyhyZWRzLCB2aWRlb19jb2RlY3MpOwogICAgIH0KIAotICAg
IHJlZHNfc2V0X3ZpZGVvX2NvZGVjcyhyZWRzLCB2aWRlb19jb2RlY3MpOworICAgIGdfZnJlZShj
b2RlY3NfY29weSk7CiB9CiAKIFNQSUNFX0dOVUNfVklTSUJMRSBpbnQgc3BpY2Vfc2VydmVyX2lu
aXQoU3BpY2VTZXJ2ZXIgKnJlZHMsIFNwaWNlQ29yZUludGVyZmFjZSAqY29yZSkKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2Ut
ZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
