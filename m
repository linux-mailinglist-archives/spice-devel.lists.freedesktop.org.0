Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B92A712D4
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0D86E13B;
	Tue, 23 Jul 2019 07:27:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EEDA6E0F0
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:27:42 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id s3so37428526wms.2
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 00:27:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AdZvylZ5Elq4IsZbtf6Facx7NnHM40byTv03vFwJ1gI=;
 b=Oe6AoR5NCP058l3n3wVDDgpNteuHq2r9yahrEx9lK0d5OzDbuuOqheN9WVZsQ2Evms
 nsZlM9ie7xhWqKs26GHGlzjKXEZLlnHjmhHHOHfBjj4TnabNZLuaj2Cky6g4nx/IxNj+
 8J5+j1Gvo/o5dw8YV5eIoi0AsV9K6XMhDuAqwHA6vhALvvhhzXkp0MUZCEgtBHBn3VYF
 VdrzTclH8oOmk9Lml4IaBYBhEl7OlzxVbCsu3wP4iSd+5z2oHgO1oSfxvoY1qB/myfIh
 +HT9Pnf2D+HCi6n1xYfotvbdZpyL2iwByCtHi8v1Piq9Nbw4X8fkHNZNLr4lFuks5olO
 9Hqw==
X-Gm-Message-State: APjAAAUaaxotaaZit1tQluOnNtP2pQ4yfzG1oxzlA/LWFqVdev8hv9Ad
 y3e8K8+5mWTH5dJRKhBJC/e4PDsM
X-Google-Smtp-Source: APXvYqzZecwS3scz6cdn/ItFlwMuCYYpp58TQ3NhVswOLEOt13Bd77PwNq18PVy4NrvysDgytF9SBA==
X-Received: by 2002:a1c:1a87:: with SMTP id a129mr66644161wma.21.1563866860527; 
 Tue, 23 Jul 2019 00:27:40 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id y7sm31495613wmm.19.2019.07.23.00.27.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 00:27:40 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:27:02 +0300
Message-Id: <20190723072708.2575-4-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723072708.2575-1-yuri.benditovich@daynix.com>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AdZvylZ5Elq4IsZbtf6Facx7NnHM40byTv03vFwJ1gI=;
 b=lTKRCv46MFx0uN8j4Hr51jqqsicavHTJMcbjlwoJMue/z+wZGYLQpNrdH2iHiZ3CpM
 69u+HbLeoScVorRItOjX7trt88Swf6sqSdZsh6+dw5fAhaVK8gFBleEAIjow7B+2BWTG
 UiZh49fWXkzh4R4BUcBIZTDOPavCPIyb7mN9q1ifoxcUWNzBnk67Dz/Mnr1v6ZuOUYdn
 69ZTgQSvKxgzpqpCH5vRJfqnYW5bGVuawSJ5pYHKuD7Qhebn4lDm5haoSEXgn7Lm6d1f
 wku6rKLt5mnOzZRBlVBUcuD/qPidmYNS7o1Y6gf5Gse4Tc++VzPzQq3ofsrBffpn0XOn
 JvgQ==
Subject: [Spice-devel] [spice-gtk v2 3/9] usb-redir: split fill_usb_info
 procedure for further reuse
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

VXRpbGl0eSBwcm9jZWR1cmUgZ2V0X3VzYl9kZXZpY2VfaW5mb19mcm9tX2xpYnVzYl9kZXZpY2UK
d2lsbCBiZSByZXVzZWQgbGF0ZXIuCgpTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5
dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Ci0tLQogc3JjL3VzYi1iYWNrZW5kLmMgfCAyMyAr
KysrKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyks
IDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIvc3JjL3Vz
Yi1iYWNrZW5kLmMKaW5kZXggYTMzY2JlNi4uYzIyNjhlMyAxMDA2NDQKLS0tIGEvc3JjL3VzYi1i
YWNrZW5kLmMKKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKQEAgLTY5LDI3ICs2OSwzMCBAQCBzdHJ1
Y3QgX1NwaWNlVXNiQmFja2VuZENoYW5uZWwKICAgICBHRXJyb3IgKiplcnJvcjsKIH07CiAKLXN0
YXRpYyBnYm9vbGVhbiBmaWxsX3VzYl9pbmZvKFNwaWNlVXNiQmFja2VuZERldmljZSAqYmRldikK
K3N0YXRpYyB2b2lkIGdldF91c2JfZGV2aWNlX2luZm9fZnJvbV9saWJ1c2JfZGV2aWNlKFVzYkRl
dmljZUluZm9ybWF0aW9uICppbmZvLAorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgbGlidXNiX2RldmljZSAqbGliZGV2KQogewotICAgIFVzYkRldmlj
ZUluZm9ybWF0aW9uICppbmZvID0gJmJkZXYtPmRldmljZV9pbmZvOwotCiAgICAgc3RydWN0IGxp
YnVzYl9kZXZpY2VfZGVzY3JpcHRvciBkZXNjOwotICAgIGxpYnVzYl9kZXZpY2UgKmxpYmRldiA9
IGJkZXYtPmxpYnVzYl9kZXZpY2U7CiAgICAgbGlidXNiX2dldF9kZXZpY2VfZGVzY3JpcHRvcihs
aWJkZXYsICZkZXNjKTsKICAgICBpbmZvLT5idXMgPSBsaWJ1c2JfZ2V0X2J1c19udW1iZXIobGli
ZGV2KTsKICAgICBpbmZvLT5hZGRyZXNzID0gbGlidXNiX2dldF9kZXZpY2VfYWRkcmVzcyhsaWJk
ZXYpOwotICAgIGlmIChpbmZvLT5hZGRyZXNzID09IDB4ZmYgfHwgLyogcm9vdCBodWIgKEhDRCkg
Ki8KLSAgICAgICAgaW5mby0+YWRkcmVzcyA8PSAxIHx8IC8qIHJvb3QgaHViIG9yIGJhZCBhZGRy
ZXNzICovCi0gICAgICAgIChkZXNjLmJEZXZpY2VDbGFzcyA9PSBMSUJVU0JfQ0xBU1NfSFVCKSAv
Kmh1YiovKSB7Ci0gICAgICAgIHJldHVybiBGQUxTRTsKLSAgICB9Ci0KICAgICBpbmZvLT52aWQg
PSBkZXNjLmlkVmVuZG9yOwogICAgIGluZm8tPnBpZCA9IGRlc2MuaWRQcm9kdWN0OwogICAgIGlu
Zm8tPmNsYXNzID0gZGVzYy5iRGV2aWNlQ2xhc3M7CiAgICAgaW5mby0+c3ViY2xhc3MgPSBkZXNj
LmJEZXZpY2VTdWJDbGFzczsKICAgICBpbmZvLT5wcm90b2NvbCA9IGRlc2MuYkRldmljZVByb3Rv
Y29sOworfQogCitzdGF0aWMgZ2Jvb2xlYW4gZmlsbF91c2JfaW5mbyhTcGljZVVzYkJhY2tlbmRE
ZXZpY2UgKmJkZXYpCit7CisgICAgVXNiRGV2aWNlSW5mb3JtYXRpb24gKmluZm8gPSAmYmRldi0+
ZGV2aWNlX2luZm87CisgICAgZ2V0X3VzYl9kZXZpY2VfaW5mb19mcm9tX2xpYnVzYl9kZXZpY2Uo
aW5mbywgYmRldi0+bGlidXNiX2RldmljZSk7CisKKyAgICBpZiAoaW5mby0+YWRkcmVzcyA9PSAw
eGZmIHx8IC8qIHJvb3QgaHViIChIQ0QpICovCisgICAgICAgIGluZm8tPmFkZHJlc3MgPD0gMSB8
fCAvKiByb290IGh1YiBvciBiYWQgYWRkcmVzcyAqLworICAgICAgICAoaW5mby0+Y2xhc3MgPT0g
TElCVVNCX0NMQVNTX0hVQikgLypodWIqLykgeworICAgICAgICByZXR1cm4gRkFMU0U7CisgICAg
fQogICAgIHJldHVybiBUUlVFOwogfQogCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
