Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8521872CA7
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 12:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9766E507;
	Wed, 24 Jul 2019 10:54:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08FD76E501
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 10:54:01 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id 31so46507336wrm.1
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 03:54:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=72QXmO2/9/xdgBz+lB8RLluwf17iT/GVUwlKw565NcM=;
 b=TS7M+YhlflXHnJ2DIEn3jsOS6l4bQFRXqAuuEoc4tPIVqZ0XPI2gUGDskq/yVTh8eT
 8xpex+a+v4kuUCAhd7LiLmqor/LQSgdpHSrP8HHVcMlMFXSPNt4I68VssRxmDZY74sYU
 e4AI8f89MNj2uAHVrn4+PfRLDlwpsQNuW+JZ5O+VpEBqKc2IrctshQjtF4SUNQdb9k5a
 ClH6V0ij0FNlBjvFij43cyTILFiPqs9/B3tacsTyw9wyyRTb2wQFTTwZmQh9qrCoPzJh
 zSxwnDNf9JppZgTaaye/DOZhiZt1AMZjOi4QD6teI6kxNh42yMkxFaiSKDqDLI3Y+rIA
 WMWQ==
X-Gm-Message-State: APjAAAVuuz3uUvo4t5DVRxrfwqWbVWHeKp2p3u66K0DohzHdQ7nzN/FL
 /xHn2M/2WRDIj6XU9XGoutbeJWA8
X-Google-Smtp-Source: APXvYqx9H6rDObG8BC1lyg8mh0A2bXJT3gDMjQxIgZCy5BGhjnkbphUdB5qH1ecWSEFZ60pYYuNFgQ==
X-Received: by 2002:adf:e691:: with SMTP id r17mr52733778wrm.67.1563965639373; 
 Wed, 24 Jul 2019 03:53:59 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id r12sm53542137wrt.95.2019.07.24.03.53.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 03:53:58 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Wed, 24 Jul 2019 13:53:43 +0300
Message-Id: <20190724105351.13753-2-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190724105351.13753-1-yuri.benditovich@daynix.com>
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=72QXmO2/9/xdgBz+lB8RLluwf17iT/GVUwlKw565NcM=;
 b=bdpcY3GAJ4c43L9p6CBEAhYDi0dxo3pSb9lep0Ee9xkV+HF14DLj0Hb47Ia+EoIsV2
 2p+DQUol1+YCfuMcNJIQkPfpKgMhvAWeMQhPJNZpCIaL7845RFWw6p/dhFfcuaqI7peC
 BjxeztW1suDabGjNXneG5pOVGu2rDoHS0e5DmlkVx3CU8NGPxd0hsbkqGVkL2FNSCmTo
 hzl2XcYnxbRTVhLZUUpIuySG/fa+C24fib0vav6TPgmAO9vsli8zswFb44h129JBtyA8
 Ch84u7TJLV+gg35sUUwJ7CKl5/n3bvA/8txZ0+5d+kZLG9/QEw5goixxY1EFCACQyTGL
 Tkqw==
Subject: [Spice-devel] [spice-gtk 1/9] usb-redir: define interfaces to
 support emulated devices
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

U3BpY2VVc2JCYWNrZW5kRGV2aWNlIHN0cnVjdHVyZSBpcyBleHRlbmRlZCB0byBzdXBwb3J0CmFk
ZGl0aW9uYWwga2luZCBvZiBkZXZpY2UgdGhhdCBpcyBlbXVsYXRlZCBieSBTcGljZS1HVEsKYW5k
IG5vdCBwcmVzZW50IGxvY2FsbHkgKGFuZCBkb2VzIG5vdCBoYXZlIGxpYnVzYl9kZXZpY2UpLApz
dWNoIGRldmljZSBoYXMgaW5zdGVhZCBwb2ludGVyIHRvIFNwaWNlVXNiRW11bGF0ZWREZXZpY2UK
YWJzdHJhY3Qgc3RydWN0dXJlLiBTcGVjaWZpYyBpbXBsZW1lbnRhdGlvbiBvZiBzdWNoIGRldmlj
ZQpkZXBlbmRzIG9uIGl0cyBkZXZpY2UgdHlwZSAoY3VycmVudGx5IG9ubHkgJ0NEIGRldmljZScK
ZGVmaW5lZCkuIEltcGxlbWVudGF0aW9uIG1vZHVsZSByZWdpc3RlcnMgY29uc3RydWN0b3IgZm9y
CnRoaXMgZGV2aWNlIHR5cGUuIERldmljZSBzdHJ1Y3R1cmUgaXMgYWJzdHJhY3QgYnV0IGFsd2F5
cwpzdGFydHMgZnJvbSB0YWJsZSBvZiB2aXJ0dWFsIGZ1bmN0aW9ucyByZXF1aXJlZCB0byByZWRp
cmVjdApzdWNoIHZpcnR1YWwgZGV2aWNlLgoKU2lnbmVkLW9mZi1ieTogWXVyaSBCZW5kaXRvdmlj
aCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy9tZXNvbi5idWlsZCAgICAg
fCAgIDEgKwogc3JjL3VzYi1iYWNrZW5kLmMgICB8IDEyOCArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLQogc3JjL3VzYi1iYWNrZW5kLmggICB8ICAzNiArKysrKysr
KysrKystCiBzcmMvdXNiLWVtdWxhdGlvbi5oIHwgIDg4ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwogNCBmaWxlcyBjaGFuZ2VkLCAyNTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBzcmMvdXNiLWVtdWxhdGlvbi5oCgpkaWZmIC0tZ2l0IGEv
c3JjL21lc29uLmJ1aWxkIGIvc3JjL21lc29uLmJ1aWxkCmluZGV4IGFkY2ZhZWMuLjQ5ZmVjNTIg
MTAwNjQ0Ci0tLSBhL3NyYy9tZXNvbi5idWlsZAorKysgYi9zcmMvbWVzb24uYnVpbGQKQEAgLTEy
Miw2ICsxMjIsNyBAQCBzcGljZV9jbGllbnRfZ2xpYl9zb3VyY2VzID0gWwogICAndXNidXRpbC5j
JywKICAgJ3VzYnV0aWwuaCcsCiAgICd1c2ItYmFja2VuZC5jJywKKyAgJ3VzYi1lbXVsYXRpb24u
aCcsCiAgICd1c2ItYmFja2VuZC5oJywKICAgJ3ZtY3N0cmVhbS5jJywKICAgJ3ZtY3N0cmVhbS5o
JywKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3VzYi1iYWNrZW5kLmMKaW5k
ZXggOWFjODU5NS4uMGJmMmVjYyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1iYWNrZW5kLmMKKysrIGIv
c3JjL3VzYi1iYWNrZW5kLmMKQEAgLTM5LDYgKzM5LDcgQEAKICNpbmNsdWRlICJ1c2JyZWRpcnBh
cnNlci5oIgogI2luY2x1ZGUgInNwaWNlLXV0aWwuaCIKICNpbmNsdWRlICJ1c2ItYmFja2VuZC5o
IgorI2luY2x1ZGUgInVzYi1lbXVsYXRpb24uaCIKICNpbmNsdWRlICJjaGFubmVsLXVzYnJlZGly
LXByaXYuaCIKICNpbmNsdWRlICJzcGljZS1jaGFubmVsLXByaXYuaCIKIApAQCAtNDcsNiArNDgs
NyBAQAogc3RydWN0IF9TcGljZVVzYkJhY2tlbmREZXZpY2UKIHsKICAgICBsaWJ1c2JfZGV2aWNl
ICpsaWJ1c2JfZGV2aWNlOworICAgIFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgKmVkZXY7CiAgICAg
Z2ludCByZWZfY291bnQ7CiAgICAgU3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqYXR0YWNoZWRfdG87
CiAgICAgVXNiRGV2aWNlSW5mb3JtYXRpb24gZGV2aWNlX2luZm87CkBAIC02Niw2ICs2OCw5IEBA
IHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kCiAgICAgbGlidXNiX2RldmljZSAqKmxpYnVzYl9kZXZp
Y2VfbGlzdDsKICAgICBnaW50IHJlZGlyZWN0aW5nOwogI2VuZGlmCisKKyAgICBTcGljZVVzYkVt
dWxhdGVkRGV2aWNlQ3JlYXRlIGRldl9pbml0W1VTQl9ERVZfVFlQRV9NQVhdOworICAgIHVpbnQz
Ml90IG93bl9kZXZpY2VzX21hc2s7CiB9OwogCiBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZENoYW5u
ZWwKQEAgLTQwOCw2ICs0MTMsNyBAQCBTcGljZVVzYkJhY2tlbmQgKnNwaWNlX3VzYl9iYWNrZW5k
X25ldyhHRXJyb3IgKiplcnJvcikKICAgICAgICAgbGlidXNiX3NldF9vcHRpb24oYmUtPmxpYnVz
Yl9jb250ZXh0LCBMSUJVU0JfT1BUSU9OX1VTRV9VU0JESyk7CiAjZW5kaWYKICNlbmRpZgorICAg
ICAgICBiZS0+b3duX2RldmljZXNfbWFzayA9IDM7IC8qIGV4Y2x1ZGUgYWRkcmVzc2VzIDAgYW5k
IDEgKi8KICAgICB9CiAgICAgU1BJQ0VfREVCVUcoIiVzIDw8IiwgX19GVU5DVElPTl9fKTsKICAg
ICByZXR1cm4gYmU7CkBAIC01MjQsOCArNTMwLDEyIEBAIHZvaWQgc3BpY2VfdXNiX2JhY2tlbmRf
ZGV2aWNlX3VucmVmKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2KQogewogICAgIExPVURfREVC
VUcoIiVzID4+ICVwKCVkKSIsIF9fRlVOQ1RJT05fXywgZGV2LCBkZXYtPnJlZl9jb3VudCk7CiAg
ICAgaWYgKGdfYXRvbWljX2ludF9kZWNfYW5kX3Rlc3QoJmRldi0+cmVmX2NvdW50KSkgewotICAg
ICAgICBsaWJ1c2JfdW5yZWZfZGV2aWNlKGRldi0+bGlidXNiX2RldmljZSk7Ci0gICAgICAgIExP
VURfREVCVUcoIiVzIGZyZWVpbmcgJXAgKGxpYnVzYiAlcCkiLCBfX0ZVTkNUSU9OX18sIGRldiwg
ZGV2LT5saWJ1c2JfZGV2aWNlKTsKKyAgICAgICAgaWYgKGRldi0+bGlidXNiX2RldmljZSkgewor
ICAgICAgICAgICAgbGlidXNiX3VucmVmX2RldmljZShkZXYtPmxpYnVzYl9kZXZpY2UpOworICAg
ICAgICAgICAgTE9VRF9ERUJVRygiJXMgZnJlZWluZyAlcCAobGlidXNiICVwKSIsIF9fRlVOQ1RJ
T05fXywgZGV2LCBkZXYtPmxpYnVzYl9kZXZpY2UpOworICAgICAgICB9IGVsc2UgaWYgKGRldi0+
ZWRldikgeworICAgICAgICAgICAgZGV2aWNlX29wcyhkZXYtPmVkZXYpLT5kZWxldGUoZGV2LT5l
ZGV2KTsKKyAgICAgICAgfQogICAgICAgICBnX2ZyZWUoZGV2KTsKICAgICB9CiB9CkBAIC04MjQs
NCArODM0LDExOCBAQCBzcGljZV91c2JfYmFja2VuZF9jaGFubmVsX2dldF9ndWVzdF9maWx0ZXIo
U3BpY2VVc2JCYWNrZW5kQ2hhbm5lbCAqY2gsCiAgICAgfQogfQogCitnY2hhciAqIHNwaWNlX3Vz
Yl9iYWNrZW5kX2RldmljZV9kZXNjcmlwdGlvbihTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldiwK
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGdjaGFy
ICpmb3JtYXQpCit7CisgICAgaWYgKCFkZXYtPmVkZXYpIHsKKyAgICAgICAgcmV0dXJuIGdfc3Ry
ZHVwKCJOb3QgYXZhaWxhYmxlIGZvciBsaWJ1c2IgZGV2aWNlcyIpOworICAgIH0KKyAgICBnY2hh
ciAqZGVzY3JpcHRpb24sICpkZXNjcmlwdG9yLCAqcHJvZHVjdDsKKyAgICBkZXNjcmlwdG9yID0g
Z19zdHJkdXBfcHJpbnRmKCJbJTA0eDolMDR4XSIsIGRldi0+ZGV2aWNlX2luZm8udmlkLCBkZXYt
PmRldmljZV9pbmZvLnBpZCk7CisgICAgcHJvZHVjdCA9IGRldmljZV9vcHMoZGV2LT5lZGV2KS0+
Z2V0X3Byb2R1Y3RfZGVzY3JpcHRpb24oZGV2LT5lZGV2KTsKKyAgICBkZXNjcmlwdGlvbiA9IGdf
c3RyZHVwX3ByaW50Zihmb3JtYXQsICIiLCBwcm9kdWN0LCBkZXNjcmlwdG9yLAorICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGRldi0+ZGV2aWNlX2luZm8uYnVzLCBkZXYtPmRldmlj
ZV9pbmZvLmFkZHJlc3MpOworICAgIGdfZnJlZShkZXNjcmlwdG9yKTsKKyAgICBnX2ZyZWUocHJv
ZHVjdCk7CisgICAgcmV0dXJuIGRlc2NyaXB0aW9uOworfQorCit2b2lkIHNwaWNlX3VzYl9iYWNr
ZW5kX3JlZ2lzdGVyX2RldmljZV90eXBlKFNwaWNlVXNiQmFja2VuZCAqYmUsCisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFVzYkVtdWxhdGVkRGV2aWNlVHlwZSBk
ZXZfdHlwZSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3Bp
Y2VVc2JFbXVsYXRlZERldmljZUNyZWF0ZSBpbml0X3Byb2MpCit7CisgICAgaWYgKGRldl90eXBl
ID49IFVTQl9ERVZfVFlQRV9NQVgpIHsKKyAgICAgICAgZ19yZXR1cm5faWZfcmVhY2hlZCgpOwor
ICAgIH0KKyAgICBiZS0+ZGV2X2luaXRbZGV2X3R5cGVdID0gaW5pdF9wcm9jOworfQorCit2b2lk
IHNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9yZXBvcnRfY2hhbmdlKFNwaWNlVXNiQmFja2VuZCAq
YmUsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlVXNi
QmFja2VuZERldmljZSAqZGV2KQoreworICAgIGdjaGFyICpkZXNjOworICAgIGdfcmV0dXJuX2lm
X2ZhaWwoZGV2ICYmIGRldi0+ZWRldik7CisKKyAgICBkZXNjID0gZGV2aWNlX29wcyhkZXYtPmVk
ZXYpLT5nZXRfcHJvZHVjdF9kZXNjcmlwdGlvbihkZXYtPmVkZXYpOworICAgIFNQSUNFX0RFQlVH
KCIlczogJXMiLCBfX0ZVTkNUSU9OX18sIGRlc2MpOworICAgIGdfZnJlZShkZXNjKTsKK30KKwor
dm9pZCBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfZWplY3QoU3BpY2VVc2JCYWNrZW5kICpiZSwg
U3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYpCit7CisgICAgZ19yZXR1cm5faWZfZmFpbChkZXYg
JiYgZGV2LT5lZGV2KTsKKworICAgIGlmIChiZS0+aG90cGx1Z19jYWxsYmFjaykgeworICAgICAg
ICBiZS0+aG90cGx1Z19jYWxsYmFjayhiZS0+aG90cGx1Z191c2VyX2RhdGEsIGRldiwgRkFMU0Up
OworICAgIH0KKyAgICBzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfdW5yZWYoZGV2KTsKK30KKwor
Z2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfY3JlYXRlX2RldmljZShTcGljZVVzYkJhY2tlbmQg
KmJlLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBVc2JFbXVsYXRl
ZERldmljZVR5cGUgZGV2X3R5cGUsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIFVzYkNyZWF0ZURldmljZVBhcmFtZXRlcnMgKnBhcmFtKQoreworICAgIFNwaWNlVXNi
RW11bGF0ZWREZXZpY2UgKmVkZXYgPSBOVUxMOworICAgIFNwaWNlVXNiQmFja2VuZERldmljZSAg
KmRldjsKKyAgICBzdHJ1Y3QgbGlidXNiX2RldmljZV9kZXNjcmlwdG9yICpkZXNjOworICAgIHVp
bnQxNl90IGRldmljZV9kZXNjX3NpemU7CisgICAgdWludDhfdCBhZGRyZXNzID0gMDsKKworICAg
IGlmIChkZXZfdHlwZSA+PSBVU0JfREVWX1RZUEVfTUFYIHx8ICFiZS0+ZGV2X2luaXRbZGV2X3R5
cGVdKSB7CisgICAgICAgIHBhcmFtLT5lcnJvciA9IGdfZXJyb3JfbmV3KFNQSUNFX0NMSUVOVF9F
UlJPUiwgU1BJQ0VfQ0xJRU5UX0VSUk9SX0ZBSUxFRCwKKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXygiY2FuJ3QgY3JlYXRlIGRldmljZSAtIG5vdCBzdXBwb3J0ZWQiKSk7Cisg
ICAgICAgIHJldHVybiBGQUxTRTsKKyAgICB9CisKKyAgICBpZiAoYmUtPm93bl9kZXZpY2VzX21h
c2sgPT0gMHhmZmZmZmZmZikgeworICAgICAgICBwYXJhbS0+ZXJyb3IgPSBnX2Vycm9yX25ldyhT
UElDRV9DTElFTlRfRVJST1IsIFNQSUNFX0NMSUVOVF9FUlJPUl9GQUlMRUQsCisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF8oImNhbid0IGNyZWF0ZSBkZXZpY2UgLSBsaW1pdCBy
ZWFjaGVkIikpOworICAgICAgICByZXR1cm4gRkFMU0U7CisgICAgfQorICAgIGZvciAoYWRkcmVz
cyA9IDA7IGFkZHJlc3MgPCAzMjsgKythZGRyZXNzKSB7CisgICAgICAgIGlmICh+YmUtPm93bl9k
ZXZpY2VzX21hc2sgJiAoMSA8PCBhZGRyZXNzKSkgeworICAgICAgICAgICAgYnJlYWs7CisgICAg
ICAgIH0KKyAgICB9CisKKyAgICBkZXYgPSBnX25ldzAoU3BpY2VVc2JCYWNrZW5kRGV2aWNlLCAx
KTsKKworICAgIHBhcmFtLT5hZGRyZXNzID0gYWRkcmVzczsKKyAgICBpZiAoYmUtPmRldl9pbml0
W2Rldl90eXBlXShiZSwgZGV2LCBwYXJhbSwgJmVkZXYpKSB7CisgICAgICAgIGdfZnJlZShkZXYp
OworICAgICAgICByZXR1cm4gRkFMU0U7CisgICAgfQorCisgICAgaWYgKCFkZXZpY2Vfb3BzKGVk
ZXYpLT5nZXRfZGVzY3JpcHRvcihlZGV2LCBMSUJVU0JfRFRfREVWSUNFLCAwLAorICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHZvaWQgKiopJmRlc2MsICZkZXZpY2Vf
ZGVzY19zaXplKQorICAgICAgICB8fCBkZXZpY2VfZGVzY19zaXplICE9IHNpemVvZigqZGVzYykp
IHsKKworICAgICAgICBkZXZpY2Vfb3BzKGVkZXYpLT5kZWxldGUoZWRldik7CisgICAgICAgIGdf
ZnJlZShkZXYpOworICAgICAgICBwYXJhbS0+ZXJyb3IgPSBnX2Vycm9yX25ldyhTUElDRV9DTElF
TlRfRVJST1IsIFNQSUNFX0NMSUVOVF9FUlJPUl9GQUlMRUQsCisgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF8oImNhbid0IGNyZWF0ZSBkZXZpY2UgLSBpbnRlcm5hbCBlcnJvciIp
KTsKKyAgICAgICAgcmV0dXJuIEZBTFNFOworICAgIH0KKworICAgIGJlLT5vd25fZGV2aWNlc19t
YXNrIHw9IDEgPDwgYWRkcmVzczsKKworICAgIGRldi0+ZGV2aWNlX2luZm8uYnVzID0gQlVTX05V
TUJFUl9GT1JfRU1VTEFURURfVVNCOworICAgIGRldi0+ZGV2aWNlX2luZm8uYWRkcmVzcyA9IGFk
ZHJlc3M7CisgICAgZGV2LT5kZXZpY2VfaW5mby52aWQgPSBkZXNjLT5pZFZlbmRvcjsKKyAgICBk
ZXYtPmRldmljZV9pbmZvLnBpZCA9IGRlc2MtPmlkUHJvZHVjdDsKKyAgICBkZXYtPmRldmljZV9p
bmZvLmJjZFVTQiA9IGRlc2MtPmJjZFVTQjsKKyAgICBkZXYtPmRldmljZV9pbmZvLmNsYXNzID0g
ZGVzYy0+YkRldmljZUNsYXNzOworICAgIGRldi0+ZGV2aWNlX2luZm8uc3ViY2xhc3MgPSBkZXNj
LT5iRGV2aWNlU3ViQ2xhc3M7CisgICAgZGV2LT5kZXZpY2VfaW5mby5wcm90b2NvbCA9IGRlc2Mt
PmJEZXZpY2VQcm90b2NvbDsKKyAgICBkZXYtPmRldmljZV9pbmZvLmRldmljZV90eXBlID0gZGV2
X3R5cGU7CisgICAgZGV2LT5yZWZfY291bnQgPSAxOworICAgIGRldi0+ZWRldiA9IGVkZXY7CisK
KyAgICBpZiAoYmUtPmhvdHBsdWdfY2FsbGJhY2spIHsKKyAgICAgICAgYmUtPmhvdHBsdWdfY2Fs
bGJhY2soYmUtPmhvdHBsdWdfdXNlcl9kYXRhLCBkZXYsIFRSVUUpOworICAgIH0KKworICAgIHJl
dHVybiBUUlVFOworfQorCiAjZW5kaWYgLyogVVNCX1JFRElSICovCmRpZmYgLS1naXQgYS9zcmMv
dXNiLWJhY2tlbmQuaCBiL3NyYy91c2ItYmFja2VuZC5oCmluZGV4IDY5YTQ5MGIuLjhhMDRlZDAg
MTAwNjQ0Ci0tLSBhL3NyYy91c2ItYmFja2VuZC5oCisrKyBiL3NyYy91c2ItYmFja2VuZC5oCkBA
IC0zMSwxNSArMzEsMjQgQEAgdHlwZWRlZiBzdHJ1Y3QgX1NwaWNlVXNiQmFja2VuZCBTcGljZVVz
YkJhY2tlbmQ7CiB0eXBlZGVmIHN0cnVjdCBfU3BpY2VVc2JCYWNrZW5kRGV2aWNlIFNwaWNlVXNi
QmFja2VuZERldmljZTsKIHR5cGVkZWYgc3RydWN0IF9TcGljZVVzYkJhY2tlbmRDaGFubmVsIFNw
aWNlVXNiQmFja2VuZENoYW5uZWw7CiAKK3R5cGVkZWYgZW51bQoreworICAgIFVTQl9ERVZfVFlQ
RV9OT05FLAorICAgIFVTQl9ERVZfVFlQRV9DRCwKKyAgICBVU0JfREVWX1RZUEVfTUFYCit9IFVz
YkVtdWxhdGVkRGV2aWNlVHlwZTsKKwogdHlwZWRlZiBzdHJ1Y3QgVXNiRGV2aWNlSW5mb3JtYXRp
b24KIHsKICAgICB1aW50MTZfdCBidXM7CiAgICAgdWludDE2X3QgYWRkcmVzczsKICAgICB1aW50
MTZfdCB2aWQ7CiAgICAgdWludDE2X3QgcGlkOworICAgIHVpbnQxNl90IGJjZFVTQjsKICAgICB1
aW50OF90IGNsYXNzOwogICAgIHVpbnQ4X3Qgc3ViY2xhc3M7CiAgICAgdWludDhfdCBwcm90b2Nv
bDsKKyAgICB1aW50OF90IGRldmljZV90eXBlOyAvKiBVc2JFbXVsYXRlZERldmljZVR5cGUgKi8K
IH0gVXNiRGV2aWNlSW5mb3JtYXRpb247CiAKIHR5cGVkZWYgdm9pZCgqdXNiX2hvdF9wbHVnX2Nh
bGxiYWNrKSh2b2lkICp1c2VyX2RhdGEsIFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2LCBnYm9v
bGVhbiBhZGRlZCk7CkBAIC03MSw3ICs4MCw2IEBAIGdib29sZWFuIHNwaWNlX3VzYl9iYWNrZW5k
X2RldmljZV9pc29jaChTcGljZVVzYkJhY2tlbmREZXZpY2UgKmRldik7CiAvKiByZXR1cm5zIDAg
aWYgdGhlIGRldmljZSBwYXNzZXMgdGhlIGZpbHRlciAqLwogaW50IHNwaWNlX3VzYl9iYWNrZW5k
X2RldmljZV9jaGVja19maWx0ZXIoU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpkZXYsCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgdXNicmVkaXJm
aWx0ZXJfcnVsZSAqcnVsZXMsIGludCBjb3VudCk7Ci0KIC8qIFNwaWNlIFVTQiBiYWNrZW5kIGNo
YW5uZWwgQVBJICovCiBTcGljZVVzYkJhY2tlbmRDaGFubmVsICpzcGljZV91c2JfYmFja2VuZF9j
aGFubmVsX25ldyhTcGljZVVzYkJhY2tlbmQgKmNvbnRleHQsCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICAgICAgICAgICAgKnVzZXJf
ZGF0YSk7CkBAIC04OSw2ICs5NywzMiBAQCB2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxf
Z2V0X2d1ZXN0X2ZpbHRlcihTcGljZVVzYkJhY2tlbmRDaGFubmVsICpjaCwKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludCAqY291bnQpOwogdm9pZCBz
cGljZV91c2JfYmFja2VuZF9yZXR1cm5fd3JpdGVfZGF0YShTcGljZVVzYkJhY2tlbmRDaGFubmVs
ICpjaCwgdm9pZCAqZGF0YSk7CiAKKyNkZWZpbmUgQlVTX05VTUJFUl9GT1JfRU1VTEFURURfVVNC
ICAgICAgICAgMjU1CisKK3R5cGVkZWYgc3RydWN0IFVzYkNyZWF0ZURldmljZVBhcmFtZXRlcnMK
K3sKKyAgICBHRXJyb3IgKmVycm9yOworICAgIHVpbnQzMl90ICAgIGFkZHJlc3M7CisgICAgdWlu
dDMyX3QgICAgcmVzZXJ2ZWQ7CisgICAgdW5pb24KKyAgICB7CisgICAgICAgIHN0cnVjdAorICAg
ICAgICB7CisgICAgICAgICAgICBjb25zdCBjaGFyICpmaWxlbmFtZTsKKyAgICAgICAgICAgIHVp
bnQzMl90ICAgZGVsZXRlX29uX2VqZWN0ICA6IDE7CisgICAgICAgIH0gY3JlYXRlX2NkOworICAg
IH0gZGV2aWNlX3BhcmFtOworCit9IFVzYkNyZWF0ZURldmljZVBhcmFtZXRlcnM7CisKKy8qIEFQ
SSByZWxhdGVkIHRvIGVtdWxhdGVkIGRldmljZXMgKi8KK2dib29sZWFuIHNwaWNlX3VzYl9iYWNr
ZW5kX2NyZWF0ZV9kZXZpY2UoU3BpY2VVc2JCYWNrZW5kICpiZSwKKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgVXNiRW11bGF0ZWREZXZpY2VUeXBlIGRldl90eXBlLAor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBVc2JDcmVhdGVEZXZpY2VQ
YXJhbWV0ZXJzICpwYXJhbSk7CitnY2hhciAqc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2Rlc2Ny
aXB0aW9uKFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2LCBjb25zdCBnY2hhciAqZm9ybWF0KTsK
K3ZvaWQgc3BpY2VfdXNiX2JhY2tlbmRfZGV2aWNlX2VqZWN0KFNwaWNlVXNiQmFja2VuZCAqYmUs
IFNwaWNlVXNiQmFja2VuZERldmljZSAqZGV2aWNlKTsKK3ZvaWQgc3BpY2VfdXNiX2JhY2tlbmRf
ZGV2aWNlX3JlcG9ydF9jaGFuZ2UoU3BpY2VVc2JCYWNrZW5kICpiZSwgU3BpY2VVc2JCYWNrZW5k
RGV2aWNlICpkZXZpY2UpOworCiBHX0VORF9ERUNMUwogCiAjZW5kaWYKZGlmZiAtLWdpdCBhL3Ny
Yy91c2ItZW11bGF0aW9uLmggYi9zcmMvdXNiLWVtdWxhdGlvbi5oCm5ldyBmaWxlIG1vZGUgMTAw
NjQ0CmluZGV4IDAwMDAwMDAuLjQ0NzMzNjEKLS0tIC9kZXYvbnVsbAorKysgYi9zcmMvdXNiLWVt
dWxhdGlvbi5oCkBAIC0wLDAgKzEsODggQEAKKy8qIC0qLSBNb2RlOiBDOyBjLWJhc2ljLW9mZnNl
dDogNDsgaW5kZW50LXRhYnMtbW9kZTogbmlsIC0qLSAqLworLyoKKyAgICBDb3B5cmlnaHQgKEMp
IDIwMTkgUmVkIEhhdCwgSW5jLgorCisgICAgUmVkIEhhdCBBdXRob3JzOgorICAgIFl1cmkgQmVu
ZGl0b3ZpY2g8eWJlbmRpdG9AcmVkaGF0LmNvbT4KKworICAgIFRoaXMgbGlicmFyeSBpcyBmcmVl
IHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IKKyAgICBtb2RpZnkgaXQg
dW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCisgICAgTGlj
ZW5zZSBhcyBwdWJsaXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbjsgZWl0aGVy
CisgICAgdmVyc2lvbiAyLjEgb2YgdGhlIExpY2Vuc2UsIG9yIChhdCB5b3VyIG9wdGlvbikgYW55
IGxhdGVyIHZlcnNpb24uCisKKyAgICBUaGlzIGxpYnJhcnkgaXMgZGlzdHJpYnV0ZWQgaW4gdGhl
IGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwKKyAgICBidXQgV0lUSE9VVCBBTlkgV0FSUkFO
VFk7IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgorICAgIE1FUkNIQU5UQUJJ
TElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUgR05VCisg
ICAgTGVzc2VyIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgZm9yIG1vcmUgZGV0YWlscy4KKworICAg
IFlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBhIGNvcHkgb2YgdGhlIEdOVSBMZXNzZXIgR2VuZXJh
bCBQdWJsaWMKKyAgICBMaWNlbnNlIGFsb25nIHdpdGggdGhpcyBsaWJyYXJ5OyBpZiBub3QsIHNl
ZSA8aHR0cDovL3d3dy5nbnUub3JnL2xpY2Vuc2VzLz4uCisqLworCisjaWZuZGVmIF9fU1BJQ0Vf
VVNCX0VNVUxBVElPTl9IX18KKyNkZWZpbmUgX19TUElDRV9VU0JfRU1VTEFUSU9OX0hfXworCisj
aW5jbHVkZSAidXNicmVkaXJwYXJzZXIuaCIKKyNpbmNsdWRlICJ1c2ItYmFja2VuZC5oIgorCit0
eXBlZGVmIHN0cnVjdCBfU3BpY2VVc2JFbXVsYXRlZERldmljZSBTcGljZVVzYkVtdWxhdGVkRGV2
aWNlOwordHlwZWRlZiBpbnQgKCpTcGljZVVzYkVtdWxhdGVkRGV2aWNlQ3JlYXRlKShTcGljZVVz
YkJhY2tlbmQgKmJlLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBTcGljZVVzYkJhY2tlbmREZXZpY2UgKnBhcmVudCwKKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgVXNiQ3JlYXRlRGV2aWNlUGFyYW1ldGVycyAqcGFyYW0sCisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNwaWNlVXNiRW11bGF0
ZWREZXZpY2UgKipkZXZpY2UpOworCisvKgorICAgIGZ1bmN0aW9uIHRhYmxlIGZvciBlbXVsYXRl
ZCBVU0IgZGV2aWNlCisgICAgbXVzdCBiZSBmaXJzdCBtZW1iZXIgb2YgZGV2aWNlIHN0cnVjdHVy
ZQorICAgIGFsbCBmdW5jdGlvbnMgYXJlIG1hbmRhdG9yeSBmb3IgaW1wbGVtZW50YXRpb24KKyov
Cit0eXBlZGVmIHN0cnVjdCBVc2JEZXZpY2VPcHMKK3sKKyAgICBnYm9vbGVhbiAoKmdldF9kZXNj
cmlwdG9yKShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UsCisgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdWludDhfdCB0eXBlLCB1aW50OF90IGluZGV4LAorICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHZvaWQgKipidWZmZXIsIHVpbnQxNl90ICpzaXplKTsKKyAgICBn
Y2hhciAqICgqZ2V0X3Byb2R1Y3RfZGVzY3JpcHRpb24pKFNwaWNlVXNiRW11bGF0ZWREZXZpY2Ug
KmRldmljZSk7CisgICAgdm9pZCAoKmF0dGFjaCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2
aWNlLCBzdHJ1Y3QgdXNicmVkaXJwYXJzZXIgKnBhcnNlcik7CisgICAgdm9pZCAoKnJlc2V0KShT
cGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UpOworICAgIC8qCisgICAgICAgIHByb2Nlc3Np
bmcgaXMgc3luY2hyb25vdXMsIGRlZmF1bHQgPSBzdGFsbDoKKyAgICAgICAgLSByZXR1cm4gc3Vj
Y2VzcyB3aXRob3V0IGRhdGE6IHNldCBzdGF0dXMgdG8gMAorICAgICAgICAtIHJldHVybiBlcnJv
ciAtIHNldCBzdGF0dXMgdG8gZXJyb3IKKyAgICAgICAgLSByZXR1cm4gc3VjY2VzcyB3aXRoIGRh
dGEgLSBzZXQgc3RhdHVzIHRvIDAsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzZXQgYnVmZmVyIHRvIHNvbWUgYnVmZmVyCisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzZXQgbGVuZ3RoIHRvIG91dCBsZW4KKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHRydW5jYXRpb24gaXMgYXV0b21hdGljCisgICAgKi8KKyAgICB2b2lkICgqY29u
dHJvbF9yZXF1ZXN0KShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UsCisgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgdWludDhfdCAqZGF0YSwgaW50IGRhdGFfbGVuLAorICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCB1c2JfcmVkaXJfY29udHJvbF9wYWNrZXRfaGVhZGVy
ICpoLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKipidWZmZXIpOworICAgIC8q
CisgICAgICAgIHByb2Nlc3NpbmcgaXMgc3luY2hyb25vdXM6CisgICAgICAgIC0gc2V0IGgtPnN0
YXR1cyB0byByZXN1bHRpbmcgc3RhdHVzLCBkZWZhdWx0ID0gc3RhbGwKKyAgICAqLworICAgIHZv
aWQgKCpidWxrX291dF9yZXF1ZXN0KShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2UsCisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQ4X3QgZXAsIHVpbnQ4X3QgKmRhdGEsIGlu
dCBkYXRhX2xlbiwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWludDhfdCAqc3RhdHVz
KTsKKyAgICAvKgorICAgICAgICBpZiByZXR1cm5zIHRydWUsIHByb2Nlc3NpbmcgaXMgYXN5bmNo
cm9ub3VzCisgICAgICAgIG90aGVyd2lzZSBoZWFkZXIgY29udGFpbnMgZXJyb3Igc3RhdHVzCisg
ICAgKi8KKyAgICBnYm9vbGVhbiAoKmJ1bGtfaW5fcmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERl
dmljZSAqZGV2aWNlLCB1aW50NjRfdCBpZCwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgdXNiX3JlZGlyX2J1bGtfcGFja2V0X2hlYWRlciAqYnVsa19oZWFkZXIpOworICAgIHZv
aWQgKCpjYW5jZWxfcmVxdWVzdCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2aWNlLCB1aW50
NjRfdCBpZCk7CisgICAgdm9pZCAoKmRldGFjaCkoU3BpY2VVc2JFbXVsYXRlZERldmljZSAqZGV2
aWNlKTsKKyAgICB2b2lkICgqZGVsZXRlKShTcGljZVVzYkVtdWxhdGVkRGV2aWNlICpkZXZpY2Up
OworfSBVc2JEZXZpY2VPcHM7CisKK3N0YXRpYyBpbmxpbmUgY29uc3QgVXNiRGV2aWNlT3BzICpk
ZXZpY2Vfb3BzKFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgKmRldikgeworICAgIHJldHVybiAoY29u
c3QgVXNiRGV2aWNlT3BzICopZGV2OworfQorCit2b2lkIHNwaWNlX3VzYl9iYWNrZW5kX3JlZ2lz
dGVyX2RldmljZV90eXBlKFNwaWNlVXNiQmFja2VuZCAqYmUsCisgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFVzYkVtdWxhdGVkRGV2aWNlVHlwZSBkZXZfdHlwZSwK
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU3BpY2VVc2JFbXVs
YXRlZERldmljZUNyZWF0ZSBpbml0X3Byb2MpOworLyogc3VwcG9ydGVkIGRldmljZSB0eXBlcyAq
Lwordm9pZCBzcGljZV91c2JfZGV2aWNlX3JlZ2lzdGVyX2NkKFNwaWNlVXNiQmFja2VuZCAqYmUp
OworCisjZW5kaWYKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
