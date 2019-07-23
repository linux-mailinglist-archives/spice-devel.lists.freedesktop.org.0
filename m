Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DDC712D2
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 09:27:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334236E11E;
	Tue, 23 Jul 2019 07:27:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 213316E0F0
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 07:27:40 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id v15so37457295wml.0
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 00:27:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zgqinKHqDGiqo8AjTcjic2L8jkl4/og4rqjW2HEqyCw=;
 b=bQ1ryMqpZ5YiMohR/nb7K6had2G4Yf6Rs5/se5x8zb9NuCSQykm1azGBv3gga5R9iq
 lyTjwxopuPfTZcIPsdN/L8K8MhiXCTSou+JIlUVlSVAQtGnfxRrOqhMr2yLucvGC8Oaj
 29ImiJjeCJ2y1KAD8xc+kfiNscH4jYrlmtKd8DSB14o++C2O5jvSXjP2yI3haxk8iwcY
 P89yW9LbwC7JnloLav8cftBoHTnw/k4zm42NkJKKI/ZIF3jpfl/U+rNg0Mge9BtLU1Ks
 YQzlablJDQmRoygjET3agwu5GvzELnDMOEUnF3d8WVTJah5ItddUdV+D1UQnNnHqNrMM
 wnKA==
X-Gm-Message-State: APjAAAUHW0Ov8QrYXJAjNfXkqrr0OTGAvZor3ts9jpnKt2o60J+2gvvx
 +X9iQPMW0Jgafyov2j7K/VPyZbUh
X-Google-Smtp-Source: APXvYqzqALC/WXcKti0Ijox2392ZAoSVV0ttn1evCIXRgJD09XRw49CTIv7+CLSpj7XJcBrTH+KhTA==
X-Received: by 2002:a1c:9a4b:: with SMTP id c72mr41889183wme.102.1563866858616; 
 Tue, 23 Jul 2019 00:27:38 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id y7sm31495613wmm.19.2019.07.23.00.27.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 00:27:38 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:27:00 +0300
Message-Id: <20190723072708.2575-2-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723072708.2575-1-yuri.benditovich@daynix.com>
References: <20190723072708.2575-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zgqinKHqDGiqo8AjTcjic2L8jkl4/og4rqjW2HEqyCw=;
 b=xv6gnHkiJshnCclPbh9usqIlfKWuGfrsWEK32dC8vySlBP7A0id1xWbzIzVw/f9Q86
 m3mtFeoRSwkdynBzGP5fYhkuCwo5S1bdcd+0vi1vXYevg7KOC0QVW/zxUURqWyFmBZNB
 98ArXqtD1XzuDnKaMACFG+W9HRe3n2q33QXEZILbKmlroPnAX+LPMWF82hSG/UmUZtzu
 wpZMRz6mwBslWuM5cZeyqTRPhvEC+N3RFGULDf+hQq7dfYGIvrsYUYx6NGSWqocgAE3F
 nfqS7Zq7zZbRoxTk6/hQiBkecnuCETxGVEH18D+6cP7KBarHVCw0IduB59v7ER7N8iV8
 3u8A==
Subject: [Spice-devel] [spice-gtk v2 1/9] build: require minimal libusb
 version 1.0.21
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
