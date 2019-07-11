Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC076531D
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCC366E14F;
	Thu, 11 Jul 2019 08:27:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163E66E14F
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:27:01 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id f9so5215016wre.12
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 01:27:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fYBinSzj1xAfrJbIJKzqyYOCMcMFi+oT38OQPOnD60E=;
 b=jtgIAi81Ye+YbZSBlMkQvJ8dx69909YgdreAsE8WvX7vW0dvehnEqL8KBd2n5AaEOE
 2bgL0CmnTGGsTk9G2ng/e8/GzhBgEhEBu6H9rf/wFACoDQC7NESMs8ZvaT1f8P82HBMh
 4RGjPLjctp7NL0f9oGVt2WMf13CYDxTB1pVYmOjfMPpuKH4zAMdSoFji0OhSfssEAhHM
 I407sxz9/m5mu6gUpS7S1dFUOYaNl9/G/oirg2A5TlSXOcGuDOL9i0O+di/AFzcIbn1n
 iLb+C1bs7CqMndnMrY8eLddKJ0OmdstYSypjDY/7VXQmqoSz5LTm5XkqtnpIzSnYrU0H
 yirA==
X-Gm-Message-State: APjAAAXlTeBpIDvmDocKBm3Xnh8bhcTIXiGgv15zr1SOsPXJNHHqmEXb
 /QaET1zW/CCMng+4k2EN+v7IJT1VAtI=
X-Google-Smtp-Source: APXvYqwOMmwJUFcJOoaPYsbsSlxyFAMcbkDf4xHj6xp0NK9FU25x4WoqHghLxm8GYgr/nBSwG23M+g==
X-Received: by 2002:adf:df8b:: with SMTP id z11mr2125895wrl.62.1562833619511; 
 Thu, 11 Jul 2019 01:26:59 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id k9sm3540088wmi.33.2019.07.11.01.26.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 01:26:58 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Date: Thu, 11 Jul 2019 10:26:49 +0200
Message-Id: <20190711082649.4190-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711072200.emoa3sfn4ymppgxf@wingsuit>
References: <20190711072200.emoa3sfn4ymppgxf@wingsuit>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH spice-gtk 1/2] spicy: send ordered list of
 preferred video codecs
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

SW5zdGVhZCBvZiBzZW5kaW5nIG9ubHkgdGhlIHByZWZlcnJlZCB2aWRlbyBjb2RlYyAoc2VsZWN0
ZWQpLCBzcGljeQpub3cgc2VuZHMgYW4gb3JkZXJlZCBsaXN0LiBXaGVuIGEgdmlkZW8gY29kZWMg
aXMgc2VsZWN0ZWQgaW4gdGhlIHJhZGlvCmJveCwgdGhpcyBjb2RlYyBpcyBtb3ZlZCB0byBiZWdp
bm5pbmcgb2YgdGhlIGxpc3QuCgpTaWduZWQtb2ZmLWJ5OiBLZXZpbiBQb3VnZXQgPGtwb3VnZXRA
cmVkaGF0LmNvbT4KQWNrZWQtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+
Ci0tLQoKZ3VhcmQsIHN0eWxlIGZpeCBhbmQKc3BpY2VfZGlzcGxheV9jaGFubmVsX2NoYW5nZV9w
cmVmZXJyZWRfdmlkZW9fY29kZWNfdHlwZSBkZXByZWNhdGlvbgphcHBsaWVkCgooc29ycnkgZm9y
IHRoZSBtdWx0aXBsZSBzZW5kcykKCnRoYW5rcywKCktldmluCgotLS0KIHRvb2xzL3NwaWN5LmMg
fCAzMSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMjkg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90b29scy9zcGljeS5j
IGIvdG9vbHMvc3BpY3kuYwppbmRleCA4YTZkMDc3Li40MDNhNjZkIDEwMDY0NAotLS0gYS90b29s
cy9zcGljeS5jCisrKyBiL3Rvb2xzL3NwaWN5LmMKQEAgLTEwMTQsOCArMTAxNCwzNSBAQCBzdGF0
aWMgdm9pZCB2aWRlb19jb2RlY190eXBlX2NiKEd0a1JhZGlvQWN0aW9uICphY3Rpb24gR19HTlVD
X1VOVVNFRCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR3RrUmFkaW9BY3Rpb24g
KmN1cnJlbnQsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdwb2ludGVyIHVzZXJf
ZGF0YSkKIHsKLSAgICBzcGljZV9kaXNwbGF5X2NoYW5uZWxfY2hhbmdlX3ByZWZlcnJlZF92aWRl
b19jb2RlY190eXBlKFNQSUNFX0NIQU5ORUwodXNlcl9kYXRhKSwKLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGd0a19yYWRpb19hY3Rp
b25fZ2V0X2N1cnJlbnRfdmFsdWUoY3VycmVudCkpOworICAgIHN0YXRpYyBHQXJyYXkgKnByZWZl
cnJlZF9jb2RlY3MgPSBOVUxMOworICAgIGdpbnQgc2VsZWN0ZWRfY29kZWMgPSBndGtfcmFkaW9f
YWN0aW9uX2dldF9jdXJyZW50X3ZhbHVlKGN1cnJlbnQpOworICAgIGd1aW50IGk7CisgICAgR0Vy
cm9yICplcnIgPSBOVUxMOworCisgICAgaWYgKCFwcmVmZXJyZWRfY29kZWNzKSB7CisgICAgICAg
IHByZWZlcnJlZF9jb2RlY3MgPSBnX2FycmF5X3NpemVkX25ldyhGQUxTRSwgRkFMU0UsCisgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplb2YoZ2ludCksCisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHX05fRUxFTUVOVFMo
dmlkZW9fY29kZWNfdHlwZV9lbnRyaWVzKSk7CisgICAgICAgIC8qIGluaXRpYWxpemUgd2l0aCB0
aGUgbWVudSBvcmRlcmluZyAqLworICAgICAgICBmb3IgKGkgPSAwOyBpIDwgR19OX0VMRU1FTlRT
KHZpZGVvX2NvZGVjX3R5cGVfZW50cmllcyk7IGkrKykgeworICAgICAgICAgICAgZ19hcnJheV9h
cHBlbmRfdmFsKHByZWZlcnJlZF9jb2RlY3MsIHZpZGVvX2NvZGVjX3R5cGVfZW50cmllc1tpXS52
YWx1ZSk7CisgICAgICAgIH0KKyAgICB9CisKKyAgICAvKiByZW1vdmUgY29kZWMgZnJvbSBhcnJh
eSBhbmQgaW5zZXJ0IGF0IHRoZSBiZWdpbm5pbmcgKi8KKyAgICBmb3IgKGkgPSAwOyBpIDwgcHJl
ZmVycmVkX2NvZGVjcy0+bGVuICYmCisgICAgICAgICAgICAgICAgZ19hcnJheV9pbmRleChwcmVm
ZXJyZWRfY29kZWNzLCBnaW50LCBpKSAhPSBzZWxlY3RlZF9jb2RlYzsgaSsrKTsKKworICAgIGdf
YXNzZXJ0KGkgPCBwcmVmZXJyZWRfY29kZWNzLT5sZW4pOworICAgIGdfYXJyYXlfcmVtb3ZlX2lu
ZGV4KHByZWZlcnJlZF9jb2RlY3MsIGkpOworICAgIGdfYXJyYXlfcHJlcGVuZF92YWwocHJlZmVy
cmVkX2NvZGVjcywgc2VsZWN0ZWRfY29kZWMpOworCisgICAgaWYgKCFzcGljZV9kaXNwbGF5X2No
YW5uZWxfY2hhbmdlX3ByZWZlcnJlZF92aWRlb19jb2RlY190eXBlcyhTUElDRV9DSEFOTkVMKHVz
ZXJfZGF0YSksCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAoZ2ludCAqKSBwcmVmZXJyZWRfY29kZWNzLT5kYXRhLAorICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcHJlZmVycmVkX2NvZGVjcy0+bGVuLCAmZXJyKSkgeworICAgICAgICBnX3dhcm5pbmco
InNldHRpbmcgcHJlZmVycmVkIHZpZGVvIGNvZGVjcyBmYWlsZWQ6ICVzIiwgZXJyLT5tZXNzYWdl
KTsKKyAgICAgICAgZ19lcnJvcl9mcmVlKGVycik7CisgICAgfQogfQoKIHN0YXRpYyB2b2lkCi0t
CjIuMjEuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
