Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA87652B7
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B256E154;
	Thu, 11 Jul 2019 08:00:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 496976E154
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:00:24 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id f17so4683271wme.2
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 01:00:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CuMvpSkzO5pn3aCAwFMJlqWNvqGth4hE7Dt87iZJDd8=;
 b=ieBAGQJXswyvYn2ICQRM76Ls0gc/GFkFRWVDifOtzzMS2LKxunkntVq/dYylDur2Wk
 RqFz5wHDChnFb4RXkQwrFatWEnuWwz9YikLNBjnlC34hU7PCgtffDsvMfX7HSfpyqvvS
 eSde6c5S5S5PMY3wc07bCgyXvhPelQT/h/EUgpw5xeGCD8Z8/VjyzYOKTSpN1WczfpH/
 TQg8orWVPPOAPP9WosgnYn/39JgzHLHnNMqGe5Q9+ziflWXHyhlVJShzqF+4faH7OF+I
 l0kD5TnDl88AoV4xsRQQvmMAUW2gpy+iKRQ3KqX7s8lH+twqycEEXb4fb4jibmANMoxu
 yGvg==
X-Gm-Message-State: APjAAAWDj+DtCM28eImfYF704uEneuRyBSv5NaXqcJUvsHsCmxYKxkQI
 8h5PJ50W0tWfBh1XgQqI/VYKL1xRpu8=
X-Google-Smtp-Source: APXvYqwQqG4gwdPYtfQgt6shCiP438rielVJ4HdWhJh0oCKawb/YRmEFmCDI7wn2hisGPBA5MknNlw==
X-Received: by 2002:a1c:35c2:: with SMTP id c185mr2587610wma.58.1562832021765; 
 Thu, 11 Jul 2019 01:00:21 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id
 y7sm3440226wmm.19.2019.07.11.01.00.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 01:00:21 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: Spice devel <spice-devel@lists.freedesktop.org>
Date: Thu, 11 Jul 2019 09:58:50 +0200
Message-Id: <20190711075850.17989-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711072200.emoa3sfn4ymppgxf@wingsuit>
References: <20190711072200.emoa3sfn4ymppgxf@wingsuit>
MIME-Version: 1.0
Subject: [Spice-devel] [PATCH] spicy: send ordered list of preferred video
 codecs
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
CgotLS0KCmd1YXJkLCBzdHlsZSBmaXggYW5kCnNwaWNlX2Rpc3BsYXlfY2hhbm5lbF9jaGFuZ2Vf
cHJlZmVycmVkX3ZpZGVvX2NvZGVjX3R5cGUgZGVwcmVjYXRpb24KYXBwbGllZAoKdGhhbmtzLAoK
S2V2aW4KCi0tLQogdG9vbHMvc3BpY3kuYyB8IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3Rvb2xzL3NwaWN5LmMgYi90b29scy9zcGljeS5jCmluZGV4IDhhNmQwNzcu
LjQwM2E2NmQgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3NwaWN5LmMKKysrIGIvdG9vbHMvc3BpY3kuYwpA
QCAtMTAxNCw4ICsxMDE0LDM1IEBAIHN0YXRpYyB2b2lkIHZpZGVvX2NvZGVjX3R5cGVfY2IoR3Rr
UmFkaW9BY3Rpb24gKmFjdGlvbiBHX0dOVUNfVU5VU0VELAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBHdGtSYWRpb0FjdGlvbiAqY3VycmVudCwKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZ3BvaW50ZXIgdXNlcl9kYXRhKQogewotICAgIHNwaWNlX2Rpc3BsYXlfY2hh
bm5lbF9jaGFuZ2VfcHJlZmVycmVkX3ZpZGVvX2NvZGVjX3R5cGUoU1BJQ0VfQ0hBTk5FTCh1c2Vy
X2RhdGEpLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZ3RrX3JhZGlvX2FjdGlvbl9nZXRfY3VycmVudF92YWx1ZShjdXJyZW50KSk7
CisgICAgc3RhdGljIEdBcnJheSAqcHJlZmVycmVkX2NvZGVjcyA9IE5VTEw7CisgICAgZ2ludCBz
ZWxlY3RlZF9jb2RlYyA9IGd0a19yYWRpb19hY3Rpb25fZ2V0X2N1cnJlbnRfdmFsdWUoY3VycmVu
dCk7CisgICAgZ3VpbnQgaTsKKyAgICBHRXJyb3IgKmVyciA9IE5VTEw7CisKKyAgICBpZiAoIXBy
ZWZlcnJlZF9jb2RlY3MpIHsKKyAgICAgICAgcHJlZmVycmVkX2NvZGVjcyA9IGdfYXJyYXlfc2l6
ZWRfbmV3KEZBTFNFLCBGQUxTRSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHNpemVvZihnaW50KSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEdfTl9FTEVNRU5UUyh2aWRlb19jb2RlY190eXBlX2VudHJpZXMpKTsKKyAg
ICAgICAgLyogaW5pdGlhbGl6ZSB3aXRoIHRoZSBtZW51IG9yZGVyaW5nICovCisgICAgICAgIGZv
ciAoaSA9IDA7IGkgPCBHX05fRUxFTUVOVFModmlkZW9fY29kZWNfdHlwZV9lbnRyaWVzKTsgaSsr
KSB7CisgICAgICAgICAgICBnX2FycmF5X2FwcGVuZF92YWwocHJlZmVycmVkX2NvZGVjcywgdmlk
ZW9fY29kZWNfdHlwZV9lbnRyaWVzW2ldLnZhbHVlKTsKKyAgICAgICAgfQorICAgIH0KKworICAg
IC8qIHJlbW92ZSBjb2RlYyBmcm9tIGFycmF5IGFuZCBpbnNlcnQgYXQgdGhlIGJlZ2lubmluZyAq
LworICAgIGZvciAoaSA9IDA7IGkgPCBwcmVmZXJyZWRfY29kZWNzLT5sZW4gJiYKKyAgICAgICAg
ICAgICAgICBnX2FycmF5X2luZGV4KHByZWZlcnJlZF9jb2RlY3MsIGdpbnQsIGkpICE9IHNlbGVj
dGVkX2NvZGVjOyBpKyspOworCisgICAgZ19hc3NlcnQoaSA8IHByZWZlcnJlZF9jb2RlY3MtPmxl
bik7CisgICAgZ19hcnJheV9yZW1vdmVfaW5kZXgocHJlZmVycmVkX2NvZGVjcywgaSk7CisgICAg
Z19hcnJheV9wcmVwZW5kX3ZhbChwcmVmZXJyZWRfY29kZWNzLCBzZWxlY3RlZF9jb2RlYyk7CisK
KyAgICBpZiAoIXNwaWNlX2Rpc3BsYXlfY2hhbm5lbF9jaGFuZ2VfcHJlZmVycmVkX3ZpZGVvX2Nv
ZGVjX3R5cGVzKFNQSUNFX0NIQU5ORUwodXNlcl9kYXRhKSwKKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIChnaW50ICopIHBy
ZWZlcnJlZF9jb2RlY3MtPmRhdGEsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcmVmZXJyZWRfY29kZWNzLT5sZW4sICZl
cnIpKSB7CisgICAgICAgIGdfd2FybmluZygic2V0dGluZyBwcmVmZXJyZWQgdmlkZW8gY29kZWNz
IGZhaWxlZDogJXMiLCBlcnItPm1lc3NhZ2UpOworICAgICAgICBnX2Vycm9yX2ZyZWUoZXJyKTsK
KyAgICB9CiB9Cgogc3RhdGljIHZvaWQKLS0KMi4yMS4wCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
