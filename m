Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B722516192
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 11:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A7289FD7;
	Tue,  7 May 2019 09:58:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06D089FD7
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:58:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 792CDC057F32
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 09:58:01 +0000 (UTC)
Received: from redhat.com (ovpn-112-52.ams2.redhat.com [10.36.112.52])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6ECE661B79;
 Tue,  7 May 2019 09:57:57 +0000 (UTC)
Date: Tue, 7 May 2019 10:57:55 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <20190507095755.GJ27205@redhat.com>
References: <20190507094855.20634-1-uril@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507094855.20634-1-uril@redhat.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 07 May 2019 09:58:01 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] build: do not warn about
 address-of-packed-member
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMTI6NDg6NTVQTSArMDMwMCwgVXJpIEx1YmxpbiB3cm90
ZToKPiBUaGUgZ2NjIHdhcm5pbmcgYWRkcmVzcy1vZi1wYWNrZWQtbWVtYmVyIGlzIG5ldyBhbmQg
b24gYnkKPiBkZWZhdWx0IGluIGdjYyA5Lgo+IAo+IE1hbnkgb2YgdGhlIHN0cnVjdHVyZXMgc2Vu
dCBvdmVyIHRoZSBuZXR3b3JrIGFyZSBwYWNrZWQKPiBhbmQgd2l0aCB1bmFsaWduZWQgZmllbGRz
Lgo+IAo+IFRoaXMgYnJlYWtzIHRoZSBidWlsZCAtLSBkdWUgdG8gLVdlcnJvci4KPiBUZWxsIGdj
YyB0byBub3Qgd2FybiBhYm91dCBpdC4KCk5vdGUgdGhhdCB1bmFsaWduZWQgYWNjZXNzZXMgYXJl
IGdlbnVpbmUgYnVncyBzbyBpZ25vcmluZyB0aGVzZQptZWFuIHNwaWNlIGlzIGJyb2tlbiBvbiBj
ZXJ0YWluIGFyY2hpdGVjdHVyZXMuIHNwYXJjLCBhcm03LCBocHBhLAptaXBzIGluIHBhcnRpY3Vs
YXIgd2lsbCBlaXRoZXIgc2lnYnVzIG9yIGNhdXNlIHRyYXBzIHRvIGtlcm5lbCBzcGFjZQp3aGlj
aCBhcmUgc3V1dXV1cGVyIHNsb3cuIEV2ZW4gb24gYXJjaGl0ZWN0dXJlcyB3aGVyZSBpdCBpcyBv
aywKeW91IG9mdGVuIGdldCBhIHBlcmZvcm1hbmNlIGRlZ3JhZGF0aW9uLgoKSWYgeW91IGRvbid0
IGNhcmUgYWJvdXQgdGhlc2UgYXJjaGl0ZWN0dXJlcyB0aGF0J3Mgb2J2aW91c2x5IGZpbmUsCmJ1
dCBJIHRoaW5rIHRoZSBjb21taXQgbWVzc2FnZSBzaG91bGQgYXQgbGVhc3QgYWNrbm93bGVkZ2Ug
dGhhdAp0aGVzZSBhcmUgZ2VudWluZSBidWdzIGJlaW5nIGludGVudGlvbmFsbHkgaWdub3JlZC4K
ClJlZ2FyZHMsCkRhbmllbAotLSAKfDogaHR0cHM6Ly9iZXJyYW5nZS5jb20gICAgICAtby0gICAg
aHR0cHM6Ly93d3cuZmxpY2tyLmNvbS9waG90b3MvZGJlcnJhbmdlIDp8Cnw6IGh0dHBzOi8vbGli
dmlydC5vcmcgICAgICAgICAtby0gICAgICAgICAgICBodHRwczovL2ZzdG9wMTM4LmJlcnJhbmdl
LmNvbSA6fAp8OiBodHRwczovL2VudGFuZ2xlLXBob3RvLm9yZyAgICAtby0gICAgaHR0cHM6Ly93
d3cuaW5zdGFncmFtLmNvbS9kYmVycmFuZ2UgOnwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
