Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3720615FDB
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 10:56:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E1A89343;
	Tue,  7 May 2019 08:56:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90EA589343
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 08:56:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 38269308A9BE
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 08:56:07 +0000 (UTC)
Received: from toolbox.mxp.redhat.com (unknown [10.32.181.168])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B3E55611DC
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 08:56:06 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  7 May 2019 08:56:01 +0000
Message-Id: <20190507085605.10054-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 07 May 2019 08:56:07 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v1 0/4] polkit code to be on usb-acl-helper
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgpXaGlsZSBsb29raW5n
IGF0IGNoYW5uZWwtdXNicmVkaXIgY29kZSwgc2VlbXMgd2VpcmQgdGhhdCB3ZSBhcmUKaWZkZWYg
VVNFX1BPTEtJVCBvbiB1c2ItYWNsLWhlbHBlciBmdW5jdGlvbiB0aGF0IGl0c2VsZiBkb2VzIG5v
dCBsaW5rCndpdGggcG9sa2l0IGJ1dCBydW5zIHRoZSBiaW5hcnkgc3BpY2UtY2xpZW50LWdsaWIt
dXNiLWFjbC1oZWxwZXIgdGhhdApsaW5rcyB0byBwb2xraXQgbGlicmFyeS4KClRoaXMgcGF0Y2hz
ZXQgc3VnZ2VzdGlvbiBpcyB0byBrZWVwIHRoZSBhY2Nlc3MgY29udHJvbCBoZWxwZXIgdG8gd29y
awp3aXRob3V0IHBvbGtpdCBpbiBvcmRlciB0byByZW1vdmUgdGhlIHBvbGtpdCBidWlsZCBsb2dp
YyBmcm9tCmNoYW5uZWwtdXNicmVkaXIuIFRoYXQgbWVhbnMgYWx3YXlzIGJ1aWxkaW5nIHVzYi1h
Y2wtaGVscGVyIGFuZCBJIGRvbid0CnNlZSBhIHN0cm9uZyByZWFzb24gbm90IHRvLgoKVGVzdGVk
IG9uIEZlZG9yYSAyOSB3aXRoIHBvbGtpdCBhbmQgd2l0aG91dC4KCkNoZWVycywKVmljdG9yCgpH
aXRsYWItY2k6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy92aWN0b3J0b3NvL3NwaWNl
LWd0ay9waXBlbGluZXMvMzU0NjgKClZpY3RvciBUb3NvICg0KToKICB1c2ItYWNsLWhlbHBlcjog
bW92ZSBleGVjIG9mIGJpbmFyeSB0byBpdHMgb3duIGZ1bmN0aW9uCiAgdXNiLWFjbC1oZWxwZXI6
IGFsd2F5cyBidWlsZCBhY2Nlc3MgY29udHJvbCBoZWxwZXIKICBjaGFubmVsLXVzYnJlZGlyOiB1
c2UgbXV0ZXggb24gcG9sa2l0IGNvZGUgcGF0aAogIGNoYW5uZWwtdXNicmVkaXI6IG1vdmUgcG9s
a2l0IHJlbGF0ZWQgY2hlY2tzIHRvIHVzYi1hY2wtaGVscGVyCgogc3JjL01ha2VmaWxlLmFtICAg
ICAgICB8ICAxMyArLS0tLQogc3JjL2NoYW5uZWwtdXNicmVkaXIuYyB8ICA1NCArKy0tLS0tLS0t
LS0tLS0tLS0KIHNyYy9tZXNvbi5idWlsZCAgICAgICAgfCAgIDcgKy0tCiBzcmMvdXNiLWFjbC1o
ZWxwZXIuYyAgIHwgMTI0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
CiA0IGZpbGVzIGNoYW5nZWQsIDkwIGluc2VydGlvbnMoKyksIDEwOCBkZWxldGlvbnMoLSkKCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
