Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6244B114E3C
	for <lists+spice-devel@lfdr.de>; Fri,  6 Dec 2019 10:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC436E02D;
	Fri,  6 Dec 2019 09:35:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 395 seconds by postgrey-1.36 at gabe;
 Thu, 05 Dec 2019 23:49:16 UTC
Received: from mta-p6.oit.umn.edu (mta-p6.oit.umn.edu [134.84.196.206])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 788236F931
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 23:49:16 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
 by mta-p6.oit.umn.edu (Postfix) with ESMTP id 47TXMN2D38z9vJBS
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 23:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p6.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p6.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 15Fa4zbrarOe for <spice-devel@lists.freedesktop.org>;
 Thu,  5 Dec 2019 17:42:40 -0600 (CST)
Received: from mail-yw1-f71.google.com (mail-yw1-f71.google.com
 [209.85.161.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p6.oit.umn.edu (Postfix) with ESMTPS id 47TXMN10QCz9vBtJ
 for <spice-devel@lists.freedesktop.org>; Thu,  5 Dec 2019 17:42:40 -0600 (CST)
Received: by mail-yw1-f71.google.com with SMTP id c68so3842664ywe.9
 for <spice-devel@lists.freedesktop.org>; Thu, 05 Dec 2019 15:42:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pdZdRYJjEUXDLjH6ecgkCpYlUe5NSw8y98ikYjaziR0=;
 b=pazoQGtsWCylSziWlFskyXxnfstIjTsODWwTsMAu8PxVxHxZls+7yjHCZKgYC7KYUv
 4TzmNJWDU87kSDe4VRC+YhEsGJFKBv/47W1LgLAj0BEPOfQ6yl/562woJ6AKCL9CPNOw
 gqMiIK5uOlhsDvqF0CCSosBXaQIqTsyE5wJ4QoEpOBB5KH4GdbGmI/JnGVbFtwz8ytbp
 C+b6LoegWNNrOsMswrx0YsyWqmG9WK0P8kDiPPhbScFbQc++/ySF+uJfF0KM+PwBgE5y
 z4wPhn+52P7VgYOK2RwNftN/TjxOaeJiYU3+piN1nupKDYtto6DzJzi8yKnUcKOaPUoG
 yfGw==
X-Gm-Message-State: APjAAAXlLwKYhrx0JgwQmZ3nnYlQRKgCM8jclu1zOamfZMOMLaO0LBFf
 ZPAd3WS4KfduuAi7PN7jGsasM+eDk6r2MxAcTxNXCxsFnx9F76WLWzIedzEnKHDD6OtxREgfnR+
 Kc19ipOS6niiCu1gpvFwt3Wpluk6Sl6muauk=
X-Received: by 2002:a81:24d4:: with SMTP id k203mr8565858ywk.308.1575589359478; 
 Thu, 05 Dec 2019 15:42:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqx+x4PNK70e3ElY7ROALSM9ZNL3VxTDfROlKpZSqQ1+jPpCF1o7EJYZ7UIRDoZlqzpTBuX5Qw==
X-Received: by 2002:a81:24d4:: with SMTP id k203mr8565837ywk.308.1575589359236; 
 Thu, 05 Dec 2019 15:42:39 -0800 (PST)
Received: from cs-u-syssec1.dtc.umn.edu (cs-u-syssec1.cs.umn.edu.
 [128.101.106.66])
 by smtp.gmail.com with ESMTPSA id v186sm5388395ywv.34.2019.12.05.15.42.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 15:42:38 -0800 (PST)
From: Aditya Pakki <pakki001@umn.edu>
To: pakki001@umn.edu
Date: Thu,  5 Dec 2019 17:42:31 -0600
Message-Id: <20191205234231.10849-1-pakki001@umn.edu>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Fri, 06 Dec 2019 09:35:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=pdZdRYJjEUXDLjH6ecgkCpYlUe5NSw8y98ikYjaziR0=;
 b=h0F9bA9gPBWqhHGztxcSe9ZaACWK7AXiD76k291yefwX093tjV7CdXxN4t9bTx+RaT
 T42W+y97udOSBhOlx/nzcZQYOLyo806uKWVtIoJhFul7qGm+4Tt45DkKKiHfGjbIyGR7
 0egnwSs320Qax6mGNYh1klTbVdb5KN5oYfdh/7J3sALZmZBOnPygEw/drcQuFc3LZQaZ
 QnZ0SuMcchPcB4zGcIr6su/rxJmaW+GvmDPx2QZ8S2sCSx+C8Ih2Lox/kSPEdfcfafXU
 DDHIAv2aIgKHoc1QIp3HVU2uDX82d7Vt9K8zyx++Gpv9TL8Q1eb+DgII9rwJ2iiGwIv+
 P4Vg==
Subject: [Spice-devel] [PATCH] drm/qxl: remove unnecessary BUG_ON check for
 handle
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
Cc: David Airlie <airlied@linux.ie>, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SW4gcXhsX2dlbV9vYmplY3RfY3JlYXRlX3dpdGhfaGFuZGxlKCksIGhhbmRsZSdzIG1lbW9yeSBp
cyBub3QKYWxsb2NhdGVkIG9uIHRoZSBoZWFwLiBDaGVja2luZyBmb3IgZmFpbHVyZSBvZiBoYW5k
bGUgdmlhIEJVR19PTgppcyB1bm5lY2Vzc2FyeS4gVGhpcyBwYXRjaCBlbGltaW5hdGVzIHRoZSBj
aGVjay4KClNpZ25lZC1vZmYtYnk6IEFkaXR5YSBQYWtraSA8cGFra2kwMDFAdW1uLmVkdT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9nZW0uYyB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9nZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2dlbS5jCmluZGV4IDY5ZjM3ZGIxMDI3YS4uNDViNzc5
YThiYzIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9nZW0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9nZW0uYwpAQCAtODQsNyArODQsNiBAQCBpbnQgcXhsX2dl
bV9vYmplY3RfY3JlYXRlX3dpdGhfaGFuZGxlKHN0cnVjdCBxeGxfZGV2aWNlICpxZGV2LAogCWlu
dCByOwogCiAJQlVHX09OKCFxb2JqKTsKLQlCVUdfT04oIWhhbmRsZSk7CiAKIAlyID0gcXhsX2dl
bV9vYmplY3RfY3JlYXRlKHFkZXYsIHNpemUsIDAsCiAJCQkJICBkb21haW4sCi0tIAoyLjE3LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
