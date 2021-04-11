Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 299FC35B700
	for <lists+spice-devel@lfdr.de>; Sun, 11 Apr 2021 23:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6DF89E08;
	Sun, 11 Apr 2021 21:27:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 465 seconds by postgrey-1.36 at gabe;
 Sun, 11 Apr 2021 21:27:06 UTC
Received: from forward500o.mail.yandex.net (forward500o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::610])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4821889E08
 for <spice-devel@lists.freedesktop.org>; Sun, 11 Apr 2021 21:27:06 +0000 (UTC)
Received: from vla5-9129714d0767.qloud-c.yandex.net
 (vla5-9129714d0767.qloud-c.yandex.net
 [IPv6:2a02:6b8:c18:3609:0:640:9129:714d])
 by forward500o.mail.yandex.net (Yandex) with ESMTP id 838CC6005C;
 Mon, 12 Apr 2021 00:19:18 +0300 (MSK)
Received: from mail.yandex.ru (mail.yandex.ru [188.243.23.167])
 by vla5-9129714d0767.qloud-c.yandex.net (mxback/Yandex) with HTTP id
 EJTYaG3IX0U1-JHISbgPG; Mon, 12 Apr 2021 00:19:18 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1618175958; bh=BiySz+SNiPjXt+rXU2sd5ki+zNiiccCQFhWj9lAraOI=;
 h=Message-Id:Cc:Subject:In-Reply-To:Date:References:To:From;
 b=QhdBMIMurO++qvZZKcziw4IsPVDt3tq4W8nR/7locCGJX3/78vBlZFek/5O5Pi34I
 /QLMYNaXFkB84UrLdWmHpjNxfsY2I0iIRcCneLLNulRZ+NERZN2TQGpmFFej/l1IUA
 5N5F/zpq5ofYfttYY7vg9tUzSS/ORMArhI/nS4s8=
Authentication-Results: vla5-9129714d0767.qloud-c.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by vla3-3cc5bb1344f5.qloud-c.yandex.net with HTTP;
 Mon, 12 Apr 2021 00:19:17 +0300
From: Oleg Krutov <ole-krutov@yandex.ru>
To: Frediano Ziglio <freddy77@gmail.com>
In-Reply-To: <CAHt6W4dfhVrfKjCL7auv8+mJrJOLkwhn_oiNwGM4Wi79Ds-=jQ@mail.gmail.com>
References: <63dfcd57-5240-9400-b12d-3060da2048dd@robertbritton.com>
 <CAHt6W4dfhVrfKjCL7auv8+mJrJOLkwhn_oiNwGM4Wi79Ds-=jQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 12 Apr 2021 00:19:17 +0300
Message-Id: <28859511618134143@vla5-c7b28c6912c3.qloud-c.yandex.net>
Subject: Re: [Spice-devel] Helping with development...
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1443765853=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1443765853==
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

SkZZSSwgcmVjZW50bHkgYSBwcm9qZWN0IGNhbGxlZCB2Z3B1X3VubG9jayBoYXMgYXBwZWFyZWQs
IGl0IGFsbG93cyB2R1BVIGNyZWF0aW5nIG9uIGNoaXAtY29tcGF0aWJsZSBOVklESUEgY29uc3Vt
ZXItZ3JhZGUgKGkuZS4gc3Vic3RhbnRpYWxseSBtb3JlIGNoZWFwKSB2aWRlbyBjYXJkcy48ZGl2
PjxiciAvPjwvZGl2PjxkaXY+aHR0cHM6Ly9naXRodWIuY29tL0R1YWxDb2Rlci92Z3B1X3VubG9j
azxiciAvPjxiciAvPjwvZGl2PjE4OjIxLCAxMCDQsNC/0YDQtdC70Y8gMjAyMSDQsy4sIEZyZWRp
YW5vIFppZ2xpbyAmbHQ7ZnJlZGR5NzdAZ21haWwuY29tJmd0Ozo8YnIgLz48YmxvY2txdW90ZSBj
bGFzcz0iMjEwZTdhODQ4ZThmY2I0NXdtaS1xdW90ZSI+PHA+SWwgZ2lvcm5vIG1lciA3IGFwciAy
MDIxIGFsbGUgb3JlIDIwOjQ5IEJvYiBCcml0dG9uPGJyIC8+Jmx0OzxhIGhyZWY9Im1haWx0bzpi
b2JAcm9iZXJ0YnJpdHRvbi5jb20iPmJvYkByb2JlcnRicml0dG9uLmNvbTwvYT4mZ3Q7IGhhIHNj
cml0dG86PGJyIC8+PC9wPjxibG9ja3F1b3RlIGNsYXNzPSIyMTBlN2E4NDhlOGZjYjQ1d21pLXF1
b3RlIj48YnIgLz7CoEhpIFNwaWNlIHRlYW0sPGJyIC8+PGJyIC8+wqDCoMKgVGhhbmsgeW91IGZv
ciBhbGwgeW91ciBoYXJkIHdvcmsgY3JlYXRpbmcgU3BpY2UuPGJyIC8+PGJyIC8+wqDCoMKgSSdt
IHJ1bm5pbmcgYSBjb21wYW55IHdoZXJlIEkgcHJvdmlkZSB2aXJ0dWFsIGRlc2t0b3BzIHRvIG15
PGJyIC8+wqBjdXN0b21lcnMuIE1vc3Qgb2YgbXkgY3VzdG9tZXJzIHdhbnQgdGhlaXIgdmlydHVh
bCBkZXNrdG9wcyB0byBoYXZlPGJyIC8+wqBoYXJkd2FyZSBHUFUgYWNjZWxlcmF0aW9uIGZvciBz
bW9vdGggdmlkZW8gcGxheWJhY2ssIGdhbWVzLCBhbmQgc3VjaC4gU288YnIgLz7CoHRoZSBleHBl
cmllbmNlIHdvdWxkIGJlIG11Y2ggbW9yZSBsaWtlIGJlaW5nIG9uIGEgbmF0aXZlIG1hY2hpbmUu
PGJyIC8+PGJyIC8+wqDCoMKgSSd2ZSBsb29rZWQgYXQgbWFueSBkaWZmZXJlbnQgb3B0aW9ucyBv
dXQgdGhlcmUsIGFuZCB0aGVyZSByZWFsbHk8YnIgLz7CoGlzbid0IG9uZSB0aGF0IGZpdHMgdGhl
IGJpbGwuPGJyIC8+PGJyIC8+wqBJIGhhdmUgc29tZSBxdWVzdGlvbnMgZm9yIHlvdSBhbGwgb24g
aG93IEkgY2FuIHB1dCBteSByZXNvdXJjZXMgaW50bzxiciAvPsKgaGVscGluZyBzcGljZSBhZGQg
aGFyZHdhcmUgZW5jb2RlL2RlY29kZSB0byBpdCdzIHN0cmVhbWluZy48YnIgLz48YnIgLz7CoMKg
RnJvbSB3aGF0IEkndmUgcmVhZCwgaXQgc2VlbXMgdGhhdCBpdCdzIHBvc3NpYmxlIHRvIGFkZCBh
IHBsdWdpbiBzdWNoPGJyIC8+wqBhcyB2aXJnaWwgdG8gYWxsb3cgZm9yIDNkIGFjY2VsZXJhdGlv
bi4gV2hpbGUgdGhhdCBwcm9qZWN0IGlzIGFpbWluZyBhdDxiciAvPsKgY3JlYXRpbmcgYSBmdWxs
IHZpcnR1YWwgM2QgZ3JhcGhpY3MgZGV2aWNlLCBpcyBpdCBwb3NzaWJsZSBvciBtYXliZSBldmVu
PGJyIC8+wqBlYXNpZXIgdG8gY3JlYXRlIGEgcGx1Z2luIHRoYXQgZG9lcyBoYXJkd2FyZSBlbmNv
ZGUvZGVjb2RlIG9uIHRoZSBob3N0PGJyIC8+wqBncHUocyk/PGJyIC8+PGJyIC8+wqBBbmQgdGhh
dCBsZWFkcyBtZSB0byBteSBuZXh0IHF1ZXN0aW9uLCB3b3VsZCB0aGF0IGJlIHRoZSBiZXN0IHBs
YWNlIHRvPGJyIC8+wqBhZGQgaGFyZHdhcmUgYWNjZWxlcmF0aW9uPyBPciBzaG91bGQgdGhlIGZv
Y3VzIGJlIGVsc2V3aGVyZT88YnIgLz48YnIgLz7CoEkndmUgcGxheWVkIHdpdGggUGFyc2VjIHF1
aXRlIGEgYml0LCBhbmQgaXQncyBzdHJlYW1pbmcgYWJpbGl0aWVzIGFyZTxiciAvPsKgYW1hemlu
ZywgYWxsb3dpbmcgZm9yIDNkIGdhbWVzIHRvIGJlIHBsYXllZCByZW1vdGVseSB3aXRoIHZlcnkg
bGl0dGxlPGJyIC8+wqBsYXRlbmN5LjxiciAvPjxiciAvPsKgT2J2aW91c2x5IG5vdGhpbmcgaGVy
ZSBpcyBzaW1wbGUsIGJ1dCBJJ2QgbGlrZSB0byBnZXQgbXkgZGV2ZWxvcGVyPGJyIC8+wqByZXNv
dXJjZXMgYWltZWQgaW4gdGhlIHJpZ2h0IHBsYWNlLCBhbmQgYW55IHRob3VnaHRzL2ZlZWRiYWNr
IGZyb20geW91cjxiciAvPsKgdGVhbSB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLjxiciAv
PjxiciAvPsKgVGhhbmtzIGluIGFkdmFuY2UsIGFuZCBJIGxvb2sgZm9yd2FyZCB0byBoYXZpbmcg
bXkgdGVhbSBoZWxwIHdpdGggdGhlPGJyIC8+wqBwcm9qZWN0LjxiciAvPjxiciAvPsKgQmVzdCw8
YnIgLz48YnIgLz7CoC0gQm9iPGJyIC8+PGJyIC8+PC9ibG9ja3F1b3RlPjxwPjxiciAvPkhpIEJv
Yiw8YnIgLz7CoMKgwqB0aGF0IHdvdWxkIGJlIHJlYWxseSBncmVhdC48YnIgLz48YnIgLz5JIGFn
cmVlLCBub3RoaW5nIGhlcmUgaXMgc2ltcGxlLjxiciAvPjxiciAvPk9uZSBxdWVzdGlvbiBJIHdv
dWxkIGFzayBmaXJzdCBpcyBhYm91dCB0aGUga2luZCBvZiBkZXNrdG9wL2d1ZXN0cyB5b3UgbmVl
ZC48YnIgLz5UaGUgcmVhc29uIGlzIHRoYXQgbWFpbmx5IFZpcmdpbCByZXF1aXJlcyBndWVzdCBk
cml2ZXJzIHRvIHN1cHBvcnQgM0QuPGJyIC8+SWYgeW91IGFyZSBwbGFubmluZyB0byBzdXBwb3J0
IFdpbmRvd3M8YnIgLz5vbmUgdGhpbmcgdG8gZGV2ZWxvcCBpcyB0aGUgR1BVIGRyaXZlciBmb3Ig
V2luZG93cy4gQXQgdGhlIG1vbWVudDxiciAvPnRoZXJlIGlzbid0IG9uZSBhbmQgaXQncyBub3Qg
ZWFzeSB0byB3cml0ZTxiciAvPm9uZSBzbyBtYXliZSB5b3Ugd29uJ3Qgd2FudCB0byBnbyB0aGF0
IHdheS48YnIgLz48YnIgLz5TZWNvbmQgcXVlc3Rpb24gaXMgYWJvdXQgc2NhbGFiaWxpdHkgYW5k
IHBlcmZvcm1hbmNlIHlvdSBuZWVkLjxiciAvPklmIHlvdSBuZWVkIGhpZ2ggZW5kIHBlcmZvcm1h
bmNlIGFuZCBtYW55IFZNIG1heWJlIHlvdSB3YW50IHRvIHBvaW50PGJyIC8+dG8gTnZpZGlhIEgv
VyBzdXBwb3J0IG9yPGJyIC8+SW50ZWwgR1ZULWcgc3VwcG9ydC4gRmlyc3Qgb2ZmZXJzIGhpZ2gg
cGVyZm9ybWFuY2UgKGFuZCBjb3N0KSBhbmQ8YnIgLz5yZWxhdGl2ZSBnb29kIHNjYWxhYmlsaXR5
IChsaWtlIDQvOCBWTXM8YnIgLz5vbiBhIHNpbmdsZSBob3N0KSwgc2Vjb25kIGxlc3Mgc2NhbGFi
aWxpdHkgYW5kIHBlcmZvcm1hbmNlIGJ1dCBjaGVhcGVyPGJyIC8+KGJhc2ljYWxseSBtb3N0IElu
dGVsIEdQVSB3aWxsPGJyIC8+d29yaykuIEFsbCB0aGVzZSBzb2x1dGlvbnMgYXJlIGJldHRlciBy
ZW1vdGVkIGZyb20gdGhlIGNsaWVudCBhbmQ8YnIgLz50aGVyZSBhcmUgcHJvYmFibHkgYSBsb3Qg
b2YgYWxyZWFkeTxiciAvPm1hZGUgc29mdHdhcmUgZG9pbmcgdGhhdCBvdGhlciB0aGFuIFNQSUNF
LiBJZiB5b3Ugd2FudCB0byBkbyB0aGlzIHdpdGg8YnIgLz5TUElDRSB0aGUgcm91dGUgaXMgZXh0
ZW5kaW5nPGJyIC8+dGhlIHN0cmVhbWluZyBhZ2VudCBvbiBTUElDRS48YnIgLz48YnIgLz5TYWlk
IHRoYXQgeW91IGRvbid0IHdhbnQgV2luZG93cyAob3IgeW91IGFyZSB3aWxsaW5nIHRvIHdyaXRl
IFZpcmdpbDxiciAvPmRyaXZlciBmb3IgV2luZG93cy4uLiB0aGF0IHdvdWxkPGJyIC8+YmUgcmVh
bGx5IGFwcHJlY2lhdGVkISkgYnV0IGp1c3QgTGludXggZGVza3RvcCBhbmQgeW91IHByZWZlcjxi
ciAvPnNjYWxhYmlsaXR5L2Nvc3QgYXQgdGhlIGV4cGVuc2Ugb2YgcGVyZm9ybWFuY2U8YnIgLz5J
IHdvdWxkIHNheSBTUElDRSBpcyBhIGdvb2Qgc29sdXRpb24uIFFlbXUgdXNlcyB2aXJnbC1yZW5k
ZXJlciBmb3IgM0Q8YnIgLz5mcm9tIHRoZSBndWVzdHMgYW5kIHBhc3NlcyB0bzxiciAvPlNQSUNF
IHRoZSAiZnJhbWVzIiByZWFkeSAoYWxtb3N0ISkgdG8gYmUgcHJvY2Vzc2VkIGFuZCBzdHJlYW1l
ZC4gSGVyZTxiciAvPndvdWxkIGNvbWUgdGhlIEgvVyBlbmNvZGUvZGVjb2RlLjxiciAvPjxiciAv
PlJlZ2FyZHMsPGJyIC8+wqDCoEZyZWRpYW5vPGJyIC8+X19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX188YnIgLz5TcGljZS1kZXZlbCBtYWlsaW5nIGxpc3Q8YnIg
Lz48YSBocmVmPSJtYWlsdG86U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIj5TcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc8L2E+PGJyIC8+PGEgaHJlZj0iaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbCI+aHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbDwvYT48
YnIgLz48L3A+PC9ibG9ja3F1b3RlPjxiciAvPjxiciAvPi0tIDxiciAvPtCe0YLQv9GA0LDQstC7
0LXQvdC+INC40Lcg0LzQvtCx0LjQu9GM0L3QvtCz0L4g0L/RgNC40LvQvtC20LXQvdC40Y8g0K/Q
vdC00LXQutGBLtCf0L7Rh9GC0Ys=

--===============1443765853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1443765853==--
