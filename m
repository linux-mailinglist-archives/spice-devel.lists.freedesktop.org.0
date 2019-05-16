Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7DB2002F
	for <lists+spice-devel@lfdr.de>; Thu, 16 May 2019 09:24:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5869E892EF;
	Thu, 16 May 2019 07:24:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 864E2892EF
 for <spice-devel@lists.freedesktop.org>; Thu, 16 May 2019 07:24:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2FC213EDBF;
 Thu, 16 May 2019 07:24:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 276BD1001DEF;
 Thu, 16 May 2019 07:24:30 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1F9A3206D1;
 Thu, 16 May 2019 07:24:30 +0000 (UTC)
Date: Thu, 16 May 2019 03:24:30 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <18440491.18668581.1557991470068.JavaMail.zimbra@redhat.com>
In-Reply-To: <E1hR32r-0008Hu-IO@amboise>
References: <E1hR32r-0008Hu-IO@amboise>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.12]
Thread-Topic: gstreamer-encoder: Show the source fps when the system is too
 slow
Thread-Index: oFjdbmBkZiumcblwp6OWG8XoUYGWgw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Thu, 16 May 2019 07:24:30 +0000 (UTC)
Subject: Re: [Spice-devel] [spice] gstreamer-encoder: Show the source fps
 when the system is too slow
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

PiAKPiBUaGUgc291cmNlIGZyYW1lcmF0ZSBpcyBhcyBpbXBvcnRhbnQgYXMgdGhlIHJlc29sdXRp
b24gd2hlbiB0cnlpbmcgdG8KPiB1bmRlcnN0YW5kIGlmIHRoZSBzeXN0ZW0gc2hvdWxkIGJlIGZh
c3QgZW5vdWdoIHRvIGVuY29kZSB0aGUgdmlkZW8KPiBzdHJlYW0gaW4gcmVhbCB0aW1lLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEZyYW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+
Cj4gLS0tCj4gIHNlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2Vy
dmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+IGlu
ZGV4IDE3ZDk4MjJjMC4uM2RmYTJiYWUyIDEwMDY0NAo+IC0tLSBhL3NlcnZlci9nc3RyZWFtZXIt
ZW5jb2Rlci5jCj4gKysrIGIvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiBAQCAtNTQyLDcg
KzU0Miw3IEBAIHN0YXRpYyB2b2lkIHVwZGF0ZV9uZXh0X2ZyYW1lX21tX3RpbWUoU3BpY2VHc3RF
bmNvZGVyCj4gKmVuY29kZXIpCj4gICAgICB1aW50NjRfdCBwZXJpb2RfbnMgPSBOU0VDX1BFUl9T
RUMgLyBnZXRfc291cmNlX2ZwcyhlbmNvZGVyKTsKPiAgICAgIHVpbnQ2NF90IG1pbl9kZWxheV9u
cyA9IGdldF9hdmVyYWdlX2VuY29kaW5nX3RpbWUoZW5jb2Rlcik7Cj4gICAgICBpZiAobWluX2Rl
bGF5X25zID4gcGVyaW9kX25zKSB7Cj4gLSAgICAgICAgc3BpY2Vfd2FybmluZygieW91ciBzeXN0
ZW0gc2VlbXMgdG8gYmUgdG9vIHNsb3cgdG8gZW5jb2RlIHRoaXMgJWR4JWQKPiB2aWRlbyBpbiBy
ZWFsIHRpbWUiLCBlbmNvZGVyLT53aWR0aCwgZW5jb2Rlci0+aGVpZ2h0KTsKPiArICAgICAgICBz
cGljZV93YXJuaW5nKCJ5b3VyIHN5c3RlbSBzZWVtcyB0byBiZSB0b28gc2xvdyB0byBlbmNvZGUg
dGhpcyAlZHglZAo+ICVkIGZwcyB2aWRlbyBpbiByZWFsIHRpbWUiLCBlbmNvZGVyLT53aWR0aCwg
ZW5jb2Rlci0+aGVpZ2h0LAo+IGdldF9zb3VyY2VfZnBzKGVuY29kZXIpKTsKCk1heWJlIGp1c3QK
CiAgIHNwaWNlX3dhcm5pbmcoInlvdXIgc3lzdGVtIHNlZW1zIHRvIGJlIHRvbyBzbG93IHRvIGVu
Y29kZSB0aGlzICVkeCVkQCVkIHZpZGVvIGluIHJlYWwgdGltZSIsCiAgICAgICAgICAgICAgICAg
ZW5jb2Rlci0+d2lkdGgsIGVuY29kZXItPmhlaWdodCwgZ2V0X3NvdXJjZV9mcHMoZW5jb2Rlcikp
OwoKPiAgICAgIH0KPiAgCj4gICAgICBtaW5fZGVsYXlfbnMgPSBNSU4obWluX2RlbGF5X25zLCBT
UElDRV9HU1RfTUFYX1BFUklPRCk7CgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
