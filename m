Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93477B40EC
	for <lists+spice-devel@lfdr.de>; Mon, 16 Sep 2019 21:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E636EA47;
	Mon, 16 Sep 2019 19:13:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 235CF6EA3C
 for <spice-devel@lists.freedesktop.org>; Mon, 16 Sep 2019 19:13:48 +0000 (UTC)
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1i9wRX-0003Nb-7r
 for spice-devel@lists.freedesktop.org; Mon, 16 Sep 2019 14:13:47 -0500
From: Jeremy White <jwhite@codeweavers.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 16 Sep 2019 14:13:31 -0500
Message-Id: <20190916191333.27139-9-jwhite@codeweavers.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190916191333.27139-1-jwhite@codeweavers.com>
References: <20190916191333.27139-1-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gjfSHJGvN1TCcaXuO4/bBKfNns4MQP4ZnNJdPKTsCY8=; b=t9vpQmGoyzLaCeY55KhTVY7vQx
 1hrvMt+gKj63GnAu9r0USxHC2OBxo8rbt2SloVfZV6PuLi3IDrGbmxuoh2m1kaf5c5paa0IZCIN3G
 07VT65/z1jF+J4nRtpiTDTDg6FXOtswdag3WsOuFdsfelcYkGfJpe+wSDMTeDZ/+gSDA=;
Subject: [Spice-devel] [PATCH x11spice 08/10] Do not provide a stub
 client_monitors_config in the QXLInterface.
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

VXNpbmcgTlVMTCBjYXVzZXMgdGhlIHNlcnZlciB0byByZWxheSB0aGUgbWVzc2FnZSBvbiB0byB0
aGUgYWdlbnQsCndoaWNoIGRvZXMgYSBzdXBlcmlvciBqb2IgdG8gYW55dGhpbmcgd2UgY3VycmVu
dGx5IHdhbnQgdG8gZG8uCgpTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rl
d2VhdmVycy5jb20+Ci0tLQogc3JjL3NwaWNlLmMgfCAyNyArKystLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3NyYy9zcGljZS5jIGIvc3JjL3NwaWNlLmMKaW5kZXggMDhhNWQwOWEuLmU5
YmVlYzAxIDEwMDY0NAotLS0gYS9zcmMvc3BpY2UuYworKysgYi9zcmMvc3BpY2UuYwpAQCAtMzM0
LDI5ICszMzQsNiBAQCBzdGF0aWMgdm9pZCB1cGRhdGVfYXJlYV9jb21wbGV0ZShRWExJbnN0YW5j
ZSAqcWluIEdfR05VQ19VTlVTRUQsCiAgICAgZ19kZWJ1ZygiVE9ETzogJXMgVU5JTVBMRU1FTlRF
RCEiLCBfX2Z1bmNfXyk7CiB9CiAKLXN0YXRpYyBpbnQgY2xpZW50X21vbml0b3JzX2NvbmZpZyhR
WExJbnN0YW5jZSAqcWluIEdfR05VQ19VTlVTRUQsCi0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgVkRBZ2VudE1vbml0b3JzQ29uZmlnICptb25pdG9yc19jb25maWcpCi17Ci0gICAg
dWludCBpOwotICAgIGlmICghbW9uaXRvcnNfY29uZmlnKSB7Ci0gICAgICAgIC8qIGEgTlVMTCBp
cyB1c2VkIGFzIGEgdGVzdCB0byBzZWUgaWYgd2Ugc3VwcG9ydCB0aGlzIGZ1bmN0aW9uICovCi0g
ICAgICAgIGdfZGVidWcoIiVzOiBOVUxMIG1vbml0b3JzX2NvbmZpZyIsIF9fZnVuY19fKTsKLSAg
ICAgICAgcmV0dXJuIFRSVUU7Ci0gICAgfQotCi0gICAgZ19kZWJ1ZygiJXM6IFtudW0gJWR8Zmxh
Z3MgMHgleF0iLCBfX2Z1bmNfXywgbW9uaXRvcnNfY29uZmlnLT5udW1fb2ZfbW9uaXRvcnMsCi0g
ICAgICAgICAgICBtb25pdG9yc19jb25maWctPmZsYWdzKTsKLSAgICBmb3IgKGkgPSAwOyBpIDwg
bW9uaXRvcnNfY29uZmlnLT5udW1fb2ZfbW9uaXRvcnM7IGkrKykKLSAgICAgICAgZ19kZWJ1Zygi
ICAlZDpbaGVpZ2h0ICVkfHdpZHRoICVkfGRlcHRoICVkfHggJWR8eSAlZF0iLCBpLAotICAgICAg
ICAgICAgICAgIG1vbml0b3JzX2NvbmZpZy0+bW9uaXRvcnNbaV0uaGVpZ2h0LAotICAgICAgICAg
ICAgICAgIG1vbml0b3JzX2NvbmZpZy0+bW9uaXRvcnNbaV0ud2lkdGgsCi0gICAgICAgICAgICAg
ICAgbW9uaXRvcnNfY29uZmlnLT5tb25pdG9yc1tpXS5kZXB0aCwKLSAgICAgICAgICAgICAgICBt
b25pdG9yc19jb25maWctPm1vbml0b3JzW2ldLngsIG1vbml0b3JzX2NvbmZpZy0+bW9uaXRvcnNb
aV0ueSk7Ci0KLSAgICBnX2RlYnVnKCJUT0RPOiAlcyBVTklNUExFTUVOVEVEIiwgX19mdW5jX18p
OwotICAgIHJldHVybiBGQUxTRTsKLX0KLQogLyogc3BpY2Ugc2VuZHMgQVQgc2NhbmNvZGVzICh3
aXRoIGEgc3RyYW5nZSBlc2NhcGUpLgogICogQnV0IHhmODZQb3N0S2V5Ym9hcmRFdmVudCBleHBl
Y3RzIHNjYW5jb2Rlcy4gQXBwYXJlbnRseSBtb3N0IG9mIHRoZSB0aW1lCiAgKiB5b3UganVzdCBu
ZWVkIHRvIGFkZCBNSU5fS0VZQ09ERSwgc2VlIHhmODYtaW5wdXQta2V5Ym9hcmQvc3JjL2F0S2V5
bmFtZXMKQEAgLTU0NSw3ICs1MjIsOSBAQCB2b2lkIGluaXRpYWxpemVfc3BpY2VfaW5zdGFuY2Uo
c3BpY2VfdCAqcykKICAgICAgICAgLmZsdXNoX3Jlc291cmNlcyA9IGZsdXNoX3Jlc291cmNlcywK
ICAgICAgICAgLmFzeW5jX2NvbXBsZXRlID0gYXN5bmNfY29tcGxldGUsCiAgICAgICAgIC51cGRh
dGVfYXJlYV9jb21wbGV0ZSA9IHVwZGF0ZV9hcmVhX2NvbXBsZXRlLAotICAgICAgICAuY2xpZW50
X21vbml0b3JzX2NvbmZpZyA9IGNsaWVudF9tb25pdG9yc19jb25maWcsCisgICAgICAgIC5jbGll
bnRfbW9uaXRvcnNfY29uZmlnID0gTlVMTCwgICAgIC8qIFNwZWNpZnlpbmcgTlVMTCBoZXJlIGNh
dXNlcworICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGUg
YmV0dGVyIGxvZ2ljIGluIHRoZSBhZ2VudAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB0byBvcGVyYXRlICovCiAgICAgICAgIC5zZXRfY2xpZW50X2NhcGFi
aWxpdGllcyA9IE5VTEwsICAgIC8qIEFsbG93ZWQgdG8gYmUgdW5zZXQgKi8KICAgICB9OwogCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
