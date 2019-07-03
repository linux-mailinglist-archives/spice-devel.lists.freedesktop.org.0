Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9545E557
	for <lists+spice-devel@lfdr.de>; Wed,  3 Jul 2019 15:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2C226E136;
	Wed,  3 Jul 2019 13:23:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D853F6E136
 for <spice-devel@lists.freedesktop.org>; Wed,  3 Jul 2019 13:23:49 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id r6so2326319oti.3
 for <spice-devel@lists.freedesktop.org>; Wed, 03 Jul 2019 06:23:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y5ERh2EPOcYxSmi+gCRKCaaXugcRi39thbQdN6D+Rpo=;
 b=ZZDavJQnQGaVS/Uo+MJ8jfiIbfm76eZyNtcN2veoJd8sOh9+f1p9o3uHj/9Wzu8JLU
 7P8lTe6Kb1g59BaSAORf4LQLVDT7U8qduMmqexIWglrok7F2/A5mfUoh15Y6j+AlZTYN
 GNp0mVUhkvpZsYPIrfPQGDpf4vrlpvNK7fpapO/uj1LoeujSc+6E79fwKsqV6Iarrf7S
 BQQPOuVsE+F2F9x4PqBWypkeKU7UmRvqes7tPHb9iXhf3yy7xNiNkY6JCg8CQNyRuzV3
 Tjd7MukiopmmgW2S6hCIlFgS3jUD4ATVkalgKhAyOnjgh7EXiZWlH3CWw3zXqjbR4TUA
 qEyA==
X-Gm-Message-State: APjAAAXP7EudU88RPwgkS2vCZaWKXFSovF7C9IWvfl7SMrqIzFyUHhh5
 puuG0OftdHEIBEJDbjTuly/PWBr12qdeGL3vpAVorQ==
X-Google-Smtp-Source: APXvYqzNCiClQoxPmX05eamLD1tb1MDapo4TQ6v4ahvv2U2fS8C85XoW8WfzAFwflHIkaK4NQM4eU/+lJ2HQxEXcOrk=
X-Received: by 2002:a9d:6385:: with SMTP id w5mr20344640otk.227.1562160229229; 
 Wed, 03 Jul 2019 06:23:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190703122750.17735-1-kpouget@redhat.com>
 <1889450166.26287138.1562158032512.JavaMail.zimbra@redhat.com>
In-Reply-To: <1889450166.26287138.1562158032512.JavaMail.zimbra@redhat.com>
From: Kevin Pouget <kpouget@redhat.com>
Date: Wed, 3 Jul 2019 15:23:38 +0200
Message-ID: <CADJ1XR180vr+7hNs7ahbe-zyVq0PyvWVnTn4RjApFhPt+eht5g@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
Subject: Re: [Spice-devel] [PATCH v2 spice-server] gstreamer-encoder: fix
 compiler warning with Fedora 30
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

T24gV2VkLCBKdWwgMywgMjAxOSBhdCAyOjQ3IFBNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPiB3cm90ZToKPgo+ID4KPiA+IEZlZG9yYSAzMCAvIGdjYyA5LjEuMSAyMDE5MDUw
MyAoUmVkIEhhdCA5LjEuMS0xKSBmYWlscyB0byBidWlsZAo+ID4gYmVjYXVzZSBvZiB0aGlzIGVy
cm9yL3dhcm5pbmc6Cj4gPgo+ID4gPiBnc3RyZWFtZXItZW5jb2Rlci5jOiBJbiBmdW5jdGlvbiAn
c2V0X3ZpZGVvX2JpdF9yYXRlJzoKPiA+ID4gZ3N0cmVhbWVyLWVuY29kZXIuYzo1MTg6MTc6IGVy
cm9yOiB0YWtpbmcgdGhlIGFic29sdXRlIHZhbHVlIG9mCj4gPiA+IHVuc2lnbmVkIHR5cGUgJ3Vp
bnQ2NF90JyB7YWthICdsb25nIHVuc2lnbmVkIGludCd9IGhhcyBubyBlZmZlY3QKPiA+ID4gWy1X
ZXJyb3I9YWJzb2x1dGUtdmFsdWVdCj4gPiA+ICA1MTggfCAgICAgfSBlbHNlICBpZiAoYWJzKGJp
dF9yYXRlIC0gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUpID4KPiA+ID4gIGVuY29kZXItPnZpZGVv
X2JpdF9yYXRlICogU1BJQ0VfR1NUX1ZJREVPX0JJVFJBVEVfTUFSR0lOKSB7Cj4gPiA+ICAgICAg
fCAgICAgICAgICAgICAgICAgXn5+Cj4gPiA+IGdzdHJlYW1lci1lbmNvZGVyLmM6NTE4OjE3OiBl
cnJvcjogYWJzb2x1dGUgdmFsdWUgZnVuY3Rpb24gJ2FicycKPiA+ID4gZ2l2ZW4gYW4gYXJndW1l
bnQgb2YgdHlwZSAndWludDY0X3QnIHtha2EgJ2xvbmcgdW5zaWduZWQgaW50J30KPiA+Cj4gPiBU
aGlzIHBhdGNoZXMgc29sdmVzIHRoZXNlIHR3byB3YXJuaW5nczoKPiA+Cj4gPiAxKSBjYXN0IHRo
ZSBzdWJzdHJhY3Rpb24gdG8gYSBzaWduZWQgdHlwZSAoaW50NjRfdCBpbnN0ZWFkIG9mCj4gPiB1
aW50NjRfdCkgdG8gcHJlc2VydmUgdGhlIG9wZXJhdGlvbiBtZWFuaW5nOwo+ID4KPiA+IDIpIHVz
ZSBhIGN1c3RvbSB2ZXJzaW9uIG9mIGFicygpIHRvIGF2b2lkIGRhdGEgdHJ1bmNhdGlvbiBhbmQv
b3IKPiA+IHBsYXRmb3JtLWRlcGVuZGVudCB0eXBlIGxlbmd0aHMgKGFicy9sYWJzL2xsYWJzKQo+
ID4gLS0tCj4gPiAgc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgfCAyICstCj4gPiAgc2VydmVy
L3V0aWxzLmggICAgICAgICAgICAgfCA1ICsrKysrCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvc2VydmVyL2dz
dHJlYW1lci1lbmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYwo+ID4gaW5kZXgg
NjQxNmI2ODguLjU0YWExOTYzIDEwMDY0NAo+ID4gLS0tIGEvc2VydmVyL2dzdHJlYW1lci1lbmNv
ZGVyLmMKPiA+ICsrKyBiL3NlcnZlci9nc3RyZWFtZXItZW5jb2Rlci5jCj4gPiBAQCAtNTE1LDcg
KzUxNSw3IEBAIHN0YXRpYyB2b2lkIHNldF92aWRlb19iaXRfcmF0ZShTcGljZUdzdEVuY29kZXIg
KmVuY29kZXIsCj4gPiB1aW50NjRfdCBiaXRfcmF0ZSkKPiA+ICAgICAgICAgIGVuY29kZXItPnZp
ZGVvX2JpdF9yYXRlID0gYml0X3JhdGU7Cj4gPiAgICAgICAgICBzZXRfZ3N0ZW5jX2JpdHJhdGUo
ZW5jb2Rlcik7Cj4gPgo+ID4gLSAgICB9IGVsc2UgIGlmIChhYnMoYml0X3JhdGUgLSBlbmNvZGVy
LT52aWRlb19iaXRfcmF0ZSkgPgo+ID4gZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUgKiBTUElDRV9H
U1RfVklERU9fQklUUkFURV9NQVJHSU4pIHsKPiA+ICsgICAgfSBlbHNlICBpZiAoaTY0YWJzKChp
bnQ2NF90KShiaXRfcmF0ZSAtIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlKSkgPgo+ID4gZW5jb2Rl
ci0+dmlkZW9fYml0X3JhdGUgKiBTUElDRV9HU1RfVklERU9fQklUUkFURV9NQVJHSU4pIHsKPgo+
IElzIGl0IGZpbmUgZm9yIHlvdSBpZiBJIHNwbGl0IHRoZSBsaW5lIGF0IDEwMCBjaGFyYWN0ZXJz
IChhZnRlciAiID4iKSA/Cgp5ZXMsIHN1cmUKSSB3YXMgY29uZnVzZWQgd2l0aCB0aGUgbGluZSBs
ZW5ndGggbGltaXRhdGlvbiwgYnV0IEkgc2F3IGluIHRoZQpjb2Rpbmcgc3R5bGUgdGhhdCBpdCdz
IDEwMCwKSSB1bmRlcnN0YW5kIHRoYXQgbGluZXMgbG9uZ2VyIHRoYW4gdGhhdCBnZXQgY3V0IHBh
dGNoIGJ5IHBhdGNoIQoKPiA+ICAgICAgICAgIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlID0gYml0
X3JhdGU7Cj4gPiAgICAgICAgICBzZXRfcGlwZWxpbmVfY2hhbmdlcyhlbmNvZGVyLCBTUElDRV9H
U1RfVklERU9fUElQRUxJTkVfQklUUkFURSk7Cj4gPiAgICAgIH0KPiA+IGRpZmYgLS1naXQgYS9z
ZXJ2ZXIvdXRpbHMuaCBiL3NlcnZlci91dGlscy5oCj4gPiBpbmRleCA1NGJjOWQ0OS4uYTU0ZDU0
MzMgMTAwNjQ0Cj4gPiAtLS0gYS9zZXJ2ZXIvdXRpbHMuaAo+ID4gKysrIGIvc2VydmVyL3V0aWxz
LmgKPiA+IEBAIC03NSw0ICs3NSw5IEBAIGludCByZWRfY2hhbm5lbF9uYW1lX3RvX3R5cGUoY29u
c3QgY2hhciAqbmFtZSk7Cj4gPgo+ID4gIHZvaWQgcmVkX2R1bXBfb3BlbnNzbF9lcnJvcnModm9p
ZCk7Cj4gPgo+ID4gK3N0YXRpYyBpbmxpbmUgaW50NjRfdCBpNjRhYnMoaW50NjRfdCB2YWx1ZSkK
PiA+ICt7Cj4gPiArICAgIHJldHVybiAodmFsdWUgPj0gMCkgPyB2YWx1ZSA6IC12YWx1ZTsKPiA+
ICt9Cj4gPiArCj4gPiAgI2VuZGlmIC8qIFVUSUxTX0hfICovCj4KPiBPdGhlcndpc2UgcGF0Y2gg
aXMgZmluZSBmb3IgbWUuCgp0aGFua3MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
