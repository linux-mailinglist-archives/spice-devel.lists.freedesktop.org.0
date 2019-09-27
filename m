Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0117DBFFFE
	for <lists+spice-devel@lfdr.de>; Fri, 27 Sep 2019 09:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 299F66EE6A;
	Fri, 27 Sep 2019 07:26:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail1.bemta23.messagelabs.com (mail1.bemta23.messagelabs.com
 [67.219.246.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E2B6EE47
 for <spice-devel@lists.freedesktop.org>; Fri, 27 Sep 2019 03:58:09 +0000 (UTC)
Received: from [67.219.246.99] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-4.bemta.az-b.us-east-1.aws.symcld.net id 23/C2-25788-FC88D8D5;
 Fri, 27 Sep 2019 03:58:07 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrJKsWRWlGSWpSXmKPExsVySpdNU/d8R2+
 swb5J8hbrN81ntlizdh+bA5PH/e7jTB7v911lC2CKYs3MS8qvSGDNuP//M3PBb46K64/OszUw
 3mfvYuTiEBLYyigxbd1xJghnC6PEk53n2CCcg4wSs57sZuxi5OBgE9CVmDo3tYuRk0NEQF2ib
 +YyVhCbWcBb4vWuE4wgtrBAvkTTxIWsEDUFElt2HICyrSSmLLnLDGKzCKhKfL12gx3E5hVwl7
 jw9ClYr5BAscSDa3/ZQVZxCphLTO7RAwkzCohJfD+1hglilbjErSfzwWwJAQGJJXvOM0PYohI
 vH/9jhbANJLYu3ccCYStIrOxuYIPo1ZFYsPsTlK0tsWzha2aIEwQlTs58wgJxgrLEsimH2Ccw
 is9Csm4WkvZZSNpnIWlfwMiyitEsqSgzPaMkNzEzR9fQwEDX0NBI11DXyNRYL7FKN0mvtFg3N
 bG4RNdQL7G8WK+4Mjc5J0UvL7VkEyMwHlMKGP/uYDw9643eIUZJDiYlUd7a1N5YIb6k/JTKjM
 TijPii0pzU4kOMGhwcAlcOHpnNKMWSl5+XqiTB+7URqE6wKDU9tSItMweYMmBKJTh4lER41YF
 pQ4i3uCAxtzgzHSJ1itGeY8LLuYuYOXYenQckD4LJF1cXL2IWApsqJc6b1A7UJgDSllGaBzcU
 luIuMcpKCfMyMjAwCPEUpBblZpagyr9iFOdgVBLm9QBZzpOZVwK3+xXQWUxAZ+Xld4OcVZKIk
 JJqYGLYY/r11p4zf/9JfH828+r+ytgjh1xNvp8wTzv12rum7bpO5DJFm/iCjOyKGx0V+jYzJ8
 85u2zRWvYX7EplOx/G/Xa3qs7VV0pR38iZkSIfbbK2IVdTWZTNYdo9Jfav3Dbrj6pp/Oyefep
 20oO8iv3v5uxKmxnDf/WPtMa9Lw8vWr+8+rDNu3zX2Q+nOVmPm0m5Z+ZdciyM2BFSFr9AgcFk
 bnUR40yzwnmRJy5e/vL5vZrBu9e+T53flBUtTE2XK+JbJbT5wqyQIx11C0T8/+wQ/RKz1Vvxn
 a73TaFVXGuTWoStixsK1zgeK97q8fxUuH+i7LY5+g5NbPvkm7XU3S6vnn6G84WWSdGs1hlhYk
 osxRmJhlrMRcWJAD2iTKLsAwAA
X-Env-Sender: Nupur.Priya@harman.com
X-Msg-Ref: server-9.tower-383.messagelabs.com!1569556685!134909!1
X-Originating-IP: [202.45.6.41]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 6469 invoked from network); 27 Sep 2019 03:58:07 -0000
Received: from unknown (HELO HIBDWSMB09.ad.harman.com) (202.45.6.41)
 by server-9.tower-383.messagelabs.com with ECDHE-RSA-AES256-SHA384 encrypted
 SMTP; 27 Sep 2019 03:58:07 -0000
Received: from HIBDWSMB07.ad.harman.com (10.99.236.97) by
 HIBDWSMB09.ad.harman.com (10.99.236.103) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Fri, 27 Sep 2019 09:28:05 +0530
Received: from HIBDWSMB01.ad.harman.com (10.99.236.91) by
 HIBDWSMB07.ad.harman.com (10.99.236.97) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Fri, 27 Sep 2019 09:28:04 +0530
Received: from HIBDWSMB01.ad.harman.com ([fe80::bdbd:eea7:1eae:8cb7]) by
 HIBDWSMB01.ad.harman.com ([fe80::bdbd:eea7:1eae:8cb7%16]) with mapi id
 15.00.1365.000; Fri, 27 Sep 2019 09:28:04 +0530
From: "Priya, Nupur" <Nupur.Priya@harman.com>
To: Victor Toso <victortoso@redhat.com>
Thread-Topic: [EXTERNAL] Re: [Spice-devel] Dependency failed for Activation
 socket for spice guest agent daemon
Thread-Index: AdV0XGtcGeOWsKqrQ2u63y/rg67YUAAF+6CAABzGnMA=
Date: Fri, 27 Sep 2019 03:58:03 +0000
Message-ID: <4155736dea43432a99cf870fe7927b94@HIBDWSMB01.ad.harman.com>
References: <affddb8935464a82ab3623f0bd2a289e@HIBDWSMB01.ad.harman.com>
 <20190926194155.4ts2hmhgtfcwhanf@wingsuit>
In-Reply-To: <20190926194155.4ts2hmhgtfcwhanf@wingsuit>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 27 Sep 2019 07:26:31 +0000
Subject: Re: [Spice-devel] [EXTERNAL] Re: Dependency failed for Activation
 socket for spice guest agent daemon
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SSBhbSBub3QgdXNpbmcgc3BpY2UtdmRhZ2VudCwgaW4gbXkgSVNPLCBldmVuIHRob3VnaCBnZXR0
aW5nIGJlbG93IGRlcGVuZGVuY3kgZXJyb3IgZHVyaW5nIGluc3RhbGxhdGlvbiBpdHNlbGYuCgoK
T24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgMTE6MjQ6NDVBTSArMDAwMCwgUHJpeWEsIE51cHVyIHdy
b3RlOgo+IEhpIEFsbCwKPiAKPiBUaGUgZml4IHByb3ZpZGVkIGF0IGxpbmsgaHR0cHM6Ly9idWd6
aWxsYS5yZWRoYXQuY29tL3Nob3dfYnVnLmNnaT9pZD0xNTQ1MjEyLCBkb2VzIG5vdCB3b3JrIG9u
IGJvb3QgbWVzc2FnZXMuCj4gQ291bGQgeW91IHBsZWFzZSBoZWxwIG1lIHVuZGVyc3RhbmQgaG93
LCB0aGlzIHdhcm5pbmcgY2FuIGJlIHJlbW92ZWQgCj4gZnJvbSBib290aW5nIGNvbnNvbGUuIEkg
dHJpZWQgZmV3IHRoaW5ncywgbGlrZSBjcmVhdGluZyBpbml0cmFtZnMgYW5kIAo+IHNxdWFzaC5p
bWcgd2l0aG91dCB0aGVzZSBzcGljZS12ZGFnZW50IGluc3RhbGxlZCBvbiB0aGUgc3lzdGVtLiBC
dXQgCj4gbm9uZSBvZiB0aGF0IHdvcmtlZC4gIFBsZWFzZSBoZWxwIG1lIHdpdGggdGhpcy4KCldo
aWNoIHZlcnNpb24gb2YgdGhlIGFnZW50IGFyZSB5b3UgcnVubmluZz8KQUZBSVIsIHRoaXMgc2hv
dWxkIGJlIGZpeGVkIGFsc28gYnkKCiAgICBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
c3BpY2UvbGludXgvdmRfYWdlbnQvY29tbWl0LzU2ZDUwZDIxMjIzZTZkOWFlYzRhNjg0MDBkOGUz
NmM1OTUzYmEzY2MKCihub3Qgb25seSB0aGUgY29tbWl0IG1lbnRpb25lZCBpbiByaGJ6IzE1NDUy
MTIsIHdoaWNoIGlzOgoKICAgIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9s
aW51eC92ZF9hZ2VudC9jb21taXQvYjA3NDIwZWVhMGFhYmExYjlhMzc1ZWFjMDNjMWRiYjU2NTI4
N2YxMQopCgpDaGVlcnMsCgo+IAo+IFJlZ2FyZHMsCj4gTnVwdXIKCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
