Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B8A116224
	for <lists+spice-devel@lfdr.de>; Sun,  8 Dec 2019 14:58:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3766E2D7;
	Sun,  8 Dec 2019 13:58:02 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F016E2D1
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Dec 2019 13:58:01 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id t2so13093060wrr.1
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Dec 2019 05:58:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1bXeBtTNFRB40pS78Csu/0XTr+FNyvdtCPOqeBFzwgk=;
 b=SbWfOeGVZj+DEDSp5eRMB/5htmkYpKdsBN9jFzgPFneM2ZMqgxOvr086IwdpWiIf8e
 aLgLUmwXVf0IobSBTh5dL5Q6yzHsayntpAcoPVQisr8OafSExdeK1nsu8yOWsOXXNpYg
 pOC6Pexs2VaBl89IpdLZuiwBpxK6g4mVcma6IDOmnqpZyhJqfvtQnztVJ3HQJ3CitSsE
 CimLYl4BTrO2l0HSMFyPhKaGEl1er89PUiewo0rBR1wS4sEy99DYbDjlGtSI4SHshmls
 aNf++j6TNTG0trYkXlY1lMAKBvrp8QjGjOQlLWHnoo7PCYAhpjVMsNN9KES2Ccc83uBm
 upNQ==
X-Gm-Message-State: APjAAAWnUTooyC+u8Y2FcOy2j1jBgifeNoHrS5ypxTHhJ6+UUqGAWfzX
 La6zoimdBPJVTD876OHUoYp30yCEMKbLiQ==
X-Google-Smtp-Source: APXvYqwoUFkjgYaoQ4y34WQeJ3D71VGyk5LMTgSG+WlRULlLAomDk/ZdnHe8BV8ijrLQG4ImajZjiw==
X-Received: by 2002:adf:e5ce:: with SMTP id a14mr25266394wrn.214.1575813480066; 
 Sun, 08 Dec 2019 05:58:00 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id l17sm23139280wro.77.2019.12.08.05.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 05:57:59 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Sun,  8 Dec 2019 16:03:18 +0200
Message-Id: <20191208140319.22172-9-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208140319.22172-1-anezhins@redhat.com>
References: <20191208140319.22172-1-anezhins@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1bXeBtTNFRB40pS78Csu/0XTr+FNyvdtCPOqeBFzwgk=;
 b=v41kZrb/yKbJyvsq5F30OUIpk+PoSud7bhX5f7DODXK2wAUyAFl3h5MjVGY3iLyKtp
 1Pt6NePMsuMvY8blLR7bFqYet9J0yO79rOGV+Dmai1XV2Z6w0/mA7Bce6Z50cSEHzLqG
 tmwT7OqtN0lA+Uk7z41E82gtjx2c3Rji2BqgFspCKUmHAVJLu2rj8BOmpEjfS5W7Bq9n
 k/yebcCMlqObyK3UK+mQYIQXSCGQ1sJGFZGuA+cfeOKaALAhh/tJcgZWfFWgA9q6FMgo
 MDMRrCnOSD1Aoj0rw65ZBmfmKYWz3ETakUyrP0MVTcuMQJj/TkPY4BzSeVni4M2Rzp62
 F2Lg==
Subject: [Spice-devel] [PATCH shared-cd v1 8/9] auto-connect shared CD
 devices added using command line
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

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClR1cm4gc2hh
cmVkIENEIGRldmljZXMgYWRkZWQgdXNpbmcgY29tbWFuZCBsaW5lIGludG8gaG90LXBsdWdnZWQg
ZGV2aWNlcwp3aGljaCBhcmUgcmVkaXJlY3RlZCBhY2NvcmRpbmcgdG8gJ2F1dG8tY29ubmVjdCcg
ZmlsdGVyIHJ1bGVzLgoKU2hhcmVkIENEIGRldmljZXMgaGF2ZSBzcGVjaWFsIGxpZmVjeWNsZSBy
ZXF1aXJlbWVudHM6IHRoZXkgYXJlIGFsd2F5cwphdXRvLXJlZGlyZWN0ZWQgYWZ0ZXIgYmVpbmcg
Y3JlYXRlZCBhbmQgYWx3YXlzIGRlc3Ryb3llZCBhZnRlciBiZWluZwpkaXNjb25uZWN0ZWQuIFRo
dXMgdGhlIGludGVybWVkaWF0ZSBzdGF0ZSBvZiBhbiBleGlzdGluZyBidXQgbm90IGNvbm5lY3Rl
ZApkZXZpY2UsIHdoaWNoIGlzIG5vcm1hbCBmb3IgdGhlIHBoeXNpY2FsIGRldmljZXMsIGlzIG5v
dCBzdXBwb3J0ZWQgZm9yCmVtdWxhdGVkIHNoYXJlZCBDRHMuCgpGb3IgdGhlIGRldmljZXMgYWRk
ZWQgdXNpbmcgdGhlIGNvcnJlc3BvbmRpbmcgY29tbWFuZCBsaW5lIG9wdGlvbnMgaXQKbWVhbnMg
dGhhdCB0aGV5IHNob3VsZCBiZSBhdXRvLWNvbm5lY3RlZCBvbiB0aGUgdmlld2VyIHN0YXJ0LgoK
QnkgZGVmYXVsdCBjb21tYW5kIGxpbmUgZGV2aWNlcyBhcmUgYWRkZWQgdXNpbmcgJ3JlZGlyZWN0
LW9uLWNvbm5lY3QnIGZpbHRlciwKd2hpY2ggZG8gbm90IGZpdCB0aGUgc2hhcmVkIENEIGNvbm5l
Y3RpbmcgcmVxdWlyZW1lbnRzIGFib3ZlLgoKU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIE5lemhp
bnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KLS0tCiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMg
fCAyNSArKysrKysrKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0
aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5h
Z2VyLmMgYi9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMKaW5kZXggZjVmZjU0Yy4uMWQwZjY1NyAx
MDA2NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCisrKyBiL3NyYy91c2ItZGV2aWNl
LW1hbmFnZXIuYwpAQCAtODg5LDExICs4ODksOSBAQCBzdGF0aWMgdm9pZCBzcGljZV91c2JfZGV2
aWNlX21hbmFnZXJfY2hlY2tfcmVkaXJfb25fY29ubmVjdCgKICAgICBHVGFzayAqdGFzazsKICAg
ICBTcGljZVVzYkRldmljZSAqZGV2aWNlOwogICAgIFNwaWNlVXNiQmFja2VuZERldmljZSAqYmRl
djsKKyAgICBnYm9vbGVhbiBpc19jZCwgc2hhbGxfcmVkaXJlY3Q7CiAgICAgZ3VpbnQgaTsKIAot
ICAgIGlmIChwcml2LT5yZWRpcmVjdF9vbl9jb25uZWN0ID09IE5VTEwpCi0gICAgICAgIHJldHVy
bjsKLQogICAgIGZvciAoaSA9IDA7IGkgPCBwcml2LT5kZXZpY2VzLT5sZW47IGkrKykgewogICAg
ICAgICBkZXZpY2UgPSBnX3B0cl9hcnJheV9pbmRleChwcml2LT5kZXZpY2VzLCBpKTsKIApAQCAt
OTAxLDEwICs4OTksMjMgQEAgc3RhdGljIHZvaWQgc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2No
ZWNrX3JlZGlyX29uX2Nvbm5lY3QoCiAgICAgICAgICAgICBjb250aW51ZTsKIAogICAgICAgICBi
ZGV2ID0gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2RldmljZV90b19iZGV2KHNlbGYsIGRldmlj
ZSk7Ci0gICAgICAgIGlmIChzcGljZV91c2JfYmFja2VuZF9kZXZpY2VfY2hlY2tfZmlsdGVyKAot
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJkZXYsCi0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcHJpdi0+cmVkaXJlY3Rfb25fY29ubmVjdF9ydWxlcywKLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBwcml2LT5yZWRpcmVjdF9vbl9jb25uZWN0X3J1bGVzX2NvdW50KSA9PSAwKSB7
CisgICAgICAgIGlzX2NkID0gc3BpY2VfdXNiX2RldmljZV9tYW5hZ2VyX2lzX2RldmljZV9zaGFy
ZWRfY2Qoc2VsZiwgZGV2aWNlKTsKKworICAgICAgICBpZiAocHJpdi0+cmVkaXJlY3Rfb25fY29u
bmVjdCkgeworICAgICAgICAgICAgc2hhbGxfcmVkaXJlY3QgPSAhc3BpY2VfdXNiX2JhY2tlbmRf
ZGV2aWNlX2NoZWNrX2ZpbHRlcigKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmRl
diwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJpdi0+cmVkaXJlY3Rfb25fY29u
bmVjdF9ydWxlcywKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJpdi0+cmVkaXJl
Y3Rfb25fY29ubmVjdF9ydWxlc19jb3VudCk7CisgICAgICAgIH0gZWxzZSBpZiAoaXNfY2QpIHsK
KyAgICAgICAgICAgIHNoYWxsX3JlZGlyZWN0ID0gIXNwaWNlX3VzYl9iYWNrZW5kX2RldmljZV9j
aGVja19maWx0ZXIoCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJkZXYsCisgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByaXYtPmF1dG9fY29ubl9maWx0ZXJfcnVsZXMs
CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByaXYtPmF1dG9fY29ubl9maWx0ZXJf
cnVsZXNfY291bnQpOworICAgICAgICB9IGVsc2UgeworICAgICAgICAgICAgc2hhbGxfcmVkaXJl
Y3QgPSBGQUxTRTsKKyAgICAgICAgfQorCisgICAgICAgIGlmIChzaGFsbF9yZWRpcmVjdCkgewog
ICAgICAgICAgICAgLyogTm90ZTogcmUtdXNlcyBzcGljZV91c2JfZGV2aWNlX21hbmFnZXJfY29u
bmVjdF9kZXZpY2VfYXN5bmMncwogICAgICAgICAgICAgICAgY29tcGxldGlvbiBoYW5kbGluZyBj
b2RlISAqLwogICAgICAgICAgICAgdGFzayA9IGdfdGFza19uZXcoc2VsZiwKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
