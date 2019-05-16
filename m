Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8752001C
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 09:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D0C891A8;
	Thu, 16 May 2019 07:22:34 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 231D7891A8
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 07:22:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BD0DB86674;
 Thu, 16 May 2019 07:22:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B24231001DEF;
 Thu, 16 May 2019 07:22:32 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A7CC1206D1;
 Thu, 16 May 2019 07:22:32 +0000 (UTC)
Date: Thu, 16 May 2019 03:22:32 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <431143232.18668528.1557991352628.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hR33D-0008Jc-SQ@amboise>
References: <E1hR33D-0008Jc-SQ@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.12]
Thread-Topic: mjpeg: Remove the unused MJPEG_LOW_FPS_RATE_TH constant
Thread-Index: Vz9G/cdim327mpfCOH125ttvMgU/Zg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 16 May 2019 07:22:32 +0000 (UTC)
Subject: Re: [Spice-devel] [spice] mjpeg: Remove the unused
 MJPEG_LOW_FPS_RATE_TH constant
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMu
Y29tPgoKQWNrZWQKCj4gLS0tCj4gIHNlcnZlci9tanBlZy1lbmNvZGVyLmMgfCAxIC0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL21qcGVn
LWVuY29kZXIuYyBiL3NlcnZlci9tanBlZy1lbmNvZGVyLmMKPiBpbmRleCBiMzczZThiNzEuLjE0
MDA1MTliYiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvbWpwZWctZW5jb2Rlci5jCj4gKysrIGIvc2Vy
dmVyL21qcGVnLWVuY29kZXIuYwo+IEBAIC0zOCw3ICszOCw2IEBAIHN0YXRpYyBjb25zdCBpbnQK
PiBtanBlZ19xdWFsaXR5X3NhbXBsZXNbTUpQRUdfUVVBTElUWV9TQU1QTEVfTlVNXSA9IHsyMCwg
MzAsIDQwLAo+ICAjZGVmaW5lIE1KUEVHX0FWRVJBR0VfU0laRV9XSU5ET1cgMwo+ICAKPiAgI2Rl
ZmluZSBNSlBFR19CSVRfUkFURV9FVkFMX01JTl9OVU1fRlJBTUVTIDMKPiAtI2RlZmluZSBNSlBF
R19MT1dfRlBTX1JBVEVfVEggMwo+ICAKPiAgI2RlZmluZSBNSlBFR19TRVJWRVJfU1RBVFVTX0VW
QUxfRlBTX0lOVEVSVkFMIDEKPiAgI2RlZmluZSBNSlBFR19TRVJWRVJfU1RBVFVTX0RPV05HUkFE
RV9EUk9QX0ZBQ1RPUl9USCAwLjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVs
