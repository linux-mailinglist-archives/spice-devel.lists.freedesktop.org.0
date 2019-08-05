Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE4D8258E
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 21:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F24476E14B;
	Mon,  5 Aug 2019 19:27:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E46186E14A
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 19:27:12 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1huidl-0006Rw-9U
 for spice-devel@lists.freedesktop.org; Mon, 05 Aug 2019 14:27:29 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  5 Aug 2019 14:27:05 -0500
Message-Id: <20190805192707.18261-3-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190805192707.18261-1-jwhite@codeweavers.com>
References: <20190805192707.18261-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FLRalawJyAB7QcpisdVzQmD1414Ov52icuIxyJ5vVJ4=; b=TioC1GzKubBLtS2AlVEZs1Hlfw
 RR/eZms3ZOon1cJkZl6s9VOOChzbDGXpAPM9/mu3Rb6K2YV3d1u3hgyMjkMkzKZSH/8DN28Rw9I0i
 G0+2N68x1ghtxTvOtetEw4MYSg8zzl5SClxNG/ldUVdPK1+TLEJRuPXCE8MAS94TgNfo=;
Subject: [Spice-devel] [PATCH spice-html5 2/4] Support the keypad minus key
 in Chrome.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

VGhlIGtleXBhZCBtaW51cyBrZXkgYXQgMTA5IGlzIGNvbW1vbiBiZXR3ZWVuIGF0IGxlYXN0IENo
cm9tZSBhbmQgRmlyZWZveC4KClNpZ25lZC1vZmYtYnk6IEplcmVteSBXaGl0ZSA8andoaXRlQGNv
ZGV3ZWF2ZXJzLmNvbT4KLS0tCiBzcmMvdXRpbHMuanMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zcmMvdXRpbHMuanMg
Yi9zcmMvdXRpbHMuanMKaW5kZXggZjEyZWRmOS4uNTA1OWE1YiAxMDA2NDQKLS0tIGEvc3JjL3V0
aWxzLmpzCisrKyBiL3NyYy91dGlscy5qcwpAQCAtMjExLDYgKzIxMSw3IEBAIGNvbW1vbl9zY2Fu
bWFwWzk3XSAgICAgICAgICAgICAgICAgPSBLZXlOYW1lcy5LRVlfS1BfMTsKIGNvbW1vbl9zY2Fu
bWFwWzk4XSAgICAgICAgICAgICAgICAgPSBLZXlOYW1lcy5LRVlfS1BfMjsKIGNvbW1vbl9zY2Fu
bWFwWzk5XSAgICAgICAgICAgICAgICAgPSBLZXlOYW1lcy5LRVlfS1BfMzsKIGNvbW1vbl9zY2Fu
bWFwWzk2XSAgICAgICAgICAgICAgICAgPSBLZXlOYW1lcy5LRVlfS1BfMDsKK2NvbW1vbl9zY2Fu
bWFwWzEwOV0gICAgICAgICAgICAgICAgPSBLZXlOYW1lcy5LRVlfTWludXM7CiBjb21tb25fc2Nh
bm1hcFsxMTBdICAgICAgICAgICAgICAgID0gS2V5TmFtZXMuS0VZX0tQX0RlY2ltYWw7CiBjb21t
b25fc2Nhbm1hcFsxOTFdICAgICAgICAgICAgICAgID0gS2V5TmFtZXMuS0VZX1NsYXNoOwogY29t
bW9uX3NjYW5tYXBbMTkwXSAgICAgICAgICAgICAgICA9IEtleU5hbWVzLktFWV9QZXJpb2Q7CkBA
IC0yMjgsNyArMjI5LDYgQEAgY29tbW9uX3NjYW5tYXBbOTNdICAgICAgICAgICAgICAgICA9IDB4
RTA1RDsgLy9LZXlOYW1lcy5LRVlfTWVudQogLyogRmlyZWZveC9Nb3ppbGxhIGNvZGVzICovCiB2
YXIgZmlyZWZveF9zY2FubWFwID0gW107CiBmaXJlZm94X3NjYW5tYXBbMTczXSAgICAgICAgICAg
ICAgICA9IEtleU5hbWVzLktFWV9NaW51czsKLWZpcmVmb3hfc2Nhbm1hcFsxMDldICAgICAgICAg
ICAgICAgID0gS2V5TmFtZXMuS0VZX01pbnVzOwogZmlyZWZveF9zY2FubWFwWzYxXSAgICAgICAg
ICAgICAgICAgPSBLZXlOYW1lcy5LRVlfRXF1YWw7CiBmaXJlZm94X3NjYW5tYXBbNTldICAgICAg
ICAgICAgICAgICA9IEtleU5hbWVzLktFWV9TZW1pQ29sb247CiAKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
