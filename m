Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC9CA36E1
	for <lists+spice-devel@lfdr.de>; Fri, 30 Aug 2019 14:38:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 761B96E2B6;
	Fri, 30 Aug 2019 12:38:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03FD26E2B6
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 12:38:02 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id t9so7279031wmi.5
 for <spice-devel@lists.freedesktop.org>; Fri, 30 Aug 2019 05:38:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:user-agent:to:cc:subject
 :message-id:in-reply-to:date:mime-version;
 bh=NyuEIC8Qp97SR5fIF+yDmmy0TR2AiIXROz54Awbh2G4=;
 b=mWEn4+UQOk5oIli/AFr9/Nzk8zezLanF3J3iCYxSBWQPZu9ybhcMsfV7wfAuWvccrz
 8vlAEFt0s2x3o1ohaRMvnRgRkIgIBa3XiRF3HAASNIHxEUBd3S1hYwlir3QfB3HqKrXt
 TVwkkqN0+gC/LaJdpbqqgLndasy60SqTp+scVeeNojzd7nLHbACg+bS2/sI4QbSMLlHU
 bG01jmmnLfto+JZkJCRcP4x2826QmFFJWMDc7RDK+w8vOPPPj+jMy8UoCUZfTElN2jPK
 9L249LfJsBjRZ5sYwTLisqcQvClsvdbxnflvJr8Ifm/5gSxGYAvJtjP4KU6PdAP/+d/R
 bZKQ==
X-Gm-Message-State: APjAAAVbV7Z1neVBAgyDwpFqHLyomaD3Dc3syBQy6t2G8+5n09JJbQYt
 HDKty+cx5tRDylZ0FJQV0YLhYYyd
X-Google-Smtp-Source: APXvYqw6y2bKPR0FtMxUgiArbprxSmS/OLE4uQlpQKWTaWy/fP8pXOcBrsEOn1xykebzxUkTBkuUHQ==
X-Received: by 2002:a1c:80d0:: with SMTP id
 b199mr18147307wmd.102.1567168680220; 
 Fri, 30 Aug 2019 05:38:00 -0700 (PDT)
Received: from ptitpuce ([2a01:e35:8b6a:1220:7997:7d0c:980a:f12])
 by smtp.gmail.com with ESMTPSA id e14sm5448023wme.35.2019.08.30.05.37.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 05:37:59 -0700 (PDT)
From: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
X-Google-Original-From: Christophe de Dinechin <christophe@dinechin.org>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-25-fziglio@redhat.com> <m1tva2evs4.fsf@dinechin.org>
 <711781474.9841323.1566987366292.JavaMail.zimbra@redhat.com>
 <93472670-4B4A-41ED-80F2-F155AC635E8C@dinechin.org>
 <2017793062.9844654.1566989435727.JavaMail.zimbra@redhat.com>
 <m1sgpke13z.fsf@dinechin.org>
 <965249255.10044746.1567074979837.JavaMail.zimbra@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <m1ftliesmb.fsf@dinechin.org>
In-reply-to: <965249255.10044746.1567074979837.JavaMail.zimbra@redhat.com>
Date: Fri, 30 Aug 2019 14:37:56 +0200
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:references:user-agent:to:cc:subject:message-id:in-reply-to
 :date:mime-version;
 bh=NyuEIC8Qp97SR5fIF+yDmmy0TR2AiIXROz54Awbh2G4=;
 b=tgQXgvkofwPeTCJUdcwkjJvLsZLmWkEx/TrVg2czpOVX6+OymMuXyIad+4QkV77ONu
 xF4vWPZqer/M1gMWMyeV4XvlFsB7fZUEru5OLk6bbFknbl5u6iznfTIKZX3RhriT6ubE
 xbKz9gQa4qyVS5EkwxTrvFMrUZU9KmxwXqPYjnf5GLVKOt26zP95jsijhf7baUg+SHEo
 Ddv2ebMPVbq5LjOTlWN0ARkaBgTkO1MY2Z6lFRlS/E5pDUYjADgesDwS5QKdYCPjAgno
 9Ju7I6b6PSC8oaIlU6F0/vuSnxzV9cy7gWT21VDIdw06o1b0ecwjL/iwn8byWvqfyD8w
 FV7A==
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 24/29] usb-backend: Rewrite
 USB emulation support
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
Cc: spice-devel@lists.freedesktop.org,
 Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CkZyZWRpYW5vIFppZ2xpbyB3cml0ZXM6Cgo+Pgo+PiBJdCdzIHNsaWdodGx5IGJldHRlciwgYnV0
IEkgd2FzIG1vcmUgdGhpbmtpbmcgYWJvdXQgYWRkaW5nIChsYXRlcikgYQo+PiBjb21tZW50IHRv
IHNwaWNlX3VzYnJlZGlyX3dyaXRlX2NhbGxiYWNrLCBpbiBvcmRlciB0byBpbmRpY2F0ZSB0aGF0
IGl0Cj4+IGRvZXMgTk9UIGRlYWwgd2l0aCB0aGUgSEVMTE8gcGFja2V0LCBpLmUuIHRoYXQgdGhl
IGRhdGEgcHJvY2Vzc2luZyBsb2dpYwo+PiBpcyBzcGxpdCBiZXR3ZWVuIHRoZSB0d28gbGF5ZXJz
Lgo+Pgo+Cj4gT2guLi4gbm93IEkgdW5kZXJzdGFuZCB0aGUgY29uZnVzaW9uIChJIGhvcGUpLgoK
QWN0dWFsbHksIEkgdGhpbmsgdGhlIGNvbmZ1c2luZyB3YXMgbWUgaW5mZXJyaW5nIHRvbyBtdWNo
IGZyb20gdGhlIG5hbWUKc3BpY2VfdXNicmVkaXJfd3JpdGVfY2FsbGJhY2ssIHNlZSBiZWxvdy4K
Cgo+IFRoZSBpZiBjb2RlIHJldHVybnMgYWx3YXlzIDAuIFNvIHRoZSBtZXNzYWdlIGlzIG5vdCBy
ZW1vdmVkIGZyb20gdGhlIHF1ZXVlLgo+IE9uIHRoZSBuZXh0IGNhbGwgcGFyc2VyIHdvbid0IGJl
IE5VTEwgYW5kIHRoZSBzYW1lIEhFTExPIHBhY2tldCB3aWxsIGJlCj4gc2VuZCB0byBzcGljZV91
c2JyZWRpcl93cml0ZV9jYWxsYmFjay4KPiBNYXkgYmUgdGhlICJoYW5kbGUiIGluIHRoZSBjb21t
ZW50IGlzIHN1Z2dlc3RpbmcgdGhhdCB0aGUgaWYgY29kZSBpcyBhbHNvCj4gY29uc3VtaW5nIGVu
dGlyZWx5IHRoZSBwYWNrZXQuIFN1Z2dlc3Rpb25zIHRvIGltcHJvdmUgdGhlIGNvbW1lbnQ/CgpU
aGlzIGJyaW5ncyBtZSBiYWNrIHRvIG15IGVhcmxpZXIgcXVlc3Rpb24sIHdoeSBjYW5ub3QgeW91
IGZhbGwgdGhyb3VnaCwgd2hhdAppcyB0aGUgcG9pbnQgb2YgdGhlICJyZXR1cm4gMCI/CgpZb3Ug
cmVwbGllZCAiYWRkZWQgYSBjb21tZW50IiwgYnV0IHdpdGhvdXQgc2hhcmluZyB3aGF0IHRoZSBj
b21tZW50IHdhcywKc28gSSBzdGlsbCBkb24ndCBrbm93IDstKSBIYXZlIHlvdSBzZW50IGEgZm9s
bG93LXVwIHBhdGNoIHRoYXQgSSBtaXNzZWQ/Cgo+Cj4+Cj4+ID4gPiBIbW1tLiBUaGF0IHRlbmRz
IHRvIGNvbmZpcm0gdGhlIGltcHJlc3Npb24gYWJvdmUgdGhhdCBzb21lCj4+ID4gPiBib3VuZGFy
eSBpcyBzdWJ0bHkgbW92aW5nIGJldHdlZW4gdGhlIGNvbXBvbmVudHMuIEJ1dCBJJ20gbm90Cj4+
ID4gPiByZWFsbHkgZmFtaWxpYXIgZW5vdWdoIHdpdGggdXNicmVkaXIgdG8gdW5kZXJzdGFuZCB0
aGUgaW50ZW50IGp1c3QgZnJvbQo+PiA+ID4gdGhlIHBhdGNoZXMgOy0pCj4+Cj4+ID4gTWFpbmx5
IGJlZm9yZSB0aGUgZmxvdyB3YXMgYSBzaW5nbGUgb25lIChndWVzdCA8LT4gdXNicmVkaXJob3N0
KSwgbm93IGRhdGEKPj4gPiBjYW4gZmxvdwo+PiA+IHRvL2Zyb20gdGhlICJwYXJzZXIiIHRvIHN1
cHBvcnQgZW11bGF0ZWQgZGV2aWNlcy4KPj4KPj4gSSB0aGluayB0aGF0IGl0J3MgInRvIHN1cHBv
cnQgZW11bGF0ZWQgZGV2aWNlcyIgdGhhdCBpcyByZWFsbHkgaW1wb3J0YW50Cj4+IGhlcmUuIElu
IHRlcm1zIG9mIHNlcGFyYXRpb24gb2YgY29uY2VybnMsIHRoYXQgd291bGQgbWVhbiB0aGF0IHRo
ZQo+PiBsaWJyYXJ5IGRvZXMgbm90IGNhcmUgYWJvdXQgdGhhdCwgYW5kIHRoYXQgb25seSB0aGUg
R1RLIGNsaWVudCBwcm92aWRlcyB0aGUKPj4gbG9naWMgZm9yIGVtdWxhdGluZyBkZXZpY2VzLiBJ
cyB0aGF0IGEgZ29vZCB3YXkgdG8gZGVzY3JpYmUgaXQ/Cj4+Cj4KPiBUaGUgY29kZSBpcyBpbiBz
cGljZS1jbGllbnQtZ2xpYiBzbyBub3QgdGVjaG5pY2FsbHkgb25seSBHVEssIGFsbCBjbGllbnRz
Cj4gdGhhdCB3aWxsIHVzZSBzcGljZS1jbGllbnQtZ2xpYi4gVGhpcyAiZW11bGF0aW9uIiBpcyB0
cmFuc3BhcmVudCwgZm9yIHRoZQo+IGd1ZXN0IGlzIGxpa2UgYSByZW1vdGUgcGh5c2ljYWwgZGV2
aWNlLgoKQWgsIEkgdGhpbmsgSSBmaWd1cmVkIG91dCB3aGF0IGNvbmZ1c2VkIG1lLiBJIGFzc3Vt
ZWQgZnJvbSB0aGUgc3BpY2VfCnByZWZpeCB0aGF0IHNwaWNlX3VzYnJlZGlyX3dyaXRlX2NhbGxi
YWNrIHdhcyBhIHB1YmxpYyBBUEkuIFNvIGl0IGRpZApub3QgbWFrZSBzZW5zZSB0byBtZSB0byBh
ZGQgc29tZSBsb2dpYyBhcm91bmQgaXQgdGhhdCB3b3VsZCBub3QgYmUKZG9uZSBieSB0aGUgQVBJ
IGl0c2VsZi4gQnV0IHNwaWNlX3VzYnJlZGlyX3dyaXRlX2NhbGxiYWNrIGlzIHJlYWxseSBqdXN0
CmFuIGludGVybmFsIGhlbHBlciBmdW5jdGlvbiB0aGF0IGlzIG5laXRoZXIgcHVibGljIG5vciBh
IGNhbGxiYWNrLCBzbyBpdApkb2VzIG5vdCByZWFsbHkgbWF0dGVyIGhvdyB5b3Ugc3BsaXQgdGhl
IGxvZ2ljLCBpdCdzIGludmlzaWJsZSBvdXRzaWRlLgoKCj4KPj4gV291bGQgYW5vdGhlciB0aGVv
cmV0aWNhbCBjbGllbnQgdXNpbmcgdGhlIGxpYnJhcnkgbmV2ZXIgcnVuIGludG8gdGhlCj4+IGNh
c2UgYmVjYXVzZSBpdCB3b3VsZCBub3QgZXhwb3NlIHRoZSBjYXBhYmlsaXRpZXM/IE9yIGlzIGl0
IGp1c3QgYSBjYXNlCj4+IHRoYXQgbm9ib2R5IGNhcmVzIGFib3V0Pwo+Pgo+Cj4gSSBkb24ndCB1
bmRlcnN0YW5kLiBEbyB5b3UgbWVhbiB0aGUgY2FwYWJpbGl0aWVzIGluc2lkZSB0aGUgSEVMTE8g
cGFja2V0Pwo+IEluIHRoaXMgY2FzZSBpdCdzIGp1c3QgdGhlIGNvbmZ1c2lvbiBhYm91dCB0aGUg
ImhhbmRsZSIgYWJvdmUsIHRoZSBIRUxMTwo+IGlzIHNlbnQgdG8gdGhlIGd1ZXN0LgoKQWN0dWFs
bHksIEkgd2FzIHNpbXBseSBpbmNvcnJlY3RseSBhc3N1bWluZyBzb21lIG90aGVyIGNsaWVudCBj
b3VsZApyZWZlciB0byBzcGljZV91c2JyZWRpcl93cml0ZV9jYWxsYmFjayBkaXJlY3RseS4gSSBm
aW5kIGl0J3Mgbm90CmFwcHJvcHJpYXRlbHkgbmFtZWQsIHNpbmNlIGl0J3Mgbm90IHJlYWxseSB1
c2VkIGFzIGEgY2FsbGJhY2ssIGJ1dApjYWxsZWQgZGlyZWN0bHksIGFuZCBiZWNhdXNlIGl0IGhh
cyBhICJzcGljZV8iIHByZWZpeCB0aGF0ICh0byBtZSkKaW1wbGllcyBpdCBoaXMgImNsb3NlciB0
byB0aGUgcHVibGljIEFQSSIgdGhhbiB1c2JyZWRpcl93cml0ZV9jYWxsYmFjaywKd2hlbiBpbiBm
YWN0IGl0J3MgZnVydGhlciBhd2F5IGZyb20gdGhlIHB1YmxpYyBpbnRlcmZhY2UuCgoKPgo+PiAo
QWxzbywgdG8gYmUgY2xlYXIsIEkgZG9uJ3QgdGhpbmsgdGhpcyBpbnZhbGlkYXRlcyB0aGUgcGF0
Y2ggYXQgYWxsLCBJJ20KPj4gcmVhbGx5IGFza2luZyBxdWVzdGlvbnMgdG8gbWFrZSBzdXJlIEkg
dW5kZXJzdGFuZCB0aGUgbG9naWMgYW5kIHRoYXQgdGhlCj4+IHdheSB0aGUgY29kZSBpcyBvcmdh
bml6ZWQgaXMgZnVsbHkgaW50ZW50aW9uYWwpLgo+Pgo+PiAtLQo+PiBDaGVlcnMsCj4+IENocmlz
dG9waGUgZGUgRGluZWNoaW4gKElSQyBjM2QpCj4+Cj4KPiBGcmVkaWFubwoKCi0tCkNoZWVycywK
Q2hyaXN0b3BoZSBkZSBEaW5lY2hpbiAoSVJDIGMzZCkKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
