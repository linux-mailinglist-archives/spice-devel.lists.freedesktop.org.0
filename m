Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC3080C1F
	for <lists+spice-devel@lfdr.de>; Sun,  4 Aug 2019 21:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A6889DA6;
	Sun,  4 Aug 2019 19:16:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B5889E3B
 for <spice-devel@lists.freedesktop.org>; Sun,  4 Aug 2019 19:16:41 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id r1so82194465wrl.7
 for <spice-devel@lists.freedesktop.org>; Sun, 04 Aug 2019 12:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aZnN1aU5PBJesOyMWCkO3ksU7ym8IcZkZIg53cLPr8g=;
 b=gszPUO21YRuEeK9YtgpD7F7pGtDfrHkDxqcWpEbcGa5tptiS3qioFfrqC0cDkuXnR+
 WsL4xq1lzOXTLoP2Pi+pi4rvUhmdx1sy0JZMxBAJqKbJxIY7iMpLdQlWpKrmbQukvzS+
 Xydth0PSRdgH0sF0ek24PoT2jLcu/498U3C4hWYtaKngZLtCflpcR+4jkA/lVLQKCPIz
 r3Ci0oAPurwTE3oRPVYws6L74rJAjZVCxws1QkruziNETExue3Li98zdmiZfDJtp1bgI
 Seg2lXW07puvnyU2qfWgf90LTuWI0bWBY0NUOdV3wIT2Wozyz4lLVsMviZruMdV7iN8K
 r2eg==
X-Gm-Message-State: APjAAAVYKsWltClX0jQ42EqJmLEdN0GX7Vqu3Cgkf1HoOqTmRwtXgGtu
 fchd35jckCLsa4EgsT+EQLF5dRwU
X-Google-Smtp-Source: APXvYqxfERBSc88QLLzNrWPWmWstR47eQS/IscjdPVC5G/Sg/f9zix5n/IJ8hedY/9uKcA+NYF/fpw==
X-Received: by 2002:adf:ee87:: with SMTP id b7mr23882390wro.61.1564946200360; 
 Sun, 04 Aug 2019 12:16:40 -0700 (PDT)
Received: from f2.redhat.com (bzq-79-182-115-245.red.bezeqint.net.
 [79.182.115.245])
 by smtp.gmail.com with ESMTPSA id f204sm136527687wme.18.2019.08.04.12.16.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 04 Aug 2019 12:16:39 -0700 (PDT)
From: Yuri Benditovich <yuri.benditovich@daynix.com>
To: spice-devel@lists.freedesktop.org
Date: Sun,  4 Aug 2019 22:16:23 +0300
Message-Id: <20190804191624.29235-8-yuri.benditovich@daynix.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804191624.29235-1-yuri.benditovich@daynix.com>
References: <20190804191624.29235-1-yuri.benditovich@daynix.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aZnN1aU5PBJesOyMWCkO3ksU7ym8IcZkZIg53cLPr8g=;
 b=iYmDOYOaNm7izi6CVQ01Y5xN7rN1yWSQtPWNebwL2k1HIIhKtCp8e6NyIt1stZDYVa
 8bj62Ke9MAPmOAKoLy+r9SZDV1LgfvFXsXtRMx5jb4iolJGl4h6iu5jaDSG/PwJm0FYg
 zeOFuKJo9m1X4jejIvie4YIdIwwokLAd5nd+zQip2+Yvre96ikhtbF715A8Pyqs4ObL2
 eNexoWW7NuCbmBkhE6c+yDVfFpK5BfZcsGorQitlVa069LPuGMZFmA77hgAOqWiwPL8F
 ua2YpsDWQDeNSz5Zk9Z6sHGEOrprDifPhOnAfdCRmxynRT2onmjY2k278m0h89v02YRu
 oX0w==
Subject: [Spice-devel] [spice-gtk v2 7/8] usb-redir: enable redirection of
 emulated CD drive
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

QWRkIGltcGxlbWVudGF0aW9uIG9mIGVtdWxhdGVkIGRldmljZSB0byBidWlsZC4KTm93IGl0IGlz
IHBvc3NpYmxlIHRvIGNyZWF0ZSBlbXVsYXRlZCBDRCBkZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTog
WXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgotLS0KIHNyYy9t
ZXNvbi5idWlsZCB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL3NyYy9tZXNvbi5idWlsZCBiL3NyYy9tZXNvbi5idWlsZAppbmRleCBmZTE5
YzE2Li4zODM3YTlkIDEwMDY0NAotLS0gYS9zcmMvbWVzb24uYnVpbGQKKysrIGIvc3JjL21lc29u
LmJ1aWxkCkBAIC0xMjQsNiArMTI0LDEzIEBAIHNwaWNlX2NsaWVudF9nbGliX3NvdXJjZXMgPSBb
CiAgICd1c2ItYmFja2VuZC5jJywKICAgJ3VzYi1lbXVsYXRpb24uaCcsCiAgICd1c2ItYmFja2Vu
ZC5oJywKKyAgJ3VzYi1kZXZpY2UtY2QuYycsCisgICd1c2ItZGV2aWNlLWNkLmgnLAorICAnY2Qt
c2NzaS5jJywKKyAgJ2NkLXNjc2kuaCcsCisgICdjZC1zY3NpLWRldi1wYXJhbXMuaCcsCisgICdj
ZC11c2ItYnVsay1tc2QuYycsCisgICdjZC11c2ItYnVsay1tc2QuaCcsCiAgICd2bWNzdHJlYW0u
YycsCiAgICd2bWNzdHJlYW0uaCcsCiBdCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
