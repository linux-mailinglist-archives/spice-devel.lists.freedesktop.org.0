Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B13661C88
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 11:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A236899DC;
	Mon,  8 Jul 2019 09:44:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD1B899DC
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 09:44:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D51EE3086215
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 09:44:26 +0000 (UTC)
Received: from localhost (unknown [10.32.181.70])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 83D251001947;
 Mon,  8 Jul 2019 09:44:26 +0000 (UTC)
Date: Mon, 8 Jul 2019 11:44:25 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190708094425.kqqx4gbvqrz4oc23@wingsuit>
References: <20190520073947.5382-1-fziglio@redhat.com>
 <428372587.20497679.1559121330764.JavaMail.zimbra@redhat.com>
 <2139512998.22408143.1560318907382.JavaMail.zimbra@redhat.com>
 <474474113.23631567.1560938707382.JavaMail.zimbra@redhat.com>
 <1385934176.25082690.1561707925942.JavaMail.zimbra@redhat.com>
 <27830610.26606082.1562571013223.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27830610.26606082.1562571013223.JavaMail.zimbra@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 08 Jul 2019 09:44:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 0/4] Check distribution with CI
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpCZWZvcmUgYHBpbmcgb3ZlcmZsb3dgCgpBY2tlZC1ieTogVmljdG9yIFRvc28gPHZpY3Rv
cnRvc29AcmVkaGF0LmNvbT4KCk9uIE1vbiwgSnVsIDA4LCAyMDE5IGF0IDAzOjMwOjEzQU0gLTA0
MDAsIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBwaW5nCj4gCj4gPiAKPiA+IHBpbmcgNAo+ID4g
Cj4gPiA+IAo+ID4gPiBwaW5nIDMKPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gcGluZwo+ID4gPiA+
IAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBwaW5nIHRoZSBzZXJpZXMKPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gTWFrZSBzdXJlIHdlIGNhbiBidWlsZCBkaXN0cmlidXRpb24uCj4g
PiA+ID4gPiA+IFNvbWUgc21hbGwgdXBkYXRlcyBhbHNvIHRvIGZpeCBzb21lIG1pbm9yIGlzc3Vl
cy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IENJIHJlc3VsdHMgYXQKPiA+ID4gPiA+ID4gaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Z6aWdsaW8vc3BpY2UtZ3RrL3BpcGVsaW5lcy8z
Nzc0NAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gRnJlZGlhbm8gWmlnbGlvICg0KToKPiA+ID4g
PiA+ID4gICBjaTogVGVzdCB3ZSBjYW4gY3JlYXRlIGEgbm8gZGlydHkgcGFja2FnZQo+ID4gPiA+
ID4gPiAgIHNwaWNlLWNsaWVudC1ndGstbW9kdWxlOiBSZW1vdmUgdW51c2VkIGZpbGUKPiA+ID4g
PiA+ID4gICBidWlsZDogRG8gYWRkaXRpb25hbCBjaGFuZ2VzIHRvIE1lc29uIGRpc3RyaWJ1dGlv
bgo+ID4gPiA+ID4gPiAgIGNpOiBUcnkgTWVzb24gZGlzdAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gIC5naXRsYWItY2kueW1sICAgICAgICAgICAgICAgIHwgMjAgKysrKysrKysrKysrKysrKwo+
ID4gPiA+ID4gPiAgTWFrZWZpbGUuYW0gICAgICAgICAgICAgICAgICAgfCAgMSArCj4gPiA+ID4g
PiA+ICBidWlsZC1hdXgvbWVzb24tZGlzdCAgICAgICAgICB8IDI4ICsrKysrKysrKysrKysrKysr
KysrKysKPiA+ID4gPiA+ID4gIG1lc29uLmJ1aWxkICAgICAgICAgICAgICAgICAgIHwgIDIgKy0K
PiA+ID4gPiA+ID4gIHNyYy9zcGljZS1jbGllbnQtZ3RrLW1vZHVsZS5jIHwgNDUKPiA+ID4gPiA+
ID4gIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gPiA+ICA1IGZp
bGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQo+ID4gPiA+ID4g
PiAgY3JlYXRlIG1vZGUgMTAwNzU1IGJ1aWxkLWF1eC9tZXNvbi1kaXN0Cj4gPiA+ID4gPiA+ICBk
ZWxldGUgbW9kZSAxMDA2NDQgc3JjL3NwaWNlLWNsaWVudC1ndGstbW9kdWxlLmMKPiA+ID4gPiA+
ID4gCj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPiA+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+ID4gPiBTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbAo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiA+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+ID4gU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
