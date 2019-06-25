Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4C7554A1
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 311376E17E;
	Tue, 25 Jun 2019 16:35:35 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660C16E171
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:35:33 +0000 (UTC)
Received: from 82-64-54-218.subs.proxad.net ([82.64.54.218] helo=amboise)
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <fgouget@free.fr>)
 id 1hfoQM-00015D-TG; Tue, 25 Jun 2019 11:36:03 -0500
Received: from fgouget by amboise with local (Exim 4.92)
 (envelope-from <fgouget@amboise.dolphin>)
 id 1hfoPp-0004R7-Ge; Tue, 25 Jun 2019 18:35:29 +0200
Date: Tue, 25 Jun 2019 18:35:29 +0200 (CEST)
From: Francois Gouget <fgouget@codeweavers.com>
To: Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <672065155.24499471.1561477021845.JavaMail.zimbra@redhat.com>
Message-ID: <alpine.DEB.2.21.1906251758070.4284@amboise.dolphin>
References: <E1hbwUR-0004mE-Po@amboise>
 <568413630.22912285.1560599988559.JavaMail.zimbra@redhat.com>
 <169acd6d-7975-ed5b-8a21-92e65327eeac@redhat.com>
 <alpine.DEB.2.21.1906250626260.1260@amboise.dolphin>
 <251120248.24429219.1561448847847.JavaMail.zimbra@redhat.com>
 <alpine.DEB.2.21.1906251256330.18664@amboise.dolphin>
 <672065155.24499471.1561477021845.JavaMail.zimbra@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Score: -103.7
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 25 Jun 2019,
 Frediano Ziglio wrote: [...] > > uint64_t
 foo = 1234; > > spice_debug("foo=%" PRId64, foo / NSEC_PER_SEC); [...] >
 If you assume long long == 64 bit should not be a big problem > [...] 
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
 bh=uu6zp8PerEgSizbGAUQEMQHIUxtIjknLyhSmWDfP7yU=; b=m0lN8nuATo1VZZNDwVNsYz+zE
 jg0nWsmQsmlk8NLwE1vfCWJ8sJEHW6vn9mJGMr39JM7n0NY/9iYwA+p/9YFf4qkrCJasa+63hqxNm
 rZ1ZqR5qUKilFYHmqzVaZBTkRPPHEUTgKVRsXohSOtAGSR69B3Y5hlqrK5z4Tn6JNNXTY=;
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

T24gVHVlLCAyNSBKdW4gMjAxOSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgpbLi4uXQo+ID4gICAg
IHVpbnQ2NF90IGZvbyA9IDEyMzQ7Cj4gPiAgICAgc3BpY2VfZGVidWcoImZvbz0lIiBQUklkNjQs
IGZvbyAvIE5TRUNfUEVSX1NFQyk7ClsuLi5dCj4gSWYgeW91IGFzc3VtZSBsb25nIGxvbmcgPT0g
NjQgYml0IHNob3VsZCBub3QgYmUgYSBiaWcgcHJvYmxlbQo+IGFsdGhvdWdoIHlvdSBjYW4gc3Rp
bGwgaGF2ZSB0aGUgd2FybmluZy4KCk5vdCBhIHdhcm5pbmcuIEEgY29tcGlsYXRpb24gZXJyb3I6
CgogIENDICAgICAgIGdzdHJlYW1lci1lbmNvZGVyLmxvCkluIGZpbGUgaW5jbHVkZWQgZnJvbSBy
ZWQtY29tbW9uLmg6MjgsCiAgICAgICAgICAgICAgICAgZnJvbSBnc3RyZWFtZXItZW5jb2Rlci5j
OjMwOgpnc3RyZWFtZXItZW5jb2Rlci5jOiBJbiBmdW5jdGlvbiAnZ2V0X21pbl9wbGF5YmFja19k
ZWxheSc6Ci4uL3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbi9jb21tb24vbG9nLmg6Njc6NjI6IGVy
cm9yOiBmb3JtYXQgJyVsZCcgCmV4cGVjdHMgYXJndW1lbnQgb2YgdHlwZSAnbG9uZyBpbnQnLCBi
dXQgYXJndW1lbnQgNSBoYXMgdHlwZSAnbG9uZyBsb25nIHVuc2lnbmVkIGludCcgWy1XZXJyb3I9
Zm9ybWF0PV0KICAgICBzcGljZV9sb2coR19MT0dfTEVWRUxfREVCVUcsIFNQSUNFX1NUUkxPQywg
X19GVU5DVElPTl9fLCAiIiBmb3JtYXQsICMjIF9fVkFfQVJHU19fKTsgXAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+CmdzdHJl
YW1lci1lbmNvZGVyLmM6NjA2OjU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnc3BpY2Vf
ZGVidWcnCiAgICAgc3BpY2VfZGVidWcoImZvbz0lIiBQUklkNjQsIGZvbyAvIE5TRUNfUEVSX1NF
Qyk7CiAgICAgXn5+fn5+fn5+fn4KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGdzdHJlYW1lci1lbmNv
ZGVyLmM6MjE6Ci91c3IvaW5jbHVkZS9pbnR0eXBlcy5oOjU3OjM0OiBub3RlOiBmb3JtYXQgc3Ry
aW5nIGlzIGRlZmluZWQgaGVyZQogIyBkZWZpbmUgUFJJZDY0ICBfX1BSSTY0X1BSRUZJWCAiZCIK
Y2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKCgo+ID4gVGhlIHByaW5j
aXBsZSBvZiBsZWFzdCBzdXJwcmlzZSB3b3VsZCBkaWN0YXRlIHRoYXQgZm9yIG1haW50YWluYWJs
ZQo+ID4gY29kZToKPiAKPiBTdXJwcmlzZS9hc3RvbmlzaG1lbnQgYXJlIHJlYWxseSBzdWJqZWN0
IHRvIGh1bWFuIG9waW5pb24uIFRoZXkgYXJlIGJhc2VkCj4gb24gaGFiaXRzIGFuZCBleHBlY3Rh
dGlvbnMuIFNheWluZyB0aGF0ICJwcmluY2lwbGUgb2YgbGVhc3Qgc3VycHJpc2UiCj4gZGljdGF0
ZXMgc29tZXRoaW5nIGlzIHByZXRlbmRpbmcgYWxsIHBlb3BsZSBoYXZlIHRoZSBzYW1lIGhhYml0
cy9leHBlY3RhdGlvbnMuCgpBbmQgc2F5aW5nIHRoYXQgbWVhbnMgeW91IGNvbnNpZGVyIHRoZSBw
cmluY2lwbGUgb2YgbGVhc3Qgc3VycHJpc2UgdG8gYmUgCmNvbXBsZXRlbHkgdXNlbGVzcy4KCgo+
ID4gICAxLiBBIHNldCBvZiByZWxhdGVkIGNvbnN0YW50cyBzaG91bGQgYWxsIGhhdmUgdGhlIHNh
bWUgdHlwZS4KPiA+IAo+IAo+IEl0IHNvdW5kcyByZWFzb25hYmxlLCBhbGwgdGhlc2UgY29uc3Rh
bnRzIGFyZSBkZWZpbmVkIHJlYWxseSBjbG9zZWQgaW4KPiB0aGUgc291cmNlIGFuZCBleHByZXNz
IHRoZSBzYW1lIHByZWNpc2lvbiAobmFub3NlY29uZHMpLiBJIGRvbid0IGV4cGVjdAo+IE1TRUNf
UEVSX1NFQyB0byBoYXZlIHRoZSBzYW1lIHByZWNpc2lvbi90eXBlLgoKSSBjYW4gbWFrZSBhbiBl
eGNlcHRpb24gZm9yIE1TRUNfUEVSX1NFQy4KCgo+ID4gICAyLiBJZiBhdCBhbGwgcG9zc2libGUg
Y29uc3RhbnRzIHNob3VsZCBub3QgZm9yY2UgdGhlaXIgdHlwZSBvbiB0aGF0Cj4gPiAgICAgIG9m
IGV4cHJlc3Npb25zLgo+ID4gCj4gCj4gQysrIGFkZGVkIGFuIGV4dGVuc2lvbiB0byBtYWtlIGVu
dW1lcmF0aW9uIHR5cGVkLCBDIGhhcyBzb21lIGV4dGVuc2lvbgo+IHRvIGFjaGlldmUgdGhhdCBh
bmQgY29tcGlsZXJzIGhhdmUgb3B0aW9ucyBmb3IgdGhpcyBzbyBpdCBzZWVtcyBpbgo+IGRpZmZl
cmVudCBjYXNlcyBpdCdzIHdhbnRlZC4KCkknZCB2ZXJ5IG11Y2ggcHJlZmVyIHRoZSBjYXN0IHRv
IGJlIGluIHRoZSBleHByZXNzaW9uIHJhdGhlciB0aGFuIGhpZGRlbiAKaW4gc29tZSBmYXIgYXdh
eSBtYWNyby4KCkZvciBpbnN0YW5jZToKCiAgICBpbnQgZnJhbWVzX2NvdW50OwogICAgLi4uCgog
ICAgaWYgKGR1cmF0aW9uID4gTlNFQ19QRVJfU0VDICogZHJhd2FibGUtPmZyYW1lc19jb3VudCAv
IE1BWF9GUFMpIHsKCkFueW9uZSBjaGVja2luZyB0aGlzIGNhbGN1bGF0aW9uIHdvdWxkIHRoaW5r
IHRoYXQgdGhlcmUgaXMgYSByaXNrIG9mIApvdmVyZmxvdy4gQW5kIGl0J3Mgb25seSB3aGVuIHRy
YWNpbmcgTlNFQ19QRVJfU0VDIHRvIHV0aWxzLmggdGhhdCB0aGV5IAp3b3VsZCBkaXNjb3ZlciB0
aGF0IE5TRUNfUEVSX1NFQyBmb3JjZXMgNjQgYml0IGNhbGN1bGF0aW9uLgoKQXQgbGVhc3QgdGhp
cyBmb3JtIGlzIGNsZWFyIHJpZ2h0IGF3YXk6CgogICAgaWYgKGR1cmF0aW9uID4gKCh1aW50NjRf
dClOU0VDX1BFUl9TRUMpICogZHJhd2FibGUtPmZyYW1lc19jb3VudCAvIE1BWF9GUFMpIHsKCgo+
ID4gQXMgdGhlIGNvZGUgY3VycmVudGx5IHN0YW5kcyB0aGF0J3Mgb25seSB0cnVlIGZvciBleHBy
ZXNzaW9ucyB0aGF0IHVzZQo+ID4gTlNFQ19QRVJfU0VDLiBBbGwgZXhwcmVzc2lvbnMgdGhhdCB1
c2UgdGhlIG90aGVyIHRpbWUgY29uc3RhbnRzIGhhdmUgdGhlCj4gPiB0eXBlIG9mIHRoZSB2YXJp
YWJsZXMgdXNlZCBpbiB0aGUgZXhwcmVzc2lvbiB3aGljaCBtZWFucyBvbmUgc2hvdWxkIHVzZQo+
ID4gZWl0aGVyICVkLyV1IG9yICVsZC8lbHUuCj4gPiAKPiAKPiBNb3N0IGFyZSA2NCBiaXQgc28g
YWxsICVkLCAldSwgJWxkIGFuZCAlbHUgYXJlIG5vdCBnb29kLgoKWW91IG1lYW4gaW4gY2FzZSBv
bmUgY29tcGlsZXMgdG8gMzIgYml0PwpVc2luZyBQUklkNjQgYW5kIFBSSXU2NCB3b3VsZCBzdGls
bCBub3Qgd29yayB3aXRoIE5TRUNfUEVSX1NFQyB3aGljaCBpcyAKdGhlIGlzc3VlIGhlcmUuCgoK
Cj4gPiA+ID4gdHJhY2VzIHJlcXVpcmUgbG90cyBvZiBndWVzc2luZyBhbmQgcmVjb21waWxhdGlv
bnMuCj4gPiA+ID4gCj4gPiA+IAo+ID4gPiBUaGF0J3Mgd2h5IHdlIHVzZSAtV2Zvcm1hdCBzbyBj
b21waWxlciB3aWxsIHRlbGwgeW91IHdoaWNoIG9uZXMgYXJlIHdyb25nLgo+ID4gPiBJIGRvbid0
IHNlZSB3aHkgeW91IG5lZWQgdG8gZ3Vlc3MgYW5kIHJlY29tcGlsZSwKPiA+ID4gYmVzaWRlIEkg
c3VwcG9zZSB0aGUgZmlyc3QgdGltZSB5b3UgYXJlIHdyaXRpbmcgdGhlIGNvZGUuCj4gPiAgIF5e
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCj4g
PiAKPiA+IFByZWNpc2VseS4gQW5kIHNpbmNlIGl0J3MgdXNlZCBpbiBvbmUtb2ZmIGRlYnVnZ2lu
ZyBleHByZXNzaW9ucyBpdCBrZWVwcwo+ID4gY29taW5nIHVwLiBQbHVzIGhhbGYgdGhlIHNwaWNl
X2RlYnVnKCkgYXJndW1lbnRzIGFyZSBoaWRkZW4gc28gdGhhdCB3aGVuCj4gPiB0aGUgY29tcGls
ZXIgc2F5cyB0aGVyZSdzIGEgcHJvYmxlbSB3aXRoIGFyZ3VtZW50IDUgaXQncyBhbnlib2R5J3Mg
Z3Vlc3MKPiA+IGFzIHRvIHdoZXJlIHRoZSBwcm9ibGVtIGFjdHVhbGx5IGxpZXMuCj4gCj4gQnV0
IG1vc3Qgb2YgdHlwZXMgYXJlIDY0IGJpdCBzbyB5b3UgaGF2ZSB0aGUgc2FtZSBpc3N1ZSB0b28s
IGlzbid0IGl0PwoKTm8uIElmIEkgd2FudCB0byB0cmFjZSBhIDY0IGJpdCB2YXJpYWJsZSBJIGp1
c3QgdXNlICVsZC8lbHUgYW5kIHRoYXQncyAKaXQuIE5vIG5lZWQgdG8gbG9vayBhdCB1dGlscy5o
IHRvIHJlZnJlc2ggbXkgbWVtb3J5IG9uIHdoZXRoZXIgYSAKc3BlY2lmaWMgbWFjcm8gaXMgYSBs
b25nIGxvbmcgdW5saWtlIGFsbCB0aGUgb3RoZXIgc2ltaWxhcmx5IG5hbWVkIG9uZXMuCgoKPiBB
bmQgdGhpcyBwYXRjaCBpcyBub3QgZml4aW5nIHRoZXNlIG1hY3Jvcy4KCkl0IHJlbW92ZXMgdGhl
IExMIHN1ZmZpeCBmcm9tIE5TRUNfUEVSX1NFQywgdGh1cyBtYWtpbmcgaXQgY29uc2lzdGVudCAK
d2l0aCBhbGwgb3RoZXIgTlNFQ19QRVJfWFhYIG1hY3JvcyBhbmQgZXZlbiBNU0VDX1BFUl9TRUMu
IFNvIHllcyBpdCAKZG9lcy4gT3Igd2hlcmUgeW91IHNwZWFraW5nIG9mIHNvbWUgb3RoZXIgbWFj
cm9zPwoKQWZ0ZXIgdGhpcyBwYXRjaCB0aGUgb25seSBjb25zdGFudHMgdGhhdCBrZWVwIGEgNjQg
Yml0IHR5cGUgYXJlIHRob3NlIAp0aGF0IGRvbid0IGZpdCBpbiAzMiBiaXQsIGFuZCBhdCBsZWFz
dCB0aG9zZSBhcmUgbG9uZ3MsIG5vdCBsb25nIGxvbmdzLgoKCi0tIApGcmFuY29pcyBHb3VnZXQg
PGZnb3VnZXRAY29kZXdlYXZlcnMuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
