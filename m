Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B2D1F7A9D
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jun 2020 17:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85F556E12E;
	Fri, 12 Jun 2020 15:19:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from m1548.mail.126.com (m1548.mail.126.com [220.181.15.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE596E12E
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jun 2020 15:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=pWDk/
 yyeyaGrma998b6fka+CySBIjMJsLeZiByIDSrM=; b=LqzkVxem9Q54UPrAtTGIg
 jnUjA36TdwWy0TvWmc9DBcZ6X/bIymWyzz4zl/A0KUBY6rjoeSASD6yyckpwd11f
 FfpP+L5ZNiHGrg+DyMkkhKHUkpIZLv7oDRA6HeGgGsMdmToKTI06ZEuBWtRIplpN
 cD+o3M3HLApmE56+7ZFZlY=
Received: from qishiyexu2$126.com ( [117.136.12.74] ) by
 ajax-webmail-wmsvr48 (Coremail) ; Fri, 12 Jun 2020 23:19:44 +0800 (CST)
X-Originating-IP: [117.136.12.74]
Date: Fri, 12 Jun 2020 23:19:44 +0800 (CST)
From: =?gbk?B?s8Ke3Q==?= <qishiyexu2@126.com>
To: =?gbk?Q?Marc-Andr=A8=A6_Lureau_?= <marcandre.lureau@gmail.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn 126com
In-Reply-To: <CAJ+F1CLYf0xoQ-UraTQzPoGk9Vpvt_=yoyW+ENZHdznf3kmLqA@mail.gmail.com>
References: <16656b4b.5cd5.172a7a33052.Coremail.qishiyexu2@126.com>
 <CAJ+F1CLYf0xoQ-UraTQzPoGk9Vpvt_=yoyW+ENZHdznf3kmLqA@mail.gmail.com>
X-CM-CTRLDATA: 7NOc5GZvb3Rlcl9odG09MzQ0Mjo1Ng==
MIME-Version: 1.0
Message-ID: <2bd8d90a.9bae.172a91d8976.Coremail.qishiyexu2@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: MMqowAAHY94RneNeIGtfAA--.5743W
X-CM-SenderInfo: xtlvxxp1h03ja6rslhhfrp/1tbi7xFBKFpD+P1NcAAAs2
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
Content-Type: multipart/mixed; boundary="===============1001179448=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============1001179448==
Content-Type: multipart/alternative; 
	boundary="----=_Part_135061_135576846.1591975184758"

------=_Part_135061_135576846.1591975184758
Content-Type: text/plain; charset=gbk
Content-Transfer-Encoding: base64

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
CgoKCgoKCtTaIDIwMjAtMDYtMTIgMjA6MDM6MzCjrCJNYXJjLUFuZHKopiBMdXJlYXUiIDxtYXJj
YW5kcmUubHVyZWF1QGdtYWlsLmNvbT4g0LS1wKO6CgpIaQoKCgpPbiBGcmksIEp1biAxMiwgMjAy
MCBhdCAxMjo1NyBQTSCzwp7dIDxxaXNoaXlleHUyQDEyNi5jb20+IHdyb3RlOgoKSGksCgoKU3Bp
Y2UtZ3RrIGlzIG5vdyB1c2luZyBjby1yb3V0aW5lIHRvIGhhbmRsZSBkaWZmZXJlbnQgY2hhbm5l
bCBjb25uZWN0aW9ucy4gV2hlbiBhIGNoYW5uZWwgaXMgaGFuZGxpbmcgZGF0YSwgb3RoZXIgY2hh
bm5lbHMgd291bGQgaGF2ZSB0byB3YWl0LCByYXRoZXIgdGhhbiBoYW5kbGluZyBzeW5jaHJvbm91
c2x5LiAgVGhhdCB3b3VsZCBicmluZyB1cyBmb2xsb3dpbmcgaXNzdWVzOgogMS4gSWYgc29tZSBs
ZXNzIGltcG9ydGFudCBjaGFubmVscyAobGlrZSB1c2IgY2hhbm5lbHMpIGFyZSB0cmFuc2Zlcmlu
ZyBiaWcgZGF0YSwgaW1wb3J0YW50IGNoYW5uZWxzIChtYWluLWNoYW5uZWwsIGRpc3BsYXktY2hh
bm5lbCxpbnB1dC1jaGFubmVsKSB3aWxsIGJlIGFmZmVjdGVkLiAgCiAyLiBXaGVuIHJlY2Vpdmlu
ZyBiaWcgZGF0YSBsaWtlIGZpbGUgdHJhbnNmZXJpbmcoR19JT19JTiksIHNlbmQgZXZlbnQgKEdf
SU9fT1VUKSB3aWxsIG5vdCBiZSB0cmlnZ2VyZWQuCiAzLiBGbG93IGNvbnRyb2wgYmV0d2VlbiBk
aWZmZXJlbnQgY2hhbm5lbHMgd2lsbCBiZSBoYXJkIHRvIGRvLiAKCgpJcyBpcyBwb3NzaWJsZShh
bmQgbWFrZSBzZW5zZSkgdG8gcHV0IGNoYW5uZWxzIGludG8gZGlmZmVyZW50IHRocmVhZHMgc28g
dGhleSBjYW4gc3luY2hyb25vdXNseSByZWNlaXZlICYgc2VuZCBtc2csIHdpdGhvdXQgYWZmZWN0
IGVhY2ggb3RoZXI/CgoKCgpTd2l0Y2hpbmcgdG8gdGhyZWFkcyB3b3VsZCBiZSBwb3NzaWJsZSwg
YnV0IHRoYXQgd291bGRuJ3QgaGVscCBpbiB0aGUgc2l0dWF0aW9uIHlvdSBkZXNjcmliZSwgYXMg
eW91IGFyZSB2ZXJ5IGxpa2VseSBib3VuZCBvbiBJTy4gVXNpbmcgc2V2ZXJhbCB0aHJlYWRzIHdv
dWxkIGFjdHVhbGx5IGNyZWF0ZSBtb3JlIHByb2JsZW1zIHRvIHN5bmNocm9uaXplIGFuZCBzY2hl
ZHVsZSB0aGUgZGlmZmVyZW50IGNoYW5uZWxzLgoKCklvIG9wZXJhdGlvbnMgaW4gY29yb3V0aW5l
cyBhcmUgbm9uLWJsb2NraW5nLCBzbyB0aGV5IHNob3VsZG4ndCBhZmZlY3Qgb3RoZXIgc3BpY2Ut
Z3RrIHRhc2suIElmIHlvdSBob3dldmVyIG9ic2VydmUgYSBibG9ja2luZyBDUFUtdGFzayBpbiBz
b21lIGNoYW5uZWwsIHRoaXMgbWF5IGFmZmVjdCB0aGUgcGVyZm9ybWFuY2Ugb2Ygb3RoZXIgY2hh
bm5lbHMuIEJ1dCBpbiBnZW5lcmFsLCBleGNlcHQgZm9yIHZpZGVvL2ltYWdlIGRlY29kaW5nIHdo
aWNoIG1heSBiZSBkb25lIGluIGEgc2VwYXJhdGUgdGhyZWFkLCB0aGUgY2xpZW50IHNpZGUgZG9l
c24ndCBkbyBtdWNoIHdvcmsuCgoKVVNCLCBjbGlwYm9hcmQgYW5kIGZpbGUgc2hhcmluZyBtYXkg
dXNlIGxhcmdlIGFtb3VudHMgb2YgZGF0YSwgYW5kIHdlIHJlbHkgb24gdGhlIGdsaWIgc291cmNl
IGFuZCBrZXJuZWwgdG8gcHJpb3JpdGl6ZSBjaGFubmVsczogdGhpcyBpc24ndCBncmVhdCBpbiBz
b21lIGNhc2VzIGFuZCBtYXkgcmVjZWl2ZSBpbXByb3ZlbWVudHMuCgoKCgotLQoKTWFyYy1BbmRy
qKYgTHVyZWF1Cg==
------=_Part_135061_135576846.1591975184758
Content-Type: text/html; charset=gbk
Content-Transfer-Encoding: base64

SGkmbmJzcDs8ZGl2Pjxicj48L2Rpdj48ZGl2PkhlcmUgaXMgbXkgZXhwZXJpbWVudDo8L2Rpdj48
ZGl2PkkgY3JlYXRlZCBhIG5ldyBwb3J0LWNoYW5uZWwgdG8gdHJhbnNmZXIgZGF0YSBiZXR3ZWVu
IHZkYWdlbnQgYW5kIHNwaWNlLWd0ay4gSSB1c2VkIGEgd2hpbGUgbG9vcCB0byBzZW5kIDJrYiBk
YXRhIHRvIGd0aywgZ3RrIHJlY2VpdmVkIGFuZCBkcm9wIHRoZSBkYXRhLiBJbiB0aGUgbWVhbiB0
aW1lIEkgdXNlZCBhIHRpbWVyKDFtcykgdG8gc2VuZCAya2IgZGF0YSB0byB2ZGFnZW50LiZuYnNw
OzwvZGl2PjxkaXY+U3RyYW5nZSB0aGluZyBpcyB0aGF0IGd0ayB3aWxsIGNvbnRpbnVhbGx5IHJl
Y2VpdmUgZGF0YSBmb3IgYSB3aGlsZSgxMHNlY3MgLSA3MHNlY3MpIHRoZW4gc2VuZCBhIHdob2xl
IGJ1bmNoIG9mIGRhdGEgdG8gdmRhZ2VudC4gV2hlbiByZWNlaXZpbmcgZGF0YSwgc2VuZCBkYXRh
IHdpbGwgYmUgYWRkZWQgdG8gdGNwIGJ1ZmZlciBidXQgd2lsbCBub3QgYmUgc2VudCBvdXQuPC9k
aXY+PGRpdj48YnI+PC9kaXY+PGRpdj5TbyBJIHRoaW5rIHNlbmQgZXZlbnQgd2lsbCBiZSBhZmZl
Y3RlZCBieSByZWNlaXZlIGV2ZW50LCB0aGVuIEkgZ3Vlc3MgdXNpbmcgZGlmZmVyZW50IHRocmVh
ZCB3b3VsZCBoZWxwLiZuYnNwOzwvZGl2PjxkaXY+Q291bGQgeW91IHBsZWFzZSBjb3JyZWN0IG1l
IGlmIEmhr20gd3Jvbmc/PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5CUjwvZGl2PjxkaXY+RG9u
PGJyPjxicj48YnI+PGJyPjxicj48ZGl2IGlkPSJzcG5FZGl0b3JTaWduX2FwcCI+PGJyPjwvZGl2
Pjxicj48YnI+PGJyPtTaIDIwMjAtMDYtMTIgMjA6MDM6MzCjrCJNYXJjLUFuZHKopiZuYnNwO0x1
cmVhdSImbmJzcDsmbHQ7bWFyY2FuZHJlLmx1cmVhdUBnbWFpbC5jb20mZ3Q7INC0tcCjujxicj4g
PGJsb2NrcXVvdGUgaWQ9ImlzUmVwbHlDb250ZW50IiBzdHlsZT0iUEFERElORy1MRUZUOiAxZXg7
IE1BUkdJTjogMHB4IDBweCAwcHggMC44ZXg7IEJPUkRFUi1MRUZUOiAjY2NjIDFweCBzb2xpZCI+
PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+SGk8YnI+PC9kaXY+PGJyPjxkaXYgY2xhc3M9
ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gRnJpLCBK
dW4gMTIsIDIwMjAgYXQgMTI6NTcgUE0gs8Ke3SAmbHQ7PGEgaHJlZj0ibWFpbHRvOnFpc2hpeWV4
dTJAMTI2LmNvbSI+cWlzaGl5ZXh1MkAxMjYuY29tPC9hPiZndDsgd3JvdGU6PGJyPjwvZGl2Pjxi
bG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAw
LjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6
MWV4Ij48ZGl2IHN0eWxlPSJsaW5lLWhlaWdodDoxLjc7Y29sb3I6cmdiKDAsMCwwKTtmb250LXNp
emU6MTRweDtmb250LWZhbWlseTpBcmlhbCI+PGRpdiBzdHlsZT0ibWFyZ2luOjBweCI+SGksPC9k
aXY+PGRpdiBzdHlsZT0ibWFyZ2luOjBweCI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjow
cHgiPlNwaWNlLWd0ayBpcyBub3cgdXNpbmcgY28tcm91dGluZSB0byBoYW5kbGUgZGlmZmVyZW50
IGNoYW5uZWwgY29ubmVjdGlvbnMuIFdoZW4gYSBjaGFubmVsIGlzIGhhbmRsaW5nIGRhdGEsIG90
aGVyIGNoYW5uZWxzIHdvdWxkIGhhdmUgdG8gd2FpdCwgcmF0aGVyIHRoYW4gaGFuZGxpbmcgc3lu
Y2hyb25vdXNseS4mbmJzcDsgVGhhdCB3b3VsZCBicmluZyB1cyBmb2xsb3dpbmcgaXNzdWVzOjwv
ZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowcHgiPiZuYnNwOzEuIElmIHNvbWUgbGVzcyBpbXBvcnRh
bnQgY2hhbm5lbHMgKGxpa2UgdXNiIGNoYW5uZWxzKSBhcmUgdHJhbnNmZXJpbmcgYmlnIGRhdGEs
IGltcG9ydGFudCBjaGFubmVscyAobWFpbi1jaGFubmVsLCBkaXNwbGF5LWNoYW5uZWwsaW5wdXQt
Y2hhbm5lbCkgd2lsbCBiZSBhZmZlY3RlZC4mbmJzcDsmbmJzcDs8L2Rpdj48ZGl2IHN0eWxlPSJt
YXJnaW46MHB4Ij4mbmJzcDsyLiBXaGVuIHJlY2VpdmluZyBiaWcgZGF0YSBsaWtlIGZpbGUgdHJh
bnNmZXJpbmcoR19JT19JTiksIHNlbmQgZXZlbnQgKEdfSU9fT1VUKSB3aWxsIG5vdCBiZSB0cmln
Z2VyZWQuPC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjBweCI+Jm5ic3A7My4gRmxvdyBjb250cm9s
IGJldHdlZW4gZGlmZmVyZW50IGNoYW5uZWxzIHdpbGwgYmUgaGFyZCB0byBkby4mbmJzcDs8L2Rp
dj48ZGl2IHN0eWxlPSJtYXJnaW46MHB4Ij48YnI+PC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjBw
eCI+SXMgaXMgcG9zc2libGUoYW5kIG1ha2Ugc2Vuc2UpIHRvIHB1dCBjaGFubmVscyBpbnRvIGRp
ZmZlcmVudCB0aHJlYWRzIHNvIHRoZXkgY2FuIHN5bmNocm9ub3VzbHkgcmVjZWl2ZSAmYW1wOyBz
ZW5kIG1zZywgd2l0aG91dCBhZmZlY3QgZWFjaCBvdGhlcj88L2Rpdj48ZGl2IHN0eWxlPSJtYXJn
aW46MHB4Ij48YnI+PC9kaXY+PC9kaXY+PC9ibG9ja3F1b3RlPjxkaXY+PGJyPjwvZGl2PjxkaXY+
U3dpdGNoaW5nIHRvIHRocmVhZHMgd291bGQgYmUgcG9zc2libGUsIGJ1dCB0aGF0IHdvdWxkbid0
IGhlbHAgaW4gdGhlIHNpdHVhdGlvbiB5b3UgZGVzY3JpYmUsIGFzIHlvdSBhcmUgdmVyeSBsaWtl
bHkgYm91bmQgb24gSU8uIFVzaW5nIHNldmVyYWwgdGhyZWFkcyB3b3VsZCBhY3R1YWxseSBjcmVh
dGUgbW9yZSBwcm9ibGVtcyB0byBzeW5jaHJvbml6ZSBhbmQgc2NoZWR1bGUgdGhlIGRpZmZlcmVu
dCBjaGFubmVscy48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PklvIG9wZXJhdGlvbnMgaW4gY29y
b3V0aW5lcyBhcmUgbm9uLWJsb2NraW5nLCBzbyB0aGV5IHNob3VsZG4ndCBhZmZlY3Qgb3RoZXIg
c3BpY2UtZ3RrIHRhc2suIElmIHlvdSBob3dldmVyIG9ic2VydmUgYSBibG9ja2luZyBDUFUtdGFz
ayBpbiBzb21lIGNoYW5uZWwsIHRoaXMgbWF5IGFmZmVjdCB0aGUgcGVyZm9ybWFuY2Ugb2Ygb3Ro
ZXIgY2hhbm5lbHMuIEJ1dCBpbiBnZW5lcmFsLCBleGNlcHQgZm9yIHZpZGVvL2ltYWdlIGRlY29k
aW5nIHdoaWNoIG1heSBiZSBkb25lIGluIGEgc2VwYXJhdGUgdGhyZWFkLCB0aGUgY2xpZW50IHNp
ZGUgZG9lc24ndCBkbyBtdWNoIHdvcmsuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5VU0IsIGNs
aXBib2FyZCBhbmQgZmlsZSBzaGFyaW5nIG1heSB1c2UgbGFyZ2UgYW1vdW50cyBvZiBkYXRhLCBh
bmQgd2UgcmVseSBvbiB0aGUgZ2xpYiBzb3VyY2UgYW5kIGtlcm5lbCB0byBwcmlvcml0aXplIGNo
YW5uZWxzOiB0aGlzIGlzbid0IGdyZWF0IGluIHNvbWUgY2FzZXMgYW5kIG1heSByZWNlaXZlIGlt
cHJvdmVtZW50cy48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PC9kaXY+PGJyPi0tIDxicj48ZGl2
IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfc2lnbmF0dXJlIj5NYXJjLUFuZHKopiBMdXJlYXU8YnI+
PC9kaXY+PC9kaXY+CjwvYmxvY2txdW90ZT48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJuZXRl
YXNlZm9vdGVyIj48cD4mbmJzcDs8L3A+PC9zcGFuPg==
------=_Part_135061_135576846.1591975184758--


--===============1001179448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============1001179448==--

