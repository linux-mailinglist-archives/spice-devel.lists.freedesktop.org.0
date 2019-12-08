Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D5911621B
	for <lists+spice-devel@lfdr.de>; Sun,  8 Dec 2019 14:57:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691516E05C;
	Sun,  8 Dec 2019 13:57:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B34D6E03E
 for <spice-devel@lists.freedesktop.org>; Sun,  8 Dec 2019 13:57:53 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id w15so13104849wru.4
 for <spice-devel@lists.freedesktop.org>; Sun, 08 Dec 2019 05:57:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WPEayCRsmI74aCU8Ip20av3tuZeCQB6YqZs2HUbNSTw=;
 b=mNEfKG+UyKG7xY7h+q7B0IGKIyjEIOLv30KxTGlKLBwo9wrgFkURIzRgx6HPKVVNSs
 mqzX+HzRlV0OBFwW6cZhIUPYc39+RHx7v3BMWeho+Nq2GV2Sdb+4CA0zxrQTscseFbG0
 LKH8vL+kJZZShc8vuoBG+7BHBT2zJDH3PKhQaJHKSgZyXmMn/wUSqCSpEMul4JeDkGpe
 +pOxTKmDAdNFP9QKaWeNVvgW2nLwUe/uis5Zn2gvBPWyD9uBOH0z0jONaGc8wwACqLpY
 awiDa4t301BCMk0JAmVnd/uD3Bxn32aDdRXsXPU9B52uBMwg4ySMbIXPXRSRjjXNIdXE
 1YHQ==
X-Gm-Message-State: APjAAAXDarwJVYh5otalPhj2mMhZIKds/sPcJTaAUEZE5qZN6OnI0mmV
 tbr0omiwXdtaWUbFeBXWMhXA/Ad1vMwYyA==
X-Google-Smtp-Source: APXvYqxfwFK5KCR6OTyxXLU6mgGT32WEyv4sqaeCTHCHT7frnTWGPIdHhFsItYX5/M8t4Hi3Pzhdyw==
X-Received: by 2002:a5d:480b:: with SMTP id l11mr26588840wrq.129.1575813471612; 
 Sun, 08 Dec 2019 05:57:51 -0800 (PST)
Received: from localhost.localdomain ([94.188.175.54])
 by smtp.gmail.com with ESMTPSA id l17sm23139280wro.77.2019.12.08.05.57.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 05:57:50 -0800 (PST)
From: alexander@daynix.com
X-Google-Original-From: anezhins@redhat.com
To: spice-devel@lists.freedesktop.org
Date: Sun,  8 Dec 2019 16:03:10 +0200
Message-Id: <20191208140319.22172-1-anezhins@redhat.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WPEayCRsmI74aCU8Ip20av3tuZeCQB6YqZs2HUbNSTw=;
 b=b4MpW15/QRqyL5TWYIRU6+aIMPYTDi0su9HDAkckF9wtTDv6nn037loqNC5u9Kbs9b
 u0Aovc97uXf+vmCXYhLNIl9uiBOJDJWrjwg5d+S16BGIRDbEUeWlEIm+tzupdl+us2Nh
 CZtCPJWskygEM5txFGqeqBrpAdiSlFfUS11bRrBF9miEZ6f0BofqyHsVKARgIwrTHZL1
 UTh9BABcjgiXGt/N0+b4C+TzgV0+yoS/p6JpXlyKlq9yKE2YkYEHEXv5tFXPYPiiOl8w
 0MTggqI0m4RDj1gusuyfYvnRHVtoUleVLChzebl+6P6QD5RQrY24MBfxzlVSm55I69hL
 n2qg==
Subject: [Spice-devel] [PATCH shared-cd v1 0/9] Add Spice CD functionality
 to usb-device-widget
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

RnJvbTogQWxleGFuZGVyIE5lemhpbnNreSA8YW5lemhpbnNAcmVkaGF0LmNvbT4KClRoaXMgcGF0
Y2gtc2V0IGFkZHMgc2hhcmVkIFNwaWNlIENEIGZ1bmN0aW9uYWxpdHkgdG8gdXNiLWRldmljZS13
aWRnZXQuCgpFdmVyeSB0aW1lIHRoZSB3aWRnZXQgaXMgY3JlYXRlZCBvciByZWRyYXduLCBhIHBs
YWNlaG9sZGVyIHRvZ2dsZSBuYW1lZAoiU3BpY2UgQ0QgKGVtcHR5KSIgYXBwZWFycyBvbiB0b3Ag
b2YgdGhlIGF2YWlsYWJsZSBVU0IgZGV2aWNlcyBsaXN0LgpJdCBhbGxvd3MgYWRkaW5nIENEIGRl
dmljZXMgYW5kLCB3aGVuIGNsaWNrZWQsIGZpcmVzIHVwIGEgZmlsZSBjaG9vc2VyLgoKSWYgYW4g
aW1hZ2UgcGF0aCBoYXMgYmVlbiBzZWxlY3RlZCwgYSBuZXcgU3BpY2UgVVNCIENEIGRldmljZSBp
cyBjcmVhdGVkLgpBZnRlciB0aGUgbmV3IGRldmljZSBpcyBhZGRlZCBhbmQgdGhpcyBldmVudCBp
cyBzaWduYWxsZWQgdG8gdGhlIHdpZGdldCwKdGhlIG9yaWdpbmFsIHRvZ2dsZSBzaG93cyB0aGUg
aW1hZ2UgZmlsZSBwYXRoIGFuZCBzdGFydHMgcmVwcmVzZW50aW5nCnRoZSBDRC4gQSBuZXcgcGxh
Y2Vob2xkZXIgdG9nZ2xlIGZvciBhbiBlbXB0eSBTcGljZSBDRCBpcyBhZGRlZC4KCldoZW4gdGhl
IG1lZGlhIGlzIHVubG9hZGVkLCB0aGUgc2hhcmVkIENEIGRldmljZSBpcyByZW1vdmVkLiBPdGhl
cndpc2UsCmFsbCBzdGFuZGFyZCBzY2VuYXJpb3MgZm9yIFNwaWNlIFVTQiBkZXZpY2UgcmVtb3Zh
bCBhcmUgc3VwcG9ydGVkLgoKTmVjZXNzYXJ5IGZ1bmN0aW9uYWxpdHkgYW5kIGFwaSBmb3Igc2hh
cmVkIENEIG1haW50YWluYW5jZSBoYXZlIGJlZW4gYWRkZWQKdG8gdXNiLWRldmljZS1tYW5hZ2Vy
LgoKQWxleGFuZGVyIE5lemhpbnNreSAoOSk6CiAgbW92ZSBzcGljZV91c2JfYmFja2VuZF9kZXZp
Y2Vfe2VqZWN0fHJlcG9ydF9jaGFuZ2V9IHRvIHVzYl9iYWNrZW5kLmgKICBhZGQgc3BpY2VfdXNi
X2RldmljZV9tYW5hZ2VyIHNoYXJlZCBDRCByZWxhdGVkIGFwaSBmdW5jdGlvbnMKICBBZGQgLS1z
cGljZS1zaGFyZS1jZCBjb21tYW5kIGxpbmUgb3B0aW9uCiAgRmFjdG9yIG91dCBzcGljZV91c2Jf
ZGV2aWNlX3dpZGdldF9hZGRfZXJyX21zZygpIGluIHVzYi1kZXZpY2Utd2lkZ2V0CiAgQWRkIGVt
cHR5IENEIGVudHJ5IHRvIHVzYi1kZXZpY2Utd2lkZ2V0LCBjcmVhdGUgc2hhcmVkIENEIHdoZW4g
dG9nZ2xlZAogIEF1dG8tcmVtb3ZlIHNoYXJlZCBDRCBkZXZpY2VzIG9uIGRpc2Nvbm5lY3QgaW4g
dXNiLWRldmljZS13aWRnZXQKICByZW1vdmUgc2hhcmVkIENEIGRldmljZSBvbiBjb25uZWN0LWZh
aWwgZHVyaW5nIFVTQiByZWRpcmVjdCBhdHRlbXB0CiAgYXV0by1jb25uZWN0IHNoYXJlZCBDRCBk
ZXZpY2VzIGFkZGVkIHVzaW5nIGNvbW1hbmQgbGluZQogIHJlbW92ZSB1bmNvbm5lY3RlZCBzaGFy
ZWQgQ0RzIHVwb24gdXNiLWRldmljZS13aWRnZXQgY29uc3RydWN0aW9uCgogc3JjL21hcC1maWxl
ICAgICAgICAgICAgIHwgICAzICsKIHNyYy9zcGljZS1vcHRpb24uYyAgICAgICB8ICAyOCArKysr
KysrCiBzcmMvdXNiLWJhY2tlbmQuaCAgICAgICAgfCAgIDIgKwogc3JjL3VzYi1kZXZpY2UtbWFu
YWdlci5jIHwgMTEyICsrKysrKysrKysrKysrKysrKysrKysrKysrLS0KIHNyYy91c2ItZGV2aWNl
LW1hbmFnZXIuaCB8ICAxNCArKysrCiBzcmMvdXNiLWRldmljZS13aWRnZXQuYyAgfCAxNTcgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tCiBzcmMvdXNiLWVtdWxhdGlvbi5o
ICAgICAgfCAgIDMgKy0KIDcgZmlsZXMgY2hhbmdlZCwgMjk1IGluc2VydGlvbnMoKyksIDI0IGRl
bGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVs
