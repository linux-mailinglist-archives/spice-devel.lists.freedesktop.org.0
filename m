Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D06C8BA87
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 15:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9262D6E146;
	Tue, 13 Aug 2019 13:38:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C72D6E146
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 13:38:32 +0000 (UTC)
Received: from [97.107.38.250] (helo=[100.115.92.204])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hxX0P-0007up-UM; Tue, 13 Aug 2019 08:38:31 -0500
To: Frediano Ziglio <fziglio@redhat.com>, Pavel Grunt <pgrunt@redhat.com>
References: <1482512017-27561-1-git-send-email-jwhite@codeweavers.com>
 <1484045843.2373.10.camel@redhat.com>
 <205745645.5452138.1565515958650.JavaMail.zimbra@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <7a66bd20-bb99-c008-4ee2-d8106c8e4a0b@codeweavers.com>
Date: Tue, 13 Aug 2019 08:38:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <205745645.5452138.1565515958650.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Spam-Score: -106.0
X-Spam-Report: Spam detection software, running on the system "mail.codeweavers.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/11/19 4:32 AM, Frediano Ziglio wrote: > Hi, > why this
    was not merged ? I completely missed the ack at the time. I do think the
   patch is fundamentally correct and an improvement.  This one arguably deserves
    a reprise of the audit I performed at the time to ensure that the results
    are still correct.  I was plan [...] 
 
 Content analysis details:   (-106.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FyeenpK7aj/mNPr9sT2RotOIdUD1bxttd9bV9a3AXyA=; b=ZQwJEArf5phNy8aSEF/UVKn+1M
 XjKX3CKtSqewED6zMjW5k0jBo5TuYQZynCh18+0FgeUW9ECk2aXwPj77bCN65blD5wUDqRBdqKiqQ
 5up3XqKFVz7iMiy+P5Ox/6i4vZgU6o5EtjLvsLrQi6vwbLPjoxEo5lQN4xfDiYIsiGTU=;
Subject: Re: [Spice-devel] [PATCH spice-html5] Review the webm audio track
 header and remove the fixmes.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Ck9uIDgvMTEvMTkgNDozMiBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IEhpLAo+ICAgIHdo
eSB0aGlzIHdhcyBub3QgbWVyZ2VkID8KCkkgY29tcGxldGVseSBtaXNzZWQgdGhlIGFjayBhdCB0
aGUgdGltZS4KCkkgZG8gdGhpbmsgdGhlIHBhdGNoIGlzIGZ1bmRhbWVudGFsbHkgY29ycmVjdCBh
bmQgYW4gaW1wcm92ZW1lbnQuwqAgVGhpcyAKb25lIGFyZ3VhYmx5IGRlc2VydmVzIGEgcmVwcmlz
ZSBvZiB0aGUgYXVkaXQgSSBwZXJmb3JtZWQgYXQgdGhlIHRpbWUgdG8gCmVuc3VyZSB0aGF0IHRo
ZSByZXN1bHRzIGFyZSBzdGlsbCBjb3JyZWN0LsKgIEkgd2FzIHBsYW5uaW5nIHRvIGRvIHRoYXQg
aW4gClNlcHRlbWJlciAoYW5kIHJlc3VibWl0IHRoZSB1aWQgcGF0Y2ggYXQgdGhlIHNhbWUgdGlt
ZSkuCgpGb3IgdGhlIHJlY29yZCwgSSBoYXZlIGFuIGludGVybmFsIHRvZG8gbGlzdCBvZiBwYXRj
aGVzIHRoYXQgd2VyZSBtaXNzZWQgCnRvIGNpcmNsZSBiYWNrIHRvLsKgIFlvdSd2ZSBub3cgY2F1
Z2h0IG1vc3Qgb2YgdGhlbSwgdGhhbmsgeW91IAood2Vic29ja2V0cyBiZWluZyB0aGUgYmlnIG9u
ZSkuwqAgSSBiZWxpZXZlIEkgc3RpbGwgaGF2ZSBvbmUgb3IgdHdvIApwYXRjaGVzIHRvIGFyZ3Vt
ZW50IHBhcnNpbmcgb24gbGliY2FjYXJkLCBhbmQgSSBkbyBub3QgaGF2ZSBhIHBhdGNoLCBidXQg
CmEgY29uY2Vybiwgb24gdGhlIHJlbW92YWwgb2YgdGhlIHNwaWNlLWNvbnRyb2xsZXIuwqAgSSBh
bHNvIGhhdmUgYSBsYXJnZSAKc2VwYXJhdGUgcGF0Y2ggc2V0IGFnYWluc3QgdGhlIGtlcm5lbCBw
cm92aWRpbmcgdXNicmVkaXIgc3VwcG9ydC4KCkNoZWVycywKCkplcmVteQoKPgo+IEZyZWRpYW5v
Cj4KPj4gQWNrCj4+Cj4+IFRoYW5rcywKPj4gUGF2ZWwKPj4KPj4gT24gRnJpLCAyMDE2LTEyLTIz
IGF0IDEwOjUzIC0wNjAwLCBKZXJlbXkgV2hpdGUgd3JvdGU6Cj4+PiBUaGlzIGludm9sdmVkIGEg
cmV2aWV3IG9mIHRoZSBGaXJlZm94IHBhcnNpbmcgY29kZSBhbG9uZwo+Pj4gd2l0aCB0aGUgb2Zm
aWNpYWwgc3BlY2lmY2F0aW9uLCBhbmQgc2V0dGluZyB0aGVzZSBmaWVsZHMKPj4+IHRvIHRoZSBz
cGVjaWZpZWQgZGVmYXVsdCB2YWx1ZXMuCj4+Pgo+Pj4gTW9zdCBub3RhYmx5LCBJIGhhdmUgZm91
bmQgdGhhdCByZWNlbnQgYnJvd3NlcnMgZG8gbm90IG5lZWQgdGhlCj4+PiA4IG1zIHByZSBza2lw
LCBhbmQgaXQgc2VlbXMgdG8gcmVtb3ZlIHNvbWUgYXVkaW8gbGFnIHRvCj4+PiBzd2l0Y2ggdG8g
MC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVy
cy5jb20+Cj4+PiAtLS0KPj4+ICDCoHdlYm0uanMgfCAyNyArKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0KPj4+ICDCoDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS93ZWJtLmpzIGIvd2VibS5qcwo+Pj4gaW5kZXggNzg5
ZGExNC4uNzJjMTg1MyAxMDA2NDQKPj4+IC0tLSBhL3dlYm0uanMKPj4+ICsrKyBiL3dlYm0uanMK
Pj4+IEBAIC0zOTMsMjggKzM5MywzOSBAQCB3ZWJtX1NlZWtIZWFkLnByb3RvdHlwZSA9Cj4+PiAg
IAo+Pj4gIMKgZnVuY3Rpb24gd2VibV9BdWRpb1RyYWNrRW50cnkoKQo+Pj4gIMKgewo+Pj4gK8Kg
wqDCoMKgLyoKPj4+ICvCoMKgwqDCoCoqIEluIGdlbmVyYWwsIHdlIGZvbGxvdyB0aGlzIHNwZWNp
ZmljYXRpb246Cj4+PiArwqDCoMKgwqAqKsKgwqDCoGh0dHBzOi8vd3d3Lm1hdHJvc2thLm9yZy90
ZWNobmljYWwvc3BlY3MvaW5kZXguaHRtbAo+Pj4gK8KgwqDCoMKgKiogd2Ugc3VwcGx5IHRoZSBt
YW5kYXRvcnkgdmFsdWVzLCBhbmQgYSBjb21tZW50IG5vdGVzCj4+PiArwqDCoMKgwqAqKiB3aGVy
ZSB3ZSBkaWZmZXIgZnJvbSB0aGUgZGVmYXVsdAo+Pj4gK8KgwqDCoMKgKirCoMKgwqBUaGVyZSBp
cyBvbmUgUkVDT01NRU5ERUQgZ3VpZGVsaW5lIHdlIGFyZSBvbWl0dGluZzsKPj4+ICvCoMKgwqDC
oCoqIHRoZSBPUFVTIGNvZGVjX2RlbGF5IGlzIHJlY29tbWVuZGVkIHRvIGJlIDgwbXMuCj4+PiAr
wqDCoMKgwqAqKiBIb3dldmVyLCB0aGUgc3BpY2Ugc2VydmVyIGRvZXMgbm90IGN1cnJlbnRseSBw
cm92aWRlIHRpbWUKPj4+ICvCoMKgwqDCoCoqIHN0YW1wcyB0aGF0IGFyZSBvZmZzZXQgYnkgODBt
cywgc28geW91IGVmZmVjdGl2ZWx5IGdldCBhbgo+Pj4gK8KgwqDCoMKgKiogODBtcyBsYWcgd2l0
aCB0aGlzIHNldHRpbmcuCj4+PiArwqDCoMKgwqAqLwo+Pj4gIMKgwqDCoMKgwqB0aGlzLmlkID0g
V0VCTV9UUkFDS19FTlRSWTsKPj4+ICDCoMKgwqDCoMKgdGhpcy5udW1iZXIgPSAxOwo+Pj4gIMKg
wqDCoMKgwqB0aGlzLnVpZCA9IDE7Cj4+PiAgwqDCoMKgwqDCoHRoaXMudHlwZSA9IDI7IC8vIEF1
ZGlvCj4+PiAgwqDCoMKgwqDCoHRoaXMuZmxhZ19lbmFibGVkID0gMTsKPj4+ICDCoMKgwqDCoMKg
dGhpcy5mbGFnX2RlZmF1bHQgPSAxOwo+Pj4gLcKgwqDCoMKgdGhpcy5mbGFnX2ZvcmNlZCA9IDE7
Cj4+PiAtwqDCoMKgwqB0aGlzLmZsYWdfbGFjaW5nID0gMDsKPj4+IC3CoMKgwqDCoHRoaXMubWlu
X2NhY2hlID0gMDsgLy8gZml4bWUgLSBjaGVjawo+Pj4gK8KgwqDCoMKgdGhpcy5mbGFnX2ZvcmNl
ZCA9IDE7wqDCoC8vIERpZmZlcmVudCB0aGFuIGRlZmF1bHQ7IHdlIHdpc2ggdG8KPj4+IGZvcmNl
Cj4+PiArwqDCoMKgwqB0aGlzLmZsYWdfbGFjaW5nID0gMTsKPj4+ICvCoMKgwqDCoHRoaXMubWlu
X2NhY2hlID0gMDsKPj4+ICDCoMKgwqDCoMKgdGhpcy5tYXhfYmxvY2tfYWRkaXRpb25faWQgPSAw
Owo+Pj4gLcKgwqDCoMKgdGhpcy5jb2RlY19kZWNvZGVfYWxsID0gMDsgLy8gZml4bWUgLSBjaGVj
awo+Pj4gLcKgwqDCoMKgdGhpcy5zZWVrX3ByZV9yb2xsID0gMDsgLy8gODAwMDAwMDA7IC8vIGZp
eG1lIC0gY2hlY2sKPj4+IC3CoMKgwqDCoHRoaXMuY29kZWNfZGVsYXkgPcKgwqDCoDgwMDAwMDAw
OyAvLyBNdXN0IG1hdGNoCj4+PiBjb2RlY19wcml2YXRlLnByZXNraXAKPj4+ICvCoMKgwqDCoHRo
aXMuc2Vla19wcmVfcm9sbCA9IDA7Cj4+PiArwqDCoMKgwqB0aGlzLmNvZGVjX2RlbGF5ID3CoMKg
wqAwOyAvLyBNdXN0IG1hdGNoIGNvZGVjX3ByaXZhdGUucHJlc2tpcAo+Pj4gIMKgwqDCoMKgwqB0
aGlzLmNvZGVjX2lkID0gIkFfT1BVUyI7Cj4+PiArwqDCoMKgwqB0aGlzLmNvZGVjX2RlY29kZV9h
bGwgPSAxOwo+Pj4gIMKgwqDCoMKgwqB0aGlzLmF1ZGlvID0gbmV3IHdlYm1fQXVkaW8oT1BVU19G
UkVRVUVOQ1kpOwo+Pj4gICAKPj4+ICDCoMKgwqDCoMKgLy8gU2VlOsKgwqBodHRwOi8vdG9vbHMu
aWV0Zi5vcmcvaHRtbC9kcmFmdC10ZXJyaWJlcnJ5LW9nZ29wdXMtMDEKPj4+ICDCoMKgwqDCoMKg
dGhpcy5jb2RlY19wcml2YXRlID0gWyAweDRmLCAweDcwLCAweDc1LCAweDczLCAweDQ4LCAweDY1
LAo+Pj4gMHg2MSwgMHg2NCzCoMKgLy8gT3B1c0hlYWQKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDB4MDEsIC8vIFZlcnNpb24KPj4+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oE9QVVNfQ0hBTk5FTFMsCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgMHgwMCwgMHgwRiwgLy8gUHJlc2tpcCAtIDM4NDAgc2FtcGxlcyAt
Cj4+PiBzaG91bGQgYmUgOG1zIGF0IDQ4a0h6Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgMHg4MCwgMHhiYiwgMHgwMCwgMHgwMCzCoMKg
Ly8gNDgwMDAKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAweDAwLCAweDAwLCAvLyBQcmVza2lwIC0gMzg0MCBzYW1wbGVzCj4+PiB3b3Vs
ZCBiZSA4bXMgYXQgNDhrSHoKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAweDgwLCAweGJiLCAweDAwLCAweDAwLMKgwqAvLyBub21pbmFs
IHJhdGUKPj4+IC0gNDgwMDAKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoDB4MDAsIDB4MDAsIC8vIE91dHB1dCBnYWluCj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAweDAw
wqDCoC8vIENoYW5uZWwgbWFwcGluZyBmYW1pbHkKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF07Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
