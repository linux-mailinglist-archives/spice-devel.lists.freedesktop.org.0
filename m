Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938B213D957
	for <lists+spice-devel@lfdr.de>; Thu, 16 Jan 2020 12:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 439EA6E214;
	Thu, 16 Jan 2020 11:53:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7C16E214
 for <spice-devel@lists.freedesktop.org>; Thu, 16 Jan 2020 11:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579175623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0Jln+3k3G6OLs5CbCIfFF+9WGfJUVif5fgcfmJgKKQM=;
 b=iuqkWzrYTtnGVbGTxm/orMVOt4vwkKb3bBIegtIYKqaUF0O2svyL0/g0q5QOm+XfCUD7Z/
 H45FUYry2xnPJ4agXr1+wWN9ZH2H/2xTXsFbXMePv1RtJmVOPw8yNbjuWgoilBZJt+gnYl
 lMHlgQQPPYU7HJHjrvLXFcGGKJ0XYtY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-CJXdUln9MbuankXtucO0PQ-1; Thu, 16 Jan 2020 06:53:40 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5BB26802561;
 Thu, 16 Jan 2020 11:53:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F1385C299;
 Thu, 16 Jan 2020 11:53:39 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3808287081;
 Thu, 16 Jan 2020 11:53:39 +0000 (UTC)
Date: Thu, 16 Jan 2020 06:53:38 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <2007873689.6101347.1579175618090.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAOEp5OdgTBGvHBU9CAnDt5bF0A-JaRv0Fzi=rNRLJrBhdtTOSQ@mail.gmail.com>
References: <MN2PR06MB5966B91D42D1F839645822D1B3340@MN2PR06MB5966.namprd06.prod.outlook.com>
 <340504604.5713959.1578994995366.JavaMail.zimbra@redhat.com>
 <CAOEp5OehVVQxjYW3wR7wTE++Ct4vp-1KUnLOfnL-Z_Vq25DcBw@mail.gmail.com>
 <MN2PR06MB59660C9996BE501670A7E50EB3370@MN2PR06MB5966.namprd06.prod.outlook.com>
 <CAOEp5OdgTBGvHBU9CAnDt5bF0A-JaRv0Fzi=rNRLJrBhdtTOSQ@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.24, 10.4.195.24]
Thread-Topic: windows server =?utf-8?B?MjAxMu+8mg==?=
 WDDMInterface::escape::this should never happen. Status is 0xc000000d
Thread-Index: dM3gDoQbL47mzhL5IHzLUdRS60O0bQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: CJXdUln9MbuankXtucO0PQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] 
 =?utf-8?q?windows_server_2012=EF=BC=9A_WDDMInterfa?=
 =?utf-8?q?ce=3A=3Aescape=3A=3Athis_should_never_happen=2E_Status_is_0xc00?=
 =?utf-8?q?0000d?=
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
Cc: Spice List <spice-devel@lists.freedesktop.org>,
 franklin zhou <codeit@live.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBPbiBXZWQsIEphbiAxNSwgMjAyMCBhdCA4OjEzIEFNIGZyYW5rbGluIHpob3UgPGNvZGVp
dEBsaXZlLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSSBmaW5kIHRoZSBydWxlc++8jCBpdCBubyBtYXR0
ZXIgd2l0aCB3aW5kb3dzIDIwMTIsIGl0IGRlcGVuZCBvbiB2aWRlbyB0eXBlLAo+ID4gIGlmIHR5
cGUgaXMgY2lycnVzLCAgb3IgdXNlIG52aWRpYSBHUFUgaW4gZGlzcGxheSBzZXR0aW5ncywgd2ls
bCBjYXVzZSB0aGlzCj4gPiAgcHJvYmxlbToKPiA+Cj4gPiAgICAgPHZpZGVvPgo+ID4gICAgICAg
PG1vZGVsIHR5cGU9J2NpcnJ1cycgdnJhbT0nMTYzODQnIGhlYWRzPScxJyBwcmltYXJ5PSd5ZXMn
Lz4KPiA+ICAgICAgIDxhZGRyZXNzIHR5cGU9J3BjaScgZG9tYWluPScweDAwMDAnIGJ1cz0nMHgw
MCcgc2xvdD0nMHgwMicKPiA+ICAgICAgIGZ1bmN0aW9uPScweDAnLz4KPiA+ICAgICA8L3ZpZGVv
Pgo+ID4KPiA+ICBEb2VzIFdERE1JbnRlcmZhY2U6OmVzY2FwZSBvbmx5IHN1cHBvcnQgcXhsIHR5
cGUgdmlkZW8gY2FyZD8KPiAKPiBZZXMsIHRoaXMgaXMgcHJpdmF0ZSBpbnRlcmZhY2UKPiAKCkkg
dGVzdGVkIGJyaWVmbHkgdGhlIGFnZW50IGNoYW5naW5nIHRoZSBWTSB0byBzdGFuZGFyZCBWR0Eg
YW5kIHRoZSBhZ2VudApkZXRlY3QgY29ycmVjdGx5IHRoZSBzaXR1YXRpb24gYW5kIGluc3RlYWQg
KGZvciB0aGUgc2NyZWVuIHNpemUpIGZpbmQgdGhlCmNsb3Nlc3QgcmVzb2x1dGlvbiBhbmQgc2V0
IHRoYXQgaW5zdGVhZCBvZiBzZW5kaW5nIGludmFsaWQgRXNjYXBlIGNvbW1hbmRzLgpJIHVzZWQg
V2luZG93cyA3LiBTbyB3aHkgdW5kZXIgV2luZG93cyAyMDEyIHRoZSBhZ2VudCBiZWhhdmUgdGhh
dCB3YXk/CkZyYW5rbGluLCB3aGF0IHZlcnNpb24gb2YgdGhlIGFnZW50IGFyZSB5b3UgdXNpbmc/
Cgo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBGcm9tOiBZdXJp
IEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Cj4gPiBTZW50OiBUdWVz
ZGF5LCBKYW51YXJ5IDE0LCAyMDIwIDEwOjA3IEFNCj4gPiBUbzogZnJhbmtsaW4gemhvdSA8Y29k
ZWl0QGxpdmUuY29tPgo+ID4gQ2M6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29t
PjsgU3BpY2UgTGlzdAo+ID4gPHNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4KPiA+
IFN1YmplY3Q6IFJlOiBbU3BpY2UtZGV2ZWxdIHdpbmRvd3Mgc2VydmVyIDIwMTLvvJogV0RETUlu
dGVyZmFjZTo6ZXNjYXBlOjp0aGlzCj4gPiBzaG91bGQgbmV2ZXIgaGFwcGVuLiBTdGF0dXMgaXMg
MHhjMDAwMDAwZAo+ID4KPiA+IFdoaWNoIFFYTCBkcml2ZXIgaXMgaW5zdGFsbGVkIG9uIDIwMTI6
IHF4bC5zeXMgZm9yIHhwL1dpbjcgb3IKPiA+IHF4bGRvZC5zeXMgZm9yIHdpbjgrPwo+ID4KPiA+
IE9uIFR1ZSwgSmFuIDE0LCAyMDIwIGF0IDExOjQzIEFNIEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xp
b0ByZWRoYXQuY29tPgo+ID4gd3JvdGU6Cj4gPiA+Cj4gPiA+Cj4gPiA+ID4gSW4gd2luZG93cyBz
ZXJ2ZXIgMjAxMiwgdGhlIGZvbGxvdyBsaW5lICIgc3RhdHVzID0KPiA+ID4gPiBfcGZuRXNjYXBl
KCZlc2NhcGVEYXRhKTsgIgo+ID4gPiA+IGFsd2F5cyBjYXVzZSBlcnJvciwKPiA+ID4gPiBzdGF0
dXMgaXM6IDB4YzAwMDAwMGQsIGVycm9yIG1lc3NhZ2UgaXM6ICJJTkZPOjoyMDIwLTAxLTE0Cj4g
PiA+ID4gMTY6NTg6MjMsMzg3OjpXRERNSW50ZXJmYWNlOjplc2NhcGU6OnRoaXMgc2hvdWxkIG5l
dmVyIGhhcHBlbi4gU3RhdHVzCj4gPiA+ID4gaXMKPiA+ID4gPiAweGMwMDAwMDBkIgo+ID4gPiA+
ID09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gPiA+ID4gYm9vbCBXRERNSW50ZXJmYWNlOjpl
c2NhcGUoTFBDVFNUUiBkZXZpY2VfbmFtZSwgdm9pZCogZGF0YSwgVUlOVAo+ID4gPiA+IHNpemVf
ZGF0YSkgewo+ID4gPiA+IC4uLi4uLi4KPiA+ID4KPiA+ID4gPiBzdGF0dXMgPSBfcGZuRXNjYXBl
KCZlc2NhcGVEYXRhKTsKPiA+ID4KPiA+ID4gPiBpZiAoIU5UX1NVQ0NFU1Moc3RhdHVzKSkgewo+
ID4gPiA+IHZkX3ByaW50ZigidGhpcyBzaG91bGQgbmV2ZXIgaGFwcGVuLiBTdGF0dXMgaXMgMHgl
bHgiLCBzdGF0dXMpOwo+ID4gPiA+IH07Cj4gPiA+Cj4gPiA+ID4gfQo+ID4gPiA+ID09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQo+ID4gPiA+IGlzIHRoaXMgYSBidWcgPwo+ID4gPgo+ID4g
PiBDb2RlIGlzIFNUQVRVU19JTlZBTElEX1BBUkFNRVRFUi4KPiA+ID4gSSBkb24ndCBzZWUgYW55
IHJlYXNvbiAoYmVzaWRlIGZyb20gZGV2aWNlX25hbWUpIGZvciB0aGlzIHJlc3VsdCBidXQKPiA+
ID4gbG9va3MgbGlrZSBhIGJ1ZyBpbmRlZWQuCj4gPiA+Cj4gPiA+IEZyZWRpYW5vCj4gPiA+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwK
