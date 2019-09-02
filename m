Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FA8A5419
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 12:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADB9889A5D;
	Mon,  2 Sep 2019 10:35:30 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5E989A5C
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:35:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AAD9B8980F4
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 10:35:27 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C86CD5C298;
 Mon,  2 Sep 2019 10:35:26 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 11:35:19 +0100
Message-Id: <20190902103520.29210-2-fziglio@redhat.com>
In-Reply-To: <20190902103520.29210-1-fziglio@redhat.com>
References: <20190902103520.29210-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Mon, 02 Sep 2019 10:35:27 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v2 2/3] usb-device-manager: Remove
 isochronous field from _SpiceUsbDevice
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

UmVwb3J0IGRpcmVjdGx5IHZhbHVlIGZyb20gU3BpY2VVc2JCYWNrZW5kRGV2aWNlLgoKU2lnbmVk
LW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3JjL3Vz
Yi1kZXZpY2UtbWFuYWdlci5jIHwgNCArLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5j
IGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCmluZGV4IGIzZGI1ZGU2Li5iODViMjBkZSAxMDA2
NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2ItZGV2aWNlLW1h
bmFnZXIuYwpAQCAtMTIzLDcgKzEyMyw2IEBAIGVudW0gewogc3RydWN0IF9TcGljZVVzYkRldmlj
ZSB7CiAgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpiZGV2OwogICAgIGdpbnQgICAgcmVmOwot
ICAgIGdib29sZWFuIGlzb2Nocm9ub3VzOwogfTsKIAogCkBAIC0xNDg5LDcgKzE0ODgsNiBAQCBz
dGF0aWMgU3BpY2VVc2JEZXZpY2UgKnNwaWNlX3VzYl9kZXZpY2VfbmV3KFNwaWNlVXNiQmFja2Vu
ZERldmljZSAqYmRldikKIAogICAgIGluZm8tPnJlZiA9IDE7CiAgICAgaW5mby0+YmRldiA9IHNw
aWNlX3VzYl9iYWNrZW5kX2RldmljZV9yZWYoYmRldik7Ci0gICAgaW5mby0+aXNvY2hyb25vdXMg
PSBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfaXNvY2goYmRldik7CiAKICAgICByZXR1cm4gaW5m
bzsKIH0KQEAgLTE1MzgsNyArMTUzNiw3IEBAIGdib29sZWFuIHNwaWNlX3VzYl9kZXZpY2VfaXNf
aXNvY2hyb25vdXMoY29uc3QgU3BpY2VVc2JEZXZpY2UgKmluZm8pCiB7CiAgICAgZ19yZXR1cm5f
dmFsX2lmX2ZhaWwoaW5mbyAhPSBOVUxMLCAwKTsKIAotICAgIHJldHVybiBpbmZvLT5pc29jaHJv
bm91czsKKyAgICByZXR1cm4gc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2lzb2NoKGluZm8tPmJk
ZXYpOwogfQogCiAjaWZkZWYgR19PU19XSU4zMgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
