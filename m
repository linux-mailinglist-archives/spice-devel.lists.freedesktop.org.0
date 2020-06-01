Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DEE1EAF8F
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jun 2020 21:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 831C66E0BF;
	Mon,  1 Jun 2020 19:24:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 900D06E0BF
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jun 2020 19:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591039478;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ncDrhsvYizj+6L+mtpQ/mBy9xpdbIQtYuTubPh4EcGE=;
 b=DtimrxWgJSDWHICVZCmuaRym+J6QziAnZu2HEG0HOfsoihSN7pzKU93MIiAqJr2WODGf9R
 GePdyxHZDUGvfiCh8xYOKGr2QCACLWLsHGoWC4O/O1Yr5iuydq4U7KJKpbWes8wAlx/YhM
 e1JDaFdw84YJQpM05SIRRn31V4JuWp4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-499-sdT7GMRuNb2avVqGS3p7zw-1; Mon, 01 Jun 2020 15:24:30 -0400
X-MC-Unique: sdT7GMRuNb2avVqGS3p7zw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7AA4D100CCC2;
 Mon,  1 Jun 2020 19:24:29 +0000 (UTC)
Received: from lub.tlv (unknown [10.35.206.86])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A55F5C1B2;
 Mon,  1 Jun 2020 19:24:26 +0000 (UTC)
To: ole-krutov@yandex.ru, Frediano Ziglio <fziglio@redhat.com>
References: <2062121591020278@mail.yandex.ru>
 <191822355.28679337.1591021618597.JavaMail.zimbra@redhat.com>
 <1516151591025233@mail.yandex.ru>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <c663aa55-9b44-6211-6898-e4930b8dae24@redhat.com>
Date: Mon, 1 Jun 2020 22:24:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1516151591025233@mail.yandex.ru>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] No mouse under Win 10 when Nvidia drivers are
 active
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNi8xLzIwIDY6NTkgUE0sIG9sZS1rcnV0b3ZAeWFuZGV4LnJ1IHdyb3RlOgo+IE5vdyBJIGhh
dmUgdHJpZWQgZGlmZmVyZW50IGNvbWJpbmF0aW9ucyBvZiB2ZC1hZ2VudCBzdGF0ZSBhbmQgbW91
c2UgCj4gY3Vyc29yIHR5cGUuIEluIG5vIGNhc2UgbW91c2UgY3Vyc29yIHdhcyB2aXNpYmxlIG9u
IG52aWRpYSBkaXNwbGF5IAo+IHdpbmRvdy4gV2l0aCBkdWFsIGRpc3BsYXksIHF4bCtudmlkaWEs
IHN0b3BwaW5nIHZkLWFnZW50IG1hZGUgY3Vyc29yIAo+IHZpc2libGUgb24gcXhsIHdpbmRvdy4g
UmVhY3Rpb24gdG8gbW91c2UgZXZlbnRzIHdhcyBzZWVuIG9uIG52aWRpYSAKPiB3aW5kb3cgdG9v
LCBidXQgd2l0aCBpbnZpc2libGUgbW91c2UgY3Vyc29yLgoKCkhpLAoKSSBhc3N1bWUgeW91IGhh
dmUgeW91ciBvd24gc3BpY2Utc3RyZWFtaW5nLWFnZW50IHBsdWdpbi4KCkRvZXMgaXQgc3VwcG9y
dCB0aGUgZGlzcGxheV9pbmZvIGludGVyZmFjZSA/CgpVcmkKCj4gMDEuMDYuMjAyMCwgMTc6Mjcs
ICJGcmVkaWFubyBaaWdsaW8iIDxmemlnbGlvQHJlZGhhdC5jb20+Ogo+IAo+ICAgICAgICAgIMKg
SGkgYWxsLAo+ICAgICAgICAgIMKgd2hlbiBqdXN0IHF4bCBhZGFwdGVyIGlzIGF0dGFjaGVkIHRv
IFZNIGFsbCB3b3JrcyB3ZWxsLiBCdXQKPiAgICAgICAgIHdoZW4gTnZpZGlhIEdSSUQKPiAgICAg
ICAgICDCoGluc3RhbmNlIGlzIGF0dGFjaGVkIGFuZCBpdHMgZHJpdmVycyBhcmUgcnVubmluZywg
bW91c2UgY3Vyc29yCj4gICAgICAgICBpcyBuZXZlcgo+ICAgICAgICAgIMKgc2hvd24gb24gaXRz
IGRpc3BsYXkgd2luZG93LiBTb21ldGltZXMgaXQncyBqdXN0IGludmlzaWJsZSBidXQKPiAgICAg
ICAgIGFjdGl2ZSBhbmQKPiAgICAgICAgICDCoHJlYWN0aW5nIHRvIG1vdXNlIG1vdmVtZW50cywg
Y2xpY2tzIGFuZCB3aGVlbCBzY3JvbGxpbmcsCj4gICAgICAgICBzb21ldGltZXMgaXQncwo+ICAg
ICAgICAgIMKgdG90YWxseSBtaXNzaW5nLiBUaGlzIGJlaGF2aW91ciBpcyBhIGJpdCBkZXBlbmRl
bnQgb2YgaXMKPiAgICAgICAgIE52aWRpYSBhZGFwdGVyCj4gICAgICAgICAgwqBhbG9uZSBvciB0
b2dldGhlciB3aXRoIHF4bC4gSnVzdCBzb21ldGltZXMgbW91c2UgY3Vyc29yIGlzCj4gICAgICAg
ICB2aXNpYmxlIG9uIHF4bAo+ICAgICAgICAgIMKgZGlzcGxheSBidXQgaXQncyB2ZXJ5IHVuc3Rh
YmxlIGFuZCB0b3RhbGx5IHVudXNhYmxlLiBTaW1pbGFyCj4gICAgICAgICBiZWhhdmlvdXIgaXMK
PiAgICAgICAgICDCoHVuZGVyIGxpbnV4IFZNIHRvby4gSXMgaXQgbm9ybWFsICJ3b24ndCBmaXgi
IHN0YXRlLCBvciBjYW4gSQo+ICAgICAgICAgcHJvdmlkZSBzb21lCj4gICAgICAgICAgwqBhZGRp
dGlvbmFsIGluZm8/IFdpbmRvd3MgaGFzIGxhdGVzdCB2ZC1hZ2VudCBhbmQgc3BpY2UtYWdlbnQK
PiAgICAgICAgIGluc3RhbGxlZC4KPiAKPiAKPiAgICAgSGksCj4gICAgICDCoMKgcmVjZW50bHkg
d2UgZ290IHNpbWlsYXIgcmVwb3J0cy4gQ2FuIHlvdSB0cnkgdG8gc2VlIHdoYXQncyBoYXBwZW4g
aWYKPiAgICAgeW91IGRpc2FibGUgdGhlIGFnZW50Pwo+IAo+ICAgICBJdCBzZWVtcyB0aGF0IGlu
IHRoZXNlIGNvbmRpdGlvbnMgdGhlIGFnZW50IGlzIG5vdCBhYmxlIHRvIGhhbmRsZQo+ICAgICB0
aGUgbW91c2UKPiAgICAgc28gbW91c2UgZXZlbnRzIGFyZSAibG9zdCIuCj4gCj4gICAgIEFub3Ro
ZXIgdGVzdCB3b3VsZCB5b3UgY291bGQgZG8gaXMgdG8gdXNlIHRoZSAic3BpY3kiIHV0aWxpdHku
IFRoaXMKPiAgICAgdXRpbGl0eQo+ICAgICBoYXMgYW4gb3B0aW9uIHRvIHN3aXRjaCBtYW51YWxs
eSB0aGUgbW91c2UgbW9kZSAoc2VydmVyL2NsaWVudCkuIEl0Cj4gICAgIHdvdWxkIGJlCj4gICAg
IGhlbHBmdWwgdG8gdW5kZXJzdGFuZCBkaWZmZXJlbnQgYmVoYXZpb3VyIHVzaW5nIHRoZSAyIG1v
ZGVzLgo+IAo+ICAgICBGcmVkaWFubwo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0Cj4gU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
