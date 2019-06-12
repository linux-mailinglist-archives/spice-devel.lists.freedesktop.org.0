Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DAF42085
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 11:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9868B893A4;
	Wed, 12 Jun 2019 09:17:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B16E893A4
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 09:17:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B364759440;
 Wed, 12 Jun 2019 09:17:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A9246614C4;
 Wed, 12 Jun 2019 09:17:40 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C4BE4EBC4;
 Wed, 12 Jun 2019 09:17:40 +0000 (UTC)
Date: Wed, 12 Jun 2019 05:17:40 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1272357355.22421294.1560331060553.JavaMail.zimbra@redhat.com>
In-Reply-To: <bcf3420b33ebc0b54f9913326814ca104a916e2f.1558511881.git.fgouget@free.fr>
References: <cover.1558511881.git.fgouget@free.fr>
 <bcf3420b33ebc0b54f9913326814ca104a916e2f.1558511881.git.fgouget@free.fr>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.25, 10.4.195.24]
Thread-Topic: utils: Remove the LL suffix from NSEC_PER_MILLISEC
Thread-Index: 9EzDpHOIjQ5iOJmxroSsYyRtKfsY3A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 12 Jun 2019 09:17:40 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 1/2] utils: Remove the LL suffix from
 NSEC_PER_MILLISEC
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

PiAKPiBUaGlzIGNvbnN0YW50IGZpdHMgaW4gYSByZWd1bGFyIDMyIGJpdCBzaWduZWQgaW50ZWdl
ciBzbyBpdCBkb2VzIG5vdAo+IG5lZWQgdGhlIHN1ZmZpeC4KPiBJdCBpcyBhbHNvIG5vdCB1c2Vk
IGluIGV4cHJlc3Npb25zIHRoYXQgbWF5IG92ZXJmbG93Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZy
YW5jb2lzIEdvdWdldCA8ZmdvdWdldEBjb2Rld2VhdmVycy5jb20+CgpBY2tlZAoKPiAtLS0KPiAg
c2VydmVyL3V0aWxzLmggfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvdXRpbHMuaCBiL3NlcnZlci91
dGlscy5oCj4gaW5kZXggZWEwZGUxNTI5Li41NGJjOWQ0OTAgMTAwNjQ0Cj4gLS0tIGEvc2VydmVy
L3V0aWxzLmgKPiArKysgYi9zZXJ2ZXIvdXRpbHMuaAo+IEBAIC01Myw3ICs1Myw3IEBAIHN0YXRp
YyBpbmxpbmUgaW50IHRlc3RfYml0KGludCBpbmRleCwgdWludDMyX3QgdmFsKQo+ICB0eXBlZGVm
IGludDY0X3QgcmVkX3RpbWVfdDsKPiAgCj4gICNkZWZpbmUgTlNFQ19QRVJfU0VDICAgICAgMTAw
MDAwMDAwMExMCj4gLSNkZWZpbmUgTlNFQ19QRVJfTUlMTElTRUMgMTAwMDAwMExMCj4gKyNkZWZp
bmUgTlNFQ19QRVJfTUlMTElTRUMgMTAwMDAwMAo+ICAjZGVmaW5lIE5TRUNfUEVSX01JQ1JPU0VD
IDEwMDAKPiAgCj4gIC8qIGdfZ2V0X21vbm90b25pY190aW1lKCkgZG9lcyBub3QgaGF2ZSBlbm91
Z2ggcHJlY2lzaW9uICovCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
