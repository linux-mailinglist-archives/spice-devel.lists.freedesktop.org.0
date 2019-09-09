Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CA5AD6D7
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 12:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2756D891C4;
	Mon,  9 Sep 2019 10:29:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACFC4891C4
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:29:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4D29B30A00E6
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:29:50 +0000 (UTC)
Received: from wingsuit.mxp.redhat.com (unknown [10.32.181.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C9E3D6012C
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 10:29:49 +0000 (UTC)
From: Victor Toso <victortoso@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  9 Sep 2019 12:29:46 +0200
Message-Id: <20190909102949.17504-1-victortoso@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Mon, 09 Sep 2019 10:29:50 +0000 (UTC)
Subject: [Spice-devel] [spice-gtk v2 0/3] Initialize GStreamer on
 SpiceSession
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

RnJvbTogVmljdG9yIFRvc28gPG1lQHZpY3RvcnRvc28uY29tPgoKSGksCgp2MS0+djI6CiogdjEg
NS82IHdhcyBhY2tlZCBieSBFZHVhcmRvIGFuZCBtZXJnZWQgKGxlYWsgZml4KQoqIHYxIDQvNiB3
YXMgZHJvcHBlZCwgY2FsbGluZyBnc3RfZGVpbml0KCkgaXMgcG90ZW50aWFsbHkgZGFuZ2Vyb3Vz
CiAgdG8gYXBwbGljYXRpb24gdGhhdCBydW4gbXVsdGlwbGUgc3BpY2UgY2xpZW50cyBzdWNoIGFz
IEdOT01FIEJveGVzCiAgYW5kIHZpcnQtbWFuYWdlcgoqIHYxIDYvNiAoUkZDKSBvbiB1bml0IHRl
c3Qgd2FzIGRyb3BwZWQgYXMgaXQgd2FzIHRlc3RpbmcgNC82CiogdjEgMi82IG9uIGRpc3BsYXkt
Z3N0OiByZXdvcmsgZnVjdGlvbiB0byB1c2UgZWFybHkgcmV0dXJuLCBhZGRlZCBhCiAgZGVidWcg
bWVzc2FnZSBhYm91dCBsYWNrIG9mIEdTdHJlYW1lciBpbml0aWFsaXphdGlvbiB3aGVyZSBpdCBm
aXRzCiAgYW5kIHVwZGF0ZWQgY29tbWl0IGxvZwoqIHYxIDMvNiBvbiBnc3RhdWRpbzogZGVtb3Rl
ZCB0aGUgd2FybmluZyBvZiBHU3RyZWFtZXIgaW5pdGlhbGl6YXRpb24KICB0byBhIGRlYnVnIGFu
ZCBmaXhlZCBjb21taXQgbG9nCgpDSSBpcyBncmVlbjogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL3ZpY3RvcnRvc28vc3BpY2UtZ3RrL3BpcGVsaW5lcy82MjE4OQoKVGhhbmtzLAoKVmlj
dG9yIFRvc28gKDMpOgogIHNlc3Npb246IGluaXRpYWxpemUgZ3N0cmVhbWVyIG9uY2UKICBkaXNw
bGF5LWdzdDogcmVseSBvbiBTcGljZVNlc3Npb24gaW5pdCBvZiBHU3RyZWFtZXIKICBnc3RhdWRp
bzogcmVseSBvbiBTcGljZVNlc3Npb24gaW5pdCBvZiBHU3RyZWFtZXIKCiBzcmMvY2hhbm5lbC1k
aXNwbGF5LWdzdC5jIHwgNTUgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBz
cmMvc3BpY2UtZ3N0YXVkaW8uYyAgICAgIHwgNTkgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCiBzcmMvc3BpY2Utc2Vzc2lvbi5jICAgICAgIHwgMjIgKysrKysrKysrKysr
KysrCiAzIGZpbGVzIGNoYW5nZWQsIDcxIGluc2VydGlvbnMoKyksIDY1IGRlbGV0aW9ucygtKQoK
LS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
