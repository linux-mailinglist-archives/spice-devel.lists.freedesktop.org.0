Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C624A120
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2019 14:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E259C89F3C;
	Tue, 18 Jun 2019 12:49:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F6D489F3C
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 12:49:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B06B9C18B2C5
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 12:49:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A73815F182
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 12:49:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9E83B1806B19;
 Tue, 18 Jun 2019 12:49:23 +0000 (UTC)
Date: Tue, 18 Jun 2019 08:49:22 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1710070993.23408122.1560862162144.JavaMail.zimbra@redhat.com>
In-Reply-To: <b42ea5f5-1d4e-1037-5793-5245a7548240@redhat.com>
References: <20190603112214.15093-1-fziglio@redhat.com>
 <20190603112214.15093-2-fziglio@redhat.com>
 <b42ea5f5-1d4e-1037-5793-5245a7548240@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.128, 10.4.195.6]
Thread-Topic: Remove a warning on MIPS machine
Thread-Index: SU8IS4GsrNM4mht3DoK0fvQzX+2uMg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Tue, 18 Jun 2019 12:49:23 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/3] Remove a warning on MIPS
 machine
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

PiAKPiBPbiA2LzMvMTkgMjoyMiBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4gVGhlIGZv
cm11bGEgaXMgaGVyZSB0byBtYWtlIHN1cmUgZ2x5cGggaXMgYWxpZ25lZCB0byA0IGJ5dGVzIHNv
Cj4gPiB0ZWxsIHRvIHRoZSBjb21waWxlciB0byBhdm9pZCBhIHdhcm5pbmcuCj4gCj4gV2hhdCdz
IHRoZSB3YXJuaW5nID8KClRyeWluZyB0byByZXByb2R1Y2UgYnV0IHRoZSB1cGRhdGVkIGVudmly
b25tZW50IGl0J3Mgc2xvdyBsaWtlCmhlbGwgKGl0J3MgbW9yZSB0aGFuIDMwIG1pbnV0ZXMgdGhh
dCBpdCdzIGNvbXBpbGluZyAzIGZpbGVzKS4KCj4gSXMgaXQgdGhhdCB0aGUgcG9pbnRlciBtYXkg
YmUgdW5hbGlnbmVkICh3aGljaCBpcyBpbXBvc2libGUKPiBpZiB5b3Ugc3RhcnQgZnJvbSBhbiBh
bGlnbmVkIGFkZHJlc3MpID8KPiAKClllcywgd2FzIGFuIGFsaWdubWVudCB3YXJuaW5nCgo+IExv
b2tzIGNvbXBsaWNhdGVkIHRvIG1lLCBlc3BlY2lhbGx5IHNpbmNlIGFmdGVyIHRoZQo+IFNQSUNF
X0FMSUdORURfQ0FTVCB0aGVyZSBpcyBhbm90aGVyICh0aGUgInJlYWwiKSBjYXN0Lgo+IAoKTWF5
YmUgd2l0aCBhbiBhZGRpdGlvbmFsCgpAQCAtOTQxLDcgKzk0MSw3IEBAIHN0YXRpYyBTcGljZVN0
cmluZyAqcmVkX2dldF9zdHJpbmcoUmVkTWVtU2xvdEluZm8gKnNsb3RzLCBpbnQgZ3JvdXBfaWQs
CiAgICAgICAgIHNwaWNlX2Fzc2VydChnbHlwaF9zaXplIDw9IChjaGFyKikgZW5kIC0gKGNoYXIq
KSAmc3RhcnQtPmRhdGFbMF0pOwogICAgICAgICBtZW1jcHkoZ2x5cGgtPmRhdGEsIHN0YXJ0LT5k
YXRhLCBnbHlwaF9zaXplKTsKICAgICAgICAgc3RhcnQgPSAoUVhMUmFzdGVyR2x5cGgqKSgmc3Rh
cnQtPmRhdGFbZ2x5cGhfc2l6ZV0pOwotICAgICAgICBnbHlwaCA9IChTcGljZVJhc3RlckdseXBo
KikgU1BJQ0VfQUxJR05FRF9DQVNUKHVpbnQzMl90KiwKKyAgICAgICAgZ2x5cGggPSBTUElDRV9B
TElHTkVEX0NBU1QoU3BpY2VSYXN0ZXJHbHlwaCosCiAgICAgICAgICAgICAoKCh1aW50OF90ICop
Z2x5cGgpICsKICAgICAgICAgICAgICBTUElDRV9BTElHTihzaXplb2YoU3BpY2VSYXN0ZXJHbHlw
aCkgKyBnbHlwaF9zaXplLCA0KSkpOwogICAgIH0KCgp3b3VsZCB3b3JrIHRvby4gTm90IHN1cmUg
aG93IGxvbmcgaXQncyBnb2luZyB0byB0YWtlIHRvIHRlc3QgaXQuCgo+IE9uIHRoZSBvdGhlciBo
YW5kIGl0IGRvZXNuJ3QgYnJlYWsgYW55dGhpbmcuCj4gCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IAo+IEFjay4KPiAKPiA+IC0t
LQo+ID4gICBzZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jIHwgNCArKy0tCj4gPiAgIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jIGIvc2VydmVyL3JlZC1wYXJzZS1xeGwuYwo+ID4gaW5k
ZXggYWZhZTk0MzE2Li44OWI2MWMwNmYgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvcmVkLXBhcnNl
LXF4bC5jCj4gPiArKysgYi9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jCj4gPiBAQCAtOTQxLDkgKzk0
MSw5IEBAIHN0YXRpYyBTcGljZVN0cmluZyAqcmVkX2dldF9zdHJpbmcoUmVkTWVtU2xvdEluZm8K
PiA+ICpzbG90cywgaW50IGdyb3VwX2lkLAo+ID4gICAgICAgICAgIHNwaWNlX2Fzc2VydChnbHlw
aF9zaXplIDw9IChjaGFyKikgZW5kIC0gKGNoYXIqKQo+ID4gICAgICAgICAgICZzdGFydC0+ZGF0
YVswXSk7Cj4gPiAgICAgICAgICAgbWVtY3B5KGdseXBoLT5kYXRhLCBzdGFydC0+ZGF0YSwgZ2x5
cGhfc2l6ZSk7Cj4gPiAgICAgICAgICAgc3RhcnQgPSAoUVhMUmFzdGVyR2x5cGgqKSgmc3RhcnQt
PmRhdGFbZ2x5cGhfc2l6ZV0pOwo+ID4gLSAgICAgICAgZ2x5cGggPSAoU3BpY2VSYXN0ZXJHbHlw
aCopCj4gPiArICAgICAgICBnbHlwaCA9IChTcGljZVJhc3RlckdseXBoKikgU1BJQ0VfQUxJR05F
RF9DQVNUKHVpbnQzMl90KiwKPiA+ICAgICAgICAgICAgICAgKCgodWludDhfdCAqKWdseXBoKSAr
Cj4gPiAtICAgICAgICAgICAgIFNQSUNFX0FMSUdOKHNpemVvZihTcGljZVJhc3RlckdseXBoKSAr
IGdseXBoX3NpemUsIDQpKTsKPiA+ICsgICAgICAgICAgICAgU1BJQ0VfQUxJR04oc2l6ZW9mKFNw
aWNlUmFzdGVyR2x5cGgpICsgZ2x5cGhfc2l6ZSwgNCkpKTsKPiA+ICAgICAgIH0KPiA+ICAgCj4g
PiAgICAgICBpZiAoZnJlZV9kYXRhKSB7Cj4gPiAKPiAKPiAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
