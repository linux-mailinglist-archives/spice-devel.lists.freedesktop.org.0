Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD5954E9D
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 14:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 261B76E0EE;
	Tue, 25 Jun 2019 12:16:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84AE16E0EE
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 12:16:19 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hfkNU-00034J-Cv; Tue, 25 Jun 2019 07:16:49 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hfkMw-0001mR-D5; Tue, 25 Jun 2019 14:16:14 +0200
Date: Tue, 25 Jun 2019 14:16:14 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <251120248.24429219.1561448847847.JavaMail.zimbra@redhat.com>
Message-ID: <alpine.DEB.2.21.1906251256330.18664@amboise.dolphin>
References: <E1hbwUR-0004mE-Po@amboise>
 <568413630.22912285.1560599988559.JavaMail.zimbra@redhat.com>
 <169acd6d-7975-ed5b-8a21-92e65327eeac@redhat.com>
 <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
 <251120248.24429219.1561448847847.JavaMail.zimbra@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Uri Lublin wrote: > When the variable is 64 bit, you can use
 a 64bit macro for printing, > like PRId64. Wrong. Spice will fail to produce
 a 64 bit library if you add this anywhere: uint64_t foo = 1234;
 spice_debug("foo=%" PRId64, foo / NSEC_PER_SEC); 
 Content analysis details:   (-103.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -100 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 0.0 TVD_RCVD_IP            Message was received from an IP address
 1.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fgouget[at]free.fr)
 0.0 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HGh6ZLfSXSKJ61CtTyfVnvSvWCVuWySUPzTrL4QESBY=; b=gDTONLRyCE95IMsPioh6g6pC7
 /mQEfWuPUYOEIcC/RkublM7I9CK/TGM7bzw4dzsaUJ+9plSBKRdJhlImiyg8Edpr7jkF8OCCG81ol
 Ingfqhi4nOqE8nCoB26xOLCzGzdS5zaK2yXNujqCXlkFitXYhljAO7a9i9dAplLjVDjBs=;
Subject: Re: [Spice-devel] [spice v3] utils: Remove the LL suffix from
 NSEC_PER_SEC
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

ClVyaSBMdWJsaW4gd3JvdGU6Cj4gV2hlbiB0aGUgdmFyaWFibGUgaXMgNjQgYml0LCB5b3UgY2Fu
IHVzZSBhIDY0Yml0IG1hY3JvIGZvciBwcmludGluZywKPiBsaWtlIFBSSWQ2NC4KCldyb25nLiBT
cGljZSB3aWxsIGZhaWwgdG8gcHJvZHVjZSBhIDY0IGJpdCBsaWJyYXJ5IGlmIHlvdSBhZGQgdGhp
cyAKYW55d2hlcmU6CgogICAgdWludDY0X3QgZm9vID0gMTIzNDsKICAgIHNwaWNlX2RlYnVnKCJm
b289JSIgUFJJZDY0LCBmb28gLyBOU0VDX1BFUl9TRUMpOwoKS25vd2luZyB0aGF0IHRoZSB2YXJp
YWJsZSBpcyA2NCBiaXQgaXMgbm90IHN1ZmZpY2llbnQgdG8ga25vdyB3aGF0IApmb3JtYXQgdG8g
dXNlLiBBbmQgb25jZSBhIGRldmVsb3BlciBoYXMgZmlndXJlZCBvdXQgdGhhdCB0aGUgdGltZSAK
Y29uc3RhbnRzIGFyZSBsb25nIGxvbmdzIGhlJ2xsIGdldCBhbiBlcnJvciB3aXRoIHRoaXM6Cgog
ICAgdWludDY0X3QgYmFyID0gMTIzNDsKICAgIHNwaWNlX2RlYnVnKCJiYXI9JWxsZCIsIGJhciAv
IE5TRUNfUEVSX01JQ1JPU0VDKTsKClRoZXNlIGFyZSB0cmFwcy4gSXQncyBvbiB0aGUgc2FtZSBs
ZXZlbCBhczoKCiNkZWZpbmUgT05FIDIKClVzZWxlc3MgaW5jb25zaXN0ZW5jaWVzIGFuZCBtaXNk
aXJlY3Rpb25zLgoKClRoZSBwcmluY2lwbGUgb2YgbGVhc3Qgc3VycHJpc2Ugd291bGQgZGljdGF0
ZSB0aGF0IGZvciBtYWludGFpbmFibGUgCmNvZGU6CgogIDEuIEEgc2V0IG9mIHJlbGF0ZWQgY29u
c3RhbnRzIHNob3VsZCBhbGwgaGF2ZSB0aGUgc2FtZSB0eXBlLgoKICAyLiBJZiBhdCBhbGwgcG9z
c2libGUgY29uc3RhbnRzIHNob3VsZCBub3QgZm9yY2UgdGhlaXIgdHlwZSBvbiB0aGF0IAogICAg
IG9mIGV4cHJlc3Npb25zLgoKClNvIHRoZSBiZXN0IHNvbHV0aW9uIGlzIHRvIG5vdCBoYXZlIGFu
eSBzdWZmaXggb24gYW55IG9mIHRoZSB0aW1lIApjb25zdGFudHMgc2luY2Ugbm9uZSBvZiB0aGVt
IG5lZWRzIGl0LiBUaGF0J3Mgd2hhdCBJIGhhdmUgcHJvcG9zZWQuCgpUaGUgbmV4dCBiZXN0IHNv
bHV0aW9uIGlzIHRvIGhhdmUgYWxsIG9mIHRoZW0gYmUgaW50NjRfdCBzaW5jZSB0aGF0J3MgCnRo
ZSB0eXBlIG9mIHRoZSB2YXJpYWJsZXMgdGhleSBhcmUgdXN1YWxseSAoYnV0IG5vdCBuZWNlc3Nh
cmlseSkgdXNlZCAKd2l0aC4gVGhhdCBpbmNsdWRlcyBOU0VDX1BFUl9NSUNST1NFQyBhbmQgTVNF
Q19QRVJfU0VDLiBUaGlzIHZpb2xhdGVzIAp0aGUgc2Vjb25kIHBvaW50IHRob3VnaC4KCkluIGEg
ZGlzdGFudCB0aGlyZCBwbGFjZSBpcyBhZGRpbmcgdGhlIExMIHN1ZmZpeCB0byBhbGwgY29uc3Rh
bnRzIG9yIApjYXN0aW5nIHRoZW0gYWxsIHRvIHNvbWUgbG9uZyBsb25nIHR5cGUuIEl0J3Mgbm90
IGFzIGdvb2QgYXMgdGhlIApzb2x1dGlvbiBhYm92ZSBzaW5jZSB3ZSBlc3NlbnRpYWxseSBkb24n
dCB1c2UgbG9uZyBsb25nIHZhcmlhYmxlcyAKYW55d2hlcmUgKEkgY291bnQgYSB0b3RhbCBvZiB0
aHJlZSBsb25nIGxvbmcgdmFyaWFibGVzIGluIHNvbWUgZGFyayAKY29ybmVyIG9mIHNwaWNlLWNv
bW1vbikgYW5kIHRodXMgd2lsbCBjYXRjaCBkZXZlbG9wZXJzIG9mZi1ndWFyZCB3aGVuIAp0aGV5
IHRyeSB0byB0cmFjZSB0aGVpciB2YWx1ZXMuCgpBbmQgdGhlIHdvcnN0IG9wdGlvbiBpcyB0aGUg
Y3VycmVudCBzaXR1YXRpb24gd2hlcmUgaGFsZiB0aGUgY29uc3RhbnRzIApmb3JjZSBhbiB1bnVz
ZWQgdHlwZSBvbiBhbGwgZXhwcmVzc2lvbnMgd2hlcmUgdGhleSBhcmUgdXNlZCBpbiBhbmQgaGFs
ZiAKZG9uJ3QuCgoKT24gVHVlLCAyNSBKdW4gMjAxOSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgpb
Li4uXQo+ID4gV2hlbmV2ZXIgTlNFQ19QRVJfTUlMTElTRUMgb3IgTlNFQ19QRVJfU0VDIGFyZSB1
c2VkIGluIGEgc3BpY2VfZGVidWcoKQo+ID4gcGFyYW1ldGVyIG9uZSBjYW5ub3QgdXNlICV1IG9y
ICVsdSBhcyB0aGUgZm9ybWF0LiBCdXQgbm90IHNvIGZvcgo+IAo+IEJlaW5nIHNpZ25lZCB5b3Ug
d291bGQgdXNlICVsbGQgb3Igc2ltaWxhcnMuCgpBcyB0aGUgY29kZSBjdXJyZW50bHkgc3RhbmRz
IHRoYXQncyBvbmx5IHRydWUgZm9yIGV4cHJlc3Npb25zIHRoYXQgdXNlIApOU0VDX1BFUl9TRUMu
IEFsbCBleHByZXNzaW9ucyB0aGF0IHVzZSB0aGUgb3RoZXIgdGltZSBjb25zdGFudHMgaGF2ZSB0
aGUgCnR5cGUgb2YgdGhlIHZhcmlhYmxlcyB1c2VkIGluIHRoZSBleHByZXNzaW9uIHdoaWNoIG1l
YW5zIG9uZSBzaG91bGQgdXNlIAplaXRoZXIgJWQvJXUgb3IgJWxkLyVsdS4KCgo+ID4gTlNFQ19Q
RVJfTUlDUk9TRUMgb3IgTVNFQ19QRVJfU0VDLiBUaGlzIGlzIGluY29uc2lzdGVudCBzbyB0aGF0
IHRpbWluZwo+IAo+IE5vLCB5b3UgY2Fubm90IHVzZSBsb25nIG9yIG5vdCBsb25nIGZvciBvdGhl
ciBjb25zdGFudHMgdG9vLCB0aGV5IGFyZQo+IGRpZmZlcmVudCBmb3IgMzItYml0IHNvIHdpdGgg
Ym90aCB5b3UgY2Fubm90IG1peC4KCj8/PwoKCj4gPiB0cmFjZXMgcmVxdWlyZSBsb3RzIG9mIGd1
ZXNzaW5nIGFuZCByZWNvbXBpbGF0aW9ucy4KPiA+IAo+IAo+IFRoYXQncyB3aHkgd2UgdXNlIC1X
Zm9ybWF0IHNvIGNvbXBpbGVyIHdpbGwgdGVsbCB5b3Ugd2hpY2ggb25lcyBhcmUgd3JvbmcuCj4g
SSBkb24ndCBzZWUgd2h5IHlvdSBuZWVkIHRvIGd1ZXNzIGFuZCByZWNvbXBpbGUsCj4gYmVzaWRl
IEkgc3VwcG9zZSB0aGUgZmlyc3QgdGltZSB5b3UgYXJlIHdyaXRpbmcgdGhlIGNvZGUuCiAgXl5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl4KClBy
ZWNpc2VseS4gQW5kIHNpbmNlIGl0J3MgdXNlZCBpbiBvbmUtb2ZmIGRlYnVnZ2luZyBleHByZXNz
aW9ucyBpdCBrZWVwcyAKY29taW5nIHVwLiBQbHVzIGhhbGYgdGhlIHNwaWNlX2RlYnVnKCkgYXJn
dW1lbnRzIGFyZSBoaWRkZW4gc28gdGhhdCB3aGVuIAp0aGUgY29tcGlsZXIgc2F5cyB0aGVyZSdz
IGEgcHJvYmxlbSB3aXRoIGFyZ3VtZW50IDUgaXQncyBhbnlib2R5J3MgZ3Vlc3MgCmFzIHRvIHdo
ZXJlIHRoZSBwcm9ibGVtIGFjdHVhbGx5IGxpZXMuCgpTdXJlIGFsbCBpcyB3ZWxsIGlmIHlvdSBt
ZW1vcml6ZSB0aGF0IE5TRUNfUEVSX1NFQyBhbmQgTlNFQ19QRVJfTUlMTElTRUMgCmFyZSBsb25n
IGxvbmdzLCBidXQgTlNFQ19QRVJfTUlMTElTRUMgaXMgbm90IGFueW1vcmUsIGFuZCBuZWl0aGVy
IGFyZSAKYW55IG9mIHRoZSBvdGhlciB0aW1lIGNvbnN0YW50cyBhbmQgdGhhdCBzcGljZV9kZWJ1
ZygpIGhhcyBwcmVjaXNlbHkgeCAKaGlkZGVuIGFyZ3VtZW50cyB3aGljaCB5b3UgbXVzdCBzdWJz
dHJhY3QgZnJvbSBjb21waWxlciBlcnJvciBtZXNzYWdlcy4KCkJ1dCB0aGF0J3MganVzdCBzZXR0
aW5nIHVwIHRyYXBzIGZvciBkZXZlbG9wZXJzIHdobyBJIGFyZ3VlIGhhdmUgbXVjaCAKYmV0dGVy
IHRoaW5ncyB0byBtZW1vcml6ZSBhbmQgdGhpbmsgYWJvdXQuCgoKPiBBbmQgaWYgeW91IG5lZWQg
dG8gZ3Vlc3MgaXQgbWVhbnMgeW91IGRvbid0IGtub3cgdGhlIHR5cGVzIHlvdSBhcmUgCj4gdXNp
bmcgYW5kIHNvIHlvdSBhcmUgbm90IHN1cmUgYWJvdXQgb3ZlcmZsb3dzIHNvIHlvdSBhcmUgbm90
IHBheWluZyAKPiBtdWNoIGF0dGVudGlvbiB0byB0aGUgY29kZSB5b3UgYXJlIHdyaXRpbmcuCgpJ
IGtub3cgd2hhdCB0aGUgdHlwZXMgb2YgdGhlIHZhcmlhYmxlcyBJJ20gdXNpbmcgYXJlLCB0aGFu
ayB5b3UuIEl0J3MgCnRoZSBjb25zdGFudHMgdGhhdCBoYXZlIGluY29uc2lzdGVudCBhbmQgY29u
ZnVzaW5nIHR5cGVzIGFuZCBjaGFuZ2UgdGhlIAp0eXBlIG9mIHRoZSBleHByZXNzaW9uIEknbSB1
c2luZyB0aGVtIHdpdGguCgpBbHNvLCB3aXRoIEMncyBpbXBsaWNpdCBjYXN0cyB0aGUgTEwgc3Vm
Zml4IGlzIG5vdCBhbnkgYmV0dGVyIGF0IAphdm9pZGluZyBvdmVyZmxvd3MgdGhhbiBoYXZpbmcg
YW4gaW50NjRfdCBjYXN0IGJhY2tlZCBpbnRvIHRoZSAKY29uc3RhbnRzLgoKSXQncyBvbmx5IHdo
ZW4gdXNpbmcgdGhlIGNvbnN0YW50cyBhcmUgdXNlZCBhcyBhcmd1bWVudHMgdG8gYSAKcHJpbnRm
KCktZXF1aXZhbGVudCB0aGF0IHRoZSBMTCB0cmFwIGlzIHNwcnVuZy4gQW5kIEknZCBhcmd1ZSB0
aGlzIGlzIApub3QgYSBjYXNlIHdoZXJlIHRoZXJlJ3MgbXVjaCBvZiBhbiBvdmVyZmxvdyByaXNr
IHRvIHN0YXJ0IHdpdGgsIGFuZCBub3QgCm9uZSB3aGVyZSBpdCB3b3VsZCBldmVuIG1hdHRlciBt
dWNoIHNpbmNlIG1vc3Qgb2YgdGhvc2UgYXJlIHRlbXBvcmFyeSAKb25lLW9mZiBkZWJ1Z2dpbmcg
dHJhY2VzLgoKCi0tIApGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMuY29tPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
