Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FB857E3C
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 10:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75596E836;
	Thu, 27 Jun 2019 08:31:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A49366E833
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 08:31:53 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id k11so1501795wrl.1
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 01:31:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5LhnYRrn5FgbxSsG7luKTJSQ3h8dz2qdrVWtZGqMiA8=;
 b=g3P56pjdlcKpUyx8FjHrZ7jp5eTRSWof1rxWrIvJo6r4bDrXLL9ePEOTaeuWI41XHH
 2vB0yfmHWn+nrjC8VvIMGuwpTLDrCaY9eFiinwqstpDz+cJKiTQ4NrFfcJjUvlg9Dn1v
 sNfaT5IWpXbt8ROiRtMGh8k4a32DNyNbMg5n7CEYAm0i7/QGvFl9lPplFiwSUNKgGFMQ
 1hiHC0L1NgIKLTJOSCCajdgEsqC4md0vPO4opFE1VKKjE5IQNUquE31s9D8jEYwpb0tJ
 SDsbIqY6Z3H1HysCkIfIkZVy5O56KyknMq9m1z35DB0xTXItZ3vi/87WO1PgveEkfhTC
 PsqQ==
X-Gm-Message-State: APjAAAXzS/UHksJ+iH37HdCn58uTqnDef8sCi+qGdyA33tAsphtYVdyS
 kq+xAjaq+MQhBSbqQvPJ6azuGV+fhoY=
X-Google-Smtp-Source: APXvYqzM/tmt04+701i750dd8s+pQghETdEhxRTUypX83diFj0mjtUy3h09v+Gsnpz3gfuVGtyqheA==
X-Received: by 2002:a5d:6583:: with SMTP id q3mr2286119wru.184.1561624312231; 
 Thu, 27 Jun 2019 01:31:52 -0700 (PDT)
Received: from pinea.redhat.com ([2001:861:3440:6a0:71b6:dd5f:657d:58e3])
 by smtp.gmail.com with ESMTPSA id c4sm1360490wrt.86.2019.06.27.01.31.51
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 01:31:51 -0700 (PDT)
From: Kevin Pouget <kpouget@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 27 Jun 2019 10:31:49 +0200
Message-Id: <20190627083149.23283-3-kpouget@redhat.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627083149.23283-1-kpouget@redhat.com>
References: <20190627083149.23283-1-kpouget@redhat.com>
MIME-Version: 1.0
Subject: [Spice-devel] [RFC spice-common 2/2] ring: allow testing if a ring
 is initialized or not
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

LS0tCiBjb21tb24vcmluZy5oIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2NvbW1vbi9yaW5nLmggYi9jb21tb24vcmluZy5oCmluZGV4IDUw
NTQxOTMuLmQ1ZWFkZWEgMTAwNjQ0Ci0tLSBhL2NvbW1vbi9yaW5nLmgKKysrIGIvY29tbW9uL3Jp
bmcuaApAQCAtNTAsNiArNTAsMTEgQEAgc3RhdGljIGlubGluZSBpbnQgcmluZ19pc19lbXB0eShS
aW5nICpyaW5nKQogICAgIHJldHVybiByaW5nID09IHJpbmctPm5leHQ7CiB9Cgorc3RhdGljIGlu
bGluZSBpbnQgcmluZ19pc19pbml0aWFsaXplZChSaW5nICpyaW5nKQoreworICAgIHJldHVybiBy
aW5nLT5uZXh0ICE9IE5VTEwgJiYgcmluZy0+cHJldiAhPSBOVUxMOworfQorCiBzdGF0aWMgaW5s
aW5lIHZvaWQgcmluZ19hZGQoUmluZyAqcmluZywgUmluZ0l0ZW0gKml0ZW0pCiB7CiAgICAgc3Bp
Y2VfYXNzZXJ0KHJpbmctPm5leHQgIT0gTlVMTCAmJiByaW5nLT5wcmV2ICE9IE5VTEwpOwotLQoy
LjIxLjAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bp
Y2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
