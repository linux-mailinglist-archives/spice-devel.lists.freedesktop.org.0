Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1828116221
	for <lists+spice-devel@lfdr.de>; Sun,  8 Dec 2019 14:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FDBB6E1A8;
	Sun,  8 Dec 2019 13:58:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677536E0A2
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Dec 2019 13:57:58 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id z3so13078628wru.3
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Dec 2019 05:57:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6nYxqC0X+RYggnZoIHg7Gic6MUHAAoplNVoWo9mmxcU=;
 b=ZY90hpoUIw1uyRUFQV+3hJ43ze4xFsXLOV6RJo9hQ/7VIZdYTtMX2XALFBvyZFeziy
 QQtb0txKT8tZSrirqHIq2bj7WCyozgWbJDDxp8tSNP2aKawmcviXHp9VH2VRyPsEa6b8
 GhrQlgkoSH1Chx29CPUz3WqfiHIQVjFrzCapkxF2+9SMvvP2Uhf3+iuQ3a3r03CQxX1o
 9EIoeRUz0RIB3LjxbK30cN5wKBTy8FqVmFDUzMjkVCFodOYukzJU+tCzqBkzn/QBCvHx
 gQCCb7l7CSj54Eb88ReFGBNbYfqh58NmmJNqAFHxtFrPZbGpl4bEXIddbOIyE5iHaFPu
 mAag==
X-Gm-Message-State: APjAAAWm+2V4ubU3cro/4HPIDnLgcaB/eDw8QZJCSQC8HANrweelBCzI
 So2F5ut5MUuH539J33L0jytEWz27lWODtw==
X-Google-Smtp-Source: APXvYqxTFCB/Hwm3TL2kY9E8S1DtYJZ1DxtO4H+MNUIFyMDkk4iKxZ7AKx6ps9KRUmTgwJIK9uGnXQ==
X-Received: by 2002:a5d:558d:: with SMTP id i13mr26045560wrv.364.1575813476875; 
 Sun, 08 Dec 2019 05:57:56 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id l17sm23139280wro.77.2019.12.08.05.57.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 05:57:56 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Sun,  8 Dec 2019 16:03:15 +0200
Message-Id: <20191208140319.22172-6-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208140319.22172-1-anezhins@redhat.com>
References: <20191208140319.22172-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6nYxqC0X+RYggnZoIHg7Gic6MUHAAoplNVoWo9mmxcU=;
 b=zWInhsYFm6paWDM7lBdAMUFQTBrEbILpf5LB7a9WasYdKa89Rjz/SLejR02Rg6zAq2
 tSS6PQUthDryEti0M9crnK8d89NRva7uiCJKgbxFI6luW5ZEf3fm3xYEIbeqE+JGMGzx
 GOOEN7LTvbJHsIh3u2DD89NSo2gI6/b64r6+bPJRI74Bb3LIlTx1IAut7KXPfJRNN9+f
 G0lwaBpJeqUDbSRF5YGmlZ4geaaUDsFoyv1/NXrYGY8xxgz+SAKWMeyXU+amOjqMVqqs
 U27X4nYotON+cnK/YzEW0SZ/R8JxZ95Elp1AT0BR4788K6tLt+vzkGK0yrnIEsMwWM3l
 HMfw==
Subject: [Spice-devel] [PATCH shared-cd v1 5/9] Add empty CD entry to
 usb-device-widget, create shared CD when toggled
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
Cc: Yan Vugenfirer <yan@daynix.com>, Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClRoZSBlbXB0
eSBDRCBlbnRyeSBpcyBhIHBsYWNlaG9sZGVyIGFuZCBhcHBlYXJzIGV2ZXJ5IHRpbWUgdGhlIHdp
ZGdldCBpcyBjcmVhdGVkLgpXaGVuIGl0IGlzIHRvZ2dsZWQsIGEgZmlsZSBjaG9vc2VyIGRpYWxv
ZyBpcyBwb3BwZWQgdXAuIElmIGEgZmlsZSBvciBkZXZpY2UgaXMKc2VsZWN0ZWQsIGEgbmV3IENE
IGRldmljZSBpcyBjcmVhdGVkLiBUaGUgbmV3IENEIGRldmljZSBpcyBhdXRvLWNvbm5lY3RlZC4K
ClRoaXMgZGV2aWNlIGlzIGNvbW11bmljYXRlZCB0byB0aGUgd2lkZ2V0IHRocm91Z2ggdGhlICdk
ZXZpY2UtYWRkZWQnIHNpZ25hbC4KVGhlIGxpc3QgZW50cnkgcmVzcG9uc2libGUgZm9yIHRoZSBu
ZXcgZGV2aWNlIGNvcnJlc3BvbmRzIHRvIHRoZSBlbnRpdHkKcHJvdmlkZWQgYnkgdXNiLWRldmlj
ZS1tYW5hZ2VyLiBUaGUgZW1wdHkgQ0QgZW50cnkgaXMgYXV0b21hdGljYWxseSBtb3ZlZCB0bwp0
aGUgdG9wIG9mIHRoZSBsaXN0LgoKU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIE5lemhpbnNreSA8
YW5lemhpbnNAcmVkaGF0LmNvbT4KLS0tCiBzcmMvdXNiLWRldmljZS13aWRnZXQuYyB8IDc3ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
NzcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLXdpZGdldC5jIGIv
c3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKaW5kZXggNmU3YTI2Ny4uMjZjMGRiMCAxMDA2NDQKLS0t
IGEvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMKKysrIGIvc3JjL3VzYi1kZXZpY2Utd2lkZ2V0LmMK
QEAgLTI0LDYgKzI0LDcgQEAKICNpbmNsdWRlICJzcGljZS1jbGllbnQuaCIKICNpbmNsdWRlICJz
cGljZS1tYXJzaGFsLmgiCiAjaW5jbHVkZSAidXNiLWRldmljZS13aWRnZXQuaCIKKyNpbmNsdWRl
ICJ1c2ItZGV2aWNlLW1hbmFnZXIuaCIKIAogLyoqCiAgKiBTRUNUSU9OOnVzYi1kZXZpY2Utd2lk
Z2V0CkBAIC02Miw2ICs2Myw3IEBAIHN0YXRpYyB2b2lkIGRldmljZV9yZW1vdmVkX2NiKFNwaWNl
VXNiRGV2aWNlTWFuYWdlciAqbWFuYWdlciwKICAgICBTcGljZVVzYkRldmljZSAqZGV2aWNlLCBn
cG9pbnRlciB1c2VyX2RhdGEpOwogc3RhdGljIHZvaWQgZGV2aWNlX2Vycm9yX2NiKFNwaWNlVXNi
RGV2aWNlTWFuYWdlciAqbWFuYWdlciwKICAgICBTcGljZVVzYkRldmljZSAqZGV2aWNlLCBHRXJy
b3IgKmVyciwgZ3BvaW50ZXIgdXNlcl9kYXRhKTsKK3N0YXRpYyB2b2lkIGVtcHR5X2NkX2NsaWNr
ZWRfY2IoR3RrVG9nZ2xlQnV0dG9uICp0b2dnbGUsIGdwb2ludGVyIHVzZXJfZGF0YSk7CiBzdGF0
aWMgZ2Jvb2xlYW4gc3BpY2VfdXNiX2RldmljZV93aWRnZXRfdXBkYXRlX3N0YXR1cyhncG9pbnRl
ciB1c2VyX2RhdGEpOwogCiBlbnVtIHsKQEAgLTc5LDYgKzgxLDcgQEAgc3RydWN0IF9TcGljZVVz
YkRldmljZVdpZGdldFByaXZhdGUgewogICAgIFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbjsKICAgICBn
Y2hhciAqZGV2aWNlX2Zvcm1hdF9zdHJpbmc7CiAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpt
YW5hZ2VyOworICAgIEd0a1dpZGdldCAqZW1wdHlfY2Q7CiAgICAgR3RrV2lkZ2V0ICppbmZvX2Jh
cjsKICAgICBHdGtXaWRnZXQgKmxhYmVsOwogICAgIGdjaGFyICplcnJfbXNnOwpAQCAtMTg5LDYg
KzE5Miw2OSBAQCBzcGljZV91c2JfZGV2aWNlX3dpZGdldF9zaG93X2luZm9fYmFyKFNwaWNlVXNi
RGV2aWNlV2lkZ2V0ICpzZWxmLAogICAgIGd0a193aWRnZXRfc2hvd19hbGwocHJpdi0+aW5mb19i
YXIpOwogfQogCitzdGF0aWMgdm9pZCBzcGljZV91c2JfZGV2aWNlX3dpZGdldF9hZGRfZW1wdHlf
Y2QoU3BpY2VVc2JEZXZpY2VXaWRnZXQgKnNlbGYpOworCitzdGF0aWMgdm9pZAorZW1wdHlfY2Rf
Y2xpY2tlZF9jYihHdGtUb2dnbGVCdXR0b24gKnRvZ2dsZSwgZ3BvaW50ZXIgdXNlcl9kYXRhKQor
eworICAgIFNwaWNlVXNiRGV2aWNlV2lkZ2V0ICpzZWxmID0gU1BJQ0VfVVNCX0RFVklDRV9XSURH
RVQodXNlcl9kYXRhKTsKKyAgICBTcGljZVVzYkRldmljZVdpZGdldFByaXZhdGUgKnByaXYgPSBz
ZWxmLT5wcml2OworICAgIEd0a1dpZGdldCAqZGlhbG9nOworICAgIGdpbnQgZGlhbG9nX3JjOwor
CisgICAgaWYgKCFndGtfdG9nZ2xlX2J1dHRvbl9nZXRfYWN0aXZlKHRvZ2dsZSkpIHsKKyAgICAg
ICAgcmV0dXJuOworICAgIH0KKyAgICBndGtfdG9nZ2xlX2J1dHRvbl9zZXRfYWN0aXZlKHRvZ2ds
ZSwgRkFMU0UpOworCisgICAgZGlhbG9nID0gZ3RrX2ZpbGVfY2hvb3Nlcl9kaWFsb2dfbmV3KF8o
IlNlbGVjdCBJU08gZmlsZSBvciBkZXZpY2UiKSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgR1RLX1dJTkRPVyhndGtfd2lkZ2V0X2dldF90b3BsZXZlbChHVEtfV0lE
R0VUKHNlbGYpKSksCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdU
S19GSUxFX0NIT09TRVJfQUNUSU9OX09QRU4sCisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIF8oIl9DYW5jZWwiKSwgR1RLX1JFU1BPTlNFX0NBTkNFTCwKKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXygiX09wZW4iKSwgR1RLX1JFU1BPTlNF
X0FDQ0VQVCwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTlVMTCk7
CisKKyAgICBkaWFsb2dfcmMgPSBndGtfZGlhbG9nX3J1bihHVEtfRElBTE9HKGRpYWxvZykpOwor
ICAgIGlmIChkaWFsb2dfcmMgPT0gR1RLX1JFU1BPTlNFX0FDQ0VQVCkgeworICAgICAgICBnY2hh
ciAqZmlsZW5hbWUgPSBndGtfZmlsZV9jaG9vc2VyX2dldF9maWxlbmFtZShHVEtfRklMRV9DSE9P
U0VSKGRpYWxvZykpOworICAgICAgICBHRXJyb3IgKmVyciA9IE5VTEw7CisgICAgICAgIGdib29s
ZWFuIHJjOworCisgICAgICAgIHJjID0gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2NyZWF0ZV9z
aGFyZWRfY2RfZGV2aWNlKHByaXYtPm1hbmFnZXIsIGZpbGVuYW1lLCAmZXJyKTsKKyAgICAgICAg
aWYgKCFyYyAmJiBlcnIgIT0gTlVMTCkgeworICAgICAgICAgICAgZ2NoYXIgKmVycl9tc2cgPSBn
X3N0cmR1cF9wcmludGYoXygic2hhcmVkIENEICVzLCAlcyIpLAorICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgZ19wYXRoX2dldF9iYXNlbmFtZShmaWxlbmFtZSks
IGVyci0+bWVzc2FnZSk7CisKKyAgICAgICAgICAgIFNQSUNFX0RFQlVHKCJGYWlsZWQgdG8gY3Jl
YXRlICVzIiwgZXJyX21zZyk7CisgICAgICAgICAgICBzcGljZV91c2JfZGV2aWNlX3dpZGdldF9h
ZGRfZXJyX21zZyhzZWxmLCBlcnJfbXNnKTsKKyAgICAgICAgICAgIHNwaWNlX3VzYl9kZXZpY2Vf
d2lkZ2V0X3VwZGF0ZV9zdGF0dXModXNlcl9kYXRhKTsKKworICAgICAgICAgICAgZ19jbGVhcl9l
cnJvcigmZXJyKTsKKyAgICAgICAgfQorICAgIH0KKyAgICBndGtfd2lkZ2V0X2Rlc3Ryb3koZGlh
bG9nKTsKK30KKworc3RhdGljIHZvaWQgc3BpY2VfdXNiX2RldmljZV93aWRnZXRfYWRkX2VtcHR5
X2NkKFNwaWNlVXNiRGV2aWNlV2lkZ2V0ICpzZWxmKQoreworICAgIFNwaWNlVXNiRGV2aWNlV2lk
Z2V0UHJpdmF0ZSAqcHJpdiA9IHNlbGYtPnByaXY7CisgICAgR3RrV2lkZ2V0ICplbXB0eV9jZCwg
KmNkX2xhYmVsOworCisgICAgaWYgKHByaXYtPmVtcHR5X2NkKQorICAgICAgICByZXR1cm47CisK
KyAgICBlbXB0eV9jZCA9IGd0a19jaGVja19idXR0b25fbmV3X3dpdGhfbGFiZWwoXygiU1BJQ0Ug
Q0QgKGVtcHR5KSIpKTsKKyAgICBjZF9sYWJlbCA9IGd0a19iaW5fZ2V0X2NoaWxkKEdUS19CSU4o
ZW1wdHlfY2QpKTsKKyAgICBndGtfbGFiZWxfc2V0X2VsbGlwc2l6ZShHVEtfTEFCRUwoY2RfbGFi
ZWwpLCBQQU5HT19FTExJUFNJWkVfTUlERExFKTsKKyAgICBnX3NpZ25hbF9jb25uZWN0KEdfT0JK
RUNUKGVtcHR5X2NkKSwgInRvZ2dsZWQiLCBHX0NBTExCQUNLKGVtcHR5X2NkX2NsaWNrZWRfY2Ip
LCBzZWxmKTsKKworICAgIGd0a193aWRnZXRfc2V0X21hcmdpbl9zdGFydChlbXB0eV9jZCwgMTIp
OworICAgIGd0a19ib3hfcGFja19lbmQoR1RLX0JPWChzZWxmKSwgZW1wdHlfY2QsIEZBTFNFLCBG
QUxTRSwgMCk7CisgICAgZ3RrX3dpZGdldF9zaG93X2FsbChlbXB0eV9jZCk7CisKKyAgICBwcml2
LT5lbXB0eV9jZCA9IGVtcHR5X2NkOworfQorCiBzdGF0aWMgdm9pZCBzcGljZV91c2JfZGV2aWNl
X3dpZGdldF9jb25zdHJ1Y3RlZChHT2JqZWN0ICpnb2JqZWN0KQogewogICAgIFNwaWNlVXNiRGV2
aWNlV2lkZ2V0ICpzZWxmOwpAQCAtMjM2LDYgKzMwMiw4IEBAIHN0YXRpYyB2b2lkIHNwaWNlX3Vz
Yl9kZXZpY2Vfd2lkZ2V0X2NvbnN0cnVjdGVkKEdPYmplY3QgKmdvYmplY3QpCiAgICAgICAgIGdf
cHRyX2FycmF5X3VucmVmKGRldmljZXMpOwogICAgIH0KIAorICAgIHNwaWNlX3VzYl9kZXZpY2Vf
d2lkZ2V0X2FkZF9lbXB0eV9jZChzZWxmKTsKKwogICAgIHNwaWNlX3VzYl9kZXZpY2Vfd2lkZ2V0
X3VwZGF0ZV9zdGF0dXMoc2VsZik7CiB9CiAKQEAgLTU1NCw2ICs2MjIsMTUgQEAgc3RhdGljIHZv
aWQgZGV2aWNlX2FkZGVkX2NiKFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqbWFuYWdlciwKIAogICAg
IGd0a193aWRnZXRfc2V0X21hcmdpbl9zdGFydChjaGVjaywgMTIpOwogICAgIGd0a19ib3hfcGFj
a19lbmQoR1RLX0JPWChzZWxmKSwgY2hlY2ssIEZBTFNFLCBGQUxTRSwgMCk7CisgICAgaWYgKHBy
aXYtPmVtcHR5X2NkKSB7CisgICAgICAgIGd0a19ib3hfcmVvcmRlcl9jaGlsZChHVEtfQk9YKHNl
bGYpLCBwcml2LT5lbXB0eV9jZCwgLTEpOworICAgICAgICBpZiAoc3BpY2VfdXNiX2RldmljZV9t
YW5hZ2VyX2lzX2RldmljZV9zaGFyZWRfY2QocHJpdi0+bWFuYWdlciwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRldmljZSkgJiYKKyAg
ICAgICAgICAgICFndGtfdG9nZ2xlX2J1dHRvbl9nZXRfYWN0aXZlKEdUS19UT0dHTEVfQlVUVE9O
KGNoZWNrKSkpIHsKKyAgICAgICAgICAgICAgICAvKiBjaGVja2JveCB0b2dnbCB3aWxsIGluaXRp
YXRlIHJlZGlyZWN0ICovCisgICAgICAgICAgICAgICAgZ3RrX3RvZ2dsZV9idXR0b25fc2V0X2Fj
dGl2ZShHVEtfVE9HR0xFX0JVVFRPTihjaGVjayksIFRSVUUpOworICAgICAgICB9CisgICAgfQog
ICAgIHNwaWNlX3VzYl9kZXZpY2Vfd2lkZ2V0X3VwZGF0ZV9zdGF0dXMoc2VsZik7CiAgICAgZ3Rr
X3dpZGdldF9zaG93X2FsbChjaGVjayk7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApT
cGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
