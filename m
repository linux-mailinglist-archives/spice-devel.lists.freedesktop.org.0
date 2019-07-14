Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAB667F2E
	for <lists+spice-devel@lfdr.de>; Sun, 14 Jul 2019 16:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1FFA89755;
	Sun, 14 Jul 2019 14:07:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 657C489755
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 14:07:52 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id s15so12712311wmj.3
 for <spice-devel@lists.freedesktop.org>; Sun, 14 Jul 2019 07:07:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zgqinKHqDGiqo8AjTcjic2L8jkl4/og4rqjW2HEqyCw=;
 b=QPgY1tCVQz6fw7hM+XGry6hlyObhqiFIzFR9YW1VazerBQx+lz6mivHhPpvjxUO2vC
 SJ6ntzKSq0fN8kYkIAjkYQqxolknsKA9k0dKxO6IjdezqRAsj1tHf2t6IJcmaRyDmYqJ
 9Dz1nR3K1sYnStdwFqTeeJKL+41yIh7ejSHxKnohxTpMMW3Kc934Vhpk0LT03a1Dfald
 keZhMIQrWs8BvB9JGp68YGrS8e7fc/9WJUehALoYFI7i5jgHTe6T2vHSa49A1NR/I++9
 HWFvTfdNUePZ89DStunT1eQF2Pjuz7EtszUDdd3RHkj8+W6fs+cLzwwXZA8xjntAl4JH
 swPA==
X-Gm-Message-State: APjAAAUBzNI6CPJ4CQrt2vfxhrzok2kpOSR+quprfAODVxXaAuC33rQN
 V8xhnzSVd30iPTP/tkZnGtbrzgGh
X-Google-Smtp-Source: APXvYqzT/TrSgtE8Iwqc5AnqgnH0VGz9GHxBSWG7SVVHDnZtl2I2hbzdtptjOck45i4SP5Z/wh3QmA==
X-Received: by 2002:a05:600c:2311:: with SMTP id
 17mr18909691wmo.18.1563113270856; 
 Sun, 14 Jul 2019 07:07:50 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id z19sm10223328wmi.7.2019.07.14.07.07.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 07:07:50 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun, 14 Jul 2019 17:07:37 +0300
Message-Id: <20190714140741.3274-2-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190714140741.3274-1-yuri.benditovich@daynix.com>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zgqinKHqDGiqo8AjTcjic2L8jkl4/og4rqjW2HEqyCw=;
 b=Ns1+dn3reuxMgWNYQIK9GS3s1fnRv64sQ1sfnACyeVqoDKHQX64ZSBYS4OyaCXDS3s
 MlkSA1WZCZVTrBXIRvPzA5YhS+9hV1xDKkezZze5Q2LnXoLdIZyi66M8VHsUlH9BZcJe
 0J18zspaI8k9igjLU/J1T5fOVxTwJ4/NgPI5luAOLLkElHc+8kVYSIDKz5o5SPl1gR+H
 vfY7/eD+1Rszu1XrKEm9uO2i1r5ehZYc0XNNDlrcvhBfSvzw3gVKI67/ZjaZafNaZ5nr
 +kuXhpyVMI99rMeH1l1a477ecIKWrofqs+B7soRNnjtwHOgj61M1NaSV8CbCjTzWMSb/
 OcWA==
Subject: [Spice-devel] [spice-gtk 1/5] build: require minimal libusb version
 1.0.21
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

UHJldmlvdXMgY29tbWl0IGNhNjQxYTViOTIgdXNlcyBsaWJ1c2JfaW50ZXJydXB0X2V2ZW50X2hh
bmRsZXIKd2hpY2ggcmVxdWlyZXMgbmV3ZXIgdmVyc2lvbiBvZiBsaWJ1c2IuCgpTaWduZWQtb2Zm
LWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Ci0tLQog
bWVzb24uYnVpbGQgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9tZXNvbi5idWlsZCBiL21lc29uLmJ1aWxkCmluZGV4IDMy
NTYxZWUuLjU0MTYwZjkgMTAwNjQ0Ci0tLSBhL21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxk
CkBAIC0xOTksNyArMTk5LDcgQEAgdXNicmVkaXJfdmVyc2lvbiA9ICcwLjcuMScKIHVzYnJlZGly
X3ZlcnNpb25faW5mbyA9ICc+PSBAMEAnLmZvcm1hdCh1c2JyZWRpcl92ZXJzaW9uKQogZDEgPSBk
ZXBlbmRlbmN5KCdsaWJ1c2JyZWRpcnBhcnNlci0wLjUnLCB2ZXJzaW9uOiB1c2JyZWRpcl92ZXJz
aW9uX2luZm8sIHJlcXVpcmVkIDogZ2V0X29wdGlvbigndXNicmVkaXInKSkKIGQyID0gZGVwZW5k
ZW5jeSgnbGlidXNicmVkaXJob3N0JywgdmVyc2lvbjogdXNicmVkaXJfdmVyc2lvbl9pbmZvLCBy
ZXF1aXJlZCA6IGdldF9vcHRpb24oJ3VzYnJlZGlyJykpCi1kMyA9IGRlcGVuZGVuY3koJ2xpYnVz
Yi0xLjAnLCB2ZXJzaW9uIDogJz49IDEuMC4xNicsIHJlcXVpcmVkIDogZ2V0X29wdGlvbigndXNi
cmVkaXInKSkKK2QzID0gZGVwZW5kZW5jeSgnbGlidXNiLTEuMCcsIHZlcnNpb24gOiAnPj0gMS4w
LjIxJywgcmVxdWlyZWQgOiBnZXRfb3B0aW9uKCd1c2JyZWRpcicpKQogaWYgZDEuZm91bmQoKSBh
bmQgZDIuZm91bmQoKSBhbmQgZDMuZm91bmQoKQogICBzcGljZV9nbGliX2RlcHMgKz0gW2QxLCBk
MiwgZDNdCiAgIHNwaWNlX2d0a19jb25maWdfZGF0YS5zZXQoJ1VTRV9VU0JSRURJUicsICcxJykK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
