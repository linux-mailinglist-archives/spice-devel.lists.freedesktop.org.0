Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D643712D9
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFAA6E157;
	Tue, 23 Jul 2019 07:27:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EED0F6E15E
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:27:47 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id p17so41928621wrf.11
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 00:27:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XwWO3JD1oAcL9puuyRt1/aEf6PIszaRvOZFIcwEGc3Q=;
 b=QI2xhnxbvJeG+nVL7iecvZPoIUhorayNOSA9BdtSxdmrNXNuEXEuAWyXVIJqPu0GNK
 hHd9LCHUtk0VXosUrNV8SQxLchNwVj69lw2oNH1GD8izdFtn+U3MNwBfO8/viY8Vy/sR
 lCzKm6sGGao8ciSbXJwUZU6cmf5anXYAT39pU/FpnUhIU0kGdYgqt6V+P/QTcXDtc7Aa
 6bzR86O6Pwa9MvBqfxPHaBhqnC8T188i+PKAdp1IdQCnbyVzFhQeLSoDm2dMX0PLx82i
 sa5fK71/2GmDpGlkCBFG4gshs3HXPYNXqOH6eVJLpExn5NL0qXAFi1EynD5VD8K7CtQE
 IbBw==
X-Gm-Message-State: APjAAAVktwcO4djDOahvAizAEN9eTMlZtirzybVZ22xqm88jsUc+/hv4
 Z1m2Jhh6oLjIVZVz8NFQ/FQgikUN
X-Google-Smtp-Source: APXvYqyCsIZwYnmntOQOjRrnEy13nAI5g7SkNbm02yORYQBpWLLENNUdMChswmdlPxYAxHvy15QWhQ==
X-Received: by 2002:adf:df0f:: with SMTP id y15mr1197601wrl.155.1563866866435; 
 Tue, 23 Jul 2019 00:27:46 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id y7sm31495613wmm.19.2019.07.23.00.27.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 00:27:46 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:27:08 +0300
Message-Id: <20190723072708.2575-10-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723072708.2575-1-yuri.benditovich@daynix.com>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XwWO3JD1oAcL9puuyRt1/aEf6PIszaRvOZFIcwEGc3Q=;
 b=Ew1HFhUhL1/5QTnT5eZ6q6xsNjQQ5dGtltDEN7sNFBzJFjSjUD4a3EIADEkefZSmf5
 BT9FwQZyVwraDi2o6DMJB4E1wNyv7YQKvd6ZE6k0ZHT/qrRsAZr974rgKf4AaAwQj/BT
 GAGTjICavENcWqfNjBHFVkAKJSpmUnES1OD/8oUsNvIAkdh1l9HC/MA7Od4D7vMIssMb
 mp60siKyllOaKT4EuNKZ156MzRwvK3BNrZcHLULe/ucNSTDluiiiIXAs4cmabJZMKc6/
 77RLrfjHftLL0poKSCSEEXcUIuV+Ko6pR2DbYHXGBOtepeuHBLhWTkjEkaH6K1PJZJB0
 Nvwg==
Subject: [Spice-devel] [spice-gtk v2 9/9] usb-redir: use g_thread_try_new
 instead of g_thread_new
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
Cc: yan@daynix.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

TmV3ZXIgQVBJIChnbGliIDIuMzIpIGlzIHNhZmUsIGluIGNhc2Ugb2YgZXJyb3IgaXQgZG9lcyBu
b3QKYWJvcnQgdGhlIHByb2Nlc3MgYW5kIHJldHVybnMgZXJyb3IgaW5mb3JtYXRpb24uCgpTaWdu
ZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+
Ci0tLQogc3JjL3VzYi1iYWNrZW5kLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWJhY2tlbmQu
YyBiL3NyYy91c2ItYmFja2VuZC5jCmluZGV4IGJiZDNiNjcuLjI3MmQ3MmEgMTAwNjQ0Ci0tLSBh
L3NyYy91c2ItYmFja2VuZC5jCisrKyBiL3NyYy91c2ItYmFja2VuZC5jCkBAIC00NjksOSArNDY5
LDkgQEAgZ2Jvb2xlYW4gc3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1ZyhTcGljZVVz
YkJhY2tlbmQgKmJlLAogICAgIH0KIAogICAgIGdfYXRvbWljX2ludF9zZXQoJmJlLT5ldmVudF90
aHJlYWRfcnVuLCBUUlVFKTsKLSAgICBiZS0+ZXZlbnRfdGhyZWFkID0gZ190aHJlYWRfbmV3KCJ1
c2JfZXZfdGhyZWFkIiwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGhhbmRs
ZV9saWJ1c2JfZXZlbnRzLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYmUp
OworICAgIGJlLT5ldmVudF90aHJlYWQgPSBnX3RocmVhZF90cnlfbmV3KCJ1c2JfZXZfdGhyZWFk
IiwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoYW5kbGVfbGlidXNi
X2V2ZW50cywKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBiZSwgZXJy
b3IpOwogICAgIGlmICghYmUtPmV2ZW50X3RocmVhZCkgewogICAgICAgICBnX3dhcm5pbmcoIkVy
cm9yIHN0YXJ0aW5nIGV2ZW50IHRocmVhZCIpOwogICAgICAgICBzcGljZV91c2JfYmFja2VuZF9k
ZXJlZ2lzdGVyX2hvdHBsdWcoYmUpOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
