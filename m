Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF18367F32
	for <lists+spice-devel@lfdr.de>; Sun, 14 Jul 2019 16:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF9A89890;
	Sun, 14 Jul 2019 14:07:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E017D8985A
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 14:07:56 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id h19so12432074wme.0
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 07:07:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/gLv8CcAu8NCszIPCFzsD4Iea7VY50EI4Rz7tRWrBUI=;
 b=fWFNBoDOvXFd89A3KtLboXsrTtZPjKH7KQ7UUBgApnG+bdvvl8ADDwo68vj1kuuXs9
 R6ebjdafapnVEEJULsl0AaLXHszYMvUQd2mbR0O9jesObA6GEutiUlMXJfuVlO1+JUiN
 94QVMF6XObSVHlwqwXLypdJjHNEyZWali19S+Y7aNHRUCIDGP0+bzbxKO5AlrQy9nYF/
 tuj8CKWf2M6t4mhTWMkXMOECkg8/bRwthSRE5ReS5NYqGZjnuulWI2S2MGcqcqm1xc27
 0U1lS0vlxfFGYPwd5TQxDKIl/my+FLrJlmY5LBIWWhqQY45e0BpeNoHKNI2P+iEOTknj
 uwog==
X-Gm-Message-State: APjAAAXCUihPT2wv3e+oGR0heV3tbqFKmvTblAmMFE9D+hUc3qMewmFK
 OEWKuNRXD++QLR32YgUEEdP7GN1v
X-Google-Smtp-Source: APXvYqxrzio0Zy2pNnfaZS0ivRMQ4Glo7VgOn9qdFSHXQUtdfjD9oKoxlBBubMGn42EWu3Mf1VpJXw==
X-Received: by 2002:a1c:4c1a:: with SMTP id z26mr19183320wmf.2.1563113275224; 
 Sun, 14 Jul 2019 07:07:55 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id z19sm10223328wmi.7.2019.07.14.07.07.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 07:07:54 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 14 Jul 2019 17:07:41 +0300
Message-Id: <20190714140741.3274-6-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190714140741.3274-1-yuri.benditovich@daynix.com>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/gLv8CcAu8NCszIPCFzsD4Iea7VY50EI4Rz7tRWrBUI=;
 b=LbPZ0Czchv5rBvok+vyFsSyaGuaPK1sGDc9r8qv4Zo6fYe8zRczN0GjrsdwqcO7CXz
 Bid2yaUoi7+E6lhD2OOpOgHoJySOAcfhfIhLimNcWQEp+2qkq51K9Sz5HzuJksn2U9Vd
 fMQ9fRnSbbCi0B5uZtplNPGXKFvSRLooAwnvonNIbQ62l/unUQDFu9+vCUXizagV4Eoy
 UywASsJyGbuSD4QTBwPoo+kq701wK9FVMWHo2b9uCxArooiNm+ContbSVyaZbjAOXEzX
 lUxUhsB0RnzSGX/dTPotEulrlUtJcnZqIb5U3avIKUdaJ++HNuVsgHkTjohqSw2W2U/H
 hFYg==
Subject: [Spice-devel] [spice-gtk 5/5] usb-redir: move USB events handling
 to USB backend
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
aGFuZGxpbmcgbGlidXNiIGV2ZW50cy4KICBPbiBMaW51eCAtIGZyb20gdGhlIGJlZ2lubmluZyAo
YXMgaXQgaXMgbmVlZGVkIGZvciBob3RwbHVnCiAgY2FsbGJhY2tzKQogIE9uIFdpbmRvd3MgLSBz
dGFydHMgaXQgb24gZmlyc3QgcmVkaXJlY3Rpb24gYW5kIHN0b3BzIHdoZW4KICB0aGVyZSBhcmUg
bm8gcmVkaXJlY3Rpb25zIChpdCBjYW4ndCBrZWVwIHRoZSB0aHJlYWQgd2hlbgogIHRoZXJlIGFy
ZSBubyByZWRpcmVjdGlvbnMgYXMgd2l0aCBsaWJ1c2IgPCAxLjAuMjEgaXQgd2lsbAogIG5vdCBi
ZSBhYmxlIHRvIGZvcmNlIHRoZSB0aHJlYWQgdG8gZXhpdCBhcyB0aGVyZSBhcmUgbm8gZXZlbnRz
KQpDdXJyZW50IGNvbW1pdCBtb3ZlcyB0aGUgZXZlbnQgdGhyZWFkIGFuZCBoYW5kbGluZyBldmVu
dHMKICBjb21wbGV0ZWx5IHRvIHVzYiBiYWNrZW5kOyB1c2ItZGV2aWNlLW1hbmFnZXIgYW5kIG90
aGVyCiAgYXJlIG5vdCBhd2FyZSBvZiBsaWJ1c2IgYW5kIHNob3VsZCBub3QgYXNzdW1lIHdoYXQg
aXQKICBuZWVkcyB0byB3b3JrLiBXZSBzdGFydCB0aGUgZXZlbnQgdGhyZWFkIGZyb20gdGhlIGJl
Z2lubmluZwogIG9uIGJvdGggTGludXggYW5kIFdpbmRvd3MgYW5kIG9uIExpbnV4IGl0IHdvcmtz
IG9ubHkgZm9yCiAgaG90cGx1ZyBjYWxsYmFja3MsIG9uIFdpbmRvd3MgLSBqdXN0IHdhaXRzIHVu
dGlsIGRldmljZQogIHJlZGlyZWN0aW9uIHN0YXJ0cy4gT24gZGlzcG9zZSBvZiB1c2ItZGV2aWNl
LW1hbmFnZXIKICAod2hlbiBob3RwbHVnIGNhbGxiYWNrcyBhcmUgZGVyZWdpc3RlcmVkKSwgd2Ug
aW50ZXJydXB0CiAgdGhlIHRocmVhZCBvbmNlIHRvIHN0b3AgaXQuClRoaXMgcmVtb3ZlcyBtYW55
IGxpbmVzIG9mIGNvZGUgYW5kIGFsc28gcmVtb3ZlcyBhbGwgdGhlCmRpZmZlcmVuY2VzIGJldHdl
ZW4gTGludXggYW5kIFdpbmRvd3MgaW4gdXNiLWRldmljZS1tYW5hZ2VyLgoKU2lnbmVkLW9mZi1i
eTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNy
Yy9jaGFubmVsLXVzYnJlZGlyLmMgICAgICAgIHwgMjggLS0tLS0tLS0tLS0tLQogc3JjL3VzYi1i
YWNrZW5kLmMgICAgICAgICAgICAgfCA0OCArKysrKysrKysrKysrKy0tLS0tLS0KIHNyYy91c2It
YmFja2VuZC5oICAgICAgICAgICAgIHwgIDIgLQogc3JjL3VzYi1kZXZpY2UtbWFuYWdlci1wcml2
LmggfCAgNiAtLS0KIHNyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyAgICAgIHwgNzkgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDUgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9u
cygrKSwgMTMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXVzYnJlZGly
LmMgYi9zcmMvY2hhbm5lbC11c2JyZWRpci5jCmluZGV4IDA0YWNmMGIuLjhkNGNkNjYgMTAwNjQ0
Ci0tLSBhL3NyYy9jaGFubmVsLXVzYnJlZGlyLmMKKysrIGIvc3JjL2NoYW5uZWwtdXNicmVkaXIu
YwpAQCAtNzIsNyArNzIsNiBAQCBzdHJ1Y3QgX1NwaWNlVXNicmVkaXJDaGFubmVsUHJpdmF0ZSB7
CiAgICAgU3BpY2VVc2JBY2xIZWxwZXIgKmFjbF9oZWxwZXI7CiAjZW5kaWYKICAgICBHTXV0ZXgg
ZGV2aWNlX2Nvbm5lY3RfbXV0ZXg7Ci0gICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICp1c2JfZGV2
aWNlX21hbmFnZXI7CiB9OwogCiBzdGF0aWMgdm9pZCBjaGFubmVsX3NldF9oYW5kbGVycyhTcGlj
ZUNoYW5uZWxDbGFzcyAqa2xhc3MpOwpAQCAtMTY5LDExICsxNjgsNiBAQCBzdGF0aWMgdm9pZCBz
cGljZV91c2JyZWRpcl9jaGFubmVsX2Rpc3Bvc2UoR09iamVjdCAqb2JqKQogICAgIFNwaWNlVXNi
cmVkaXJDaGFubmVsICpjaGFubmVsID0gU1BJQ0VfVVNCUkVESVJfQ0hBTk5FTChvYmopOwogCiAg
ICAgc3BpY2VfdXNicmVkaXJfY2hhbm5lbF9kaXNjb25uZWN0X2RldmljZShjaGFubmVsKTsKLSAg
ICAvKiBUaGlzIHNob3VsZCBoYXZlIGJlZW4gc2V0IHRvIE5VTEwgZHVyaW5nIGRldmljZSBkaXNj
b25uZWN0aW9uLAotICAgICAqIGJ1dCBiZXR0ZXIgbm90IHRvIGxlYWsgaXQgaWYgdGhpcyBkb2Vz
IG5vdCBoYXBwZW4gZm9yIHNvbWUgcmVhc29uCi0gICAgICovCi0gICAgZ193YXJuX2lmX2ZhaWwo
Y2hhbm5lbC0+cHJpdi0+dXNiX2RldmljZV9tYW5hZ2VyID09IE5VTEwpOwotICAgIGdfY2xlYXJf
b2JqZWN0KCZjaGFubmVsLT5wcml2LT51c2JfZGV2aWNlX21hbmFnZXIpOwogCiAgICAgLyogQ2hh
aW4gdXAgdG8gdGhlIHBhcmVudCBjbGFzcyAqLwogICAgIGlmIChHX09CSkVDVF9DTEFTUyhzcGlj
ZV91c2JyZWRpcl9jaGFubmVsX3BhcmVudF9jbGFzcyktPmRpc3Bvc2UpCkBAIC0yNDgsOCArMjQy
LDYgQEAgc3RhdGljIGdib29sZWFuIHNwaWNlX3VzYnJlZGlyX2NoYW5uZWxfb3Blbl9kZXZpY2Uo
CiAgICAgU3BpY2VVc2JyZWRpckNoYW5uZWwgKmNoYW5uZWwsIEdFcnJvciAqKmVycikKIHsKICAg
ICBTcGljZVVzYnJlZGlyQ2hhbm5lbFByaXZhdGUgKnByaXYgPSBjaGFubmVsLT5wcml2OwotICAg
IFNwaWNlU2Vzc2lvbiAqc2Vzc2lvbjsKLSAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKm1hbmFn
ZXI7CiAKICAgICBnX3JldHVybl92YWxfaWZfZmFpbChwcml2LT5zdGF0ZSA9PSBTVEFURV9ESVND
T05ORUNURUQKICNpZmRlZiBVU0VfUE9MS0lUCkBAIC0yNjUsMTYgKzI1Nyw2IEBAIHN0YXRpYyBn
Ym9vbGVhbiBzcGljZV91c2JyZWRpcl9jaGFubmVsX29wZW5fZGV2aWNlKAogICAgICAgICByZXR1
cm4gRkFMU0U7CiAgICAgfQogCi0gICAgc2Vzc2lvbiA9IHNwaWNlX2NoYW5uZWxfZ2V0X3Nlc3Np
b24oU1BJQ0VfQ0hBTk5FTChjaGFubmVsKSk7Ci0gICAgbWFuYWdlciA9IHNwaWNlX3VzYl9kZXZp
Y2VfbWFuYWdlcl9nZXQoc2Vzc2lvbiwgTlVMTCk7Ci0gICAgZ19yZXR1cm5fdmFsX2lmX2ZhaWwo
bWFuYWdlciAhPSBOVUxMLCBGQUxTRSk7Ci0KLSAgICBwcml2LT51c2JfZGV2aWNlX21hbmFnZXIg
PSBnX29iamVjdF9yZWYobWFuYWdlcik7Ci0gICAgaWYgKCFzcGljZV91c2JfZGV2aWNlX21hbmFn
ZXJfc3RhcnRfZXZlbnRfbGlzdGVuaW5nKHByaXYtPnVzYl9kZXZpY2VfbWFuYWdlciwgZXJyKSkg
ewotICAgICAgICBzcGljZV91c2JfYmFja2VuZF9jaGFubmVsX2RldGFjaChwcml2LT5ob3N0KTsK
LSAgICAgICAgcmV0dXJuIEZBTFNFOwotICAgIH0KLQogICAgIHByaXYtPnN0YXRlID0gU1RBVEVf
Q09OTkVDVEVEOwogCiAgICAgcmV0dXJuIFRSVUU7CkBAIC00NDUsMTYgKzQyNyw2IEBAIHZvaWQg
c3BpY2VfdXNicmVkaXJfY2hhbm5lbF9kaXNjb25uZWN0X2RldmljZShTcGljZVVzYnJlZGlyQ2hh
bm5lbCAqY2hhbm5lbCkKICAgICAgICAgYnJlYWs7CiAjZW5kaWYKICAgICBjYXNlIFNUQVRFX0NP
Tk5FQ1RFRDoKLSAgICAgICAgLyoKLSAgICAgICAgICogVGhpcyBzZXRzIHRoZSB1c2IgZXZlbnQg
dGhyZWFkIHJ1biBjb25kaXRpb24gdG8gRkFMU0UsIHRoZXJlZm9yCi0gICAgICAgICAqIGl0IG11
c3QgYmUgZG9uZSBiZWZvcmUgdXNicmVkaXJob3N0X3NldF9kZXZpY2UgTlVMTCwgYXMKLSAgICAg
ICAgICogdXNicmVkaXJob3N0X3NldF9kZXZpY2UgTlVMTCB3aWxsIGludGVycnVwdCB0aGUKLSAg
ICAgICAgICogbGlidXNiX2hhbmRsZV9ldmVudHMgY2FsbCBpbiB0aGUgdGhyZWFkLgotICAgICAg
ICAgKi8KLSAgICAgICAgZ193YXJuX2lmX2ZhaWwocHJpdi0+dXNiX2RldmljZV9tYW5hZ2VyICE9
IE5VTEwpOwotICAgICAgICBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfc3RvcF9ldmVudF9saXN0
ZW5pbmcocHJpdi0+dXNiX2RldmljZV9tYW5hZ2VyKTsKLSAgICAgICAgZ19jbGVhcl9vYmplY3Qo
JnByaXYtPnVzYl9kZXZpY2VfbWFuYWdlcik7Ci0KICAgICAgICAgLyogVGhpcyBhbHNvIGNsb3Nl
cyB0aGUgbGlidXNiIGhhbmRsZSB3ZSBwYXNzZWQgZnJvbSBvcGVuX2RldmljZSAqLwogICAgICAg
ICBzcGljZV91c2JfYmFja2VuZF9jaGFubmVsX2RldGFjaChwcml2LT5ob3N0KTsKICAgICAgICAg
Z19jbGVhcl9wb2ludGVyKCZwcml2LT5kZXZpY2UsIHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV91
bnJlZik7CmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuYyBiL3NyYy91c2ItYmFja2VuZC5j
CmluZGV4IDgyOWQ4MWQuLjM3ZGI5NTEgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5jCisr
KyBiL3NyYy91c2ItYmFja2VuZC5jCkBAIC01OCw2ICs1OCw5IEBAIHN0cnVjdCBfU3BpY2VVc2JC
YWNrZW5kCiAgICAgdXNiX2hvdF9wbHVnX2NhbGxiYWNrIGhvdHBsdWdfY2FsbGJhY2s7CiAgICAg
dm9pZCAqaG90cGx1Z191c2VyX2RhdGE7CiAgICAgbGlidXNiX2hvdHBsdWdfY2FsbGJhY2tfaGFu
ZGxlIGhvdHBsdWdfaGFuZGxlOworICAgIEdUaHJlYWQgKmV2ZW50X3RocmVhZDsKKyAgICBnaW50
IGV2ZW50X3RocmVhZF9ydW47CisKICNpZmRlZiBHX09TX1dJTjMyCiAgICAgSEFORExFIGhXbmQ7
CiAgICAgbGlidXNiX2RldmljZSAqKmxpYnVzYl9kZXZpY2VfbGlzdDsKQEAgLTQwNiwyOCArNDA5
LDI1IEBAIFNwaWNlVXNiQmFja2VuZCAqc3BpY2VfdXNiX2JhY2tlbmRfbmV3KEdFcnJvciAqKmVy
cm9yKQogICAgIHJldHVybiBiZTsKIH0KIAotZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfaGFu
ZGxlX2V2ZW50cyhTcGljZVVzYkJhY2tlbmQgKmJlKQorc3RhdGljIGdwb2ludGVyIGhhbmRsZV9s
aWJ1c2JfZXZlbnRzKGdwb2ludGVyIHVzZXJfZGF0YSkKIHsKKyAgICBTcGljZVVzYkJhY2tlbmQg
KmJlID0gKFNwaWNlVXNiQmFja2VuZCAqKXVzZXJfZGF0YTsKICAgICBTUElDRV9ERUJVRygiJXMg
Pj4iLCBfX0ZVTkNUSU9OX18pOwotICAgIGdib29sZWFuIG9rID0gRkFMU0U7Ci0gICAgaWYgKGJl
LT5saWJ1c2JfY29udGV4dCkgewotICAgICAgICBpbnQgcmVzID0gbGlidXNiX2hhbmRsZV9ldmVu
dHMoYmUtPmxpYnVzYl9jb250ZXh0KTsKLSAgICAgICAgb2sgPSByZXMgPT0gMDsKKyAgICBpbnQg
cmVzID0gMDsKKyAgICBjb25zdCBjaGFyICpkZXNjID0gIiI7CisgICAgd2hpbGUgKGdfYXRvbWlj
X2ludF9nZXQoJmJlLT5ldmVudF90aHJlYWRfcnVuKSkgeworICAgICAgICByZXMgPSBsaWJ1c2Jf
aGFuZGxlX2V2ZW50cyhiZS0+bGlidXNiX2NvbnRleHQpOwogICAgICAgICBpZiAocmVzICYmIHJl
cyAhPSBMSUJVU0JfRVJST1JfSU5URVJSVVBURUQpIHsKLSAgICAgICAgICAgIGNvbnN0IGNoYXIg
KmRlc2MgPSBsaWJ1c2Jfc3RyZXJyb3IocmVzKTsKKyAgICAgICAgICAgIGRlc2MgPSBsaWJ1c2Jf
c3RyZXJyb3IocmVzKTsKICAgICAgICAgICAgIGdfd2FybmluZygiRXJyb3IgaGFuZGxpbmcgVVNC
IGV2ZW50czogJXMgWyVpXSIsIGRlc2MsIHJlcyk7Ci0gICAgICAgICAgICBvayA9IEZBTFNFOwor
ICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgIH0KICAgICB9Ci0gICAgU1BJQ0VfREVCVUcoIiVz
IDw8ICVkIiwgX19GVU5DVElPTl9fLCBvayk7Ci0gICAgcmV0dXJuIG9rOwotfQotCi12b2lkIHNw
aWNlX3VzYl9iYWNrZW5kX2ludGVycnVwdF9ldmVudF9oYW5kbGVyKFNwaWNlVXNiQmFja2VuZCAq
YmUpCi17Ci0gICAgaWYgKGJlLT5saWJ1c2JfY29udGV4dCkgewotICAgICAgICBsaWJ1c2JfaW50
ZXJydXB0X2V2ZW50X2hhbmRsZXIoYmUtPmxpYnVzYl9jb250ZXh0KTsKKyAgICBpZiAoYmUtPmV2
ZW50X3RocmVhZF9ydW4pIHsKKyAgICAgICAgU1BJQ0VfREVCVUcoIiVzOiB0aGUgdGhyZWFkIGFi
b3J0ZWQsICVzKCVkKSIsIF9fRlVOQ1RJT05fXywgZGVzYywgcmVzKTsKICAgICB9CisgICAgU1BJ
Q0VfREVCVUcoIiVzIDw8IiwgX19GVU5DVElPTl9fKTsKKyAgICByZXR1cm4gTlVMTDsKIH0KIAog
dm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXJlZ2lzdGVyX2hvdHBsdWcoU3BpY2VVc2JCYWNrZW5k
ICpiZSkKQEAgLTQzOCw2ICs0MzgsMTIgQEAgdm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXJlZ2lz
dGVyX2hvdHBsdWcoU3BpY2VVc2JCYWNrZW5kICpiZSkKICAgICAgICAgYmUtPmhvdHBsdWdfaGFu
ZGxlID0gMDsKICAgICB9CiAgICAgYmUtPmhvdHBsdWdfY2FsbGJhY2sgPSBOVUxMOworICAgIGdf
YXRvbWljX2ludF9zZXQoJmJlLT5ldmVudF90aHJlYWRfcnVuLCBGQUxTRSk7CisgICAgaWYgKGJl
LT5ldmVudF90aHJlYWQpIHsKKyAgICAgICAgbGlidXNiX2ludGVycnVwdF9ldmVudF9oYW5kbGVy
KGJlLT5saWJ1c2JfY29udGV4dCk7CisgICAgICAgIGdfdGhyZWFkX2pvaW4oYmUtPmV2ZW50X3Ro
cmVhZCk7CisgICAgICAgIGJlLT5ldmVudF90aHJlYWQgPSBOVUxMOworICAgIH0KIH0KIAogZ2Jv
b2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVzYkJhY2tlbmQg
KmJlLApAQCAtNDYxLDYgKzQ2NywxNiBAQCBnYm9vbGVhbiBzcGljZV91c2JfYmFja2VuZF9yZWdp
c3Rlcl9ob3RwbHVnKFNwaWNlVXNiQmFja2VuZCAqYmUsCiAgICAgICAgICAgICJFcnJvciBvbiBV
U0IgaG90cGx1ZyBkZXRlY3Rpb246ICVzIFslaV0iLCBkZXNjLCByYyk7CiAgICAgICAgIHJldHVy
biBGQUxTRTsKICAgICB9CisKKyAgICBnX2F0b21pY19pbnRfc2V0KCZiZS0+ZXZlbnRfdGhyZWFk
X3J1biwgVFJVRSk7CisgICAgYmUtPmV2ZW50X3RocmVhZCA9IGdfdGhyZWFkX3RyeV9uZXcoInVz
Yl9ldl90aHJlYWQiLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaGFuZGxl
X2xpYnVzYl9ldmVudHMsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBiZSwg
ZXJyb3IpOworICAgIGlmICghYmUtPmV2ZW50X3RocmVhZCkgeworICAgICAgICBnX3dhcm5pbmco
IkVycm9yIHN0YXJ0aW5nIGV2ZW50IHRocmVhZCIpOworICAgICAgICBzcGljZV91c2JfYmFja2Vu
ZF9kZXJlZ2lzdGVyX2hvdHBsdWcoYmUpOworICAgICAgICByZXR1cm4gRkFMU0U7CisgICAgfQog
ICAgIHJldHVybiBUUlVFOwogfQogCkBAIC00NjgsNiArNDg0LDggQEAgdm9pZCBzcGljZV91c2Jf
YmFja2VuZF9kZWxldGUoU3BpY2VVc2JCYWNrZW5kICpiZSkKIHsKICAgICBnX3JldHVybl9pZl9m
YWlsKGJlICE9IE5VTEwpOwogICAgIFNQSUNFX0RFQlVHKCIlcyA+PiIsIF9fRlVOQ1RJT05fXyk7
CisgICAgLyoganVzdCB0byBiZSBvbiB0aGUgc2FmZSBzaWRlIGlmIG5vdCBkZXJlZ2lzdGVyZWQg
Ki8KKyAgICBzcGljZV91c2JfYmFja2VuZF9kZXJlZ2lzdGVyX2hvdHBsdWcoYmUpOwogICAgIGlm
IChiZS0+bGlidXNiX2NvbnRleHQpIHsKICAgICAgICAgbGlidXNiX2V4aXQoYmUtPmxpYnVzYl9j
b250ZXh0KTsKICAgICB9CmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQuaCBiL3NyYy91c2It
YmFja2VuZC5oCmluZGV4IDgxNGRhNDYuLjY5YTQ5MGIgMTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFj
a2VuZC5oCisrKyBiL3NyYy91c2ItYmFja2VuZC5oCkBAIC01Niw4ICs1Niw2IEBAIGVudW0gewog
U3BpY2VVc2JCYWNrZW5kICpzcGljZV91c2JfYmFja2VuZF9uZXcoR0Vycm9yICoqZXJyb3IpOwog
dm9pZCBzcGljZV91c2JfYmFja2VuZF9kZWxldGUoU3BpY2VVc2JCYWNrZW5kICpjb250ZXh0KTsK
IAotZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfaGFuZGxlX2V2ZW50cyhTcGljZVVzYkJhY2tl
bmQgKmJlKTsKLXZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfaW50ZXJydXB0X2V2ZW50X2hhbmRsZXIo
U3BpY2VVc2JCYWNrZW5kICpiZSk7CiBnYm9vbGVhbiBzcGljZV91c2JfYmFja2VuZF9yZWdpc3Rl
cl9ob3RwbHVnKFNwaWNlVXNiQmFja2VuZCAqYmUsCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHZvaWQgKnVzZXJfZGF0YSwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdXNiX2hvdF9wbHVnX2NhbGxiYWNrIHByb2MsCmRpZmYg
LS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLXByaXYuaCBiL3NyYy91c2ItZGV2aWNlLW1h
bmFnZXItcHJpdi5oCmluZGV4IDM5YWFmMmYuLjY2YWNmNmQgMTAwNjQ0Ci0tLSBhL3NyYy91c2It
ZGV2aWNlLW1hbmFnZXItcHJpdi5oCisrKyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXItcHJpdi5o
CkBAIC0yNSwxMiArMjUsNiBAQAogCiBHX0JFR0lOX0RFQ0xTCiAKLWdib29sZWFuIHNwaWNlX3Vz
Yl9kZXZpY2VfbWFuYWdlcl9zdGFydF9ldmVudF9saXN0ZW5pbmcoCi0gICAgU3BpY2VVc2JEZXZp
Y2VNYW5hZ2VyICptYW5hZ2VyLCBHRXJyb3IgKiplcnIpOwotCi12b2lkIHNwaWNlX3VzYl9kZXZp
Y2VfbWFuYWdlcl9zdG9wX2V2ZW50X2xpc3RlbmluZygKLSAgICBTcGljZVVzYkRldmljZU1hbmFn
ZXIgKm1hbmFnZXIpOwotCiAjaWZkZWYgVVNFX1VTQlJFRElSCiB2b2lkIHNwaWNlX3VzYl9kZXZp
Y2VfbWFuYWdlcl9kZXZpY2VfZXJyb3IoCiAgICAgU3BpY2VVc2JEZXZpY2VNYW5hZ2VyICptYW5h
Z2VyLCBTcGljZVVzYkRldmljZSAqZGV2aWNlLCBHRXJyb3IgKmVycik7CmRpZmYgLS1naXQgYS9z
cmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXgg
NzEwNWZmMS4uMjVmYWMwNCAxMDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisr
KyBiL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwpAQCAtOTMsOSArOTMsNiBAQCBzdHJ1Y3QgX1Nw
aWNlVXNiRGV2aWNlTWFuYWdlclByaXZhdGUgewogICAgIGdjaGFyICpyZWRpcmVjdF9vbl9jb25u
ZWN0OwogI2lmZGVmIFVTRV9VU0JSRURJUgogICAgIFNwaWNlVXNiQmFja2VuZCAqY29udGV4dDsK
LSAgICBpbnQgZXZlbnRfbGlzdGVuZXJzOwotICAgIEdUaHJlYWQgKmV2ZW50X3RocmVhZDsKLSAg
ICBnaW50IGV2ZW50X3RocmVhZF9ydW47CiAgICAgc3RydWN0IHVzYnJlZGlyZmlsdGVyX3J1bGUg
KmF1dG9fY29ubl9maWx0ZXJfcnVsZXM7CiAgICAgc3RydWN0IHVzYnJlZGlyZmlsdGVyX3J1bGUg
KnJlZGlyZWN0X29uX2Nvbm5lY3RfcnVsZXM7CiAgICAgaW50IGF1dG9fY29ubl9maWx0ZXJfcnVs
ZXNfY291bnQ7CkBAIC0yNjIsOSArMjU5LDYgQEAgc3RhdGljIGdib29sZWFuIHNwaWNlX3VzYl9k
ZXZpY2VfbWFuYWdlcl9pbml0YWJsZV9pbml0KEdJbml0YWJsZSAgKmluaXRhYmxlLAogICAgICAg
ICBzcGljZV91c2JfYmFja2VuZF9kZWxldGUocHJpdi0+Y29udGV4dCk7CiAgICAgICAgIHJldHVy
biBGQUxTRTsKICAgICB9Ci0jaWZuZGVmIEdfT1NfV0lOMzIKLSAgICBzcGljZV91c2JfZGV2aWNl
X21hbmFnZXJfc3RhcnRfZXZlbnRfbGlzdGVuaW5nKHNlbGYsIE5VTEwpOwotI2VuZGlmCiAKICAg
ICAvKiBTdGFydCBsaXN0ZW5pbmcgZm9yIHVzYiBjaGFubmVscyBjb25uZWN0L2Rpc2Nvbm5lY3Qg
Ki8KICAgICBzcGljZV9nX3NpZ25hbF9jb25uZWN0X29iamVjdChwcml2LT5zZXNzaW9uLCAiY2hh
bm5lbC1uZXciLCBHX0NBTExCQUNLKGNoYW5uZWxfbmV3KSwgc2VsZiwgR19DT05ORUNUX0FGVEVS
KTsKQEAgLTI4NiwyNyArMjgwLDggQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNiX2RldmljZV9tYW5h
Z2VyX2Rpc3Bvc2UoR09iamVjdCAqZ29iamVjdCkKICAgICBTcGljZVVzYkRldmljZU1hbmFnZXIg
KnNlbGYgPSBTUElDRV9VU0JfREVWSUNFX01BTkFHRVIoZ29iamVjdCk7CiAgICAgU3BpY2VVc2JE
ZXZpY2VNYW5hZ2VyUHJpdmF0ZSAqcHJpdiA9IHNlbGYtPnByaXY7CiAKLSNpZm5kZWYgR19PU19X
SU4zMgotICAgIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9zdG9wX2V2ZW50X2xpc3RlbmluZyhz
ZWxmKTsKLSAgICBpZiAoZ19hdG9taWNfaW50X2dldCgmcHJpdi0+ZXZlbnRfdGhyZWFkX3J1bikp
IHsKLSAgICAgICAgLyogRm9yY2UgdGVybWluYXRpb24gb2YgdGhlIGV2ZW50IHRocmVhZCBldmVu
IGlmIHRoZXJlIHdlcmUgc29tZQotICAgICAgICAgKiBtaXNtYXRjaGVkIHNwaWNlX3VzYl9kZXZp
Y2VfbWFuYWdlcl97c3RhcnQsc3RvcH1fZXZlbnRfbGlzdGVuaW5nCi0gICAgICAgICAqIGNhbGxz
LiBPdGhlcndpc2UsIHRoZSB1c2IgZXZlbnQgdGhyZWFkIHdpbGwgYmUgbGVha2VkLCBhbmQgd2ls
bAotICAgICAgICAgKiB0cnkgdG8gdXNlIHRoZSBsaWJ1c2IgY29udGV4dCB3ZSBkZXN0cm95IGlu
IGZpbmFsaXplKCksIHdoaWNoIHdvdWxkCi0gICAgICAgICAqIGNhdXNlIGEgY3Jhc2ggKi8KLSAg
ICAgICAgZ193YXJuX2lmX3JlYWNoZWQoKTsKLSAgICAgICAgZ19hdG9taWNfaW50X3NldCgmcHJp
di0+ZXZlbnRfdGhyZWFkX3J1biwgRkFMU0UpOwotICAgIH0KLSNlbmRpZgogICAgIHNwaWNlX3Vz
Yl9iYWNrZW5kX2RlcmVnaXN0ZXJfaG90cGx1Zyhwcml2LT5jb250ZXh0KTsKIAotICAgIGlmIChw
cml2LT5ldmVudF90aHJlYWQpIHsKLSAgICAgICAgZ193YXJuX2lmX2ZhaWwoZ19hdG9taWNfaW50
X2dldCgmcHJpdi0+ZXZlbnRfdGhyZWFkX3J1bikgPT0gRkFMU0UpOwotICAgICAgICBnX2F0b21p
Y19pbnRfc2V0KCZwcml2LT5ldmVudF90aHJlYWRfcnVuLCBGQUxTRSk7Ci0gICAgICAgIHNwaWNl
X3VzYl9iYWNrZW5kX2ludGVycnVwdF9ldmVudF9oYW5kbGVyKHByaXYtPmNvbnRleHQpOwotICAg
ICAgICBnX3RocmVhZF9qb2luKHByaXYtPmV2ZW50X3RocmVhZCk7Ci0gICAgICAgIHByaXYtPmV2
ZW50X3RocmVhZCA9IE5VTEw7Ci0gICAgfQogI2VuZGlmCiAKICAgICAvKiBDaGFpbiB1cCB0byB0
aGUgcGFyZW50IGNsYXNzICovCkBAIC0zMjQsNyArMjk5LDYgQEAgc3RhdGljIHZvaWQgc3BpY2Vf
dXNiX2RldmljZV9tYW5hZ2VyX2ZpbmFsaXplKEdPYmplY3QgKmdvYmplY3QpCiAgICAgaWYgKHBy
aXYtPmRldmljZXMpIHsKICAgICAgICAgZ19wdHJfYXJyYXlfdW5yZWYocHJpdi0+ZGV2aWNlcyk7
CiAgICAgfQotICAgIGdfcmV0dXJuX2lmX2ZhaWwocHJpdi0+ZXZlbnRfdGhyZWFkID09IE5VTEwp
OwogICAgIGlmIChwcml2LT5jb250ZXh0KSB7CiAgICAgICAgIHNwaWNlX3VzYl9iYWNrZW5kX2Rl
bGV0ZShwcml2LT5jb250ZXh0KTsKICAgICB9CkBAIC05MTYsNTkgKzg5MCw2IEBAIHN0YXRpYyB2
b2lkIHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9jaGFubmVsX2Nvbm5lY3RfY2IoCiAvKiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0gKi8KIC8qIHByaXZhdGUgYXBpICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAqLwogCi1zdGF0aWMgZ3BvaW50ZXIgc3BpY2VfdXNiX2Rl
dmljZV9tYW5hZ2VyX3VzYl9ldl90aHJlYWQoZ3BvaW50ZXIgdXNlcl9kYXRhKQotewotICAgIFNw
aWNlVXNiRGV2aWNlTWFuYWdlciAqc2VsZiA9IFNQSUNFX1VTQl9ERVZJQ0VfTUFOQUdFUih1c2Vy
X2RhdGEpOwotICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdlclByaXZhdGUgKnByaXYgPSBzZWxmLT5w
cml2OwotCi0gICAgd2hpbGUgKGdfYXRvbWljX2ludF9nZXQoJnByaXYtPmV2ZW50X3RocmVhZF9y
dW4pKSB7Ci0gICAgICAgIGlmICghc3BpY2VfdXNiX2JhY2tlbmRfaGFuZGxlX2V2ZW50cyhwcml2
LT5jb250ZXh0KSkgewotICAgICAgICAgICAgYnJlYWs7Ci0gICAgICAgIH0KLSAgICB9Ci0KLSAg
ICByZXR1cm4gTlVMTDsKLX0KLQotZ2Jvb2xlYW4gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX3N0
YXJ0X2V2ZW50X2xpc3RlbmluZygKLSAgICBTcGljZVVzYkRldmljZU1hbmFnZXIgKnNlbGYsIEdF
cnJvciAqKmVycikKLXsKLSAgICBTcGljZVVzYkRldmljZU1hbmFnZXJQcml2YXRlICpwcml2ID0g
c2VsZi0+cHJpdjsKLQotICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWlsKGVyciA9PSBOVUxMIHx8ICpl
cnIgPT0gTlVMTCwgRkFMU0UpOwotCi0gICAgcHJpdi0+ZXZlbnRfbGlzdGVuZXJzKys7Ci0gICAg
aWYgKHByaXYtPmV2ZW50X2xpc3RlbmVycyA+IDEpCi0gICAgICAgIHJldHVybiBUUlVFOwotCi0g
ICAgLyogV2UgZG9uJ3Qgam9pbiB0aGUgdGhyZWFkIHdoZW4gd2Ugc3RvcCBldmVudCBsaXN0ZW5p
bmcsIGFzIHRoZQotICAgICAgIGxpYnVzYl9oYW5kbGVfZXZlbnRzIGNhbGwgaW4gdGhlIHRocmVh
ZCB3b24ndCBleGl0IHVudGlsIHRoZQotICAgICAgIGxpYnVzYl9jbG9zZSBjYWxsIGZvciB0aGUg
ZGV2aWNlIGlzIG1hZGUgZnJvbSB1c2JyZWRpcmhvc3RfY2xvc2UuICovCi0gICAgaWYgKHByaXYt
PmV2ZW50X3RocmVhZCkgewotICAgICAgICBnX2F0b21pY19pbnRfc2V0KCZwcml2LT5ldmVudF90
aHJlYWRfcnVuLCBGQUxTRSk7Ci0gICAgICAgIHNwaWNlX3VzYl9iYWNrZW5kX2ludGVycnVwdF9l
dmVudF9oYW5kbGVyKHByaXYtPmNvbnRleHQpOwotICAgICAgICAgZ190aHJlYWRfam9pbihwcml2
LT5ldmVudF90aHJlYWQpOwotICAgICAgICAgcHJpdi0+ZXZlbnRfdGhyZWFkID0gTlVMTDsKLSAg
ICB9Ci0gICAgZ19hdG9taWNfaW50X3NldCgmcHJpdi0+ZXZlbnRfdGhyZWFkX3J1biwgVFJVRSk7
Ci0gICAgcHJpdi0+ZXZlbnRfdGhyZWFkID0gZ190aHJlYWRfbmV3KCJ1c2JfZXZfdGhyZWFkIiwK
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3BpY2VfdXNiX2RldmljZV9t
YW5hZ2VyX3VzYl9ldl90aHJlYWQsCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHNlbGYpOwotICAgIHJldHVybiBwcml2LT5ldmVudF90aHJlYWQgIT0gTlVMTDsKLX0KLQot
dm9pZCBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfc3RvcF9ldmVudF9saXN0ZW5pbmcoCi0gICAg
U3BpY2VVc2JEZXZpY2VNYW5hZ2VyICpzZWxmKQotewotICAgIFNwaWNlVXNiRGV2aWNlTWFuYWdl
clByaXZhdGUgKnByaXYgPSBzZWxmLT5wcml2OwotCi0gICAgZ19yZXR1cm5faWZfZmFpbChwcml2
LT5ldmVudF9saXN0ZW5lcnMgPiAwKTsKLQotICAgIHByaXYtPmV2ZW50X2xpc3RlbmVycy0tOwot
ICAgIGlmIChwcml2LT5ldmVudF9saXN0ZW5lcnMgPT0gMCkKLSAgICAgICAgZ19hdG9taWNfaW50
X3NldCgmcHJpdi0+ZXZlbnRfdGhyZWFkX3J1biwgRkFMU0UpOwotfQotCiBzdGF0aWMgdm9pZCBz
cGljZV91c2JfZGV2aWNlX21hbmFnZXJfY2hlY2tfcmVkaXJfb25fY29ubmVjdCgKICAgICBTcGlj
ZVVzYkRldmljZU1hbmFnZXIgKnNlbGYsIFNwaWNlQ2hhbm5lbCAqY2hhbm5lbCkKIHsKLS0gCjIu
MTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
