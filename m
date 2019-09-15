Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B9CB2F68
	for <lists+spice-devel@lfdr.de>; Sun, 15 Sep 2019 11:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13886E073;
	Sun, 15 Sep 2019 09:41:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B426E073
 for <spice-devel@lists.freedesktop.org>; Sun, 15 Sep 2019 09:41:00 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E9A1B2DD3B
 for <spice-devel@lists.freedesktop.org>; Sun, 15 Sep 2019 09:40:59 +0000 (UTC)
Received: by mail-wm1-f69.google.com with SMTP id t185so3945599wmg.4
 for <spice-devel@lists.freedesktop.org>; Sun, 15 Sep 2019 02:40:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=nh6w34T83f7KJwQkSNzCIArUuNbo8C0Uy0bO6zh3E70=;
 b=cr2T9PjvuvZoxVm5eQW3rmmiNF7SWVeQxkCT5JJ9ntUCoH/6LRx0B5easCLu+7NeOH
 P0D/SUOUedWHfr0GSwmp64Ex00UioESKs9DZnePW/VFnovxWFVRKfEYPln+TdiqTumew
 aqp+Xxi16df4kO0vIdIlkev2xmDQVTdi5v4MYv/fk6tq5UCbxs3eW6p3qbI09bpXXMJR
 2WkVVb9NPHaY0n7wYqtLADoHJ+NSB+ErShjD5IC9yGII0npvpLoNFJ9diDiuoZFKagIV
 K/dHozcbI5mdS5y/AOknjSdr8s9/Y8v7bB3L+8/RMkifs2+Ao1DUNslyhH/euK/yxWUM
 F4dw==
X-Gm-Message-State: APjAAAXoT0R69ZRkoMGlogq/lmWcVGLmdVeCAVAWMLqbwWV9oYi+EIyY
 2lBPn5xGOtBTKPW3G8Px/MuamSdXdfV2agfxa8r+WPsm8+OlL89DcTvWn5/HbS0Qw082BAQVJ1k
 Y/DiTzMitFov0vMx5jcQ1hwCfEqmVjtE=
X-Received: by 2002:a5d:6812:: with SMTP id w18mr7910225wru.250.1568540458309; 
 Sun, 15 Sep 2019 02:40:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy9SWLlTqYXs12kcayM7Kptxt1Fw/1r6rrwYqspgchRjWjzbpXQln0YnnYzUgSfKa/unyn1OQ==
X-Received: by 2002:a5d:6812:: with SMTP id w18mr7910213wru.250.1568540458000; 
 Sun, 15 Sep 2019 02:40:58 -0700 (PDT)
Received: from dhcp-4-140.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id t8sm11944508wrx.76.2019.09.15.02.40.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Sep 2019 02:40:57 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190826083948.29309-1-ssheribe@redhat.com>
 <20190826083948.29309-2-ssheribe@redhat.com>
 <954105956.9951945.1567003705511.JavaMail.zimbra@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <82487917-fc0b-7101-3083-b29d90bdb2c1@redhat.com>
Date: Sun, 15 Sep 2019 12:40:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <954105956.9951945.1567003705511.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [RFC spice-streaminh-agent 2/3] mjpeg-fallback:
 Use Xlib capture helper
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
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Ck9uIDgvMjgvMTkgNTo0OCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+PiAtLS0KPj4gICBz
cmMvTWFrZWZpbGUuYW0gICAgICAgIHwgIDQgKysrKwo+PiAgIHNyYy9tanBlZy1mYWxsYmFjay5j
cHAgfCAzOCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgIDIgZmls
ZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9zcmMvTWFrZWZpbGUuYW0gYi9zcmMvTWFrZWZpbGUuYW0KPj4gaW5kZXggMDEzM2Jm
NS4uMzFiOGFmMSAxMDA2NDQKPj4gLS0tIGEvc3JjL01ha2VmaWxlLmFtCj4+ICsrKyBiL3NyYy9N
YWtlZmlsZS5hbQo+PiBAQCAtMjEsNiArMjEsNyBAQCBBTV9DUFBGTEFHUyA9IFwKPj4gICAJJChY
MTFfQ0ZMQUdTKSBcCj4+ICAgCSQoWEZJWEVTX0NGTEFHUykgXAo+PiAgIAkkKFhSQU5EUl9DRkxB
R1MpIFwKPj4gKwkkKFhFWFRfQ0ZMQUdTKSBcCj4+ICAgCSQoTlVMTCkKPj4gICAKPj4gICBBTV9D
RkxBR1MgPSBcCj4+IEBAIC01Niw2ICs1Nyw3IEBAIHNwaWNlX3N0cmVhbWluZ19hZ2VudF9MREFE
RCA9IFwKPj4gICAJJChYMTFfTElCUykgXAo+PiAgIAkkKFhGSVhFU19MSUJTKSBcCj4+ICAgCSQo
WFJBTkRSX0xJQlMpIFwKPj4gKwkkKFhFWFRfTElCUykgXAo+PiAgIAkkKEpQRUdfTElCUykgXAo+
PiAgIAkkKE5VTEwpCj4+ICAgCj4+IEBAIC03Nyw2ICs3OSw4IEBAIHNwaWNlX3N0cmVhbWluZ19h
Z2VudF9TT1VSQ0VTID0gXAo+PiAgIAl1dGlscy5jcHAgXAo+PiAgIAl1dGlscy5ocHAgXAo+PiAg
IAl4MTEtZGlzcGxheS1pbmZvLmNwcCBcCj4+ICsJeGxpYi1jYXB0dXJlLmNwcCBcCj4+ICsJeGxp
Yi1jYXB0dXJlLmhwcCBcCj4+ICAgCSQoTlVMTCkKPj4gICAKPj4gICBpZiBIQVZFX0dTVAo+PiBk
aWZmIC0tZ2l0IGEvc3JjL21qcGVnLWZhbGxiYWNrLmNwcCBiL3NyYy9tanBlZy1mYWxsYmFjay5j
cHAKPj4gaW5kZXggMDMyNDdhMS4uYTQzODI1YiAxMDA2NDQKPj4gLS0tIGEvc3JjL21qcGVnLWZh
bGxiYWNrLmNwcAo+PiArKysgYi9zcmMvbWpwZWctZmFsbGJhY2suY3BwCj4+IEBAIC0xNiw2ICsx
Niw3IEBACj4+ICAgI2luY2x1ZGUgPHNzdHJlYW0+Cj4+ICAgI2luY2x1ZGUgPG1lbW9yeT4KPj4g
ICAjaW5jbHVkZSA8c3lzbG9nLmg+Cj4+ICsjaW5jbHVkZSAieGxpYi1jYXB0dXJlLmhwcCIKPj4g
ICAKPj4gICB1c2luZyBuYW1lc3BhY2Ugc3BpY2U6OnN0cmVhbWluZ19hZ2VudDsKPj4gICAKPj4g
QEAgLTQ0LDExICs0NSwxMCBAQCBwdWJsaWM6Cj4+ICAgcHJpdmF0ZToKPj4gICAgICAgTWpwZWdT
ZXR0aW5ncyBzZXR0aW5nczsKPj4gICAgICAgRGlzcGxheSAqY29uc3QgZHB5Owo+PiArICAgIFhs
aWJDYXB0dXJlICp4YzsKPiB1bmlxdWVfcHRyID8KCkhpLAoKSnVzdCBub3RpY2VkLCBpZiBpdCdz
IGEgdW5pcXVlX3B0ciBjb25uZWN0aW9uIHdpdGggWCBtYXkgYmUgZGVzdHJveWVkIGJlZm9yZQp0
aGF0IChieSB+TWpwZWdGcmFtZUNhcHR1cmUpCgpTbmlyLgoKPgo+PiAgIAo+PiAgICAgICBzdGQ6
OnZlY3Rvcjx1aW50OF90PiBmcmFtZTsKPj4gICAKPj4gLSAgICAvLyBsYXN0IGZyYW1lIHNpemVz
Cj4+IC0gICAgaW50IGxhc3Rfd2lkdGggPSAtMSwgbGFzdF9oZWlnaHQgPSAtMTsKPj4gICAgICAg
Ly8gbGFzdCB0aW1lIGJlZm9yZSBjYXB0dXJlCj4+ICAgICAgIHVpbnQ2NF90IGxhc3RfdGltZSA9
IDA7Cj4+ICAgfTsKPj4gQEAgLTU4LDE5ICs1OCwyMSBAQCBwcml2YXRlOgo+PiAgIE1qcGVnRnJh
bWVDYXB0dXJlOjpNanBlZ0ZyYW1lQ2FwdHVyZShjb25zdCBNanBlZ1NldHRpbmdzJiBzZXR0aW5n
cyk6Cj4+ICAgICAgIHNldHRpbmdzKHNldHRpbmdzKSxkcHkoWE9wZW5EaXNwbGF5KG51bGxwdHIp
KQo+PiAgIHsKPj4gLSAgICBpZiAoIWRweSkKPj4gKyAgICBpZiAoIWRweSkgewo+PiAgICAgICAg
ICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJVbmFibGUgdG8gaW5pdGlhbGl6ZSBYMTEiKTsK
Pj4gKyAgICB9Cj4+ICsgICAgeGMgPSBuZXcgWGxpYkNhcHR1cmUoZHB5KTsKPj4gICB9Cj4+ICAg
Cj4+ICAgTWpwZWdGcmFtZUNhcHR1cmU6On5NanBlZ0ZyYW1lQ2FwdHVyZSgpCj4+ICAgewo+PiAr
ICAgIGRlbGV0ZSB4YzsKPj4gICAgICAgWENsb3NlRGlzcGxheShkcHkpOwo+PiAgIH0KPj4gICAK
Pj4gICB2b2lkIE1qcGVnRnJhbWVDYXB0dXJlOjpSZXNldCgpCj4+ICAgewo+PiAgICAgICBmcmFt
ZS5jbGVhcigpOwo+PiAtICAgIGxhc3Rfd2lkdGggPSBsYXN0X2hlaWdodCA9IC0xOwo+PiAgIH0K
Pj4gICAKPj4gICBGcmFtZUluZm8gTWpwZWdGcmFtZUNhcHR1cmU6OkNhcHR1cmVGcmFtZSgpCj4+
IEBAIC0xMDAsMzQgKzEwMiwyMCBAQCBGcmFtZUluZm8gTWpwZWdGcmFtZUNhcHR1cmU6OkNhcHR1
cmVGcmFtZSgpCj4+ICAgICAgICAgICB9Cj4+ICAgICAgIH0KPj4gICAKPj4gLSAgICBpbnQgc2Ny
ZWVuID0gWERlZmF1bHRTY3JlZW4oZHB5KTsKPj4gLQo+PiAtICAgIFdpbmRvdyB3aW4gPSBSb290
V2luZG93KGRweSwgc2NyZWVuKTsKPj4gKyAgICBYSW1nICppbWFnZSA9IHhjLT5jYXB0dXJlKCk7
Cj4+ICAgCj4gVGhlIGNhcHR1cmUgcmV0dXJucyBhIE5VTEwgdmFsdWUgb24gZmFpbHVyZSwgYmV0
dGVyIHRvIGNoZWNrIGl0Cj4gKHdhcyAiLy8gVE9ETyBoYW5kbGUgZXJyb3JzIikuCj4KPj4gLSAg
ICBYV2luZG93QXR0cmlidXRlcyB3aW5faW5mbzsKPj4gLSAgICBYR2V0V2luZG93QXR0cmlidXRl
cyhkcHksIHdpbiwgJndpbl9pbmZvKTsKPj4gKyAgICBib29sIGlzX2ZpcnN0ID0gaW1hZ2UtPm5l
d19yZXNvbHV0aW9uKCk7Cj4+ICAgCj4+IC0gICAgYm9vbCBpc19maXJzdCA9IGZhbHNlOwo+PiAt
ICAgIGlmICh3aW5faW5mby53aWR0aCAhPSBsYXN0X3dpZHRoIHx8IHdpbl9pbmZvLmhlaWdodCAh
PSBsYXN0X2hlaWdodCkgewo+PiAtICAgICAgICBsYXN0X3dpZHRoID0gd2luX2luZm8ud2lkdGg7
Cj4+IC0gICAgICAgIGxhc3RfaGVpZ2h0ID0gd2luX2luZm8uaGVpZ2h0Owo+PiAtICAgICAgICBp
c19maXJzdCA9IHRydWU7Cj4+IC0gICAgfQo+PiArICAgIGluZm8uc2l6ZS53aWR0aCA9IGltYWdl
LT53aWR0aCgpOwo+PiArICAgIGluZm8uc2l6ZS5oZWlnaHQgPSBpbWFnZS0+aGVpZ2h0KCk7Cj4+
ICAgCj4+IC0gICAgaW5mby5zaXplLndpZHRoID0gd2luX2luZm8ud2lkdGg7Cj4+IC0gICAgaW5m
by5zaXplLmhlaWdodCA9IHdpbl9pbmZvLmhlaWdodDsKPj4gLQo+PiAtICAgIGludCBmb3JtYXQg
PSBaUGl4bWFwOwo+PiAtICAgIC8vIFRPRE8gaGFuZGxlIGVycm9ycwo+PiAtICAgIFhJbWFnZSAq
aW1hZ2UgPSBYR2V0SW1hZ2UoZHB5LCB3aW4sIHdpbl9pbmZvLngsIHdpbl9pbmZvLnksCj4+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3aW5faW5mby53aWR0aCwgd2luX2luZm8uaGVp
Z2h0LCBBbGxQbGFuZXMsCj4+IGZvcm1hdCk7Cj4+ICAgCj4+ICAgICAgIC8vIFRPRE8gaGFuZGxl
IGVycm9ycwo+PiAgICAgICAvLyBUT0RPIG11bHRpcGxlIGZvcm1hdHMgKG9ubHkgMzIgYml0KQo+
PiAtICAgIHdyaXRlX0pQRUdfZmlsZShmcmFtZSwgc2V0dGluZ3MucXVhbGl0eSwgKHVpbnQ4X3Qq
KSBpbWFnZS0+ZGF0YSwKPj4gLSAgICAgICAgICAgICAgICAgICAgaW1hZ2UtPndpZHRoLCBpbWFn
ZS0+aGVpZ2h0KTsKPj4gKyAgICB3cml0ZV9KUEVHX2ZpbGUoZnJhbWUsIHNldHRpbmdzLnF1YWxp
dHksICh1aW50OF90KikgaW1hZ2UtPmdldF9kYXRhKCksCj4+ICsgICAgICAgICAgICAgICAgICAg
IGltYWdlLT53aWR0aCgpLCBpbWFnZS0+aGVpZ2h0KCkpOwo+PiAgIAo+PiAtICAgIGltYWdlLT5m
LmRlc3Ryb3lfaW1hZ2UoaW1hZ2UpOwo+PiArICAgIGRlbGV0ZSBpbWFnZTsKPj4gICAKPj4gICAg
ICAgaW5mby5idWZmZXIgPSAmZnJhbWVbMF07Cj4+ICAgICAgIGluZm8uYnVmZmVyX3NpemUgPSBm
cmFtZS5zaXplKCk7Cj4gRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
