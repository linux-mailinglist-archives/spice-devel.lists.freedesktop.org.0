Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFCA71B2B
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 17:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548656E2DD;
	Tue, 23 Jul 2019 15:14:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07F1C89E1B
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 15:14:04 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id 207so38960202wma.1
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:14:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EfZuDzQWySQjX2zuIxGdltL2BFFx0XLKQg8D95f/qDg=;
 b=fRrpnjerUkLsjtiRxW0Y0O6mrCG+TpSrglhmebrZOhcgPfVGXnt0NQb2VWTfxjNo7/
 ZClcq2pfcQD00r0yqxrHly8v/fITmzbHkfUbBIACLHKyZNt3V05WEBBC5W/zc06pvFj3
 yTA2+FUpY4dAtiXc1Si3UOaQOkcs81STAz9PiqsMROxqLSFosLn+OZe/MMCgtoEbSl2y
 Sn+slKOAWIfZkwO98chyVvZevfWi0itqdaoa75uqXlUib6b+BObPKqOjspfda5Ki456H
 R9mRZsWIu5vt6CKRcd9gQYoun13i16yLTO3bxHhaNFZE+HNF+Ja9rt0ZyHLWD4ziOIwW
 TnIw==
X-Gm-Message-State: APjAAAVv9Vyvk3i8JpNAprmIDLIj886faKMCuENUzaEIPTdxzINGEZJn
 NVRCjG3EAdMJd4EOp59COIL2p1W4
X-Google-Smtp-Source: APXvYqxr7Z/0WR80+OIKORvpMpkFmlZUUQPPV/5ZJAngxrhLYQ+k6SCLvdpv4ARQVI5kwJDv4G3l7g==
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr69610546wms.8.1563894842241; 
 Tue, 23 Jul 2019 08:14:02 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id t6sm46633438wmb.29.2019.07.23.08.14.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 08:14:01 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 18:13:48 +0300
Message-Id: <20190723151349.6490-4-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723151349.6490-1-yuri.benditovich@daynix.com>
References: <20190723151349.6490-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EfZuDzQWySQjX2zuIxGdltL2BFFx0XLKQg8D95f/qDg=;
 b=tkUr8NwO1BxPHzjrhYiuy7F+vnqiOW+4xxMfRY4HvsU/DktPMPTnpi3wmf069WUBd5
 A8QN7ck6NiphrK7yjKELzLdUfawUsuhbt+g1NRuEGuLHu+DFjxF5OxpaVmBGPprYASeu
 S4YrQrt5+JmkifovcxxPc77oQzszK1nVRzyPxTxilobCoP1hvnUuNSwFoDnXPfZz2/+5
 A+RmHbUiujP7Ed94/EzD9fbKmbF8JjyRqUSwi1mLOJm9gP1KLzZjBzXRmHNdBwiXCq/I
 vtw5opOiw/dbS7qQV9r+0Bm9N+YU91NyInKEjezQ/nseHV+x6v45CfK/qziwXu1s5nbj
 nSeg==
Subject: [Spice-devel] [spice-gtk v3 3/4] usb-redir: move USB events
 handling to USB backend
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
Cc: yan@daynix.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QmVmb3JlIHRoaXMgY29tbWl0Ogp1c2ItZGV2aWNlLW1hbmFnZXIgc3RhcnRzIHRocmVhZCBmb3Ig
aGFuZGxpbmcgbGlidXNiIGV2ZW50czoKb24gTGludXggLSBmcm9tIHRoZSBiZWdpbm5pbmcgKGFz
IGl0IGlzIG5lZWRlZCBmb3IgaG90cGx1ZwpjYWxsYmFja3MpLCBvbiBXaW5kb3dzIC0gc3RhcnRz
IGl0IG9uIGZpcnN0IHJlZGlyZWN0aW9uIGFuZApzdG9wcyB3aGVuIHRoZXJlIGFyZSBubyByZWRp
cmVjdGlvbnMgKGl0IGNhbid0IGtlZXAgdGhlIHRocmVhZAp3aGVuIHRoZXJlIGFyZSBubyByZWRp
cmVjdGlvbnMgYXMgd2l0aCBsaWJ1c2IgPCAxLjAuMjEgaXQgd2lsbApub3QgYmUgYWJsZSB0byBm
b3JjZSB0aGUgdGhyZWFkIHRvIGV4aXQgaWYgdGhlcmUgYXJlIG5vIGV2ZW50cykuCgpDdXJyZW50
IGNvbW1pdCBtb3ZlcyB0aGUgZXZlbnQgdGhyZWFkIGFuZCBoYW5kbGluZyBldmVudHMKY29tcGxl
dGVseSB0byB1c2IgYmFja2VuZDsgdXNiLWRldmljZS1tYW5hZ2VyIGFuZCBvdGhlcgphcmUgbm90
IGF3YXJlIG9mIGxpYnVzYiBhbmQgc2hvdWxkIG5vdCBhc3N1bWUgd2hhdCBpdCBuZWVkcwp0byB3
b3JrLiBXZSBzdGFydCB0aGUgZXZlbnQgdGhyZWFkIGZyb20gdGhlIGJlZ2lubmluZyBvbiBib3Ro
CkxpbnV4IGFuZCBXaW5kb3dzLiBPbiBMaW51eCBpdCB3b3JrcyBvbmx5IGZvciBob3RwbHVnIGNh
bGxiYWNrcywKb24gV2luZG93cyAtIGp1c3Qgd2FpdHMgdW50aWwgZGV2aWNlIHJlZGlyZWN0aW9u
IHN0YXJ0cy4KT24gZGlzcG9zZSBvZiB1c2ItZGV2aWNlLW1hbmFnZXIgKHdoZW4gaG90cGx1ZyBj
YWxsYmFja3MgYXJlCmRlcmVnaXN0ZXJlZCksIHdlIGludGVycnVwdCB0aGUgdGhyZWFkIG9uY2Ug
dG8gc3RvcCBpdC4KClRoaXMgcmVtb3ZlcyBtYW55IGxpbmVzIG9mIGNvZGUgYW5kIGFsc28gcmVt
b3ZlcyBhbGwgdGhlCmRpZmZlcmVuY2VzIGJldHdlZW4gTGludXggYW5kIFdpbmRvd3MgaW4gdXNi
LWRldmljZS1tYW5hZ2VyLgoKU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5i
ZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy9jaGFubmVsLXVzYnJlZGlyLmMgICAgICAg
IHwgMjggLS0tLS0tLS0tLS0tLQogc3JjL3VzYi1iYWNrZW5kLmMgICAgICAgICAgICAgfCA0OSAr
KysrKysrKysrKysrKystLS0tLS0tCiBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgICAgICB8ICAy
IC0KIHNyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oIHwgIDYgLS0tCiBzcmMvdXNiLWRldmlj
ZS1tYW5hZ2VyLmMgICAgICB8IDc5IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiA1IGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDEzMCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9zcmMvY2hhbm5lbC11c2JyZWRpci5jIGIvc3JjL2NoYW5uZWwtdXNicmVkaXIu
YwppbmRleCAwNGFjZjBiLi44ZDRjZDY2IDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC11c2JyZWRp
ci5jCisrKyBiL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMKQEAgLTcyLDcgKzcyLDYgQEAgc3RydWN0
IF9TcGljZVVzYnJlZGlyQ2hhbm5lbFByaXZhdGUgewogICAgIFNwaWNlVXNiQWNsSGVscGVyICph
Y2xfaGVscGVyOwogI2VuZGlmCiAgICAgR011dGV4IGRldmljZV9jb25uZWN0X211dGV4OwotICAg
IFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqdXNiX2RldmljZV9tYW5hZ2VyOwogfTsKIAogc3RhdGlj
IHZvaWQgY2hhbm5lbF9zZXRfaGFuZGxlcnMoU3BpY2VDaGFubmVsQ2xhc3MgKmtsYXNzKTsKQEAg
LTE2OSwxMSArMTY4LDYgQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9kaXNw
b3NlKEdPYmplY3QgKm9iaikKICAgICBTcGljZVVzYnJlZGlyQ2hhbm5lbCAqY2hhbm5lbCA9IFNQ
SUNFX1VTQlJFRElSX0NIQU5ORUwob2JqKTsKIAogICAgIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxf
ZGlzY29ubmVjdF9kZXZpY2UoY2hhbm5lbCk7Ci0gICAgLyogVGhpcyBzaG91bGQgaGF2ZSBiZWVu
IHNldCB0byBOVUxMIGR1cmluZyBkZXZpY2UgZGlzY29ubmVjdGlvbiwKLSAgICAgKiBidXQgYmV0
dGVyIG5vdCB0byBsZWFrIGl0IGlmIHRoaXMgZG9lcyBub3QgaGFwcGVuIGZvciBzb21lIHJlYXNv
bgotICAgICAqLwotICAgIGdfd2Fybl9pZl9mYWlsKGNoYW5uZWwtPnByaXYtPnVzYl9kZXZpY2Vf
bWFuYWdlciA9PSBOVUxMKTsKLSAgICBnX2NsZWFyX29iamVjdCgmY2hhbm5lbC0+cHJpdi0+dXNi
X2RldmljZV9tYW5hZ2VyKTsKIAogICAgIC8qIENoYWluIHVwIHRvIHRoZSBwYXJlbnQgY2xhc3Mg
Ki8KICAgICBpZiAoR19PQkpFQ1RfQ0xBU1Moc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9wYXJlbnRf
Y2xhc3MpLT5kaXNwb3NlKQpAQCAtMjQ4LDggKzI0Miw2IEBAIHN0YXRpYyBnYm9vbGVhbiBzcGlj
ZV91c2JyZWRpcl9jaGFubmVsX29wZW5fZGV2aWNlKAogICAgIFNwaWNlVXNicmVkaXJDaGFubmVs
ICpjaGFubmVsLCBHRXJyb3IgKiplcnIpCiB7CiAgICAgU3BpY2VVc2JyZWRpckNoYW5uZWxQcml2
YXRlICpwcml2ID0gY2hhbm5lbC0+cHJpdjsKLSAgICBTcGljZVNlc3Npb24gKnNlc3Npb247Ci0g
ICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptYW5hZ2VyOwogCiAgICAgZ19yZXR1cm5fdmFsX2lm
X2ZhaWwocHJpdi0+c3RhdGUgPT0gU1RBVEVfRElTQ09OTkVDVEVECiAjaWZkZWYgVVNFX1BPTEtJ
VApAQCAtMjY1LDE2ICsyNTcsNiBAQCBzdGF0aWMgZ2Jvb2xlYW4gc3BpY2VfdXNicmVkaXJfY2hh
bm5lbF9vcGVuX2RldmljZSgKICAgICAgICAgcmV0dXJuIEZBTFNFOwogICAgIH0KIAotICAgIHNl
c3Npb24gPSBzcGljZV9jaGFubmVsX2dldF9zZXNzaW9uKFNQSUNFX0NIQU5ORUwoY2hhbm5lbCkp
OwotICAgIG1hbmFnZXIgPSBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZ2V0KHNlc3Npb24sIE5V
TEwpOwotICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKG1hbmFnZXIgIT0gTlVMTCwgRkFMU0UpOwot
Ci0gICAgcHJpdi0+dXNiX2RldmljZV9tYW5hZ2VyID0gZ19vYmplY3RfcmVmKG1hbmFnZXIpOwot
ICAgIGlmICghc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX3N0YXJ0X2V2ZW50X2xpc3RlbmluZyhw
cml2LT51c2JfZGV2aWNlX21hbmFnZXIsIGVycikpIHsKLSAgICAgICAgc3BpY2VfdXNiX2JhY2tl
bmRfY2hhbm5lbF9kZXRhY2gocHJpdi0+aG9zdCk7Ci0gICAgICAgIHJldHVybiBGQUxTRTsKLSAg
ICB9Ci0KICAgICBwcml2LT5zdGF0ZSA9IFNUQVRFX0NPTk5FQ1RFRDsKIAogICAgIHJldHVybiBU
UlVFOwpAQCAtNDQ1LDE2ICs0MjcsNiBAQCB2b2lkIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfZGlz
Y29ubmVjdF9kZXZpY2UoU3BpY2VVc2JyZWRpckNoYW5uZWwgKmNoYW5uZWwpCiAgICAgICAgIGJy
ZWFrOwogI2VuZGlmCiAgICAgY2FzZSBTVEFURV9DT05ORUNURUQ6Ci0gICAgICAgIC8qCi0gICAg
ICAgICAqIFRoaXMgc2V0cyB0aGUgdXNiIGV2ZW50IHRocmVhZCBydW4gY29uZGl0aW9uIHRvIEZB
TFNFLCB0aGVyZWZvcgotICAgICAgICAgKiBpdCBtdXN0IGJlIGRvbmUgYmVmb3JlIHVzYnJlZGly
aG9zdF9zZXRfZGV2aWNlIE5VTEwsIGFzCi0gICAgICAgICAqIHVzYnJlZGlyaG9zdF9zZXRfZGV2
aWNlIE5VTEwgd2lsbCBpbnRlcnJ1cHQgdGhlCi0gICAgICAgICAqIGxpYnVzYl9oYW5kbGVfZXZl
bnRzIGNhbGwgaW4gdGhlIHRocmVhZC4KLSAgICAgICAgICovCi0gICAgICAgIGdfd2Fybl9pZl9m
YWlsKHByaXYtPnVzYl9kZXZpY2VfbWFuYWdlciAhPSBOVUxMKTsKLSAgICAgICAgc3BpY2VfdXNi
X2RldmljZV9tYW5hZ2VyX3N0b3BfZXZlbnRfbGlzdGVuaW5nKHByaXYtPnVzYl9kZXZpY2VfbWFu
YWdlcik7Ci0gICAgICAgIGdfY2xlYXJfb2JqZWN0KCZwcml2LT51c2JfZGV2aWNlX21hbmFnZXIp
OwotCiAgICAgICAgIC8qIFRoaXMgYWxzbyBjbG9zZXMgdGhlIGxpYnVzYiBoYW5kbGUgd2UgcGFz
c2VkIGZyb20gb3Blbl9kZXZpY2UgKi8KICAgICAgICAgc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5l
bF9kZXRhY2gocHJpdi0+aG9zdCk7CiAgICAgICAgIGdfY2xlYXJfcG9pbnRlcigmcHJpdi0+ZGV2
aWNlLCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYpOwpkaWZmIC0tZ2l0IGEvc3JjL3Vz
Yi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwppbmRleCAyYTJmOWZhLi43YzliNTQ0IDEw
MDY0NAotLS0gYS9zcmMvdXNiLWJhY2tlbmQuYworKysgYi9zcmMvdXNiLWJhY2tlbmQuYwpAQCAt
NTgsNiArNTgsOSBAQCBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZAogICAgIHVzYl9ob3RfcGx1Z19j
YWxsYmFjayBob3RwbHVnX2NhbGxiYWNrOwogICAgIHZvaWQgKmhvdHBsdWdfdXNlcl9kYXRhOwog
ICAgIGxpYnVzYl9ob3RwbHVnX2NhbGxiYWNrX2hhbmRsZSBob3RwbHVnX2hhbmRsZTsKKyAgICBH
VGhyZWFkICpldmVudF90aHJlYWQ7CisgICAgZ2ludCBldmVudF90aHJlYWRfcnVuOworCiAjaWZk
ZWYgR19PU19XSU4zMgogICAgIEhBTkRMRSBoV25kOwogICAgIGxpYnVzYl9kZXZpY2UgKipsaWJ1
c2JfZGV2aWNlX2xpc3Q7CkBAIC00MTAsMjggKzQxMywyNSBAQCBTcGljZVVzYkJhY2tlbmQgKnNw
aWNlX3VzYl9iYWNrZW5kX25ldyhHRXJyb3IgKiplcnJvcikKICAgICByZXR1cm4gYmU7CiB9CiAK
LWdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX2hhbmRsZV9ldmVudHMoU3BpY2VVc2JCYWNrZW5k
ICpiZSkKK3N0YXRpYyBncG9pbnRlciBoYW5kbGVfbGlidXNiX2V2ZW50cyhncG9pbnRlciB1c2Vy
X2RhdGEpCiB7CisgICAgU3BpY2VVc2JCYWNrZW5kICpiZSA9IHVzZXJfZGF0YTsKICAgICBTUElD
RV9ERUJVRygiJXMgPj4iLCBfX0ZVTkNUSU9OX18pOwotICAgIGdib29sZWFuIG9rID0gRkFMU0U7
Ci0gICAgaWYgKGJlLT5saWJ1c2JfY29udGV4dCkgewotICAgICAgICBpbnQgcmVzID0gbGlidXNi
X2hhbmRsZV9ldmVudHMoYmUtPmxpYnVzYl9jb250ZXh0KTsKLSAgICAgICAgb2sgPSByZXMgPT0g
MDsKKyAgICBpbnQgcmVzID0gMDsKKyAgICBjb25zdCBjaGFyICpkZXNjID0gIiI7CisgICAgd2hp
bGUgKGdfYXRvbWljX2ludF9nZXQoJmJlLT5ldmVudF90aHJlYWRfcnVuKSkgeworICAgICAgICBy
ZXMgPSBsaWJ1c2JfaGFuZGxlX2V2ZW50cyhiZS0+bGlidXNiX2NvbnRleHQpOwogICAgICAgICBp
ZiAocmVzICYmIHJlcyAhPSBMSUJVU0JfRVJST1JfSU5URVJSVVBURUQpIHsKLSAgICAgICAgICAg
IGNvbnN0IGNoYXIgKmRlc2MgPSBsaWJ1c2Jfc3RyZXJyb3IocmVzKTsKKyAgICAgICAgICAgIGRl
c2MgPSBsaWJ1c2Jfc3RyZXJyb3IocmVzKTsKICAgICAgICAgICAgIGdfd2FybmluZygiRXJyb3Ig
aGFuZGxpbmcgVVNCIGV2ZW50czogJXMgWyVpXSIsIGRlc2MsIHJlcyk7Ci0gICAgICAgICAgICBv
ayA9IEZBTFNFOworICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgIH0KICAgICB9Ci0gICAgU1BJ
Q0VfREVCVUcoIiVzIDw8ICVkIiwgX19GVU5DVElPTl9fLCBvayk7Ci0gICAgcmV0dXJuIG9rOwot
fQotCi12b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2ludGVycnVwdF9ldmVudF9oYW5kbGVyKFNwaWNl
VXNiQmFja2VuZCAqYmUpCi17Ci0gICAgaWYgKGJlLT5saWJ1c2JfY29udGV4dCkgewotICAgICAg
ICBsaWJ1c2JfaW50ZXJydXB0X2V2ZW50X2hhbmRsZXIoYmUtPmxpYnVzYl9jb250ZXh0KTsKKyAg
ICBpZiAoYmUtPmV2ZW50X3RocmVhZF9ydW4pIHsKKyAgICAgICAgU1BJQ0VfREVCVUcoIiVzOiB0
aGUgdGhyZWFkIGFib3J0ZWQsICVzKCVkKSIsIF9fRlVOQ1RJT05fXywgZGVzYywgcmVzKTsKICAg
ICB9CisgICAgU1BJQ0VfREVCVUcoIiVzIDw8IiwgX19GVU5DVElPTl9fKTsKKyAgICByZXR1cm4g
TlVMTDsKIH0KIAogdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXJlZ2lzdGVyX2hvdHBsdWcoU3Bp
Y2VVc2JCYWNrZW5kICpiZSkKQEAgLTQ0Miw2ICs0NDIsMTIgQEAgdm9pZCBzcGljZV91c2JfYmFj
a2VuZF9kZXJlZ2lzdGVyX2hvdHBsdWcoU3BpY2VVc2JCYWNrZW5kICpiZSkKICAgICAgICAgYmUt
PmhvdHBsdWdfaGFuZGxlID0gMDsKICAgICB9CiAgICAgYmUtPmhvdHBsdWdfY2FsbGJhY2sgPSBO
VUxMOworICAgIGdfYXRvbWljX2ludF9zZXQoJmJlLT5ldmVudF90aHJlYWRfcnVuLCBGQUxTRSk7
CisgICAgaWYgKGJlLT5ldmVudF90aHJlYWQpIHsKKyAgICAgICAgbGlidXNiX2ludGVycnVwdF9l
dmVudF9oYW5kbGVyKGJlLT5saWJ1c2JfY29udGV4dCk7CisgICAgICAgIGdfdGhyZWFkX2pvaW4o
YmUtPmV2ZW50X3RocmVhZCk7CisgICAgICAgIGJlLT5ldmVudF90aHJlYWQgPSBOVUxMOworICAg
IH0KIH0KIAogZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGlj
ZVVzYkJhY2tlbmQgKmJlLApAQCAtNDY1LDYgKzQ3MSwxMSBAQCBnYm9vbGVhbiBzcGljZV91c2Jf
YmFja2VuZF9yZWdpc3Rlcl9ob3RwbHVnKFNwaWNlVXNiQmFja2VuZCAqYmUsCiAgICAgICAgICAg
ICAgICAgICAgIF8oIkVycm9yIG9uIFVTQiBob3RwbHVnIGRldGVjdGlvbjogJXMgWyVpXSIpLCBk
ZXNjLCByYyk7CiAgICAgICAgIHJldHVybiBGQUxTRTsKICAgICB9CisKKyAgICBnX2F0b21pY19p
bnRfc2V0KCZiZS0+ZXZlbnRfdGhyZWFkX3J1biwgVFJVRSk7CisgICAgYmUtPmV2ZW50X3RocmVh
ZCA9IGdfdGhyZWFkX25ldygidXNiX2V2X3RocmVhZCIsCisgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBoYW5kbGVfbGlidXNiX2V2ZW50cywKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGJlKTsKICAgICByZXR1cm4gVFJVRTsKIH0KIApAQCAtNDcyLDYgKzQ4
MywxNCBAQCB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2RlbGV0ZShTcGljZVVzYkJhY2tlbmQgKmJl
KQogewogICAgIGdfcmV0dXJuX2lmX2ZhaWwoYmUgIT0gTlVMTCk7CiAgICAgU1BJQ0VfREVCVUco
IiVzID4+IiwgX19GVU5DVElPTl9fKTsKKyAgICAvKgorICAgICAgICB3ZSBleHBlY3QgaG90cGx1
ZyBjYWxsYmFja3MgYXJlIGRlcmVnaXN0ZXJlZAorICAgICAgICBhbmQgdGhlIGV2ZW50IHRocmVh
ZCBpcyB0ZXJtaW5hdGVkLiBJZiBub3QsCisgICAgICAgIHdlIGRvIHRoYXQgYW55d2F5IGJlZm9y
ZSBkZWxldGUgdGhlIGJhY2tlbmQKKyAgICAqLworICAgIGdfd2Fybl9pZl9mYWlsKGJlLT5ob3Rw
bHVnX2hhbmRsZSA9PSAwKTsKKyAgICBnX3dhcm5faWZfZmFpbChiZS0+ZXZlbnRfdGhyZWFkID09
IE5VTEwpOworICAgIHNwaWNlX3VzYl9iYWNrZW5kX2RlcmVnaXN0ZXJfaG90cGx1ZyhiZSk7CiAg
ICAgaWYgKGJlLT5saWJ1c2JfY29udGV4dCkgewogICAgICAgICBsaWJ1c2JfZXhpdChiZS0+bGli
dXNiX2NvbnRleHQpOwogICAgIH0KZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5oIGIvc3Jj
L3VzYi1iYWNrZW5kLmgKaW5kZXggODE0ZGE0Ni4uNjlhNDkwYiAxMDA2NDQKLS0tIGEvc3JjL3Vz
Yi1iYWNrZW5kLmgKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmgKQEAgLTU2LDggKzU2LDYgQEAgZW51
bSB7CiBTcGljZVVzYkJhY2tlbmQgKnNwaWNlX3VzYl9iYWNrZW5kX25ldyhHRXJyb3IgKiplcnJv
cik7CiB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2RlbGV0ZShTcGljZVVzYkJhY2tlbmQgKmNvbnRl
eHQpOwogCi1nYm9vbGVhbiBzcGljZV91c2JfYmFja2VuZF9oYW5kbGVfZXZlbnRzKFNwaWNlVXNi
QmFja2VuZCAqYmUpOwotdm9pZCBzcGljZV91c2JfYmFja2VuZF9pbnRlcnJ1cHRfZXZlbnRfaGFu
ZGxlcihTcGljZVVzYkJhY2tlbmQgKmJlKTsKIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5kX3Jl
Z2lzdGVyX2hvdHBsdWcoU3BpY2VVc2JCYWNrZW5kICpiZSwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAqdXNlcl9kYXRhLAogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1c2JfaG90X3BsdWdfY2FsbGJhY2sgcHJvYywK
ZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5oIGIvc3JjL3VzYi1kZXZp
Y2UtbWFuYWdlci1wcml2LmgKaW5kZXggMzlhYWYyZi4uNjZhY2Y2ZCAxMDA2NDQKLS0tIGEvc3Jj
L3VzYi1kZXZpY2UtbWFuYWdlci1wcml2LmgKKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci1w
cml2LmgKQEAgLTI1LDEyICsyNSw2IEBACiAKIEdfQkVHSU5fREVDTFMKIAotZ2Jvb2xlYW4gc3Bp
Y2VfdXNiX2RldmljZV9tYW5hZ2VyX3N0YXJ0X2V2ZW50X2xpc3RlbmluZygKLSAgICBTcGljZVVz
YkRldmljZU1hbmFnZXIgKm1hbmFnZXIsIEdFcnJvciAqKmVycik7Ci0KLXZvaWQgc3BpY2VfdXNi
X2RldmljZV9tYW5hZ2VyX3N0b3BfZXZlbnRfbGlzdGVuaW5nKAotICAgIFNwaWNlVXNiRGV2aWNl
TWFuYWdlciAqbWFuYWdlcik7Ci0KICNpZmRlZiBVU0VfVVNCUkVESVIKIHZvaWQgc3BpY2VfdXNi
X2RldmljZV9tYW5hZ2VyX2RldmljZV9lcnJvcigKICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIg
Km1hbmFnZXIsIFNwaWNlVXNiRGV2aWNlICpkZXZpY2UsIEdFcnJvciAqZXJyKTsKZGlmZiAtLWdp
dCBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwpp
bmRleCA4NTdkMDU3Li5hNTMwYmU5IDEwMDY0NAotLS0gYS9zcmMvdXNiLWRldmljZS1tYW5hZ2Vy
LmMKKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCkBAIC05Myw5ICs5Myw2IEBAIHN0cnVj
dCBfU3BpY2VVc2JEZXZpY2VNYW5hZ2VyUHJpdmF0ZSB7CiAgICAgZ2NoYXIgKnJlZGlyZWN0X29u
X2Nvbm5lY3Q7CiAjaWZkZWYgVVNFX1VTQlJFRElSCiAgICAgU3BpY2VVc2JCYWNrZW5kICpjb250
ZXh0OwotICAgIGludCBldmVudF9saXN0ZW5lcnM7Ci0gICAgR1RocmVhZCAqZXZlbnRfdGhyZWFk
OwotICAgIGdpbnQgZXZlbnRfdGhyZWFkX3J1bjsKICAgICBzdHJ1Y3QgdXNicmVkaXJmaWx0ZXJf
cnVsZSAqYXV0b19jb25uX2ZpbHRlcl9ydWxlczsKICAgICBzdHJ1Y3QgdXNicmVkaXJmaWx0ZXJf
cnVsZSAqcmVkaXJlY3Rfb25fY29ubmVjdF9ydWxlczsKICAgICBpbnQgYXV0b19jb25uX2ZpbHRl
cl9ydWxlc19jb3VudDsKQEAgLTI2MSw5ICsyNTgsNiBAQCBzdGF0aWMgZ2Jvb2xlYW4gc3BpY2Vf
dXNiX2RldmljZV9tYW5hZ2VyX2luaXRhYmxlX2luaXQoR0luaXRhYmxlICAqaW5pdGFibGUsCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVycikpIHsKICAgICAg
ICAgcmV0dXJuIEZBTFNFOwogICAgIH0KLSNpZm5kZWYgR19PU19XSU4zMgotICAgIHNwaWNlX3Vz
Yl9kZXZpY2VfbWFuYWdlcl9zdGFydF9ldmVudF9saXN0ZW5pbmcoc2VsZiwgTlVMTCk7Ci0jZW5k
aWYKIAogICAgIC8qIFN0YXJ0IGxpc3RlbmluZyBmb3IgdXNiIGNoYW5uZWxzIGNvbm5lY3QvZGlz
Y29ubmVjdCAqLwogICAgIHNwaWNlX2dfc2lnbmFsX2Nvbm5lY3Rfb2JqZWN0KHByaXYtPnNlc3Np
b24sICJjaGFubmVsLW5ldyIsIEdfQ0FMTEJBQ0soY2hhbm5lbF9uZXcpLCBzZWxmLCBHX0NPTk5F
Q1RfQUZURVIpOwpAQCAtMjg1LDI3ICsyNzksOCBAQCBzdGF0aWMgdm9pZCBzcGljZV91c2JfZGV2
aWNlX21hbmFnZXJfZGlzcG9zZShHT2JqZWN0ICpnb2JqZWN0KQogICAgIFNwaWNlVXNiRGV2aWNl
TWFuYWdlciAqc2VsZiA9IFNQSUNFX1VTQl9ERVZJQ0VfTUFOQUdFUihnb2JqZWN0KTsKICAgICBT
cGljZVVzYkRldmljZU1hbmFnZXJQcml2YXRlICpwcml2ID0gc2VsZi0+cHJpdjsKIAotI2lmbmRl
ZiBHX09TX1dJTjMyCi0gICAgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX3N0b3BfZXZlbnRfbGlz
dGVuaW5nKHNlbGYpOwotICAgIGlmIChnX2F0b21pY19pbnRfZ2V0KCZwcml2LT5ldmVudF90aHJl
YWRfcnVuKSkgewotICAgICAgICAvKiBGb3JjZSB0ZXJtaW5hdGlvbiBvZiB0aGUgZXZlbnQgdGhy
ZWFkIGV2ZW4gaWYgdGhlcmUgd2VyZSBzb21lCi0gICAgICAgICAqIG1pc21hdGNoZWQgc3BpY2Vf
dXNiX2RldmljZV9tYW5hZ2VyX3tzdGFydCxzdG9wfV9ldmVudF9saXN0ZW5pbmcKLSAgICAgICAg
ICogY2FsbHMuIE90aGVyd2lzZSwgdGhlIHVzYiBldmVudCB0aHJlYWQgd2lsbCBiZSBsZWFrZWQs
IGFuZCB3aWxsCi0gICAgICAgICAqIHRyeSB0byB1c2UgdGhlIGxpYnVzYiBjb250ZXh0IHdlIGRl
c3Ryb3kgaW4gZmluYWxpemUoKSwgd2hpY2ggd291bGQKLSAgICAgICAgICogY2F1c2UgYSBjcmFz
aCAqLwotICAgICAgICBnX3dhcm5faWZfcmVhY2hlZCgpOwotICAgICAgICBnX2F0b21pY19pbnRf
c2V0KCZwcml2LT5ldmVudF90aHJlYWRfcnVuLCBGQUxTRSk7Ci0gICAgfQotI2VuZGlmCiAgICAg
c3BpY2VfdXNiX2JhY2tlbmRfZGVyZWdpc3Rlcl9ob3RwbHVnKHByaXYtPmNvbnRleHQpOwogCi0g
ICAgaWYgKHByaXYtPmV2ZW50X3RocmVhZCkgewotICAgICAgICBnX3dhcm5faWZfZmFpbChnX2F0
b21pY19pbnRfZ2V0KCZwcml2LT5ldmVudF90aHJlYWRfcnVuKSA9PSBGQUxTRSk7Ci0gICAgICAg
IGdfYXRvbWljX2ludF9zZXQoJnByaXYtPmV2ZW50X3RocmVhZF9ydW4sIEZBTFNFKTsKLSAgICAg
ICAgc3BpY2VfdXNiX2JhY2tlbmRfaW50ZXJydXB0X2V2ZW50X2hhbmRsZXIocHJpdi0+Y29udGV4
dCk7Ci0gICAgICAgIGdfdGhyZWFkX2pvaW4ocHJpdi0+ZXZlbnRfdGhyZWFkKTsKLSAgICAgICAg
cHJpdi0+ZXZlbnRfdGhyZWFkID0gTlVMTDsKLSAgICB9CiAjZW5kaWYKIAogICAgIC8qIENoYWlu
IHVwIHRvIHRoZSBwYXJlbnQgY2xhc3MgKi8KQEAgLTMyMyw3ICsyOTgsNiBAQCBzdGF0aWMgdm9p
ZCBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfZmluYWxpemUoR09iamVjdCAqZ29iamVjdCkKICAg
ICBpZiAocHJpdi0+ZGV2aWNlcykgewogICAgICAgICBnX3B0cl9hcnJheV91bnJlZihwcml2LT5k
ZXZpY2VzKTsKICAgICB9Ci0gICAgZ19yZXR1cm5faWZfZmFpbChwcml2LT5ldmVudF90aHJlYWQg
PT0gTlVMTCk7CiAgICAgaWYgKHByaXYtPmNvbnRleHQpIHsKICAgICAgICAgc3BpY2VfdXNiX2Jh
Y2tlbmRfZGVsZXRlKHByaXYtPmNvbnRleHQpOwogICAgIH0KQEAgLTkxNSw1OSArODg5LDYgQEAg
c3RhdGljIHZvaWQgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2NoYW5uZWxfY29ubmVjdF9jYigK
IC8qIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLSAqLwogLyogcHJpdmF0ZSBhcGkgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICovCiAKLXN0YXRpYyBncG9pbnRlciBzcGlj
ZV91c2JfZGV2aWNlX21hbmFnZXJfdXNiX2V2X3RocmVhZChncG9pbnRlciB1c2VyX2RhdGEpCi17
Ci0gICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpzZWxmID0gU1BJQ0VfVVNCX0RFVklDRV9NQU5B
R0VSKHVzZXJfZGF0YSk7Ci0gICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyUHJpdmF0ZSAqcHJpdiA9
IHNlbGYtPnByaXY7Ci0KLSAgICB3aGlsZSAoZ19hdG9taWNfaW50X2dldCgmcHJpdi0+ZXZlbnRf
dGhyZWFkX3J1bikpIHsKLSAgICAgICAgaWYgKCFzcGljZV91c2JfYmFja2VuZF9oYW5kbGVfZXZl
bnRzKHByaXYtPmNvbnRleHQpKSB7Ci0gICAgICAgICAgICBicmVhazsKLSAgICAgICAgfQotICAg
IH0KLQotICAgIHJldHVybiBOVUxMOwotfQotCi1nYm9vbGVhbiBzcGljZV91c2JfZGV2aWNlX21h
bmFnZXJfc3RhcnRfZXZlbnRfbGlzdGVuaW5nKAotICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAq
c2VsZiwgR0Vycm9yICoqZXJyKQotewotICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlclByaXZhdGUg
KnByaXYgPSBzZWxmLT5wcml2OwotCi0gICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwoZXJyID09IE5V
TEwgfHwgKmVyciA9PSBOVUxMLCBGQUxTRSk7Ci0KLSAgICBwcml2LT5ldmVudF9saXN0ZW5lcnMr
KzsKLSAgICBpZiAocHJpdi0+ZXZlbnRfbGlzdGVuZXJzID4gMSkKLSAgICAgICAgcmV0dXJuIFRS
VUU7Ci0KLSAgICAvKiBXZSBkb24ndCBqb2luIHRoZSB0aHJlYWQgd2hlbiB3ZSBzdG9wIGV2ZW50
IGxpc3RlbmluZywgYXMgdGhlCi0gICAgICAgbGlidXNiX2hhbmRsZV9ldmVudHMgY2FsbCBpbiB0
aGUgdGhyZWFkIHdvbid0IGV4aXQgdW50aWwgdGhlCi0gICAgICAgbGlidXNiX2Nsb3NlIGNhbGwg
Zm9yIHRoZSBkZXZpY2UgaXMgbWFkZSBmcm9tIHVzYnJlZGlyaG9zdF9jbG9zZS4gKi8KLSAgICBp
ZiAocHJpdi0+ZXZlbnRfdGhyZWFkKSB7Ci0gICAgICAgIGdfYXRvbWljX2ludF9zZXQoJnByaXYt
PmV2ZW50X3RocmVhZF9ydW4sIEZBTFNFKTsKLSAgICAgICAgc3BpY2VfdXNiX2JhY2tlbmRfaW50
ZXJydXB0X2V2ZW50X2hhbmRsZXIocHJpdi0+Y29udGV4dCk7Ci0gICAgICAgICBnX3RocmVhZF9q
b2luKHByaXYtPmV2ZW50X3RocmVhZCk7Ci0gICAgICAgICBwcml2LT5ldmVudF90aHJlYWQgPSBO
VUxMOwotICAgIH0KLSAgICBnX2F0b21pY19pbnRfc2V0KCZwcml2LT5ldmVudF90aHJlYWRfcnVu
LCBUUlVFKTsKLSAgICBwcml2LT5ldmVudF90aHJlYWQgPSBnX3RocmVhZF9uZXcoInVzYl9ldl90
aHJlYWQiLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGljZV91c2Jf
ZGV2aWNlX21hbmFnZXJfdXNiX2V2X3RocmVhZCwKLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc2VsZik7Ci0gICAgcmV0dXJuIHByaXYtPmV2ZW50X3RocmVhZCAhPSBOVUxM
OwotfQotCi12b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9zdG9wX2V2ZW50X2xpc3Rlbmlu
ZygKLSAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKnNlbGYpCi17Ci0gICAgU3BpY2VVc2JEZXZp
Y2VNYW5hZ2VyUHJpdmF0ZSAqcHJpdiA9IHNlbGYtPnByaXY7Ci0KLSAgICBnX3JldHVybl9pZl9m
YWlsKHByaXYtPmV2ZW50X2xpc3RlbmVycyA+IDApOwotCi0gICAgcHJpdi0+ZXZlbnRfbGlzdGVu
ZXJzLS07Ci0gICAgaWYgKHByaXYtPmV2ZW50X2xpc3RlbmVycyA9PSAwKQotICAgICAgICBnX2F0
b21pY19pbnRfc2V0KCZwcml2LT5ldmVudF90aHJlYWRfcnVuLCBGQUxTRSk7Ci19Ci0KIHN0YXRp
YyB2b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9jaGVja19yZWRpcl9vbl9jb25uZWN0KAog
ICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlciAqc2VsZiwgU3BpY2VDaGFubmVsICpjaGFubmVsKQog
ewotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
