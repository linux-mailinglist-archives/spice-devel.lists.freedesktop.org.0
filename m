Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D09BF1EBD59
	for <lists+spice-devel@lfdr.de>; Tue,  2 Jun 2020 15:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C73806E3C7;
	Tue,  2 Jun 2020 13:50:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from forward501p.mail.yandex.net (forward501p.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75F5D6E3C7
 for <spice-devel@lists.freedesktop.org>; Tue,  2 Jun 2020 13:50:05 +0000 (UTC)
Received: from mxback1j.mail.yandex.net (mxback1j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::10a])
 by forward501p.mail.yandex.net (Yandex) with ESMTP id F11A33500BE6;
 Tue,  2 Jun 2020 16:50:02 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback1j.mail.yandex.net (mxback/Yandex) with ESMTP id uzIl4BNelc-o2aGPWlm; 
 Tue, 02 Jun 2020 16:50:02 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1591105802; bh=Bi04Tvv+P9JlSY/SazEmMWvMdMSNsasQ2YnNJFO4kv8=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=V65YG1TEJuuRdw4Gct+G47rThCMQlgNdrnzsGxgyXzLMv14iskIMjLBnQ1nEPduC4
 Gdn+SaMWMZAxG1V7wCYOgDTjoayxPvYp8TunCXiGS1cCrCQjmB7gVmx3auq7+z4k66
 aqqokAhd9VMS0XY2vMJkgZ+T102RaUyvUYfAkYdQ=
Authentication-Results: mxback1j.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by myt5-7210d748eb79.qloud-c.yandex.net with HTTP;
 Tue, 02 Jun 2020 16:50:01 +0300
From: ole-krutov@yandex.ru
To: "uril@redhat.com" <uril@redhat.com>, Frediano Ziglio <fziglio@redhat.com>
In-Reply-To: <c663aa55-9b44-6211-6898-e4930b8dae24@redhat.com>
References: <2062121591020278@mail.yandex.ru>
 <191822355.28679337.1591021618597.JavaMail.zimbra@redhat.com>
 <1516151591025233@mail.yandex.ru>
 <c663aa55-9b44-6211-6898-e4930b8dae24@redhat.com>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Tue, 02 Jun 2020 16:50:01 +0300
Message-Id: <118741591105408@mail.yandex.ru>
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0940961577=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0940961577==
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

PGRpdj5IaSw8L2Rpdj48ZGl2PsKgPC9kaXY+PGRpdj5ObywgSSBkbyBub3QgdXNlIHNwaWNlLXN0
cmVhbWluZy1hZ2VudCB3aXRoIHdpbmRvd3MgVk0gYXQgYWxsLiDCoDwvZGl2PjxkaXY+wqA8L2Rp
dj48ZGl2PjAxLjA2LjIwMjAsIDIyOjI0LCAiVXJpIEx1YmxpbiIgJmx0O3VyaWxAcmVkaGF0LmNv
bSZndDs6PC9kaXY+PGJsb2NrcXVvdGU+PHA+T24gNi8xLzIwIDY6NTkgUE0sIDxhIGhyZWY9Im1h
aWx0bzpvbGUta3J1dG92QHlhbmRleC5ydSI+b2xlLWtydXRvdkB5YW5kZXgucnU8L2E+IHdyb3Rl
OjwvcD48YmxvY2txdW90ZT7CoE5vdyBJIGhhdmUgdHJpZWQgZGlmZmVyZW50IGNvbWJpbmF0aW9u
cyBvZiB2ZC1hZ2VudCBzdGF0ZSBhbmQgbW91c2U8YnIgLz7CoGN1cnNvciB0eXBlLiBJbiBubyBj
YXNlIG1vdXNlIGN1cnNvciB3YXMgdmlzaWJsZSBvbiBudmlkaWEgZGlzcGxheTxiciAvPsKgd2lu
ZG93LiBXaXRoIGR1YWwgZGlzcGxheSwgcXhsK252aWRpYSwgc3RvcHBpbmcgdmQtYWdlbnQgbWFk
ZSBjdXJzb3I8YnIgLz7CoHZpc2libGUgb24gcXhsIHdpbmRvdy4gUmVhY3Rpb24gdG8gbW91c2Ug
ZXZlbnRzIHdhcyBzZWVuIG9uIG52aWRpYTxiciAvPsKgd2luZG93IHRvbywgYnV0IHdpdGggaW52
aXNpYmxlIG1vdXNlIGN1cnNvci48L2Jsb2NrcXVvdGU+PHA+PGJyIC8+PGJyIC8+SGksPGJyIC8+
PGJyIC8+SSBhc3N1bWUgeW91IGhhdmUgeW91ciBvd24gc3BpY2Utc3RyZWFtaW5nLWFnZW50IHBs
dWdpbi48YnIgLz48YnIgLz5Eb2VzIGl0IHN1cHBvcnQgdGhlIGRpc3BsYXlfaW5mbyBpbnRlcmZh
Y2UgPzxiciAvPjxiciAvPlVyaTxiciAvPsKgPC9wPjxibG9ja3F1b3RlPsKgMDEuMDYuMjAyMCwg
MTc6MjcsICJGcmVkaWFubyBaaWdsaW8iICZsdDs8YSBocmVmPSJtYWlsdG86ZnppZ2xpb0ByZWRo
YXQuY29tIj5memlnbGlvQHJlZGhhdC5jb208L2E+Jmd0Ozo8YnIgLz48YnIgLz7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgSGkgYWxsLDxiciAvPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3aGVuIGp1c3Qg
cXhsIGFkYXB0ZXIgaXMgYXR0YWNoZWQgdG8gVk0gYWxsIHdvcmtzIHdlbGwuIEJ1dDxiciAvPsKg
wqDCoMKgwqDCoMKgwqDCoHdoZW4gTnZpZGlhIEdSSUQ8YnIgLz7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaW5zdGFuY2UgaXMgYXR0YWNoZWQgYW5kIGl0cyBkcml2ZXJzIGFyZSBydW5uaW5nLCBtb3Vz
ZSBjdXJzb3I8YnIgLz7CoMKgwqDCoMKgwqDCoMKgwqBpcyBuZXZlcjxiciAvPsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBzaG93biBvbiBpdHMgZGlzcGxheSB3aW5kb3cuIFNvbWV0aW1lcyBpdCdzIGp1
c3QgaW52aXNpYmxlIGJ1dDxiciAvPsKgwqDCoMKgwqDCoMKgwqDCoGFjdGl2ZSBhbmQ8YnIgLz7C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVhY3RpbmcgdG8gbW91c2UgbW92ZW1lbnRzLCBjbGlja3Mg
YW5kIHdoZWVsIHNjcm9sbGluZyw8YnIgLz7CoMKgwqDCoMKgwqDCoMKgwqBzb21ldGltZXMgaXQn
czxiciAvPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0b3RhbGx5IG1pc3NpbmcuIFRoaXMgYmVoYXZp
b3VyIGlzIGEgYml0IGRlcGVuZGVudCBvZiBpczxiciAvPsKgwqDCoMKgwqDCoMKgwqDCoE52aWRp
YSBhZGFwdGVyPGJyIC8+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFsb25lIG9yIHRvZ2V0aGVyIHdp
dGggcXhsLiBKdXN0IHNvbWV0aW1lcyBtb3VzZSBjdXJzb3IgaXM8YnIgLz7CoMKgwqDCoMKgwqDC
oMKgwqB2aXNpYmxlIG9uIHF4bDxiciAvPsKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkaXNwbGF5IGJ1
dCBpdCdzIHZlcnkgdW5zdGFibGUgYW5kIHRvdGFsbHkgdW51c2FibGUuIFNpbWlsYXI8YnIgLz7C
oMKgwqDCoMKgwqDCoMKgwqBiZWhhdmlvdXIgaXM8YnIgLz7CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
dW5kZXIgbGludXggVk0gdG9vLiBJcyBpdCBub3JtYWwgIndvbid0IGZpeCIgc3RhdGUsIG9yIGNh
biBJPGJyIC8+wqDCoMKgwqDCoMKgwqDCoMKgcHJvdmlkZSBzb21lPGJyIC8+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGFkZGl0aW9uYWwgaW5mbz8gV2luZG93cyBoYXMgbGF0ZXN0IHZkLWFnZW50IGFu
ZCBzcGljZS1hZ2VudDxiciAvPsKgwqDCoMKgwqDCoMKgwqDCoGluc3RhbGxlZC48YnIgLz48YnIg
Lz48YnIgLz7CoMKgwqDCoMKgSGksPGJyIC8+wqDCoMKgwqDCoMKgwqDCoHJlY2VudGx5IHdlIGdv
dCBzaW1pbGFyIHJlcG9ydHMuIENhbiB5b3UgdHJ5IHRvIHNlZSB3aGF0J3MgaGFwcGVuIGlmPGJy
IC8+wqDCoMKgwqDCoHlvdSBkaXNhYmxlIHRoZSBhZ2VudD88YnIgLz48YnIgLz7CoMKgwqDCoMKg
SXQgc2VlbXMgdGhhdCBpbiB0aGVzZSBjb25kaXRpb25zIHRoZSBhZ2VudCBpcyBub3QgYWJsZSB0
byBoYW5kbGU8YnIgLz7CoMKgwqDCoMKgdGhlIG1vdXNlPGJyIC8+wqDCoMKgwqDCoHNvIG1vdXNl
IGV2ZW50cyBhcmUgImxvc3QiLjxiciAvPjxiciAvPsKgwqDCoMKgwqBBbm90aGVyIHRlc3Qgd291
bGQgeW91IGNvdWxkIGRvIGlzIHRvIHVzZSB0aGUgInNwaWN5IiB1dGlsaXR5LiBUaGlzPGJyIC8+
wqDCoMKgwqDCoHV0aWxpdHk8YnIgLz7CoMKgwqDCoMKgaGFzIGFuIG9wdGlvbiB0byBzd2l0Y2gg
bWFudWFsbHkgdGhlIG1vdXNlIG1vZGUgKHNlcnZlci9jbGllbnQpLiBJdDxiciAvPsKgwqDCoMKg
wqB3b3VsZCBiZTxiciAvPsKgwqDCoMKgwqBoZWxwZnVsIHRvIHVuZGVyc3RhbmQgZGlmZmVyZW50
IGJlaGF2aW91ciB1c2luZyB0aGUgMiBtb2Rlcy48YnIgLz48YnIgLz7CoMKgwqDCoMKgRnJlZGlh
bm88YnIgLz48YnIgLz48YnIgLz7CoF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fPGJyIC8+wqBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3Q8YnIgLz7CoDxhIGhy
ZWY9Im1haWx0bzpTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmciPlNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzwvYT48YnIgLz7CoDxhIGhyZWY9Imh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwiPmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw8L2E+PGJyIC8+
wqA8L2Jsb2NrcXVvdGU+PHA+wqA8L3A+PC9ibG9ja3F1b3RlPg==

--===============0940961577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0940961577==--
