Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EE786370
	for <lists+spice-devel@lfdr.de>; Thu,  8 Aug 2019 15:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF78988F1B;
	Thu,  8 Aug 2019 13:44:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5403B6E855;
 Thu,  8 Aug 2019 13:44:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CE39A3007F39;
 Thu,  8 Aug 2019 13:44:24 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-144.ams2.redhat.com
 [10.36.116.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 76D0710001B8;
 Thu,  8 Aug 2019 13:44:24 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 2275B9CAE; Thu,  8 Aug 2019 15:44:21 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  8 Aug 2019 15:44:17 +0200
Message-Id: <20190808134417.10610-18-kraxel@redhat.com>
In-Reply-To: <20190808134417.10610-1-kraxel@redhat.com>
References: <20190808134417.10610-1-kraxel@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 08 Aug 2019 13:44:24 +0000 (UTC)
Subject: [Spice-devel] [PATCH v4 17/17] drm/qxl: use DEFINE_DRM_GEM_FOPS()
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
Cc: tzimmermann@suse.de, David Airlie <airlied@linux.ie>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

V2UgaGF2ZSBubyBxeGwtc3BlY2lmaWMgZm9wcyBhbnkgbW9yZS4KClNpZ25lZC1vZmYtYnk6IEdl
cmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9xeGwv
cXhsX2Rydi5jIHwgMTAgKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Ry
di5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfZHJ2LmMKaW5kZXggMmZiMTY0MWM4MTdlLi40
ODUzMDgyYmE5MjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rydi5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rydi5jCkBAIC0xMzIsMTUgKzEzMiw3IEBAIHF4
bF9wY2lfcmVtb3ZlKHN0cnVjdCBwY2lfZGV2ICpwZGV2KQogCWRybV9kZXZfcHV0KGRldik7CiB9
CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIHF4bF9mb3BzID0gewotCS5v
d25lciA9IFRISVNfTU9EVUxFLAotCS5vcGVuID0gZHJtX29wZW4sCi0JLnJlbGVhc2UgPSBkcm1f
cmVsZWFzZSwKLQkudW5sb2NrZWRfaW9jdGwgPSBkcm1faW9jdGwsCi0JLnBvbGwgPSBkcm1fcG9s
bCwKLQkucmVhZCA9IGRybV9yZWFkLAotCS5tbWFwID0gZHJtX2dlbV9tbWFwLAotfTsKK0RFRklO
RV9EUk1fR0VNX0ZPUFMocXhsX2ZvcHMpOwogCiBzdGF0aWMgaW50IHF4bF9kcm1fZnJlZXplKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpCiB7Ci0tIAoyLjE4LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
