Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990A456873
	for <lists+spice-devel@lfdr.de>; Wed, 26 Jun 2019 14:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E9D06E3A6;
	Wed, 26 Jun 2019 12:18:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE53B6E3A6
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 12:18:20 +0000 (UTC)
Received: by mail-vs1-f48.google.com with SMTP id q64so1440725vsd.1
 for <spice-devel@lists.freedesktop.org>; Wed, 26 Jun 2019 05:18:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=hPhOXJpz6jQkuIY/Z2UFE3r8FJE4Tnw3CrIOTNtjyIQ=;
 b=bUYhzrqyz2GXks7ktNtzWKEDzoRfsduyn22REbnomXECkr1qO88pyU+YZC+fT2y5Op
 CZyblGhnZ5ZGyaptT57BrtR2owofM07Q4dw2B8hAZgC7xel/kKljAJx1SfugVw8qU6dp
 OYSz24aLoucOkbrMl8uDiNBBz8d/AF8nMxBkvXSfILG1Or8oNKLfb9FYVDtsLJ+h5mdb
 1F6fSLfWZEkKgRiU4PpfYVAuvd4zWeFnpEwBrf+QRPSqP9Pi59wpUG9ocXKxI7fCYcOs
 X5dI7ykt0qz01uhljK+JU4YE7FGwF2VPHRjODhhgRqsdSXj6kY47KJVHwE9lw7vsHnka
 3rsw==
X-Gm-Message-State: APjAAAWVYshQSQTJ+CFLd2w2B5pBClj5CKK7WxVmBo5w1jDXREPA34N9
 92zcpeIMlS3Tsn3/vvyto4q9Wlbfp+UD6XQwJxHrRZa7
X-Google-Smtp-Source: APXvYqxu86Q2j4hP8Pq3jKsEBtvSuFrZsCoNS9qaHDwSbuGRAsc7YUpNASNB9bzWq5CHI/3iZnvfJgNeIe/ShMCDSNs=
X-Received: by 2002:a67:f5c5:: with SMTP id t5mr2667957vso.27.1561551499497;
 Wed, 26 Jun 2019 05:18:19 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Pouget <kpouget@redhat.com>
Date: Wed, 26 Jun 2019 14:18:08 +0200
Message-ID: <CADJ1XR2-hojg9oFDbMuqY_swJ6vkYSmnfapZurMMZj2QEy86MA@mail.gmail.com>
To: spice-devel@lists.freedesktop.org
Subject: [Spice-devel] Spice, GStreamer and seccomp issue
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

SGVsbG8sCgpJIHNoYXJlIGZvciBpbmZvcm1hdGlvbiB0aGUgcHJvYmxlbSBhbmQgc29sdXRpb24g
SSBlbmNvdW50ZXJlZCB3aHkKdHJ5aW5nIHRvIHJ1biBzcGljZS1zZXJ2ZXIgZ3N0cmVhbWVyIGVu
Y29kaW5nIG9uIEZlZG9yYTMwOgoKPiB3YXJuaW5nOiBHU3RyZWFtZXI6IEV4dGVybmFsIHBsdWdp
biBsb2FkZXIgZmFpbGVkLiBUaGlzIG1vc3QgbGlrZWx5IG1lYW5zIHRoYXQgdGhlIHBsdWdpbiBs
b2FkZXIgaGVscGVyIGJpbmFyeSB3YXMgbm90IGZvdW5kIG9yIGNvdWxkIG5vdCBiZSBydW4uIFlv
dSBtaWdodCBuZWVkIHRvIHNldCB0aGUgR1NUX1BMVUdJTl9TQ0FOTkVSIGVudmlyb25tZW50IHZh
cmlhYmxlIGlmIHlvdXIgc2V0dXAgaXMgdW51c3VhbC4gVGhpcyBzaG91bGQgbm9ybWFsbHkgbm90
IGJlIHJlcXVpcmVkIHRob3VnaC4KCnRoaXMgd2FzIGR1ZSB0byBzZWNjb21wIHN5c2NhbGwgZmls
dGVyaW5nLCBhcyBteSAodmlyc2gpIFZNIHdhcwpydW5uaW5nIHdpdGggdGhpcyBvcHRpb246Cgo+
IC1zYW5kYm94IG9uLG9ic29sZXRlPWRlbnksZWxldmF0ZXByaXZpbGVnZXM9ZGVueSxzcGF3bj1k
ZW55LHJlc291cmNlY29udHJvbD1kZW55CgpJIGRvbid0IGtub3cgd2hhdCBpcyB0aGUgY2xlYW4g
d2F5IHRvIHNvbHZlIGl0LCBidXQgcGF0Y2hpbmcgcWVtdSB0bwpmb3JjZSAiLXNhbmRib3ggb2Zm
IiBnZXRzIHJpZCBvZiB0aGUgY29kZWMgaXNzdWUKCgpyZWdhcmRzLAoKS2V2aW4KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
