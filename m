Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2764F7C4E2F
	for <lists+spice-devel@lfdr.de>; Wed, 11 Oct 2023 11:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B48E910E5E1;
	Wed, 11 Oct 2023 09:06:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 903 seconds by postgrey-1.36 at gabe;
 Wed, 11 Oct 2023 08:47:07 UTC
Received: from m1391.mail.163.com (m1391.mail.163.com [220.181.13.91])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1D4CB10E5C4
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Oct 2023 08:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
 Message-ID; bh=JcZWY0soQENoMCOvfydq+NREdBfYDYzbNheUB8H0gO8=; b=k
 hPFbXRLRWda6IusI2RI1eG9D+QcxzOxAAnyy3Fqy9No763xqKCeMjf8ifZpSGbI+
 CD1azW3JhmidESAeej7uDJzf0K2bS2ZvMzvN/4xtH/8yhP/eTwokLMLWFoGIIT0r
 fHZthOLlk/6WX3oGkgLFtCpH/sICpH/p//0iXJpZJM=
Received: from wangxuesonger$163.com ( [119.80.184.49] ) by
 ajax-webmail-wmsvr91 (Coremail) ; Wed, 11 Oct 2023 16:31:56 +0800 (CST)
X-Originating-IP: [119.80.184.49]
Date: Wed, 11 Oct 2023 16:31:56 +0800 (CST)
From: =?GBK?B?zfXRqcvJ?= <wangxuesonger@163.com>
To: spice-devel@lists.freedesktop.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163com
X-NTES-SC: AL_QuySBfyavEkq4CGeZekXnkwVgOw4XMK0vfgg3YFXPp80pir8xx05dHZoDX/y28aUDQOouRGObgJU7vZddptoYqYicQcN2Jy1kDmDMJdY6UVO
Content-Type: multipart/alternative; 
 boundary="----=_Part_74911_2067564785.1697013116162"
MIME-Version: 1.0
Message-ID: <7330fd29.4eeb.18b1ddd2d02.Coremail.wangxuesonger@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: W8GowAD3f+R8XSZlFRQVAA--.25035W
X-CM-SenderInfo: pzdqw5pxhv00xjhuqiywtou0bp/1tbiyQEDbWI68WAKzwACso
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Mailman-Approved-At: Wed, 11 Oct 2023 09:06:53 +0000
Subject: [Spice-devel] spice protocal connection issue
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

------=_Part_74911_2067564785.1697013116162
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGk6CkkgaGF2ZSBhIHF1ZXN0aW9uLiBXaXRoaW4gdGhlIHNhbWUgbG9jYWwgYXJlYSBuZXR3b3Jr
LCBJIGNhbiBmcmVlbHkgYWNjZXNzIHRoZSB2aXJ0dWFsIG1hY2hpbmUgdXNpbmcgU3BpY2UsIGJ1
dCBvdGhlciBtYWNoaW5lcyBvZnRlbiBmYWlsIHRvIGNvbm5lY3QuIEl0IHRha2VzIGRvemVucyBv
ZiBhdHRlbXB0cyBzb21ldGltZXMgdG8gc3VjY2Vzc2Z1bGx5IGVzdGFibGlzaCBhIGNvbm5lY3Rp
b24uIEknZCBsaWtlIHRvIGtub3cgdGhlIHJlYXNvbiBiZWhpbmQgdGhpcy4gQ291bGQgaXQgYmUg
ZHVlIHRvIGEgY2FjaGluZyBtZWNoYW5pc20gb3Igc29tZSByZXN0cmljdGlvbnMgdGhhdCBsaW1p
dCBvdGhlciBwZW9wbGUncyBsb2dpbiBhY2Nlc3M/IFRoYW5rIHlvdS4KCgpMb29raW5nIGZvcndh
cmQgdG8geW91ciByZXBseS4=
------=_Part_74911_2067564785.1697013116162
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SGk6PC9kaXY+PGRpdiBz
dHlsZT0ibWFyZ2luOjA7Ij5JIGhhdmUgYSBxdWVzdGlvbi4gV2l0aGluIHRoZSBzYW1lIGxvY2Fs
IGFyZWEgbmV0d29yaywgSSBjYW4gZnJlZWx5IGFjY2VzcyB0aGUgdmlydHVhbCBtYWNoaW5lIHVz
aW5nIFNwaWNlLCBidXQgb3RoZXIgbWFjaGluZXMgb2Z0ZW4gZmFpbCB0byBjb25uZWN0LiBJdCB0
YWtlcyBkb3plbnMgb2YgYXR0ZW1wdHMgc29tZXRpbWVzIHRvIHN1Y2Nlc3NmdWxseSBlc3RhYmxp
c2ggYSBjb25uZWN0aW9uLiBJJ2QgbGlrZSB0byBrbm93IHRoZSByZWFzb24gYmVoaW5kIHRoaXMu
IENvdWxkIGl0IGJlIGR1ZSB0byBhIGNhY2hpbmcgbWVjaGFuaXNtIG9yIHNvbWUgcmVzdHJpY3Rp
b25zIHRoYXQgbGltaXQgb3RoZXIgcGVvcGxlJ3MgbG9naW4gYWNjZXNzPyBUaGFuayB5b3UuPC9k
aXY+PGRpdiBzdHlsZT0ibWFyZ2luOjA7Ij48YnI+PC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjA7
Ij5Mb29raW5nIGZvcndhcmQgdG8geW91ciByZXBseS48L2Rpdj48L2Rpdj4=
------=_Part_74911_2067564785.1697013116162--

