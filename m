Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A40A1F834D
	for <lists+spice-devel@lfdr.de>; Sat, 13 Jun 2020 14:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB5F6E06D;
	Sat, 13 Jun 2020 12:52:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from m1548.mail.126.com (m1548.mail.126.com [220.181.15.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EFA96E3E5
 for <spice-devel@lists.freedesktop.org>; Sat, 13 Jun 2020 12:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=xNzy+
 JShHGW8UAUcBhTdfzm8ucxlWyffeJiPa9h8McU=; b=OxYB/wEGxoLDwSX7/7tZN
 7gEY1tN35yyg6BBtwdhSjvsvrbD01gN00n7aX0YqWo2HnK3ffgoEc9pJR7GAAsHZ
 eSuFSembuoMYDkQhAAh29v4u3VDGYHC8Vq53tRAG7Rrqg92D8Cm630wNvjPdPSdl
 s7CM42uNYDRjfCWvuI6Xyc=
Received: from qishiyexu2$126.com ( [221.4.219.18] ) by ajax-webmail-wmsvr48
 (Coremail) ; Sat, 13 Jun 2020 20:52:26 +0800 (CST)
X-Originating-IP: [221.4.219.18]
Date: Sat, 13 Jun 2020 20:52:26 +0800 (CST)
From: =?gbk?B?s8Ke3Q==?= <qishiyexu2@126.com>
To: "Frediano Ziglio" <fziglio@redhat.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn 126com
In-Reply-To: <1346340456.30483558.1592030402447.JavaMail.zimbra@redhat.com>
References: <16656b4b.5cd5.172a7a33052.Coremail.qishiyexu2@126.com>
 <CAJ+F1CLYf0xoQ-UraTQzPoGk9Vpvt_=yoyW+ENZHdznf3kmLqA@mail.gmail.com>
 <2bd8d90a.9bae.172a91d8976.Coremail.qishiyexu2@126.com>
 <1346340456.30483558.1592030402447.JavaMail.zimbra@redhat.com>
X-CM-CTRLDATA: p4BUcmZvb3Rlcl9odG09NTgxNjo1Ng==
MIME-Version: 1.0
Message-ID: <4f957457.5ffa.172adbd0a16.Coremail.qishiyexu2@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: MMqowAB3y94LzORe0rpfAA--.6729W
X-CM-SenderInfo: xtlvxxp1h03ja6rslhhfrp/1tbiEAtCKFpEAUkq7wAAsi
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Re: [Spice-devel] Is it possible to put spice channels into
 different threads?
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
Content-Type: multipart/mixed; boundary="===============2039148102=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============2039148102==
Content-Type: multipart/alternative; 
	boundary="----=_Part_83270_1795175369.1592052746773"

------=_Part_83270_1795175369.1592052746773
Content-Type: text/plain; charset=gbk
Content-Transfer-Encoding: base64

SGkKCgpUaGFua3MgYSBsb3QsIHRoYXQgaW5mb3JtYXRpb24gaXMgdmVyeSBoZWxwZnVsLCBJIHdp
bGwgdHJ5IHRoYXQuCgoKQlIKRG9uCgoKCgoKCgrU2iAyMDIwLTA2LTEzIDE0OjQwOjAyo6wiRnJl
ZGlhbm8gWmlnbGlvIiA8ZnppZ2xpb0ByZWRoYXQuY29tPiDQtLXAo7oKCkhpLAogIHRoZSBwYXR0
ZXJuIHVzZWQgaW4gc3BpY2UtZ3RrIGlzIGNhbGxlZCBjb29wZXJhdGl2ZSBtdWx0aXRhc2tpbmcg
KHNlZSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9Db29wZXJhdGl2ZV9tdWx0aXRhc2tp
bmcpLCBpZiB5b3UgYWRkIGNvZGUgdGhhdCBpcyBub3QgY29vcGVyYXRpdmUgeW91IGdldCB3aGF0
IHlvdSBkZXNjcmliZWQuIFVzZSBjb3JvdXRpbmUgZnVuY3Rpb25zIHRvIHJlYWQgcmVtb3RlIGRh
dGEgc28gdGhlIHJlYWQgd29uJ3Qgc3RvcCBvdGhlciBjb2RlLiBJZiB5b3UgbmVlZCB0byBydW4g
ZXhwZW5zaXZlIG9yIGJsb2NraW5nIGNvZGUgaXQncyBhIGdvb2QgaWRlYSB0byBydW4gaXQgaW4g
YW5vdGhlciB0aHJlYWQgcmVtb3ZpbmcgdGhlIGJsb2NrYWdlLgoKCgpGcmVkaWFubwoKCgoKCgoK
SGkgCgoKSGVyZSBpcyBteSBleHBlcmltZW50OgpJIGNyZWF0ZWQgYSBuZXcgcG9ydC1jaGFubmVs
IHRvIHRyYW5zZmVyIGRhdGEgYmV0d2VlbiB2ZGFnZW50IGFuZCBzcGljZS1ndGsuIEkgdXNlZCBh
IHdoaWxlIGxvb3AgdG8gc2VuZCAya2IgZGF0YSB0byBndGssIGd0ayByZWNlaXZlZCBhbmQgZHJv
cCB0aGUgZGF0YS4gSW4gdGhlIG1lYW4gdGltZSBJIHVzZWQgYSB0aW1lcigxbXMpIHRvIHNlbmQg
MmtiIGRhdGEgdG8gdmRhZ2VudC4gClN0cmFuZ2UgdGhpbmcgaXMgdGhhdCBndGsgd2lsbCBjb250
aW51YWxseSByZWNlaXZlIGRhdGEgZm9yIGEgd2hpbGUoMTBzZWNzIC0gNzBzZWNzKSB0aGVuIHNl
bmQgYSB3aG9sZSBidW5jaCBvZiBkYXRhIHRvIHZkYWdlbnQuIFdoZW4gcmVjZWl2aW5nIGRhdGEs
IHNlbmQgZGF0YSB3aWxsIGJlIGFkZGVkIHRvIHRjcCBidWZmZXIgYnV0IHdpbGwgbm90IGJlIHNl
bnQgb3V0LgoKClNvIEkgdGhpbmsgc2VuZCBldmVudCB3aWxsIGJlIGFmZmVjdGVkIGJ5IHJlY2Vp
dmUgZXZlbnQsIHRoZW4gSSBndWVzcyB1c2luZyBkaWZmZXJlbnQgdGhyZWFkIHdvdWxkIGhlbHAu
IApDb3VsZCB5b3UgcGxlYXNlIGNvcnJlY3QgbWUgaWYgSaGvbSB3cm9uZz8KCgpCUgpEb24KCgoK
CgoKCgoKCgoKCgoKCtTaIDIwMjAtMDYtMTIgMjA6MDM6MzCjrCJNYXJjLUFuZHKopiBMdXJlYXUi
IDxtYXJjYW5kcmUubHVyZWF1QGdtYWlsLmNvbT4g0LS1wKO6CgpIaQoKCgpPbiBGcmksIEp1biAx
MiwgMjAyMCBhdCAxMjo1NyBQTSCzwp7dIDxxaXNoaXlleHUyQDEyNi5jb20+IHdyb3RlOgoKSGks
CgoKU3BpY2UtZ3RrIGlzIG5vdyB1c2luZyBjby1yb3V0aW5lIHRvIGhhbmRsZSBkaWZmZXJlbnQg
Y2hhbm5lbCBjb25uZWN0aW9ucy4gV2hlbiBhIGNoYW5uZWwgaXMgaGFuZGxpbmcgZGF0YSwgb3Ro
ZXIgY2hhbm5lbHMgd291bGQgaGF2ZSB0byB3YWl0LCByYXRoZXIgdGhhbiBoYW5kbGluZyBzeW5j
aHJvbm91c2x5LiAgVGhhdCB3b3VsZCBicmluZyB1cyBmb2xsb3dpbmcgaXNzdWVzOgogMS4gSWYg
c29tZSBsZXNzIGltcG9ydGFudCBjaGFubmVscyAobGlrZSB1c2IgY2hhbm5lbHMpIGFyZSB0cmFu
c2ZlcmluZyBiaWcgZGF0YSwgaW1wb3J0YW50IGNoYW5uZWxzIChtYWluLWNoYW5uZWwsIGRpc3Bs
YXktY2hhbm5lbCxpbnB1dC1jaGFubmVsKSB3aWxsIGJlIGFmZmVjdGVkLiAgCiAyLiBXaGVuIHJl
Y2VpdmluZyBiaWcgZGF0YSBsaWtlIGZpbGUgdHJhbnNmZXJpbmcoR19JT19JTiksIHNlbmQgZXZl
bnQgKEdfSU9fT1VUKSB3aWxsIG5vdCBiZSB0cmlnZ2VyZWQuCiAzLiBGbG93IGNvbnRyb2wgYmV0
d2VlbiBkaWZmZXJlbnQgY2hhbm5lbHMgd2lsbCBiZSBoYXJkIHRvIGRvLiAKCgpJcyBpcyBwb3Nz
aWJsZShhbmQgbWFrZSBzZW5zZSkgdG8gcHV0IGNoYW5uZWxzIGludG8gZGlmZmVyZW50IHRocmVh
ZHMgc28gdGhleSBjYW4gc3luY2hyb25vdXNseSByZWNlaXZlICYgc2VuZCBtc2csIHdpdGhvdXQg
YWZmZWN0IGVhY2ggb3RoZXI/CgoKCgpTd2l0Y2hpbmcgdG8gdGhyZWFkcyB3b3VsZCBiZSBwb3Nz
aWJsZSwgYnV0IHRoYXQgd291bGRuJ3QgaGVscCBpbiB0aGUgc2l0dWF0aW9uIHlvdSBkZXNjcmli
ZSwgYXMgeW91IGFyZSB2ZXJ5IGxpa2VseSBib3VuZCBvbiBJTy4gVXNpbmcgc2V2ZXJhbCB0aHJl
YWRzIHdvdWxkIGFjdHVhbGx5IGNyZWF0ZSBtb3JlIHByb2JsZW1zIHRvIHN5bmNocm9uaXplIGFu
ZCBzY2hlZHVsZSB0aGUgZGlmZmVyZW50IGNoYW5uZWxzLgoKCklvIG9wZXJhdGlvbnMgaW4gY29y
b3V0aW5lcyBhcmUgbm9uLWJsb2NraW5nLCBzbyB0aGV5IHNob3VsZG4ndCBhZmZlY3Qgb3RoZXIg
c3BpY2UtZ3RrIHRhc2suIElmIHlvdSBob3dldmVyIG9ic2VydmUgYSBibG9ja2luZyBDUFUtdGFz
ayBpbiBzb21lIGNoYW5uZWwsIHRoaXMgbWF5IGFmZmVjdCB0aGUgcGVyZm9ybWFuY2Ugb2Ygb3Ro
ZXIgY2hhbm5lbHMuIEJ1dCBpbiBnZW5lcmFsLCBleGNlcHQgZm9yIHZpZGVvL2ltYWdlIGRlY29k
aW5nIHdoaWNoIG1heSBiZSBkb25lIGluIGEgc2VwYXJhdGUgdGhyZWFkLCB0aGUgY2xpZW50IHNp
ZGUgZG9lc24ndCBkbyBtdWNoIHdvcmsuCgoKVVNCLCBjbGlwYm9hcmQgYW5kIGZpbGUgc2hhcmlu
ZyBtYXkgdXNlIGxhcmdlIGFtb3VudHMgb2YgZGF0YSwgYW5kIHdlIHJlbHkgb24gdGhlIGdsaWIg
c291cmNlIGFuZCBrZXJuZWwgdG8gcHJpb3JpdGl6ZSBjaGFubmVsczogdGhpcyBpc24ndCBncmVh
dCBpbiBzb21lIGNhc2VzIGFuZCBtYXkgcmVjZWl2ZSBpbXByb3ZlbWVudHMuCgoKCgotLQoKTWFy
Yy1BbmRyqKYgTHVyZWF1CgoKCgoKCiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWwKCgo=
------=_Part_83270_1795175369.1592052746773
Content-Type: text/html; charset=gbk
Content-Transfer-Encoding: base64

SGk8ZGl2Pjxicj48L2Rpdj48ZGl2PlRoYW5rcyBhIGxvdCwgdGhhdCBpbmZvcm1hdGlvbiBpcyB2
ZXJ5IGhlbHBmdWwsIEkgd2lsbCB0cnkgdGhhdC48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkJS
PC9kaXY+PGRpdj5Eb248YnI+PGJyPjxicj48YnI+PGJyPjxicj48YnI+PGJyPtTaIDIwMjAtMDYt
MTMgMTQ6NDA6MDKjrCJGcmVkaWFubyZuYnNwO1ppZ2xpbyImbmJzcDsmbHQ7ZnppZ2xpb0ByZWRo
YXQuY29tJmd0OyDQtLXAo7o8YnI+IDxibG9ja3F1b3RlIGlkPSJpc1JlcGx5Q29udGVudCIgc3R5
bGU9IlBBRERJTkctTEVGVDogMWV4OyBNQVJHSU46IDBweCAwcHggMHB4IDAuOGV4OyBCT1JERVIt
TEVGVDogI2NjYyAxcHggc29saWQiPjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBjb3VyaWVyIG5l
dyxjb3VyaWVyLG1vbmFjbyxtb25vc3BhY2Usc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBj
b2xvcjogIzAwMDAwMCI+PGRpdj5IaSw8L2Rpdj48ZGl2PiZuYnNwOyB0aGUgcGF0dGVybiB1c2Vk
IGluIHNwaWNlLWd0ayBpcyBjYWxsZWQgY29vcGVyYXRpdmUgbXVsdGl0YXNraW5nIChzZWUgPGEg
aHJlZj0iaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvQ29vcGVyYXRpdmVfbXVsdGl0YXNr
aW5nIj5odHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9Db29wZXJhdGl2ZV9tdWx0aXRhc2tp
bmc8L2E+KSwgaWYgeW91IGFkZCBjb2RlIHRoYXQgaXMgbm90IGNvb3BlcmF0aXZlIHlvdSBnZXQg
d2hhdCB5b3UgZGVzY3JpYmVkLiBVc2UgY29yb3V0aW5lIGZ1bmN0aW9ucyB0byByZWFkIHJlbW90
ZSBkYXRhIHNvIHRoZSByZWFkIHdvbid0IHN0b3Agb3RoZXIgY29kZS4gSWYgeW91IG5lZWQgdG8g
cnVuIGV4cGVuc2l2ZSBvciBibG9ja2luZyBjb2RlIGl0J3MgYSBnb29kIGlkZWEgdG8gcnVuIGl0
IGluIGFub3RoZXIgdGhyZWFkIHJlbW92aW5nIHRoZSBibG9ja2FnZS48YnI+PC9kaXY+PGRpdj48
YnI+PC9kaXY+PGRpdj5GcmVkaWFubzxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48aHIgaWQ9Inp3
Y2hyIj48YmxvY2txdW90ZSBzdHlsZT0iYm9yZGVyLWxlZnQ6MnB4IHNvbGlkICMxMDEwRkY7bWFy
Z2luLWxlZnQ6NXB4O3BhZGRpbmctbGVmdDo1cHg7Y29sb3I6IzAwMDtmb250LXdlaWdodDpub3Jt
YWw7Zm9udC1zdHlsZTpub3JtYWw7dGV4dC1kZWNvcmF0aW9uOm5vbmU7Zm9udC1mYW1pbHk6SGVs
dmV0aWNhLEFyaWFsLHNhbnMtc2VyaWY7Zm9udC1zaXplOjEycHQ7IiBkYXRhLW1jZS1zdHlsZT0i
Ym9yZGVyLWxlZnQ6IDJweCBzb2xpZCAjMTAxMEZGOyBtYXJnaW4tbGVmdDogNXB4OyBwYWRkaW5n
LWxlZnQ6IDVweDsgY29sb3I6ICMwMDA7IGZvbnQtd2VpZ2h0OiBub3JtYWw7IGZvbnQtc3R5bGU6
IG5vcm1hbDsgdGV4dC1kZWNvcmF0aW9uOiBub25lOyBmb250LWZhbWlseTogSGVsdmV0aWNhLEFy
aWFsLHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsiPjxicj48ZGl2Pjxicj48L2Rpdj5IaSZu
YnNwOzxkaXY+PGJyPjwvZGl2PjxkaXY+SGVyZSBpcyBteSBleHBlcmltZW50OjwvZGl2PjxkaXY+
SSBjcmVhdGVkIGEgbmV3IHBvcnQtY2hhbm5lbCB0byB0cmFuc2ZlciBkYXRhIGJldHdlZW4gdmRh
Z2VudCBhbmQgc3BpY2UtZ3RrLiBJIHVzZWQgYSB3aGlsZSBsb29wIHRvIHNlbmQgMmtiIGRhdGEg
dG8gZ3RrLCBndGsgcmVjZWl2ZWQgYW5kIGRyb3AgdGhlIGRhdGEuIEluIHRoZSBtZWFuIHRpbWUg
SSB1c2VkIGEgdGltZXIoMW1zKSB0byBzZW5kIDJrYiBkYXRhIHRvIHZkYWdlbnQuJm5ic3A7PC9k
aXY+PGRpdj5TdHJhbmdlIHRoaW5nIGlzIHRoYXQgZ3RrIHdpbGwgY29udGludWFsbHkgcmVjZWl2
ZSBkYXRhIGZvciBhIHdoaWxlKDEwc2VjcyAtIDcwc2VjcykgdGhlbiBzZW5kIGEgd2hvbGUgYnVu
Y2ggb2YgZGF0YSB0byB2ZGFnZW50LiBXaGVuIHJlY2VpdmluZyBkYXRhLCBzZW5kIGRhdGEgd2ls
bCBiZSBhZGRlZCB0byB0Y3AgYnVmZmVyIGJ1dCB3aWxsIG5vdCBiZSBzZW50IG91dC48L2Rpdj48
ZGl2Pjxicj48L2Rpdj48ZGl2PlNvIEkgdGhpbmsgc2VuZCBldmVudCB3aWxsIGJlIGFmZmVjdGVk
IGJ5IHJlY2VpdmUgZXZlbnQsIHRoZW4gSSBndWVzcyB1c2luZyBkaWZmZXJlbnQgdGhyZWFkIHdv
dWxkIGhlbHAuJm5ic3A7PC9kaXY+PGRpdj5Db3VsZCB5b3UgcGxlYXNlIGNvcnJlY3QgbWUgaWYg
SaGvbSB3cm9uZz88L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkJSPC9kaXY+PGRpdj5Eb248YnI+
PGRpdj48YnI+PC9kaXY+PGJyPjxkaXY+PGJyPjwvZGl2Pjxicj48ZGl2IGlkPSJzcG5FZGl0b3JT
aWduX2FwcCI+PGJyPjwvZGl2Pjxicj48ZGl2Pjxicj48L2Rpdj48YnI+1NogMjAyMC0wNi0xMiAy
MDowMzozMKOsIk1hcmMtQW5kcqimJm5ic3A7THVyZWF1IiZuYnNwOyZsdDttYXJjYW5kcmUubHVy
ZWF1QGdtYWlsLmNvbSZndDsg0LS1wKO6PGJyPjxibG9ja3F1b3RlIGlkPSJpc1JlcGx5Q29udGVu
dCIgc3R5bGU9IlBBRERJTkctTEVGVDogMWV4OyBNQVJHSU46IDBweCAwcHggMHB4IDAuOGV4OyBC
T1JERVItTEVGVDogI2NjYyAxcHggc29saWQiIGRhdGEtbWNlLXN0eWxlPSJwYWRkaW5nLWxlZnQ6
IDFleDsgbWFyZ2luOiAwcHggMHB4IDBweCAwLjhleDsgYm9yZGVyLWxlZnQ6ICNjY2MgMXB4IHNv
bGlkOyI+PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+SGk8YnI+PC9kaXY+PGJyPjxkaXYg
Y2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24g
RnJpLCBKdW4gMTIsIDIwMjAgYXQgMTI6NTcgUE0gs8Ke3SAmbHQ7PGEgaHJlZj0ibWFpbHRvOnFp
c2hpeWV4dTJAMTI2LmNvbSIgdGFyZ2V0PSJfYmxhbmsiIGRhdGEtbWNlLWhyZWY9Im1haWx0bzpx
aXNoaXlleHUyQDEyNi5jb20iPnFpc2hpeWV4dTJAMTI2LmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj48
L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBw
eCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFkZGlu
Zy1sZWZ0OjFleCIgZGF0YS1tY2Utc3R5bGU9Im1hcmdpbjogMHB4IDBweCAwcHggMC44ZXg7IGJv
cmRlci1sZWZ0OiAxcHggc29saWQgI2NjY2NjYzsgcGFkZGluZy1sZWZ0OiAxZXg7Ij48ZGl2IHN0
eWxlPSJsaW5lLWhlaWdodDoxLjc7Y29sb3I6cmdiKDAsMCwwKTtmb250LXNpemU6MTRweDtmb250
LWZhbWlseTpBcmlhbCIgZGF0YS1tY2Utc3R5bGU9ImxpbmUtaGVpZ2h0OiAxLjc7IGNvbG9yOiAj
MDAwMDAwOyBmb250LXNpemU6IDE0cHg7IGZvbnQtZmFtaWx5OiBBcmlhbDsiPjxkaXYgc3R5bGU9
Im1hcmdpbjowcHgiIGRhdGEtbWNlLXN0eWxlPSJtYXJnaW46IDBweDsiPkhpLDwvZGl2PjxkaXYg
c3R5bGU9Im1hcmdpbjowcHgiIGRhdGEtbWNlLXN0eWxlPSJtYXJnaW46IDBweDsiPjxicj48L2Rp
dj48ZGl2IHN0eWxlPSJtYXJnaW46MHB4IiBkYXRhLW1jZS1zdHlsZT0ibWFyZ2luOiAwcHg7Ij5T
cGljZS1ndGsgaXMgbm93IHVzaW5nIGNvLXJvdXRpbmUgdG8gaGFuZGxlIGRpZmZlcmVudCBjaGFu
bmVsIGNvbm5lY3Rpb25zLiBXaGVuIGEgY2hhbm5lbCBpcyBoYW5kbGluZyBkYXRhLCBvdGhlciBj
aGFubmVscyB3b3VsZCBoYXZlIHRvIHdhaXQsIHJhdGhlciB0aGFuIGhhbmRsaW5nIHN5bmNocm9u
b3VzbHkuJm5ic3A7IFRoYXQgd291bGQgYnJpbmcgdXMgZm9sbG93aW5nIGlzc3Vlczo8L2Rpdj48
ZGl2IHN0eWxlPSJtYXJnaW46MHB4IiBkYXRhLW1jZS1zdHlsZT0ibWFyZ2luOiAwcHg7Ij4mbmJz
cDsxLiBJZiBzb21lIGxlc3MgaW1wb3J0YW50IGNoYW5uZWxzIChsaWtlIHVzYiBjaGFubmVscykg
YXJlIHRyYW5zZmVyaW5nIGJpZyBkYXRhLCBpbXBvcnRhbnQgY2hhbm5lbHMgKG1haW4tY2hhbm5l
bCwgZGlzcGxheS1jaGFubmVsLGlucHV0LWNoYW5uZWwpIHdpbGwgYmUgYWZmZWN0ZWQuJm5ic3A7
Jm5ic3A7PC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjBweCIgZGF0YS1tY2Utc3R5bGU9Im1hcmdp
bjogMHB4OyI+Jm5ic3A7Mi4gV2hlbiByZWNlaXZpbmcgYmlnIGRhdGEgbGlrZSBmaWxlIHRyYW5z
ZmVyaW5nKEdfSU9fSU4pLCBzZW5kIGV2ZW50IChHX0lPX09VVCkgd2lsbCBub3QgYmUgdHJpZ2dl
cmVkLjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowcHgiIGRhdGEtbWNlLXN0eWxlPSJtYXJnaW46
IDBweDsiPiZuYnNwOzMuIEZsb3cgY29udHJvbCBiZXR3ZWVuIGRpZmZlcmVudCBjaGFubmVscyB3
aWxsIGJlIGhhcmQgdG8gZG8uJm5ic3A7PC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjBweCIgZGF0
YS1tY2Utc3R5bGU9Im1hcmdpbjogMHB4OyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjow
cHgiIGRhdGEtbWNlLXN0eWxlPSJtYXJnaW46IDBweDsiPklzIGlzIHBvc3NpYmxlKGFuZCBtYWtl
IHNlbnNlKSB0byBwdXQgY2hhbm5lbHMgaW50byBkaWZmZXJlbnQgdGhyZWFkcyBzbyB0aGV5IGNh
biBzeW5jaHJvbm91c2x5IHJlY2VpdmUgJmFtcDsgc2VuZCBtc2csIHdpdGhvdXQgYWZmZWN0IGVh
Y2ggb3RoZXI/PC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjBweCIgZGF0YS1tY2Utc3R5bGU9Im1h
cmdpbjogMHB4OyI+PGJyPjwvZGl2PjwvZGl2PjwvYmxvY2txdW90ZT48ZGl2Pjxicj48L2Rpdj48
ZGl2PlN3aXRjaGluZyB0byB0aHJlYWRzIHdvdWxkIGJlIHBvc3NpYmxlLCBidXQgdGhhdCB3b3Vs
ZG4ndCBoZWxwIGluIHRoZSBzaXR1YXRpb24geW91IGRlc2NyaWJlLCBhcyB5b3UgYXJlIHZlcnkg
bGlrZWx5IGJvdW5kIG9uIElPLiBVc2luZyBzZXZlcmFsIHRocmVhZHMgd291bGQgYWN0dWFsbHkg
Y3JlYXRlIG1vcmUgcHJvYmxlbXMgdG8gc3luY2hyb25pemUgYW5kIHNjaGVkdWxlIHRoZSBkaWZm
ZXJlbnQgY2hhbm5lbHMuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JbyBvcGVyYXRpb25zIGlu
IGNvcm91dGluZXMgYXJlIG5vbi1ibG9ja2luZywgc28gdGhleSBzaG91bGRuJ3QgYWZmZWN0IG90
aGVyIHNwaWNlLWd0ayB0YXNrLiBJZiB5b3UgaG93ZXZlciBvYnNlcnZlIGEgYmxvY2tpbmcgQ1BV
LXRhc2sgaW4gc29tZSBjaGFubmVsLCB0aGlzIG1heSBhZmZlY3QgdGhlIHBlcmZvcm1hbmNlIG9m
IG90aGVyIGNoYW5uZWxzLiBCdXQgaW4gZ2VuZXJhbCwgZXhjZXB0IGZvciB2aWRlby9pbWFnZSBk
ZWNvZGluZyB3aGljaCBtYXkgYmUgZG9uZSBpbiBhIHNlcGFyYXRlIHRocmVhZCwgdGhlIGNsaWVu
dCBzaWRlIGRvZXNuJ3QgZG8gbXVjaCB3b3JrLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+VVNC
LCBjbGlwYm9hcmQgYW5kIGZpbGUgc2hhcmluZyBtYXkgdXNlIGxhcmdlIGFtb3VudHMgb2YgZGF0
YSwgYW5kIHdlIHJlbHkgb24gdGhlIGdsaWIgc291cmNlIGFuZCBrZXJuZWwgdG8gcHJpb3JpdGl6
ZSBjaGFubmVsczogdGhpcyBpc24ndCBncmVhdCBpbiBzb21lIGNhc2VzIGFuZCBtYXkgcmVjZWl2
ZSBpbXByb3ZlbWVudHMuPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjwvZGl2Pjxicj4tLSA8YnI+
PGRpdiBkaXI9Imx0ciIgY2xhc3M9ImdtYWlsX3NpZ25hdHVyZSI+TWFyYy1BbmRyqKYgTHVyZWF1
PGJyPjwvZGl2PjwvZGl2PjwvYmxvY2txdW90ZT48L2Rpdj48YnI+PGRpdj48YnI+PC9kaXY+PHA+
Jm5ic3A7PC9wPjxicj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXzxicj5TcGljZS1kZXZlbCBtYWlsaW5nIGxpc3Q8YnI+U3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnPGJyPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw8YnI+PC9ibG9ja3F1b3RlPjxkaXY+PGJyPjwvZGl2PjwvZGl2Pjwv
YmxvY2txdW90ZT48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJuZXRlYXNlZm9vdGVyIj48cD4m
bmJzcDs8L3A+PC9zcGFuPg==
------=_Part_83270_1795175369.1592052746773--


--===============2039148102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============2039148102==--

