Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6061C85044
	for <lists+spice-devel@lfdr.de>; Wed,  7 Aug 2019 17:50:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D146E72D;
	Wed,  7 Aug 2019 15:50:08 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64BA56E72D
 for <spice-devel@lists.freedesktop.org>; Wed,  7 Aug 2019 15:50:07 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id u25so524567wmc.4
 for <spice-devel@lists.freedesktop.org>; Wed, 07 Aug 2019 08:50:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e1drhtcfDBUFMJk698fSmktCxP8OPOyc317VpDDdgcc=;
 b=VwB9Ft0+1dgie/clFgyJdSQaqGDPvW49WE/s842ZrjIZ4Q0sdrbxYrUMgCmdSMWDcD
 TC0soF4M35cbF/pM0ldWp2SezHnZvMfQ1pH7cAclxNyZKDprAxgOo0D2T5hxf/9lFbw3
 1jGvWsemlUU9yYFwDnP6tDYWIYDEQsNLn8uGxwoIijskjGq5R6SxzYoHBwEH2KtbDkyN
 poiMi4OFO/cgU/XnkTVMgqf1LTuTPBXyCuRe7M0TZmTGdfvZJQeo5MujpWXSzNtnJemy
 KI0sxmTRn1w41GFU6JVsx1RKmkJnbDV7hsA4Uk/K1ZCLqWl1SS8ZwqgFLSHLjR+ZQSQ0
 W/MA==
X-Gm-Message-State: APjAAAUsEJ9/Ud0kJXUkx0/MY+9UzYw7s/k/u8f8ZjwTCwgXpJlRwH3L
 crSxIWtnl41+YWwxq/q5ZRyiZBxd7L41UA==
X-Google-Smtp-Source: APXvYqxaeskHwEaocXUZ4ykS4AEXcyqsptyV1KSpdrB7BTHFqH7rZbJlgsI9vtwSRW3JDCRSqtZUhA==
X-Received: by 2002:a1c:c5c2:: with SMTP id v185mr588662wmf.161.1565193005365; 
 Wed, 07 Aug 2019 08:50:05 -0700 (PDT)
Received: from localhost.localdomain (25.119.19.109.rev.sfr.net.
 [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id w13sm4013698wre.44.2019.08.07.08.50.04
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 08:50:04 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  7 Aug 2019 17:49:49 +0200
Message-Id: <20190807154949.28693-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190806153453.20616-9-kpouget@redhat.com>
References: <20190806153453.20616-9-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-gtk 1/2] streaming: make draw-area visible
 on MJPEG encoder creation
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

VGhpcyBwYXRjaCBhbGxvd3MgdGhlIE1KUEVHIGVuY29kZXIgdG8gaW5mb3JtIHRoZSBzcGljZS13
aWRnZXQgdGhhdAppdHMgdmlkZW8gZHJhd2luZyBhcmVhIChkcmF3LWFyZWEpIHNob3VsZCBiZSBt
YWRlIHZpc2libGUgb24gc2NyZWVuLgoKVGhpcyBpcyByZXF1aXJlZCB0byBzd2l0Y2ggZnJvbSBH
U1QgdmlkZW8gZGVjb2RpbmcgdG8gbmF0aXZlIE1KUEVHCmRlY29kaW5nLCBvdGhlcndpc2UgdGhl
IGdzdC1hcmVhIHJlbWFpbmVkIG9uIHRvcCBhbmQgdGhlIE1KUEVHIHZpZGVvCnN0cmVhbSB3YXMg
bmV2ZXIgc2hvd24uCgpTaWduZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQgPGtwb3VnZXRAcmVkaGF0
LmNvbT4KCi0tLQogc3JjL2NoYW5uZWwtZGlzcGxheS1tanBlZy5jIHwgIDIgKysKIHNyYy9jaGFu
bmVsLWRpc3BsYXktcHJpdi5oICB8ICAyICstCiBzcmMvY2hhbm5lbC1kaXNwbGF5LmMgICAgICAg
fCAzOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tCiBzcmMvc3BpY2UtbWFy
c2hhbC50eHQgICAgICAgfCAgMSArCiBzcmMvc3BpY2Utd2lkZ2V0LmMgICAgICAgICAgfCAxNiAr
KysrKysrKysrKysrKy0tCiA1IGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1tanBlZy5jIGIvc3Jj
L2NoYW5uZWwtZGlzcGxheS1tanBlZy5jCmluZGV4IDY0N2QzMWIuLjZmMWE0ZDcgMTAwNjQ0Ci0t
LSBhL3NyYy9jaGFubmVsLWRpc3BsYXktbWpwZWcuYworKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5
LW1qcGVnLmMKQEAgLTMwMCw1ICszMDAsNyBAQCBWaWRlb0RlY29kZXIqIGNyZWF0ZV9tanBlZ19k
ZWNvZGVyKGludCBjb2RlY190eXBlLCBkaXNwbGF5X3N0cmVhbSAqc3RyZWFtKQoKICAgICAvKiBB
bGwgdGhlIG90aGVyIGZpZWxkcyBhcmUgaW5pdGlhbGl6ZWQgdG8gemVybyBieSBnX25ldzAoKS4g
Ki8KCisgICAgc2hvd19tanBlZ193aWRnZXQoc3RyZWFtKTsKKwogICAgIHJldHVybiAoVmlkZW9E
ZWNvZGVyKilkZWNvZGVyOwogfQpkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2
LmggYi9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaAppbmRleCAxNmMxMmM2Li4zNDI0YThlIDEw
MDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaAorKysgYi9zcmMvY2hhbm5lbC1k
aXNwbGF5LXByaXYuaApAQCAtMTk5LDcgKzE5OSw3IEBAIHZvaWQgc3RyZWFtX2Ryb3BwZWRfZnJh
bWVfb25fcGxheWJhY2soZGlzcGxheV9zdHJlYW0gKnN0KTsKIHZvaWQgc3RyZWFtX2Rpc3BsYXlf
ZnJhbWUoZGlzcGxheV9zdHJlYW0gKnN0LCBTcGljZUZyYW1lICpmcmFtZSwgdWludDMyX3Qgd2lk
dGgsIHVpbnQzMl90IGhlaWdodCwgaW50IHN0cmlkZSwgdWludDhfdCogZGF0YSk7CiBndWludHB0
ciBnZXRfd2luZG93X2hhbmRsZShkaXNwbGF5X3N0cmVhbSAqc3QpOwogZ2Jvb2xlYW4gaGFuZF9w
aXBlbGluZV90b193aWRnZXQoZGlzcGxheV9zdHJlYW0gKnN0LCAgR3N0UGlwZWxpbmUgKnBpcGVs
aW5lKTsKLQorZ2Jvb2xlYW4gc2hvd19tanBlZ193aWRnZXQoZGlzcGxheV9zdHJlYW0gKnN0KTsK
IHZvaWQgc3BpY2VfZnJhbWVfZnJlZShTcGljZUZyYW1lICpmcmFtZSk7CgogR19FTkRfREVDTFMK
ZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXkuYyBiL3NyYy9jaGFubmVsLWRpc3BsYXku
YwppbmRleCA0NDU1NWUzLi4xOGU5NWI5IDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5
LmMKKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS5jCkBAIC05MCw3ICs5MCw4IEBAIGVudW0gewog
ICAgIFNQSUNFX0RJU1BMQVlfTUFSSywKICAgICBTUElDRV9ESVNQTEFZX0dMX0RSQVcsCiAgICAg
U1BJQ0VfRElTUExBWV9TVFJFQU1JTkdfTU9ERSwKLSAgICBTUElDRV9ESVNQTEFZX09WRVJMQVks
CisgICAgU1BJQ0VfRElTUExBWV9HU1RfT1ZFUkxBWSwKKyAgICBTUElDRV9ESVNQTEFZX01KUEVH
X09WRVJMQVksCgogICAgIFNQSUNFX0RJU1BMQVlfTEFTVF9TSUdOQUwsCiB9OwpAQCAtNDkxLDcg
KzQ5Miw3IEBAIHN0YXRpYyB2b2lkIHNwaWNlX2Rpc3BsYXlfY2hhbm5lbF9jbGFzc19pbml0KFNw
aWNlRGlzcGxheUNoYW5uZWxDbGFzcyAqa2xhc3MpCiAgICAgICoKICAgICAgKiBTaW5jZTogMC4z
NgogICAgICAqKi8KLSAgICBzaWduYWxzW1NQSUNFX0RJU1BMQVlfT1ZFUkxBWV0gPQorICAgIHNp
Z25hbHNbU1BJQ0VfRElTUExBWV9HU1RfT1ZFUkxBWV0gPQogICAgICAgICBnX3NpZ25hbF9uZXco
ImdzdC12aWRlby1vdmVybGF5IiwKICAgICAgICAgICAgICAgICAgICAgIEdfT0JKRUNUX0NMQVNT
X1RZUEUoZ29iamVjdF9jbGFzcyksCiAgICAgICAgICAgICAgICAgICAgICAwLCAwLApAQCAtNTAx
LDYgKzUwMiwyNSBAQCBzdGF0aWMgdm9pZCBzcGljZV9kaXNwbGF5X2NoYW5uZWxfY2xhc3NfaW5p
dChTcGljZURpc3BsYXlDaGFubmVsQ2xhc3MgKmtsYXNzKQogICAgICAgICAgICAgICAgICAgICAg
MSwKICAgICAgICAgICAgICAgICAgICAgIEdTVF9UWVBFX1BJUEVMSU5FKTsKCisgICAgLyoqCisg
ICAgICogU3BpY2VEaXNwbGF5Q2hhbm5lbDo6bWpwZWctdmlkZW8tb3ZlcmxheToKKyAgICAgKiBA
ZGlzcGxheTogdGhlICNTcGljZURpc3BsYXlDaGFubmVsIHRoYXQgZW1pdHRlZCB0aGUgc2lnbmFs
CisgICAgICoKKyAgICAgKiBUaGUgI1NwaWNlRGlzcGxheUNoYW5uZWw6Om1qcGVnLXZpZGVvLW92
ZXJsYXkgc2lnbmFsIGlzIGVtaXR0ZWQKKyAgICAgKiB3aGVuIHRoZSBNSlBFRyBlbmNvZGVyIGlz
IHJlYWR5IGFuZCBpdHMgZHJhd2luZyBhcmVhIHNob3VsZCBiZQorICAgICAqIG1hZGUgdmlzaWJs
ZSBvbiBzY3JlZW4KKyAgICAgKgorICAgICAqIFNpbmNlOiAwLjM3CisgICAgICoqLworICAgIHNp
Z25hbHNbU1BJQ0VfRElTUExBWV9NSlBFR19PVkVSTEFZXSA9CisgICAgICAgIGdfc2lnbmFsX25l
dygibWpwZWctdmlkZW8tb3ZlcmxheSIsCisgICAgICAgICAgICAgICAgICAgICBHX09CSkVDVF9D
TEFTU19UWVBFKGdvYmplY3RfY2xhc3MpLAorICAgICAgICAgICAgICAgICAgICAgMCwgMCwKKyAg
ICAgICAgICAgICAgICAgICAgIE5VTEwsIE5VTEwsCisgICAgICAgICAgICAgICAgICAgICBnX2Nj
bG9zdXJlX3VzZXJfbWFyc2hhbF9CT09MRUFOX19WT0lELAorICAgICAgICAgICAgICAgICAgICAg
R19UWVBFX0JPT0xFQU4sCisgICAgICAgICAgICAgICAgICAgICAwKTsKKwogICAgIGNoYW5uZWxf
c2V0X2hhbmRsZXJzKFNQSUNFX0NIQU5ORUxfQ0xBU1Moa2xhc3MpKTsKIH0KCkBAIC0xNDcyLDEy
ICsxNDkyLDI0IEBAIGdib29sZWFuIGhhbmRfcGlwZWxpbmVfdG9fd2lkZ2V0KGRpc3BsYXlfc3Ry
ZWFtICpzdCwgR3N0UGlwZWxpbmUgKnBpcGVsaW5lKQogICAgIGdib29sZWFuIHJlcyA9IGZhbHNl
OwoKICAgICBpZiAoc3QtPnN1cmZhY2UtPnN0cmVhbWluZ19tb2RlKSB7Ci0gICAgICAgIGdfc2ln
bmFsX2VtaXQoc3QtPmNoYW5uZWwsIHNpZ25hbHNbU1BJQ0VfRElTUExBWV9PVkVSTEFZXSwgMCwK
KyAgICAgICAgZ19zaWduYWxfZW1pdChzdC0+Y2hhbm5lbCwgc2lnbmFsc1tTUElDRV9ESVNQTEFZ
X0dTVF9PVkVSTEFZXSwgMCwKICAgICAgICAgICAgICAgICAgICAgICBwaXBlbGluZSwgJnJlcyk7
CiAgICAgfQogICAgIHJldHVybiByZXM7CiB9CgorR19HTlVDX0lOVEVSTkFMCitnYm9vbGVhbiBz
aG93X21qcGVnX3dpZGdldChkaXNwbGF5X3N0cmVhbSAqc3QpCit7CisgICAgZ2Jvb2xlYW4gcmVz
ID0gZmFsc2U7CisgICAgZ193YXJuaW5nKCJTSE9XISIpOworICAgIGlmIChzdC0+c3VyZmFjZS0+
c3RyZWFtaW5nX21vZGUpIHsKKyAgICAgICAgZ19zaWduYWxfZW1pdChzdC0+Y2hhbm5lbCwgc2ln
bmFsc1tTUElDRV9ESVNQTEFZX01KUEVHX09WRVJMQVldLCAwLCAmcmVzKTsKKyAgICB9CisKKyAg
ICByZXR1cm4gcmVzOworfQorCiAvKiBhZnRlciBhIHNlcXVlbmNlIG9mIDMgZHJvcHMsIHB1c2gg
YSByZXBvcnQgdG8gdGhlIHNlcnZlciwgZXZlbgogICogaWYgdGhlIHJlcG9ydCB3aW5kb3cgaXMg
YmlnZ2VyICovCiAjZGVmaW5lIFNUUkVBTV9SRVBPUlRfRFJPUF9TRVFfTEVOX0xJTUlUIDMKZGlm
ZiAtLWdpdCBhL3NyYy9zcGljZS1tYXJzaGFsLnR4dCBiL3NyYy9zcGljZS1tYXJzaGFsLnR4dApp
bmRleCA0NmJlNDA1Li5lNjBkNzI1IDEwMDY0NAotLS0gYS9zcmMvc3BpY2UtbWFyc2hhbC50eHQK
KysrIGIvc3JjL3NwaWNlLW1hcnNoYWwudHh0CkBAIC04LDYgKzgsNyBAQCBWT0lEOlBPSU5URVIs
SU5UCiBWT0lEOlBPSU5URVIsQk9PTEVBTgogQk9PTEVBTjpQT0lOVEVSLFVJTlQKIEJPT0xFQU46
VUlOVAorQk9PTEVBTjpWT0lECiBWT0lEOlVJTlQsUE9JTlRFUixVSU5UCiBWT0lEOlVJTlQsVUlO
VCxQT0lOVEVSLFVJTlQKIEJPT0xFQU46VUlOVCxQT0lOVEVSLFVJTlQKZGlmZiAtLWdpdCBhL3Ny
Yy9zcGljZS13aWRnZXQuYyBiL3NyYy9zcGljZS13aWRnZXQuYwppbmRleCBhOWJhMWYxLi4zNGUz
YzVlIDEwMDY0NAotLS0gYS9zcmMvc3BpY2Utd2lkZ2V0LmMKKysrIGIvc3JjL3NwaWNlLXdpZGdl
dC5jCkBAIC0yMjEwLDYgKzIyMTAsOCBAQCBzdGF0aWMgdm9pZCB1cGRhdGVfaW1hZ2UoU3BpY2VE
aXNwbGF5ICpkaXNwbGF5KQogICAgIFNwaWNlRGlzcGxheVByaXZhdGUgKmQgPSBkaXNwbGF5LT5w
cml2OwoKICAgICBzcGljZV9jYWlyb19pbWFnZV9jcmVhdGUoZGlzcGxheSk7CisgICAgZ3RrX3N0
YWNrX3NldF92aXNpYmxlX2NoaWxkX25hbWUoZC0+c3RhY2ssICJkcmF3LWFyZWEiKTsKKwogICAg
IGlmIChkLT5jYW52YXMuY29udmVydCkKICAgICAgICAgZG9fY29sb3JfY29udmVydChkaXNwbGF5
LCAmZC0+YXJlYSk7CiB9CkBAIC0yNzgyLDcgKzI3ODQsNyBAQCBzdGF0aWMgdm9pZCBnc3Rfc2l6
ZV9hbGxvY2F0ZShHdGtXaWRnZXQgKndpZGdldCwgR2RrUmVjdGFuZ2xlICphLCBncG9pbnRlciBk
YXRhKQogLyogVGhpcyBjYWxsYmFjayBzaG91bGQgcGFzcyB0byB0aGUgd2lkZ2V0IGEgcG9pbnRl
ciBvZiB0aGUgcGlwZWxpbmUKICAqIHNvIHRoYXQgd2UgY2FuIHNldCBwaXBlbGluZSBhbmQgb3Zl
cmxheSByZWxhdGVkIGNhbGxzIGZyb20gaGVyZS4KICAqLwotc3RhdGljIGdib29sZWFuIHNldF9v
dmVybGF5KFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCwgdm9pZCogcGlwZWxpbmVfcHRyLCBTcGljZURp
c3BsYXkgKmRpc3BsYXkpCitzdGF0aWMgZ2Jvb2xlYW4gZ3N0X3NldF9vdmVybGF5KFNwaWNlQ2hh
bm5lbCAqY2hhbm5lbCwgdm9pZCogcGlwZWxpbmVfcHRyLCBTcGljZURpc3BsYXkgKmRpc3BsYXkp
CiB7CiAjaWYgZGVmaW5lZChHREtfV0lORE9XSU5HX1gxMSkKICAgICBTcGljZURpc3BsYXlQcml2
YXRlICpkID0gZGlzcGxheS0+cHJpdjsKQEAgLTI4MDgsNiArMjgxMCwxNCBAQCBzdGF0aWMgZ2Jv
b2xlYW4gc2V0X292ZXJsYXkoU3BpY2VDaGFubmVsICpjaGFubmVsLCB2b2lkKiBwaXBlbGluZV9w
dHIsIFNwaWNlRGlzcAogICAgIHJldHVybiBmYWxzZTsKIH0KCitzdGF0aWMgZ2Jvb2xlYW4gbWpw
ZWdfc2V0X292ZXJsYXkoU3BpY2VDaGFubmVsICpjaGFubmVsLCBTcGljZURpc3BsYXkgKmRpc3Bs
YXkpCit7CisgICAgU3BpY2VEaXNwbGF5UHJpdmF0ZSAqZCA9IGRpc3BsYXktPnByaXY7CisgICAg
Z193YXJuaW5nKCJTRVQhIik7CisgICAgZ3RrX3N0YWNrX3NldF92aXNpYmxlX2NoaWxkX25hbWUo
ZC0+c3RhY2ssICJkcmF3LWFyZWEiKTsKKyAgICByZXR1cm4gdHJ1ZTsKK30KKwogc3RhdGljIHZv
aWQgaW52YWxpZGF0ZShTcGljZUNoYW5uZWwgKmNoYW5uZWwsCiAgICAgICAgICAgICAgICAgICAg
ICAgIGdpbnQgeCwgZ2ludCB5LCBnaW50IHcsIGdpbnQgaCwgZ3BvaW50ZXIgZGF0YSkKIHsKQEAg
LTMxOTIsNyArMzIwMiw5IEBAIHN0YXRpYyB2b2lkIGNoYW5uZWxfbmV3KFNwaWNlU2Vzc2lvbiAq
cywgU3BpY2VDaGFubmVsICpjaGFubmVsLCBTcGljZURpc3BsYXkgKmRpCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIEdfQ0FMTEJBQ0soc3BpY2VfZGlzcGxheV93aWRnZXRf
dXBkYXRlX21vbml0b3JfYXJlYSksCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGRpc3BsYXksIEdfQ09OTkVDVF9BRlRFUiB8IEdfQ09OTkVDVF9TV0FQUEVEKTsKICAgICAg
ICAgc3BpY2VfZ19zaWduYWxfY29ubmVjdF9vYmplY3QoY2hhbm5lbCwgImdzdC12aWRlby1vdmVy
bGF5IiwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR19DQUxMQkFDSyhz
ZXRfb3ZlcmxheSksIGRpc3BsYXksIEdfQ09OTkVDVF9BRlRFUik7CisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIEdfQ0FMTEJBQ0soZ3N0X3NldF9vdmVybGF5KSwgZGlzcGxh
eSwgR19DT05ORUNUX0FGVEVSKTsKKyAgICAgICAgc3BpY2VfZ19zaWduYWxfY29ubmVjdF9vYmpl
Y3QoY2hhbm5lbCwgIm1qcGVnLXZpZGVvLW92ZXJsYXkiLAorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBHX0NBTExCQUNLKG1qcGVnX3NldF9vdmVybGF5KSwgZGlzcGxheSwg
R19DT05ORUNUX0FGVEVSKTsKICAgICAgICAgaWYgKHNwaWNlX2Rpc3BsYXlfY2hhbm5lbF9nZXRf
cHJpbWFyeShjaGFubmVsLCAwLCAmcHJpbWFyeSkpIHsKICAgICAgICAgICAgIHByaW1hcnlfY3Jl
YXRlKGNoYW5uZWwsIHByaW1hcnkuZm9ybWF0LCBwcmltYXJ5LndpZHRoLCBwcmltYXJ5LmhlaWdo
dCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByaW1hcnkuc3RyaWRlLCBwcmltYXJ5LnNo
bWlkLCBwcmltYXJ5LmRhdGEsIGRpc3BsYXkpOwotLQoyLjIxLjAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNw
aWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
