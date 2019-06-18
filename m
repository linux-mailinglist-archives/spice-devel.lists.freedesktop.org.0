Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4347C49F4C
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2019 13:35:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA6C989F6F;
	Tue, 18 Jun 2019 11:35:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF9F589F6E
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 11:35:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7B85F307D932
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 11:35:52 +0000 (UTC)
Received: from lub.tlv (dhcp-4-88.tlv.redhat.com [10.35.4.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DCB6A5C207;
 Tue, 18 Jun 2019 11:35:51 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190603112214.15093-1-fziglio@redhat.com>
 <20190603112214.15093-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <b42ea5f5-1d4e-1037-5793-5245a7548240@redhat.com>
Date: Tue, 18 Jun 2019 14:35:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603112214.15093-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 18 Jun 2019 11:35:52 +0000 (UTC)
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNi8zLzE5IDI6MjIgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBUaGUgZm9ybXVsYSBp
cyBoZXJlIHRvIG1ha2Ugc3VyZSBnbHlwaCBpcyBhbGlnbmVkIHRvIDQgYnl0ZXMgc28KPiB0ZWxs
IHRvIHRoZSBjb21waWxlciB0byBhdm9pZCBhIHdhcm5pbmcuCgpXaGF0J3MgdGhlIHdhcm5pbmcg
PwpJcyBpdCB0aGF0IHRoZSBwb2ludGVyIG1heSBiZSB1bmFsaWduZWQgKHdoaWNoIGlzIGltcG9z
aWJsZQppZiB5b3Ugc3RhcnQgZnJvbSBhbiBhbGlnbmVkIGFkZHJlc3MpID8KCkxvb2tzIGNvbXBs
aWNhdGVkIHRvIG1lLCBlc3BlY2lhbGx5IHNpbmNlIGFmdGVyIHRoZQpTUElDRV9BTElHTkVEX0NB
U1QgdGhlcmUgaXMgYW5vdGhlciAodGhlICJyZWFsIikgY2FzdC4KCk9uIHRoZSBvdGhlciBoYW5k
IGl0IGRvZXNuJ3QgYnJlYWsgYW55dGhpbmcuCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5v
IFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKQWNrLgoKPiAtLS0KPiAgIHNlcnZlci9yZWQt
cGFyc2UtcXhsLmMgfCA0ICsrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtcGFyc2UtcXhsLmMg
Yi9zZXJ2ZXIvcmVkLXBhcnNlLXF4bC5jCj4gaW5kZXggYWZhZTk0MzE2Li44OWI2MWMwNmYgMTAw
NjQ0Cj4gLS0tIGEvc2VydmVyL3JlZC1wYXJzZS1xeGwuYwo+ICsrKyBiL3NlcnZlci9yZWQtcGFy
c2UtcXhsLmMKPiBAQCAtOTQxLDkgKzk0MSw5IEBAIHN0YXRpYyBTcGljZVN0cmluZyAqcmVkX2dl
dF9zdHJpbmcoUmVkTWVtU2xvdEluZm8gKnNsb3RzLCBpbnQgZ3JvdXBfaWQsCj4gICAgICAgICAg
IHNwaWNlX2Fzc2VydChnbHlwaF9zaXplIDw9IChjaGFyKikgZW5kIC0gKGNoYXIqKSAmc3RhcnQt
PmRhdGFbMF0pOwo+ICAgICAgICAgICBtZW1jcHkoZ2x5cGgtPmRhdGEsIHN0YXJ0LT5kYXRhLCBn
bHlwaF9zaXplKTsKPiAgICAgICAgICAgc3RhcnQgPSAoUVhMUmFzdGVyR2x5cGgqKSgmc3RhcnQt
PmRhdGFbZ2x5cGhfc2l6ZV0pOwo+IC0gICAgICAgIGdseXBoID0gKFNwaWNlUmFzdGVyR2x5cGgq
KQo+ICsgICAgICAgIGdseXBoID0gKFNwaWNlUmFzdGVyR2x5cGgqKSBTUElDRV9BTElHTkVEX0NB
U1QodWludDMyX3QqLAo+ICAgICAgICAgICAgICAgKCgodWludDhfdCAqKWdseXBoKSArCj4gLSAg
ICAgICAgICAgICBTUElDRV9BTElHTihzaXplb2YoU3BpY2VSYXN0ZXJHbHlwaCkgKyBnbHlwaF9z
aXplLCA0KSk7Cj4gKyAgICAgICAgICAgICBTUElDRV9BTElHTihzaXplb2YoU3BpY2VSYXN0ZXJH
bHlwaCkgKyBnbHlwaF9zaXplLCA0KSkpOwo+ICAgICAgIH0KPiAgIAo+ICAgICAgIGlmIChmcmVl
X2RhdGEpIHsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
