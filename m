Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2EA762CB
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 11:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494A76ED02;
	Fri, 26 Jul 2019 09:52:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8F46ECFE
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 09:52:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3775E83F4C;
 Fri, 26 Jul 2019 09:52:20 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 751785F9DD;
 Fri, 26 Jul 2019 09:52:19 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 26 Jul 2019 10:52:09 +0100
Message-Id: <20190726095213.15655-3-fziglio@redhat.com>
In-Reply-To: <20190726095213.15655-1-fziglio@redhat.com>
References: <20190726095213.15655-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Fri, 26 Jul 2019 09:52:20 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v3 2/6] playback: Use the audio
 timestamps for the global mmtime conversion
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
Cc: Francois Gouget <fgouget@codeweavers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KCk1vcmUgZGF0
YSBoZWxwcyBpbXByb3ZlIHRoZSBhY2N1cmFjeSBvZiB0aGUgZXN0aW1hdGlvbiBvZiB0aGUgdHJ1
ZSBjbG9jawpvZmZzZXQgYW5kIG1pbmltdW0gbmV0d29yayBsYXRlbmN5LgoKU2lnbmVkLW9mZi1i
eTogRnJhbmNvaXMgR291Z2V0IDxmZ291Z2V0QGNvZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzcmMvY2hh
bm5lbC1wbGF5YmFjay5jIHwgMTEgKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtcGxheWJh
Y2suYyBiL3NyYy9jaGFubmVsLXBsYXliYWNrLmMKaW5kZXggYTAwNzA2ZmUuLjY1NmE0MDM3IDEw
MDY0NAotLS0gYS9zcmMvY2hhbm5lbC1wbGF5YmFjay5jCisrKyBiL3NyYy9jaGFubmVsLXBsYXli
YWNrLmMKQEAgLTMwMiwxNCArMzAyLDE2IEBAIHN0YXRpYyB2b2lkIHBsYXliYWNrX2hhbmRsZV9k
YXRhKFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgU3BpY2VNc2dJbiAqaW4pCiB7CiAgICAgU3BpY2VQ
bGF5YmFja0NoYW5uZWxQcml2YXRlICpjID0gU1BJQ0VfUExBWUJBQ0tfQ0hBTk5FTChjaGFubmVs
KS0+cHJpdjsKICAgICBTcGljZU1zZ1BsYXliYWNrUGFja2V0ICpwYWNrZXQgPSBzcGljZV9tc2df
aW5fcGFyc2VkKGluKTsKKyAgICBTcGljZVNlc3Npb24gKnNlc3Npb247CiAKICNpZmRlZiBERUJV
RwogICAgIENIQU5ORUxfREVCVUcoY2hhbm5lbCwgIiVzOiB0aW1lICV1IGRhdGEgJXAgc2l6ZSAl
ZCIsIF9fRlVOQ1RJT05fXywKICAgICAgICAgICAgICAgICAgIHBhY2tldC0+dGltZSwgcGFja2V0
LT5kYXRhLCBwYWNrZXQtPmRhdGFfc2l6ZSk7CiAjZW5kaWYKIAotICAgIGlmIChzcGljZV9tbXRp
bWVfZGlmZihjLT5sYXN0X3RpbWUsIHBhY2tldC0+dGltZSkgPiAwKQotICAgICAgICBnX3dhcm5f
aWZfcmVhY2hlZCgpOworICAgIC8qIFRoaXMgYWxzbyB1cGRhdGVzIHRoZSB0aW1lIG9mZnNldCAq
LworICAgIHNlc3Npb24gPSBzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKGNoYW5uZWwpOworICAg
IHNwaWNlX3Nlc3Npb25fbW10aW1lMmNsaWVudF90aW1lKHNlc3Npb24sIHBhY2tldC0+dGltZSk7
CiAKICAgICBjLT5sYXN0X3RpbWUgPSBwYWNrZXQtPnRpbWU7CiAKQEAgLTM2MSwxMSArMzYzLDE2
IEBAIHN0YXRpYyB2b2lkIHBsYXliYWNrX2hhbmRsZV9zdGFydChTcGljZUNoYW5uZWwgKmNoYW5u
ZWwsIFNwaWNlTXNnSW4gKmluKQogewogICAgIFNwaWNlUGxheWJhY2tDaGFubmVsUHJpdmF0ZSAq
YyA9IFNQSUNFX1BMQVlCQUNLX0NIQU5ORUwoY2hhbm5lbCktPnByaXY7CiAgICAgU3BpY2VNc2dQ
bGF5YmFja1N0YXJ0ICpzdGFydCA9IHNwaWNlX21zZ19pbl9wYXJzZWQoaW4pOworICAgIFNwaWNl
U2Vzc2lvbiAqc2Vzc2lvbjsKIAogICAgIENIQU5ORUxfREVCVUcoY2hhbm5lbCwgIiVzOiBmbXQg
JXUgY2hhbm5lbHMgJXUgZnJlcSAldSB0aW1lICV1IG1vZGUgJXMiLCBfX0ZVTkNUSU9OX18sCiAg
ICAgICAgICAgICAgICAgICBzdGFydC0+Zm9ybWF0LCBzdGFydC0+Y2hhbm5lbHMsIHN0YXJ0LT5m
cmVxdWVuY3ksIHN0YXJ0LT50aW1lLAogICAgICAgICAgICAgICAgICAgc3BpY2VfYXVkaW9fZGF0
YV9tb2RlX3RvX3N0cmluZyhjLT5tb2RlKSk7CiAKKyAgICAvKiBUaGlzIGFsc28gdXBkYXRlcyB0
aGUgdGltZSBvZmZzZXQgKi8KKyAgICBzZXNzaW9uID0gc3BpY2VfY2hhbm5lbF9nZXRfc2Vzc2lv
bihjaGFubmVsKTsKKyAgICBzcGljZV9zZXNzaW9uX21tdGltZTJjbGllbnRfdGltZShzZXNzaW9u
LCBzdGFydC0+dGltZSk7CisKICAgICBjLT5mcmFtZV9jb3VudCA9IDA7CiAgICAgYy0+bGFzdF90
aW1lID0gc3RhcnQtPnRpbWU7CiAgICAgYy0+aXNfYWN0aXZlID0gVFJVRTsKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
