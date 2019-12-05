Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E16FB1147CB
	for <lists+spice-devel@lfdr.de>; Thu,  5 Dec 2019 20:43:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71E66F8F9;
	Thu,  5 Dec 2019 19:42:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68EF56F8D6
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 17:43:47 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z3so4699438wru.3
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Dec 2019 09:43:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4W1GpUOtJBKeODrpeVgs7SPYUR8ViM4VGuS7Pu1UbK0=;
 b=EJgGPtw+jMNEq/7c6SQCyK1zN3jB/z/bljvE/LgeSBKLDlcpqgr/KGDYRkFpQ4O5yw
 5q8vd33VeMSgJXlD5FA7BW3z3wAhkVQdpj3CX6Dp4KcVFf2JdQlahd5DqSsdL/KoV/6T
 mHePuxgdK+HwU/Y+xO2d2ayvbL6mGVN0Qi+4WVCMYI07xS0edeo6P65XCaHAThITD5Pq
 lHFYFWuLPGCyV8+DX0JZ+06jBLcsPDqwZg1BC4DrIInh5oXK6s20a6xG8ZprXW8fYDOc
 pXG3xQ62tLzRawMgj+c5LjlWHNm+BIOvzqDDhOW3L0JyRx1YXPDXsj9frsKYJ//a4Yfr
 CDlA==
X-Gm-Message-State: APjAAAXkpchRk8+ivpq+jJWjmwQpGc3u7xM0icyTWHT53VTtnYFPHyA0
 uaDe0SYM1MS/l24K23S6bzpQjiTblaDLCw==
X-Google-Smtp-Source: APXvYqxipvIrgtmiBIAUU0Vk30nMnz/jSKmAxaLMEyMLCpzb25p+C9WvNBfGtFbicSsCIkQljgQXsw==
X-Received: by 2002:adf:e78b:: with SMTP id n11mr11407561wrm.10.1575567825832; 
 Thu, 05 Dec 2019 09:43:45 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id j12sm13888954wrw.54.2019.12.05.09.43.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:43:45 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Thu,  5 Dec 2019 19:49:09 +0200
Message-Id: <20191205174915.24546-4-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205174915.24546-1-anezhins@redhat.com>
References: <20191205174915.24546-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Dec 2019 19:42:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4W1GpUOtJBKeODrpeVgs7SPYUR8ViM4VGuS7Pu1UbK0=;
 b=FYn0A7QNe3U2NvyRfRZE847ycgUVYEN9LXqn0lw5IONsS5hSMPmoXKxm72tGvlW0JQ
 JJzJtFhowTanCcMaSbanE5WfDa2NjlGCWvt1GfKqKTM4ZHNJIm/r/n4aFyCYd2+OLBsJ
 ipHSfOhX63GQywxo7o8lc9yx1F1DG2ftdJ2BmY0sK9JPEpN7za5wUMr2cigkgkM4oG6M
 2w1U3ZsfOWv4upEhnVJnPcR8iChCYB/NrR2R5du01azkMH7xGCGuyecc8INTPD0xPxSr
 ngn1MZcKyIhO1zqcmiEmF9wDGCo7kBJjhCG1kB2Oo9L8ljj1MIVuiy76JaNTcy6CHkI6
 a4vw==
Subject: [Spice-devel] [PATCH 3/9] Add --spice-share-cd command line option
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

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClNpZ25lZC1v
ZmYtYnk6IEFsZXhhbmRlciBOZXpoaW5za3kgPGFuZXpoaW5zQHJlZGhhdC5jb20+Ci0tLQogc3Jj
L3NwaWNlLW9wdGlvbi5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3NyYy9zcGljZS1vcHRpb24u
YyBiL3NyYy9zcGljZS1vcHRpb24uYwppbmRleCA4YzRlNzA3Li43NTcyODA5IDEwMDY0NAotLS0g
YS9zcmMvc3BpY2Utb3B0aW9uLmMKKysrIGIvc3JjL3NwaWNlLW9wdGlvbi5jCkBAIC0zOSw2ICsz
OSw3IEBAIHN0YXRpYyBnaW50IGNhY2hlX3NpemUgPSAwOwogc3RhdGljIGdpbnQgZ2x6X3dpbmRv
d19zaXplID0gMDsKIHN0YXRpYyBnY2hhciAqc2VjdXJlX2NoYW5uZWxzID0gTlVMTDsKIHN0YXRp
YyBnY2hhciAqc2hhcmVkX2RpciA9IE5VTEw7CitzdGF0aWMgZ2NoYXIgKipjZF9zaGFyZV9maWxl
cyA9IE5VTEw7CiBzdGF0aWMgU3BpY2VJbWFnZUNvbXByZXNzaW9uIHByZWZlcnJlZF9jb21wcmVz
c2lvbiA9IFNQSUNFX0lNQUdFX0NPTVBSRVNTSU9OX0lOVkFMSUQ7CiAKIEdfR05VQ19OT1JFVFVS
TgpAQCAtMTgzLDYgKzE4NCw4IEBAIEdPcHRpb25Hcm91cCogc3BpY2VfZ2V0X29wdGlvbl9ncm91
cCh2b2lkKQogICAgICAgICAgIE5fKCJGaWx0ZXIgc2VsZWN0aW5nIFVTQiBkZXZpY2VzIHRvIGJl
IGF1dG8tcmVkaXJlY3RlZCB3aGVuIHBsdWdnZWQgaW4iKSwgTl8oIjxmaWx0ZXItc3RyaW5nPiIp
IH0sCiAgICAgICAgIHsgInNwaWNlLXVzYnJlZGlyLXJlZGlyZWN0LW9uLWNvbm5lY3QiLCAnXDAn
LCAwLCBHX09QVElPTl9BUkdfU1RSSU5HLCAmdXNicmVkaXJfcmVkaXJlY3Rfb25fY29ubmVjdCwK
ICAgICAgICAgICBOXygiRmlsdGVyIHNlbGVjdGluZyBVU0IgZGV2aWNlcyB0byByZWRpcmVjdCBv
biBjb25uZWN0IiksIE5fKCI8ZmlsdGVyLXN0cmluZz4iKSB9LAorICAgICAgICB7ICJzcGljZS1z
aGFyZS1jZCIsICdcMCcsIDAsIEdfT1BUSU9OX0FSR19TVFJJTkdfQVJSQVksICZjZF9zaGFyZV9m
aWxlcywKKyAgICAgICAgICBOXygiTmFtZSBvZiBJU08gZmlsZSBvciBDRC9EVkQgZGV2aWNlIHRv
IHNoYXJlIiksIE5fKCI8ZmlsZW5hbWU+IChyZXBlYXQgYWxsb3dlZCkiKSB9LAogICAgICAgICB7
ICJzcGljZS1jYWNoZS1zaXplIiwgJ1wwJywgMCwgR19PUFRJT05fQVJHX0lOVCwgJmNhY2hlX3Np
emUsCiAgICAgICAgICAgTl8oIkltYWdlIGNhY2hlIHNpemUgKGRlcHJlY2F0ZWQpIiksIE5fKCI8
Ynl0ZXM+IikgfSwKICAgICAgICAgeyAic3BpY2UtZ2x6LXdpbmRvdy1zaXplIiwgJ1wwJywgMCwg
R19PUFRJT05fQVJHX0lOVCwgJmdsel93aW5kb3dfc2l6ZSwKQEAgLTI4OCw2ICsyOTEsMzAgQEAg
dm9pZCBzcGljZV9zZXRfc2Vzc2lvbl9vcHRpb24oU3BpY2VTZXNzaW9uICpzZXNzaW9uKQogICAg
ICAgICAgICAgICAgICAgICAgICAgIHVzYnJlZGlyX3JlZGlyZWN0X29uX2Nvbm5lY3QsIE5VTEwp
OwogICAgICAgICB9CiAgICAgfQorICAgIGlmIChjZF9zaGFyZV9maWxlcykgeworICAgICAgICBT
cGljZVVzYkRldmljZU1hbmFnZXIgKm0gPQorICAgICAgICAgICAgICAgIGdldF91c2JfZGV2aWNl
X21hbmFnZXJfZm9yX29wdGlvbihzZXNzaW9uLCAiLS1zcGljZS1zaGFyZS1jZCIpOworICAgICAg
ICBpZiAobSkgeworICAgICAgICAgICAgZ2NoYXIgKipuYW1lID0gY2Rfc2hhcmVfZmlsZXM7Cisg
ICAgICAgICAgICBHRXJyb3IgKmVyciA9IE5VTEw7CisgICAgICAgICAgICBnYm9vbGVhbiByYzsK
KworICAgICAgICAgICAgd2hpbGUgKG5hbWUgJiYgKm5hbWUpIHsKKyAgICAgICAgICAgICAgICBy
YyA9IHNwaWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9jcmVhdGVfc2hhcmVkX2NkX2RldmljZShtLCAq
bmFtZSwgJmVycik7CisgICAgICAgICAgICAgICAgaWYgKCFyYykgeworICAgICAgICAgICAgICAg
ICAgICBpZiAoIWVycikKKyAgICAgICAgICAgICAgICAgICAgICAgIGdfd2FybmluZygiRmFpbGVk
IHRvIGNyZWF0ZSBzaGFyZWQgQ0QgZGV2aWNlICVzIiwgKm5hbWUpOworICAgICAgICAgICAgICAg
ICAgICBlbHNlCisgICAgICAgICAgICAgICAgICAgICAgICBnX3dhcm5pbmcoIkZhaWxlZCB0byBj
cmVhdGUgc2hhcmVkIENEIGRldmljZSAlczogJXMiLAorICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICpuYW1lLCBlcnItPm1lc3NhZ2UpOworICAgICAgICAgICAgICAgICAgICBnX2Ns
ZWFyX2Vycm9yKCZlcnIpOworICAgICAgICAgICAgICAgIH0KKyAgICAgICAgICAgICAgICBuYW1l
Kys7CisgICAgICAgICAgICB9CisgICAgICAgIH0KKyAgICAgICAgZ19zdHJmcmVldihjZF9zaGFy
ZV9maWxlcyk7CisgICAgICAgIGNkX3NoYXJlX2ZpbGVzID0gTlVMTDsKKyAgICB9CiAgICAgaWYg
KGRpc2FibGVfdXNicmVkaXIpCiAgICAgICAgIGdfb2JqZWN0X3NldChzZXNzaW9uLCAiZW5hYmxl
LXVzYnJlZGlyIiwgRkFMU0UsIE5VTEwpOwogICAgIGlmIChkaXNhYmxlX2F1ZGlvKQotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGlj
ZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
