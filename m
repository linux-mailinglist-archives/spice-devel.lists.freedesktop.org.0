Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC501246F
	for <lists+spice-devel@lfdr.de>; Fri,  3 May 2019 00:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D644B89739;
	Thu,  2 May 2019 22:08:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9D8C89739
 for <spice-devel@lists.freedesktop.org>; Thu,  2 May 2019 22:08:28 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1hMJtG-0007za-IO; Thu, 02 May 2019 17:09:18 -0500
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190501161716.15538-1-jwhite@codeweavers.com>
 <20190501161716.15538-2-jwhite@codeweavers.com>
 <290329248.15999719.1556796503186.JavaMail.zimbra@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <e7202fb7-2d53-9a2e-1039-f5f63894b68b@codeweavers.com>
Date: Thu, 2 May 2019 17:08:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <290329248.15999719.1556796503186.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cq9b5LnFYET5DuQhHIgD7aChSSLu3Jas5uQmRByPtGo=; b=IXj+ZA3F9hCDGV11uyevB8UeML
 dY2tXJ3Q11XO7z0B6S9ijqpjOW6wL5q8Xq8DdhyZpAq2tgGhb99Wl/I0mwJVMcadl63lQfYQV7lgy
 2dmvQjanFSTyM/cZuoaWlHX+SULvZx8GN6cpI7QRSiZXTl1RdYKlttWKscfdv9cUrE3w=;
Subject: Re: [Spice-devel] [PATCH v2 x11spice 2/4] Apply Spice style to the
 spice-video-dummy
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
Cc: spice-devel@lists.freedesktop.org, Henri Verbeet <hverbeet@codeweavers.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuICBJJ3ZlIGNvbmRlbnNlZCB0aGUg
dGhyZWFkIHRvIGp1c3QgYSBmZXcgCmludGVyZXN0aW5nIHBvaW50czsgZm9yIHRoZSBtb3N0IHBh
cnQsIEkgd2FzIGFibGUgdG8gZ2V0IGluZGVudCB0byBtYWtlIAp0aGUgY2hhbmdlcyB5b3UgcmVx
dWVzdGVkLCBhbmQgd2lsbCByZXN1Ym1pdCB3aXRoIHRoYXQuCgoKPj4gKyAgICBpZiAoIWluZm9Q
dHIpCj4+ICsgICAgICAgIHJldHVybiBGQUxTRTsKPj4gICAKPiAKPiBXaGF0IHdlIHVzdWFsbHkg
d2FudCBpcyBhbHdheXMgYnJhY2tldHMgZm9yIGlmIHNvCj4gCj4gICAgIGlmICghaW5mb1B0cikg
ewo+ICAgICAgICAgcmV0dXJuIEZBTFNFOwo+ICAgICB9Cj4gCj4gKHRoaXMgc2hvdWxkIGJlIGRv
YWJsZSB1c2luZyBpbmRlbnQsIG5vdCBzdXJlIGhvdykuCgpJIGRpZCBub3QgZmluZCBhIHdheS4g
IEkndmUgY2hvc2VuIG5vdCB0byB0cnkgdG8gZml4IHRoZXNlLCB0aGVyZSBhcmUgYSAKZmFpciBu
dW1iZXIgZnJvbSB0aGUgdXBzdHJlYW0gY29kZSwgYW5kIEkgd29ycnkgdGhhdCBtYW51YWwgZWRp
dHMgd2lsbCAKY3JlYXRlIGJ1Z3MuICBJZiB0aGlzIHBhcnRpY3VsYXIgc3R5bGUgY29udmVudGlv
biBpcyBhYnNvbHV0ZWx5IHZpdGFsLCBJIApjYW4gZG8gdGhhdCB3b3JrIGFzIHdlbGwsIGhlIHNh
aWQgZ3J1ZGdpbmdseSA8Z3Jpbj4uCgo+IAo+PiAgICAgICBkUHRyLT5DdXJzb3JJbmZvID0gaW5m
b1B0cjsKPj4gICAKPj4gQEAgLTk0LDkgKzg3LDYgQEAgRFVNTVlDdXJzb3JJbml0KFNjcmVlblB0
ciBwU2NyZWVuKQo+PiAgICAgICBpbmZvUHRyLT5TaG93Q3Vyc29yID0gZHVtbXlTaG93Q3Vyc29y
Owo+PiAgICAgICBpbmZvUHRyLT5Vc2VIV0N1cnNvciA9IGR1bW15VXNlSFdDdXJzb3I7Cj4+ICAg
LyogICAgIGluZm9QdHItPlJlYWxpemVDdXJzb3IgPSBkdW1teVJlYWxpemVDdXJzb3I7ICovCj4+
IC0KPj4gLSAgICByZXR1cm4oeGY4NkluaXRDdXJzb3IocFNjcmVlbiwgaW5mb1B0cikpOwo+PiAt
fQo+PiAtCj4+IC0KPj4gICAKPj4gKyAgICByZXR1cm4gKHhmODZJbml0Q3Vyc29yKHBTY3JlZW4s
IGluZm9QdHIpKTsKPiAKPiBJIHdvdWxkIHJlbW92ZSB0aGUgcGFyZW50aGVzaXMsIGxpa2UKPiAK
PiAgICAgcmV0dXJuIHhmODZJbml0Q3Vyc29yKHBTY3JlZW4sIGluZm9QdHIpOwo+IAo+IChub3Qg
c3Ryb25nKQoKKG5vdCBjaGFuZ2VkKSAgOi0vLgoKQ2hlZXJzLAoKSmVyZW15Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
