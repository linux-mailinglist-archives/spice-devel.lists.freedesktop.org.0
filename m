Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6066E83563
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 17:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FDD89F99;
	Tue,  6 Aug 2019 15:35:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622E26E3D8
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 15:35:04 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id v15so78678061wml.0
 for <spice-devel@lists.freedesktop.org>; Tue, 06 Aug 2019 08:35:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SuPETQxZ5ACr3pec99vgYVd+uG6NsV1Xg6XL0Npdv6c=;
 b=iDdTFz+a4/0nmfPYqrdNENUjXVdziqIW8BK8jNtgvko18d1APEOyBVUiOCQxiuy4RV
 zXMYWg8ZadGEejNpqNK91nGjI4dIVqUoFqs3cVkifBPN1Yye2dhbcahEUjwPIf67KzFx
 PJ56h4s+BXeYn/cCHwVn8clJblQEbW1OTaj+aDtDDuM8OKAPI5uc/E0ebX7keguYIcCf
 y+/omIKJGgm8opJIxj6ZpexuL1XwWMvclSYVfSRwPr9QuGibfzY5iagi6sRprlwkDCU8
 lCk0sXla4dv4E2rluc4r2lYfReth2y6zQDbfRyN57e/Bvp8M9LGn5qT0jX00juDCYxUU
 mWwA==
X-Gm-Message-State: APjAAAXJdBtBoXRTCZV66EHcwuvpZdCpQE/PmYnVbCtHuzG9bLas5o8y
 ZwlLyx9MAHD4zVtbZspJy4i9ArHG/wLUjA==
X-Google-Smtp-Source: APXvYqz7RJ0CrNGa4mTNkdCghGxuK0fjjcctgPJfPWsDXws2Gi1OIf57/3mRjbk6p9epzo3nYw4Q+w==
X-Received: by 2002:a1c:d108:: with SMTP id i8mr5714875wmg.28.1565105702492;
 Tue, 06 Aug 2019 08:35:02 -0700 (PDT)
Received: from pinea.redhat.com (25.119.19.109.rev.sfr.net. [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id y18sm84860282wmi.23.2019.08.06.08.35.01
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 08:35:01 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Aug 2019 17:34:50 +0200
Message-Id: <20190806153453.20616-7-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190806153453.20616-1-kpouget@redhat.com>
References: <20190806153453.20616-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-streaming-agent 3/4] gst-plugin: Allow
 per-codec parameters
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

U2lnbmVkLW9mZi1ieTogS2V2aW4gUG91Z2V0IDxrcG91Z2V0QHJlZGhhdC5jb20+Ci0tLQogc3Jj
L2dzdC1wbHVnaW4uY3BwIHwgMTggKysrKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvZ3N0LXBs
dWdpbi5jcHAgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKaW5kZXggNTQ2OTY0Ny4uNjU3YjYyZCAxMDA2
NDQKLS0tIGEvc3JjL2dzdC1wbHVnaW4uY3BwCisrKyBiL3NyYy9nc3QtcGx1Z2luLmNwcApAQCAt
MTAyLDcgKzEwMiw4IEBAIGNsYXNzIEdzdHJlYW1lclBsdWdpbiBmaW5hbDogcHVibGljIFBsdWdp
bgogcHVibGljOgogICAgIEZyYW1lQ2FwdHVyZSAqQ3JlYXRlQ2FwdHVyZSgpIG92ZXJyaWRlOwog
ICAgIHVuc2lnbmVkIFJhbmsoKSBvdmVycmlkZTsKLSAgICB2b2lkIFBhcnNlT3B0aW9ucyhjb25z
dCBDb25maWd1cmVPcHRpb24gKm9wdGlvbnMsIFNwaWNlVmlkZW9Db2RlY1R5cGUgY29kZWMpOwor
ICAgIHZvaWQgUGFyc2VPcHRpb25zKGNvbnN0IENvbmZpZ3VyZU9wdGlvbiAqb3B0aW9ucywgU3Bp
Y2VWaWRlb0NvZGVjVHlwZSBjb2RlYywKKyAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdGQ6
OnN0cmluZyBjb2RlY19uYW1lKTsKICAgICBTcGljZVZpZGVvQ29kZWNUeXBlIFZpZGVvQ29kZWNU
eXBlKCkgY29uc3Qgb3ZlcnJpZGUgewogICAgICAgICByZXR1cm4gc2V0dGluZ3MuY29kZWM7CiAg
ICAgfQpAQCAtNDMxLDcgKzQzMiw4IEBAIHVuc2lnbmVkIEdzdHJlYW1lclBsdWdpbjo6UmFuaygp
CiAgICAgcmV0dXJuIFNvZnR3YXJlTWluOwogfQogCi12b2lkIEdzdHJlYW1lclBsdWdpbjo6UGFy
c2VPcHRpb25zKGNvbnN0IENvbmZpZ3VyZU9wdGlvbiAqb3B0aW9ucywgIFNwaWNlVmlkZW9Db2Rl
Y1R5cGUgY29kZWMpCit2b2lkIEdzdHJlYW1lclBsdWdpbjo6UGFyc2VPcHRpb25zKGNvbnN0IENv
bmZpZ3VyZU9wdGlvbiAqb3B0aW9ucywKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgU3BpY2VWaWRlb0NvZGVjVHlwZSBjb2RlYywgY29uc3Qgc3RkOjpzdHJpbmcgY29kZWNfbmFt
ZSkKIHsKICAgICBzZXR0aW5ncy5jb2RlYyA9IGNvZGVjOwogCkBAIC00MzksMTUgKzQ0MSwxNyBA
QCB2b2lkIEdzdHJlYW1lclBsdWdpbjo6UGFyc2VPcHRpb25zKGNvbnN0IENvbmZpZ3VyZU9wdGlv
biAqb3B0aW9ucywgIFNwaWNlVmlkZW9DbwogICAgICAgICBjb25zdCBzdGQ6OnN0cmluZyBuYW1l
ID0gb3B0aW9ucy0+bmFtZTsKICAgICAgICAgY29uc3Qgc3RkOjpzdHJpbmcgdmFsdWUgPSBvcHRp
b25zLT52YWx1ZTsKIAotICAgICAgICBpZiAobmFtZSA9PSAiZnJhbWVyYXRlIikgeworICAgICAg
ICBpZiAobmFtZSA9PSAiZnJhbWVyYXRlIiB8fCBuYW1lID09ICJnc3QuIiArIGNvZGVjX25hbWUg
KyAiLmZyYW1lcmF0ZSIpIHsKICAgICAgICAgICAgIHRyeSB7CiAgICAgICAgICAgICAgICAgc2V0
dGluZ3MuZnBzID0gc3RkOjpzdG9pKHZhbHVlKTsKKwogICAgICAgICAgICAgfSBjYXRjaCAoY29u
c3Qgc3RkOjpleGNlcHRpb24gJmUpIHsKLSAgICAgICAgICAgICAgICB0aHJvdyBzdGQ6OnJ1bnRp
bWVfZXJyb3IoIkludmFsaWQgdmFsdWUgJyIgKyB2YWx1ZSArICInIGZvciBvcHRpb24gJ2ZyYW1l
cmF0ZScuIik7CisgICAgICAgICAgICAgICAgdGhyb3cgc3RkOjpydW50aW1lX2Vycm9yKCJJbnZh
bGlkIHZhbHVlICciICsgdmFsdWUgKyAiJyAiCisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJmb3Igb3B0aW9uICciICsgbmFtZSArICInLiIpOwogICAgICAgICAgICAg
fQotICAgICAgICB9IGVsc2UgaWYgKG5hbWUgPT0gImdzdC5lbmNvZGVyIikgeworICAgICAgICB9
IGVsc2UgaWYgKG5hbWUgPT0gImdzdC5lbmNvZGVyIiB8fCBuYW1lID09ICJnc3QuIiArIGNvZGVj
X25hbWUgKyAiLmVuY29kZXIiKSB7CiAgICAgICAgICAgICBzZXR0aW5ncy5lbmNvZGVyID0gdmFs
dWU7Ci0gICAgICAgIH0gZWxzZSBpZiAobmFtZSA9PSAiZ3N0LnByb3AiKSB7CisgICAgICAgIH0g
ZWxzZSBpZiAobmFtZSA9PSAiZ3N0LnByb3AiIHx8IG5hbWUgPT0gImdzdC4iICsgY29kZWNfbmFt
ZSArICIucHJvcCIpIHsKICAgICAgICAgICAgIHNpemVfdCBwb3MgPSB2YWx1ZS5maW5kKCc9Jyk7
CiAgICAgICAgICAgICBpZiAocG9zID09IDAgfHwgcG9zID49IHZhbHVlLnNpemUoKSAtIDEpIHsK
ICAgICAgICAgICAgICAgICBnc3Rfc3lzbG9nKExPR19XQVJOSU5HLCAiUHJvcGVydHkgaW5wdXQg
aXMgaW52YWxpZCAoJyVzJyBJZ25vcmVkKSIsIHZhbHVlLmNfc3RyKCkpOwpAQCAtNDg4LDcgKzQ5
Miw3IEBAIFNQSUNFX1NUUkVBTUlOR19BR0VOVF9QTFVHSU4oYWdlbnQpCiAgICAgICAgICAgICB9
CiAKICAgICAgICAgICAgIGF1dG8gcGx1Z2luID0gc3RkOjptYWtlX3NoYXJlZDxHc3RyZWFtZXJQ
bHVnaW4+KCk7Ci0gICAgICAgICAgICBwbHVnaW4tPlBhcnNlT3B0aW9ucyhhZ2VudC0+T3B0aW9u
cygpLCBjb2RlY190eXBlKTsKKyAgICAgICAgICAgIHBsdWdpbi0+UGFyc2VPcHRpb25zKGFnZW50
LT5PcHRpb25zKCksIGNvZGVjX3R5cGUsIHZhbHVlKTsKICAgICAgICAgICAgIGFnZW50LT5SZWdp
c3RlcihwbHVnaW4pOwogICAgICAgICB9CiAgICAgfQotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
