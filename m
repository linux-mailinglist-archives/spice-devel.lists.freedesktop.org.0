Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4C257E3A
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 10:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 156C86E833;
	Thu, 27 Jun 2019 08:31:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2462B6E833
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:31:52 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id c2so1465739wrm.8
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 01:31:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SBoiwAzz4YrZc6zADgkJJUz5O6FbUowpIYTjmU7stso=;
 b=ZIjZzET4+xKro4DtRu5KXDOg+NU0MPOfQanu8B9t/O5vIrIR8xxzWudXUzNSTF76n1
 cOulClRWOPsnkTeTqZZmd1CmKtn6ZbHE3STffkv6E5tA9wFOje0Z3YbgdWcUZCFFTSdO
 ruD1eLYyjPrjqKXzXMm3xbL21GnllrVw4HDY28nbI8Ft4rnUrntgW6uGmwIbPfR1A9o2
 pAFv05XNglq9ylXoGJ1ZDbP2DWtLonCPdhsk3xMywx1092yfMmzdL6sya3I1zLIhZ4gJ
 SxZqbyTEpo1i+UCpTYa/yAVcyDHZbdwWxlj48VpNQ667cmoXRLFOBGY55SZHJwQeac24
 lapA==
X-Gm-Message-State: APjAAAVD+YKOSAXJpgjvYK90lL5i1GM6LmPnQUIFs/ybPhD7c8scTHlb
 2GeoFiNqbwfjs9Ou8wEyH35IKUD55ec=
X-Google-Smtp-Source: APXvYqzAyMWDcAeJUJ6YRIcBy3jByPi5CL1fIOF/qO4njHQL7QH11T/h/0HZyLH8ZvHnCjtF9GXKdw==
X-Received: by 2002:adf:e841:: with SMTP id d1mr2142383wrn.204.1561624310594; 
 Thu, 27 Jun 2019 01:31:50 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id c4sm1360490wrt.86.2019.06.27.01.31.49
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 01:31:50 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Jun 2019 10:31:47 +0200
Message-Id: <20190627083149.23283-1-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Spice-devel] [RFC] streaming: Restart streams on video-codec
 changes
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

SGVsbG8sCgpJJ3ZlIHByZXBhcmVkIHRoZXNlIHR3byBwYXRjaGVzIHRoYXQgZW5hYmxlcyAiaG90
LXN3YXBwaW5nIiBvZiB0aGUKdmlkZW8tY29kZWMgdXNlZCBmb3Igc3RyZWFtaW5nLiBJdCBnb2Vz
IGFsb25nIHdpdGggdGhlIHByZXZpb3VzIHNlcmllcwp1bmRlciByZXZpZXcgZm9yIGNsaWVudC9h
ZG1pbiBtb2RpZmljYXRpb24gb2YgdGhlIHByZWZlcnJlZCBjb2RlYwpsaXN0LgoKQmVmb3JlIHRo
aXMgcGF0Y2gsIHRoZSBwcmVmZXJyZWQgdmlkZW8gY29kZWMgbGlzdCB3YXMgY2hhbmdlIGluClJl
ZFNlcnZlckNvbmZpZy0+dmlkZW9fY29kZWNzIGFuZCBEaXNwbGF5Q2hhbm5lbC0+cHJpdi0+dmlk
ZW9fY29kZWNzLApidXQgdGhlIG9uLWdvaW5nIGVuY29kaW5nIG9mIHZpZGVvIHN0cmVhbXMgcmVt
YWluZWQgcGVyZm9ybWVkIGJ5IHRoZQpvcmlnaW5hbCBlbmNvZGVyL2NvZGVjLgoKV2l0aCB0aGlz
IHBhdGNoLCB3ZSBpbnRlcnJ1cHQgdGhlIHN0cmVhbWluZywgc2ltaWxhcnkgdG8gd2hlbiBhCnRp
bWVvdXQgb2NjdXJzLiBUaGUgc3RyZWFtIGlzIGF1dG9tYXRpY2FsbHkgcmVzdGFydGVkIHdpdGgg
dGhlIG5ldwpwcmVmZXJyZWQgY29kZWMuCgpUaGlzIGludGVycnVwdGlvbiBoYXMgdG8gYmUgcGVy
Zm9ybWVkIGluIHR3byBwbGFjZXM6IHdoZW4gdGhlIGNsaWVudApzZXRzIHRoZSBwcmVmZXJyZWQg
Y29kZWNzLCBhbmQgd2hlbiB0aGUgYWRtaW4gY2hhbmdlcyB0aGUgYWxsb3dlZApjb2RlYyBsaXN0
LgoKCkxldCBtZSBrbm93IGlmIHRoaXMgaXMgdGhlIHJpZ2h0IGFwcHJvYWNoLgoKCgpiZXN0IHJl
Z2FyZHMsCgpLZXZpbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
