Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F5B1F7587
	for <lists+spice-devel@lfdr.de>; Fri, 12 Jun 2020 10:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CC306E5BE;
	Fri, 12 Jun 2020 08:57:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 1850 seconds by postgrey-1.36 at gabe;
 Fri, 12 Jun 2020 08:57:24 UTC
Received: from m1515.mail.126.com (m1515.mail.126.com [220.181.15.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4AEA6E877
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Jun 2020 08:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=ZOwsi
 LsaXBLUyWYlQjquCGvcso21dcMLlXgzg57u2Qc=; b=KnHPGRZOwH6QlBsKo7ENC
 7oU8WaxmXbLVtCHp0Es4qYRlqbeV8Ete9C8GWzXvZAJGiht1vGlVmeFmx7AC72CM
 JEtZMFDIXJrQtgIRRwnfb7q53uCCQjyuyLesMLYkHTIVWXWHb2wb6Mgs92pa0BKm
 Z33UP+RSkzgG1ELS38K3Uw=
Received: from qishiyexu2$126.com ( [121.8.254.210] ) by
 ajax-webmail-wmsvr15 (Coremail) ; Fri, 12 Jun 2020 16:26:29 +0800 (CST)
X-Originating-IP: [121.8.254.210]
Date: Fri, 12 Jun 2020 16:26:29 +0800 (CST)
From: =?GBK?B?s8Ke3Q==?= <qishiyexu2@126.com>
To: spice-devel@lists.freedesktop.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn 126com
X-CM-CTRLDATA: f8AXyGZvb3Rlcl9odG09MTE1NDo1Ng==
MIME-Version: 1.0
Message-ID: <16656b4b.5cd5.172a7a33052.Coremail.qishiyexu2@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: D8qowADn74c2PONezu7IAA--.47082W
X-CM-SenderInfo: xtlvxxp1h03ja6rslhhfrp/1tbigRZBKFpEAUPm6gAAsu
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: [Spice-devel] Is it possible to put spice channels into different
 threads?
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
Content-Type: multipart/mixed; boundary="===============0588231955=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

--===============0588231955==
Content-Type: multipart/alternative; 
	boundary="----=_Part_86442_22816324.1591950389330"

------=_Part_86442_22816324.1591950389330
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGksCgoKU3BpY2UtZ3RrIGlzIG5vdyB1c2luZyBjby1yb3V0aW5lIHRvIGhhbmRsZSBkaWZmZXJl
bnQgY2hhbm5lbCBjb25uZWN0aW9ucy4gV2hlbiBhIGNoYW5uZWwgaXMgaGFuZGxpbmcgZGF0YSwg
b3RoZXIgY2hhbm5lbHMgd291bGQgaGF2ZSB0byB3YWl0LCByYXRoZXIgdGhhbiBoYW5kbGluZyBz
eW5jaHJvbm91c2x5LiAgVGhhdCB3b3VsZCBicmluZyB1cyBmb2xsb3dpbmcgaXNzdWVzOgogMS4g
SWYgc29tZSBsZXNzIGltcG9ydGFudCBjaGFubmVscyAobGlrZSB1c2IgY2hhbm5lbHMpIGFyZSB0
cmFuc2ZlcmluZyBiaWcgZGF0YSwgaW1wb3J0YW50IGNoYW5uZWxzIChtYWluLWNoYW5uZWwsIGRp
c3BsYXktY2hhbm5lbCxpbnB1dC1jaGFubmVsKSB3aWxsIGJlIGFmZmVjdGVkLiAgCiAyLiBXaGVu
IHJlY2VpdmluZyBiaWcgZGF0YSBsaWtlIGZpbGUgdHJhbnNmZXJpbmcoR19JT19JTiksIHNlbmQg
ZXZlbnQgKEdfSU9fT1VUKSB3aWxsIG5vdCBiZSB0cmlnZ2VyZWQuCiAzLiBGbG93IGNvbnRyb2wg
YmV0d2VlbiBkaWZmZXJlbnQgY2hhbm5lbHMgd2lsbCBiZSBoYXJkIHRvIGRvLiAKCgpJcyBpcyBw
b3NzaWJsZShhbmQgbWFrZSBzZW5zZSkgdG8gcHV0IGNoYW5uZWxzIGludG8gZGlmZmVyZW50IHRo
cmVhZHMgc28gdGhleSBjYW4gc3luY2hyb25vdXNseSByZWNlaXZlICYgc2VuZCBtc2csIHdpdGhv
dXQgYWZmZWN0IGVhY2ggb3RoZXI/CgoKQlIsCkRvbg==
------=_Part_86442_22816324.1591950389330
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SGksPC9kaXY+PGRpdiBz
dHlsZT0ibWFyZ2luOjA7Ij48YnI+PC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjA7Ij5TcGljZS1n
dGsgaXMgbm93IHVzaW5nIGNvLXJvdXRpbmUgdG8gaGFuZGxlIGRpZmZlcmVudCBjaGFubmVsIGNv
bm5lY3Rpb25zLiBXaGVuIGEgY2hhbm5lbCBpcyBoYW5kbGluZyBkYXRhLCBvdGhlciBjaGFubmVs
cyB3b3VsZCBoYXZlIHRvIHdhaXQsIHJhdGhlciB0aGFuIGhhbmRsaW5nIHN5bmNocm9ub3VzbHku
Jm5ic3A7IFRoYXQgd291bGQgYnJpbmcgdXMgZm9sbG93aW5nIGlzc3Vlczo8L2Rpdj48ZGl2IHN0
eWxlPSJtYXJnaW46MDsiPiZuYnNwOzEuIElmIHNvbWUgbGVzcyBpbXBvcnRhbnQgY2hhbm5lbHMg
KGxpa2UgdXNiIGNoYW5uZWxzKSBhcmUgdHJhbnNmZXJpbmcgYmlnIGRhdGEsIGltcG9ydGFudCBj
aGFubmVscyAobWFpbi1jaGFubmVsLCBkaXNwbGF5LWNoYW5uZWwsaW5wdXQtY2hhbm5lbCkgd2ls
bCBiZSBhZmZlY3RlZC4mbmJzcDsmbmJzcDs8L2Rpdj48ZGl2IHN0eWxlPSJtYXJnaW46MDsiPiZu
YnNwOzIuIFdoZW4gcmVjZWl2aW5nIGJpZyBkYXRhIGxpa2UgZmlsZSB0cmFuc2ZlcmluZyhHX0lP
X0lOKSwgc2VuZCBldmVudCAoR19JT19PVVQpIHdpbGwgbm90IGJlIHRyaWdnZXJlZC48L2Rpdj48
ZGl2IHN0eWxlPSJtYXJnaW46MDsiPiZuYnNwOzMuIEZsb3cgY29udHJvbCBiZXR3ZWVuIGRpZmZl
cmVudCBjaGFubmVscyB3aWxsIGJlIGhhcmQgdG8gZG8uJm5ic3A7PC9kaXY+PGRpdiBzdHlsZT0i
bWFyZ2luOjA7Ij48YnI+PC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjA7Ij5JcyBpcyBwb3NzaWJs
ZShhbmQgbWFrZSBzZW5zZSkgdG8gcHV0IGNoYW5uZWxzIGludG8gZGlmZmVyZW50IHRocmVhZHMg
c28gdGhleSBjYW4gc3luY2hyb25vdXNseSByZWNlaXZlICZhbXA7IHNlbmQgbXNnLCB3aXRob3V0
IGFmZmVjdCBlYWNoIG90aGVyPzwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+PGJyPjwvZGl2
PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+QlIsPC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjA7Ij5E
b248L2Rpdj48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJuZXRlYXNlZm9vdGVyIj48cD4mbmJz
cDs8L3A+PC9zcGFuPg==
------=_Part_86442_22816324.1591950389330--


--===============0588231955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel

--===============0588231955==--

