Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7567B8355C
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 17:35:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D3A89D5C;
	Tue,  6 Aug 2019 15:34:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C6D89D5C
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 15:34:56 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id a15so78655846wmj.5
 for <spice-devel@lists.freedesktop.org>; Tue, 06 Aug 2019 08:34:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zntXragfw72SZz6tQSDRz7FQb1viQsY9avHt27NQVZU=;
 b=ep0xwLhaWTZ6V2KJjcK0+R77HSGNDH2O6bQmnjvvJm7VhOw8N3ULa4DaXjDFO9YdUA
 +b6aGBYlDX/0mZvE8CLl0hc5iu0iOLhp3EuUcfDc/TRj8MKYCfySyFqT6hbaGtatklWC
 Eic6tkmufb79aEhtB/Yqlzfa7/gjBZzp4X2LQ9WUEQvqI04oEVUUq17zBAFfo29hQtgR
 JG/Il951CZvSjwxXGOI1RHlTNSVfs0WASalzSdEI+HdRi/mGs+ZNPj32jWabBBZP8EWh
 P1LWbnwC2zuw2La9aPOz8QohPX+WkcyMvuOp39olBtMlBcp2TcLMB6fUHq3PhKDvsAX4
 JY0w==
X-Gm-Message-State: APjAAAXf1WZjliABoqBVUCZr25zUoVWsyXOoQmEeNHW1wD4iLZWncKE5
 kAFDGd0FC7cO6FWvKfp82iHCLkxaBIz+qw==
X-Google-Smtp-Source: APXvYqwjUZ/N8vtcqZ1tfzc2mFHC5Tce3NZUCGM/q9A4+BMZOWVZC6+fjHSAzQ/gJAIdljsB3N0goQ==
X-Received: by 2002:a7b:c206:: with SMTP id x6mr5379615wmi.156.1565105695369; 
 Tue, 06 Aug 2019 08:34:55 -0700 (PDT)
Received: from pinea.redhat.com (25.119.19.109.rev.sfr.net. [109.19.119.25])
 by smtp.gmail.com with ESMTPSA id y18sm84860282wmi.23.2019.08.06.08.34.54
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 08:34:54 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  6 Aug 2019 17:34:44 +0200
Message-Id: <20190806153453.20616-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Spice-devel] [RFC v3] Allow guest-video codec hot-swap
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

VGhpcyBpcyBhIG5ldyB2ZXJzaW9uIG9mIHRoZSBwYXRjaCBzZXJpZXMgb24gZ3Vlc3QgdmlkZW8g
Y29kZWMgaG90CnN3YXBwaW5nLgoKQSBmZXcgVE9ETyByZW1haW4gb3Blbi90byBiZSBkaXNjdXNz
ZWQsIGluIHBhcnRpY3VsYXI6CgotIGluIHRoZSBjbGllbnQsIHdoYXQgaXMgdGhlIHByb3BlciB3
YXkgdG8gZml4IHRoZSB2aXNpYmxlIGFyZWEgaXNzdWUKLSBhbGxvd2luZyB0aGUgaG9zdCBhZG1p
biB0byBjb250cm9sIHdoaWNoIGNvZGVjIGNhbiBiZSB1c2VkIGZvciBndWVzdAogIHN0cmVhbWlu
ZwotIGluIHRoZSBzZXJ2ZXIsIG9uIGNvZGVjIGNoYW5nZSwgcmVzZXQgb25seSB0aGUgc3RyZWFt
cyBvZiB0aGUgY2xpZW50CiAgdGhhdCByZXF1ZXN0ZWQgdGhlIGNoYW5nZQoKLS0tCgojIHNwaWNl
LXNlcnZlcgoKS2V2aW4gUG91Z2V0ICgzKToKICBzdHJlYW0tY2hhbm5lbDogQWRkIHByZWZlcnJl
ZCB2aWRlbyBjb2RlYyBjYXBhYmlsaXR5CiAgc3RyZWFtLWNoYW5uZWw6IFVzZSB0aGUgcHJlZmVy
cmVkIGNvZGVjIGxpc3QgaW5zdGVhZCBvZiBzdXBwb3J0ZWQKICBzdHJlYW1pbmc6IFJlc3RhcnQg
Z3Vlc3QgdmlkZW8gc3RyZWFtcyBvbiB2aWRlby1jb2RlYyBjaGFuZ2VzCgogc2VydmVyL2RjYy5j
ICAgICAgICAgICAgICAgfCAgMzAgKy0tLS0tLS0tCiBzZXJ2ZXIvbWFpbi1kaXNwYXRjaGVyLmMg
ICB8ICAzMSArKysrKysrKy0KIHNlcnZlci9tYWluLWRpc3BhdGNoZXIuaCAgIHwgICAxICsKIHNl
cnZlci9yZWQtc3RyZWFtLWRldmljZS5jIHwgICA2ICstCiBzZXJ2ZXIvcmVkLXN0cmVhbS1kZXZp
Y2UuaCB8ICAgMiArLQogc2VydmVyL3JlZHMuYyAgICAgICAgICAgICAgfCAgMTEgKysrKwogc2Vy
dmVyL3JlZHMuaCAgICAgICAgICAgICAgfCAgIDIgKy0KIHNlcnZlci9zdHJlYW0tY2hhbm5lbC5j
ICAgIHwgMTMwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0KIHNlcnZlci92
aWRlby1zdHJlYW0uYyAgICAgIHwgIDM2ICsrKysrKysrKysKIHNlcnZlci92aWRlby1zdHJlYW0u
aCAgICAgIHwgICAxICsKIDEwIGZpbGVzIGNoYW5nZWQsIDIwMCBpbnNlcnRpb25zKCspLCA1MCBk
ZWxldGlvbnMoLSkKCiMgc3BpY2Utc3RyZWFtaW5nLWFnZW50CgpLZXZpbiBQb3VnZXQgKDQpOgog
IGdzdC1wbHVnaW46IGFsbG93IHRoZSBpbnN0YW50aWF0aW9uIG9mIG11bHRpcGxlIEdTVCBlbmNv
ZGVyIHBsdWdpbnMKICBzcGljZS1zdHJlYW1pbmctYWdlbnQ6IGZ1bGx5IHJlc2V0IHRoZSBjYXB0
dXJlIGxvb3Agb24gc3RhcnQvc3RvcAogICAgcmVxdWVzdHMKICBnc3QtcGx1Z2luOiBBbGxvdyBw
ZXItY29kZWMgcGFyYW1ldGVycwogIGNvbmNyZXRlLWFnZW50OiBwcmlvcml0aXplIHJlcXVlc3Rl
ZCBjb2RlYyBmb3IgcGx1Z2luIHNlbGVjdGlvbgoKIHNyYy9jb25jcmV0ZS1hZ2VudC5jcHAgICAg
ICAgIHwgMzggKysrKysrKysrKy0tLS0tLS0tLS0tCiBzcmMvY29uY3JldGUtYWdlbnQuaHBwICAg
ICAgICB8ICAyICstCiBzcmMvZ3N0LXBsdWdpbi5jcHAgICAgICAgICAgICB8IDYyICsrKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCiBzcmMvc3BpY2Utc3RyZWFtaW5nLWFnZW50LmNw
cCB8IDIxICsrKysrKysrLS0tLQogc3JjL3N0cmVhbS1wb3J0LmNwcCAgICAgICAgICAgfCAgMiAr
LQogc3JjL3N0cmVhbS1wb3J0LmhwcCAgICAgICAgICAgfCAgNCArLS0KIDYgZmlsZXMgY2hhbmdl
ZCwgNzYgaW5zZXJ0aW9ucygrKSwgNTMgZGVsZXRpb25zKC0pCgojIHNwaWNlLWd0awoKS2V2aW4g
UG91Z2V0ICgyKToKICBzcGljZS13aWRnZXQ6IG1ha2UgZHJhdy1hcmVhIHZpc2libGUgb24gdXBk
YXRlX2ltYWdlCiAgY2hhbm5lbC1kaXNwbGF5OiBmaXggYnVnIHdoZW4gc2VuZGluZyBwcmVmZXJy
ZWQgdmlkZW8gY29kZWNzCgogc3JjL2NoYW5uZWwtZGlzcGxheS5jIHwgOCArKysrKysrLQogc3Jj
L3NwaWNlLXdpZGdldC5jICAgIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCi0tCjIuMjEuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
