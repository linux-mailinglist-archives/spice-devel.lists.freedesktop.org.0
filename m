Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9589BAD949
	for <lists+spice-devel@lfdr.de>; Mon,  9 Sep 2019 14:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2831589A1F;
	Mon,  9 Sep 2019 12:42:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 324 seconds by postgrey-1.36 at gabe;
 Mon, 09 Sep 2019 12:28:04 UTC
Received: from mail3-165.sinamail.sina.com.cn (mail3-165.sinamail.sina.com.cn
 [202.108.3.165])
 by gabe.freedesktop.org (Postfix) with SMTP id E5ADB8991A
 for <spice-devel@lists.freedesktop.org>; Mon,  9 Sep 2019 12:28:03 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([61.148.244.178])
 by sina.com with ESMTP
 id 5D7641CB0002754D; Mon, 9 Sep 2019 20:13:02 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 314662630154
From: Hillf Danton <hdanton@sina.com>
To: Gerd Hoffmann <kraxel@redhat.com>,
	Jaak Ristioja <jaak@ristioja.ee>
Date: Mon,  9 Sep 2019 20:12:50 +0800
Message-Id: <20190909121250.11176-1-hdanton@sina.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 09 Sep 2019 12:42:44 +0000
Subject: Re: [Spice-devel] Xorg indefinitely hangs in kernelspace
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, spice-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Ck9uIE1vbiwgOSBTZXAgMjAxOSBmcm9tIEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29t
Pgo+Cj4gSG1tLCBJIHRoaW5rIHRoZSBwYXRjaCBpcyB3cm9uZy4KCkhtbS4uLml0IHNob3VsZCBo
YXZlIGFkZGVkIGNoYW5nZSBvbmx5IGluIHRoZSBlcnJvciBwYXRoLCBsZWF2aW5nIGxvY2tzCmZv
ciBkcml2ZXJzIHRvIHJlbGVhc2UgaWYgam9iIGlzIGRvbmUgd2l0aCBubyBlcnJvciByZXR1cm5l
ZC4KCj4gQXMgZmFyIEkga25vdyBpdCBpcyB0aGUgcXhsIGRyaXZlcnMncwo+IGpvYiB0byBjYWxs
IHR0bV9ldV9iYWNrb2ZmX3Jlc2VydmF0aW9uKCkuCgpMaWtlIG90aGVyIGRyaXZlcnMsIHF4bCBp
cyBjdXJyZW50bHkgZG9pbmcgdGhlIHJpZ2h0LgoKPiBEb2luZyB0aGF0IGF1dG9tYXRpY2FsbHkg
aW4KPiB0dG0gd2lsbCBtb3N0IGxpa2VseSBicmVhayBvdGhlciB0dG0gdXNlcnMuCj4KWW91IGFy
ZSByaWdodC4gVGhleSBhcmUgcmVzcG9uc2libGUgZm9yIGRvaW5nIGJhY2tvZmYgaWYgZXJyb3Ig
aGFwcGVucwp3aGlsZSB2YWxpZGF0aW5nIGJ1ZmZlcnMgYWZ0ZXJ3YXJkcy4KCgotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vdHRtL3R0bV9leGVjYnVmX3V0aWwuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9leGVjYnVmX3V0aWwuYwpAQCAtMTExLDggKzExMSwxMCBAQCBpbnQgdHRtX2V1X3Jl
c2VydmVfYnVmZmVycyhzdHJ1Y3Qgd3dfYWNxCiAKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KGVudHJ5
LCBsaXN0LCBoZWFkKSB7CiAJCXN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8gPSBlbnRyeS0+
Ym87CisJCWJvb2wgbG9ja29uOwogCiAJCXJldCA9IF9fdHRtX2JvX3Jlc2VydmUoYm8sIGludHIs
ICh0aWNrZXQgPT0gTlVMTCksIHRpY2tldCk7CisJCWxvY2tvbiA9ICFyZXQ7CiAJCWlmICghcmV0
ICYmIHVubGlrZWx5KGF0b21pY19yZWFkKCZiby0+Y3B1X3dyaXRlcnMpID4gMCkpIHsKIAkJCXJl
c2VydmF0aW9uX29iamVjdF91bmxvY2soYm8tPnJlc3YpOwogCkBAIC0xNTEsNiArMTUzLDcgQEAg
aW50IHR0bV9ldV9yZXNlcnZlX2J1ZmZlcnMoc3RydWN0IHd3X2FjcQogCQkJCXJldCA9IDA7CiAJ
CQl9CiAJCX0KKwkJbG9ja29uID0gIXJldDsKIAogCQlpZiAoIXJldCAmJiBlbnRyeS0+bnVtX3No
YXJlZCkKIAkJCXJldCA9IHJlc2VydmF0aW9uX29iamVjdF9yZXNlcnZlX3NoYXJlZChiby0+cmVz
diwKQEAgLTE2Myw2ICsxNjYsOCBAQCBpbnQgdHRtX2V1X3Jlc2VydmVfYnVmZmVycyhzdHJ1Y3Qg
d3dfYWNxCiAJCQkJd3dfYWNxdWlyZV9kb25lKHRpY2tldCk7CiAJCQkJd3dfYWNxdWlyZV9maW5p
KHRpY2tldCk7CiAJCQl9CisJCQlpZiAobG9ja29uKQorCQkJCXR0bV9ldV9iYWNrb2ZmX3Jlc2Vy
dmF0aW9uX3JldmVyc2UobGlzdCwgZW50cnkpOwogCQkJcmV0dXJuIHJldDsKIAkJfQogCi0tCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
