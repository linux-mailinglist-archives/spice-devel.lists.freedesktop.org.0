Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3333952924
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 12:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45BE88982E;
	Tue, 25 Jun 2019 10:12:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F27D38982E
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 10:12:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 942793086204
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 10:12:21 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 95D3560BE5;
 Tue, 25 Jun 2019 10:12:20 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 11:12:16 +0100
Message-Id: <20190625101217.13470-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 25 Jun 2019 10:12:21 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] coroutine: Fix some indentation
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

VGhlc2UgZmlsZXMgaGF2ZSBkaWZmZXJlbnQgaW5kZW50YXRpb24gcnVsZXMgKDggc3BhY2VzIHRh
YnMgaW5zdGVhZApvZiA0IHNwYWNlcykuCkZpeCBzb21lIHdyb25nIGluZGVudGF0aW9uLgoKU2ln
bmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogc3Jj
L2NvbnRpbnVhdGlvbi5jICAgICAgIHwgNCArKy0tCiBzcmMvY29yb3V0aW5lX3Vjb250ZXh0LmMg
fCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9zcmMvY29udGludWF0aW9uLmMgYi9zcmMvY29udGludWF0aW9uLmMKaW5k
ZXggYWRjZTg1ODguLmQwYjc3NDU0IDEwMDY0NAotLS0gYS9zcmMvY29udGludWF0aW9uLmMKKysr
IGIvc3JjL2NvbnRpbnVhdGlvbi5jCkBAIC04NSw4ICs4NSw4IEBAIGludCBjY19zd2FwKHN0cnVj
dCBjb250aW51YXRpb24gKmZyb20sIHN0cnVjdCBjb250aW51YXRpb24gKnRvKQogCQlyZXR1cm4g
LTE7CiAJZWxzZSBpZiAodG8tPmV4aXRlZCA9PSAwKQogCQl0by0+ZXhpdGVkID0gMTsgLy8gc28g
d2hlbiBjb3JvdXRpbmUgZmluaXNoZXMKLSAgICAgICAgZWxzZSBpZiAodG8tPmV4aXRlZCA9PSAx
KQotICAgICAgICAgICAgICAgIHJldHVybiAxOyAvLyBpdCBlbmRzIHVwIGhlcmUKKwllbHNlIGlm
ICh0by0+ZXhpdGVkID09IDEpCisJCXJldHVybiAxOyAvLyBpdCBlbmRzIHVwIGhlcmUKIAogCWlm
IChfc2V0am1wKGZyb20tPmptcCkgPT0gMCkKIAkJX2xvbmdqbXAodG8tPmptcCwgMSk7CmRpZmYg
LS1naXQgYS9zcmMvY29yb3V0aW5lX3Vjb250ZXh0LmMgYi9zcmMvY29yb3V0aW5lX3Vjb250ZXh0
LmMKaW5kZXggZDcwOWEzMzYuLmQ0ZTU3ZTZlIDEwMDY0NAotLS0gYS9zcmMvY29yb3V0aW5lX3Vj
b250ZXh0LmMKKysrIGIvc3JjL2Nvcm91dGluZV91Y29udGV4dC5jCkBAIC0xMzksNyArMTM5LDcg
QEAgdm9pZCAqY29yb3V0aW5lX3lpZWxkKHZvaWQgKmFyZykKIAogZ2Jvb2xlYW4gY29yb3V0aW5l
X2lzX21haW4oc3RydWN0IGNvcm91dGluZSAqY28pCiB7Ci0gICAgcmV0dXJuIChjbyA9PSAmbGVh
ZGVyKTsKKwlyZXR1cm4gKGNvID09ICZsZWFkZXIpOwogfQogLyoKICAqIExvY2FsIHZhcmlhYmxl
czoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
