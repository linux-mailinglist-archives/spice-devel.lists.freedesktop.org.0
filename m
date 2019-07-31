Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E287BBC9
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 10:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A8FB89C37;
	Wed, 31 Jul 2019 08:36:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 920DF89C1F
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 08:36:40 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id p74so59791941wme.4
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 01:36:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YNa+A5Lp9ZetjKucctxvAwBXxKujPf4ocuEP3s7Pf58=;
 b=G8pwGmqBnEl2kuDPjmUpAqX4zOyMzE+Cxyfvh+Nkn5mANlyxrXIkVBhK7jw+RcKUjx
 xEB0WGC+5k5qQbtKphXASwkCVmyFAsw1H5HKzeg+NZyVKjQGB4/lrFLex9tmwqPufph/
 xNDK0Kvb1KvHeCv+uEK86Ldo6D6igXjme2fKMJZOk6WfV/+KiZwr5MsaxW6xed/x3Ir+
 1dKrYU4FfjjfE9SePJwupMH8PRfIZWJ1eEv/k7thm7x3NSFcMbYmEEPY+qZfAiLu+Z4/
 HrOEjGQmtFFs20nOzEPdE/Ch3auqh3EYIW363RoJ7KiqMptSRO+MdATfGJakUIf1BRf/
 YPFw==
X-Gm-Message-State: APjAAAWKgMl4og6JicRGMre5TUx46N8IadUMWojdqNij71efMqAXAuJb
 MPQsTSh1FFjhd0QvIVzjzF0hqzXYjmhhZg==
X-Google-Smtp-Source: APXvYqwC8II2Na2NJctEHbqCOO3I4Kd79wtpAQ9agQ+IJhDgqkTEEnBkdm2Tsz6xgRq0jpbkISffsg==
X-Received: by 2002:a05:600c:230c:: with SMTP id
 12mr12298339wmo.151.1564562198794; 
 Wed, 31 Jul 2019 01:36:38 -0700 (PDT)
Received: from localhost.localdomain (25.119.19.109.rev.sfr.net.
 [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id j17sm111641863wrb.35.2019.07.31.01.36.37
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:36:38 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel <spice-devel@lists.freedesktop.org>
Date: Wed, 31 Jul 2019 10:36:32 +0200
Message-Id: <20190731083636.21493-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Spice-devel] [RFC] Allow guest-video codec hot-swap
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

SGVsbG8sCgp0aGlzIGlzIHRoZSBmaXJzdCB2ZXJzaW9uIG9mIHRoZSBwYXRjaCBzZXJpZXMgdGhh
dCBhbGxvd3MgaG90LXN3YXBwaW5nCnRoZSBjb2RlYyB1c2VkIGZvciBndWVzdCB2aWRlbyBzdHJl
YW1pbmcuCgoqIGluIHNwaWNlLXNlcnZlciwgdGhlIGJlaGF2aW9yIGlzIHNpbWlsYXIgdG8gd2hh
dCBJIGRpZCBmb3IgaG9zdC1zaWRlCiAgdmlkZW8gc3RyZWFtaW5nOiB3aGVuIHRoZSB1c2VyICh0
aHJvdWdoIHRoZSBjbGllbnQpIG9yIHRoZSBhZG1pbgogICh0aHJvdWdoIHRoZSBRTVAgaW50ZXJm
YWNlKSBjaGFuZ2VzIHRoZSBjb2RlYyBsaXN0LCB0aGUgZ3Vlc3QKICBzdHJlYW1zIGFyZSByZXNl
dC4gU1BJQ0Ugd2lsbCBhdXRvbWF0aWNhbGx5IHJlc3RhcnQgdGhlbSwgcGlja2luZyB1cAogIHRo
ZSBuZXcgbW9zdCBzdWl0YWJsZSBjb2RlYy4KICAgICogaXQgaXMgb24gcHVycG9zZSB0aGF0IEkg
ZGlkbid0IGltcGxlbWVudCBhbnkgY2hlY2sgKGVnLCBjaGVjawogICAgICB0aGF0IHRoZSBwcmVm
ZXJyZWQgY29kZWMgYWN0dWFsbHkgY2hhbmdlZCkgYmVmb3JlIHRyaWdnZXJpbmcgdGhlCiAgICAg
IHN0cmVhbSByZXN0YXJ0LiBUaGUgc3RyZWFtaW5nLWFnZW50IGFsc28gdHJpZXMgdG8gY29tcHV0
ZSB0aGUKICAgICAgbW9zdCBzdWl0YWJsZSBjb2RlYyBmb3IgYWxsIGl0cyBjbGllbnRzLCBzbyBJ
IHRoaW5rIHdlIHNob3VsZAogICAgICBoYXZlIGFub3RoZXIgZGlzY3Vzc2lvbiB0byBzZXR0bGUg
d2hlcmUvd2hlbiB0aGUgY29kZWMgY2hvaWNlcwogICAgICBzaG91bGQgYmUgZG9uZS4KCiogaW4g
c3BpY2Utc3RyZWFtaW5nLWFnZW50LCBJIGhhZCB0byAxKSB1cGRhdGUgdGhlIG1haW4gbG9vcCB0
bwogIHBlcmZvcm0gYSBmdWxsIHJlc3RhcnQsIGluc3RlYWQgb2Ygb25seSBzdG9wIHNlbmRpbmcg
ZnJhbWUgb24KICBzdGFydC9zdG9wIHJlcXVlc3RzOyAyKSB1cGRhdGUgdGhlIEdTVCBwbHVnaW4g
dG8gYWxsb3cgbXVsdGlwbGUKICBwbHVnaW4gaW5zdGFuY2VzIHRvIHJlZ2lzdGVyZWQsIG9uZSBm
b3IgZWFjaCBjb2RlYyAobGlzdGVkIGluIHRoZQogIGNvbW1hbmQtbGluZSkuCgoqIGluIHNwaWNl
LWd0aywgSSBoYWQgdG8gdXBkYXRlIGEgYml0IHRoZSBjb2RlLCB0byBlbnN1cmUgdGhhdCB0aGUK
ICBkcmF3aW5nIGFyZWEgdXNlZCBieSB0aGUgbmF0aXZlIE1KUEVHIHJlbmRlcmVyIGlzIHZpc2li
bGUgd2hlbiB3ZQogIHN3YXAgdGhlIGNvZGVjLCBvdGhlcndpc2UgdGhlIEdTVCBhcmVhIGFsd2F5
cyByZW1haW5lZCBvbiB0b3AgYW5kCiAgdGhlIE1KUEVHIHZpZGVvIHdhcyBub3QgdmlzaWJsZSBv
biBzY3JlZW4uIFRoaXMgcGFydCBpcyByZWFsbHkgUkZDLAogIGlmIHNvbWVvbmUga25vd3MgYSBi
ZXR0ZXIgcGxhY2UgZm9yIHRoaXMgbGluZSwgZmVlbCBmcmVlIQoKCnBsZWFzZSwgbGV0IG1lIGtu
b3cgaWYgeW91IGhhdmUgYW55IGNvbW1lbnRzIQoKYmVzdCByZWdhcmRzLAoKCktldmluCgotLS0K
CiMgc3BpY2Utc2VydmVyCgpLZXZpbiBQb3VnZXQgKDEpOgogIHN0cmVhbWluZzogUmVzdGFydCBn
dWVzdCB2aWRlbyBzdHJlYW1zIG9uIHZpZGVvLWNvZGVjIGNoYW5nZXMKCiBzZXJ2ZXIvZGNjLmMg
ICAgICAgICAgICAgICB8ICA0ICsrKy0KIHNlcnZlci9kaXNwbGF5LWNoYW5uZWwuYyAgIHwgIDIg
Ky0KIHNlcnZlci9yZWQtc3RyZWFtLWRldmljZS5jIHwgMTUgKysrKysrKysrKysrKysrCiBzZXJ2
ZXIvcmVkLXN0cmVhbS1kZXZpY2UuaCB8ICAxICsKIHNlcnZlci9yZWRzLmMgICAgICAgICAgICAg
IHwgMTEgKysrKysrKysrKysKIHNlcnZlci9yZWRzLmggICAgICAgICAgICAgIHwgIDEgKwogc2Vy
dmVyL3N0cmVhbS1jaGFubmVsLmMgICAgfCAzNCArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystLS0tCiBzZXJ2ZXIvdmlkZW8tc3RyZWFtLmMgICAgICB8ICA4ICsrKysrKysrCiBzZXJ2ZXIv
dmlkZW8tc3RyZWFtLmggICAgICB8ICAxICsKIDkgZmlsZXMgY2hhbmdlZCwgNzEgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKCiMgc3BpY2Utc3RyZWFtaW5nLWFnZW50CgpLZXZpbiBQb3Vn
ZXQgKDIpOgogIGdzdC1wbHVnaW46IGFsbG93IHRoZSBpbnN0YW50aWF0aW9uIG9mIG11bHRpcGxl
IEdTVCBlbmNvZGVyIHBsdWdpbnMKICBzcGljZS1zdHJlYW1pbmctYWdlbnQ6IGZ1bGx5IHJlc2V0
IHRoZSBjYXB0dXJlIGxvb3Agb24gc3RhcnQvc3RvcAogICAgcmVxdWVzdHMKCiBzcmMvZ3N0LXBs
dWdpbi5jcHAgICAgICAgICAgICB8IDUwICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tCiBzcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50LmNwcCB8ICA5ICsrKysrLS0KIDIgZmlsZXMg
Y2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgojIHNwaWNlLWd0awoK
S2V2aW4gUG91Z2V0ICgxKToKICBzcGljZS13aWRnZXQ6IG1ha2UgZHJhdy1hcmVhIHZpc2libGUg
b24gdXBkYXRlX2ltYWdlCgogc3JjL3NwaWNlLXdpZGdldC5jIHwgMiArKwogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQoKLS0KMi4yMS4wCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
