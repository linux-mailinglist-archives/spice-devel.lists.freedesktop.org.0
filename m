Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3FB7DE5C
	for <lists+spice-devel@lfdr.de>; Thu,  1 Aug 2019 17:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6A16E6BB;
	Thu,  1 Aug 2019 15:01:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C20386E6C1
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:01:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3E3EB7E43D
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:01:21 +0000 (UTC)
Received: from dhcp-4-93.tlv.redhat.com (dhcp-4-93.tlv.redhat.com [10.35.4.93])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 93A5D19696
 for <spice-devel@lists.freedesktop.org>; Thu,  1 Aug 2019 15:01:20 +0000 (UTC)
From: Snir Sheriber <ssheribe@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu,  1 Aug 2019 18:01:16 +0300
Message-Id: <20190801150119.29179-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Thu, 01 Aug 2019 15:01:21 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-streaming-agent 1/4] gst-plugin: Allow
 ANY memory type to pass from convertor to encoder
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

LS0tCiBzcmMvZ3N0LXBsdWdpbi5jcHAgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcmMvZ3N0LXBsdWdpbi5jcHAgYi9z
cmMvZ3N0LXBsdWdpbi5jcHAKaW5kZXggNjQxNWFjMC4uZTlkOTM2NCAxMDA2NDQKLS0tIGEvc3Jj
L2dzdC1wbHVnaW4uY3BwCisrKyBiL3NyYy9nc3QtcGx1Z2luLmNwcApAQCAtMjUyLDcgKzI1Miw3
IEBAIHZvaWQgR3N0cmVhbWVyRnJhbWVDYXB0dXJlOjpwaXBlbGluZV9pbml0KGNvbnN0IEdzdHJl
YW1lckVuY29kZXJTZXR0aW5ncyAmc2V0dGluCiAgICAgZ3N0X2Jpbl9hZGQoYmluLCBlbmNvZGVy
KTsKICAgICBnc3RfYmluX2FkZChiaW4sIHNpbmspOwogCi0gICAgR3N0Q2Fwc1VQdHIgY2Fwcyhn
c3RfY2Fwc19mcm9tX3N0cmluZygidmlkZW8veC1yYXciKSk7CisgICAgR3N0Q2Fwc1VQdHIgY2Fw
cyhnc3RfY2Fwc19mcm9tX3N0cmluZygidmlkZW8veC1yYXcoQU5ZKSIpKTsKICAgICBsaW5rID0g
Z3N0X2VsZW1lbnRfbGluayhjYXB0dXJlLmdldCgpLCBjb252ZXJ0LmdldCgpKSAmJgogICAgICAg
ICAgICBnc3RfZWxlbWVudF9saW5rX2ZpbHRlcmVkKGNvbnZlcnQuZ2V0KCksIGVuY29kZXIuZ2V0
KCksIGNhcHMuZ2V0KCkpICYmCiAgICAgICAgICAgIGdzdF9lbGVtZW50X2xpbmtfZmlsdGVyZWQo
ZW5jb2Rlci5nZXQoKSwgc2luay5nZXQoKSwgc2lua19jYXBzLmdldCgpKTsKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
