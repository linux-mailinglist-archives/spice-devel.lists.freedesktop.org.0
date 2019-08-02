Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8289F7EC88
	for <lists+spice-devel@lfdr.de>; Fri,  2 Aug 2019 08:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02BA56ECC5;
	Fri,  2 Aug 2019 06:18:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3C466E8AE;
 Fri,  2 Aug 2019 05:22:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 47EF2B59A0;
 Fri,  2 Aug 2019 05:22:55 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-81.ams2.redhat.com
 [10.36.116.81])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D470B19C68;
 Fri,  2 Aug 2019 05:22:54 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id CF7879D1F; Fri,  2 Aug 2019 07:22:51 +0200 (CEST)
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  2 Aug 2019 07:22:45 +0200
Message-Id: <20190802052247.18427-16-kraxel@redhat.com>
In-Reply-To: <20190802052247.18427-1-kraxel@redhat.com>
References: <20190802052247.18427-1-kraxel@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Fri, 02 Aug 2019 05:22:55 +0000 (UTC)
X-Mailman-Approved-At: Fri, 02 Aug 2019 06:18:34 +0000
Subject: [Spice-devel] [PATCH v4 15/17] drm/qxl: switch driver from bo->resv
 to bo->base.resv
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
Cc: thomas@shipmail.org, tzimmermann@suse.de, David Airlie <airlied@linux.ie>,
 ckoenig.leichtzumerken@gmail.com, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU"
 <virtualization@lists.linux-foundation.org>, Gerd Hoffmann <kraxel@redhat.com>,
 daniel@ffwll.ch,
 "open list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, bskeggs@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+CkFja2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL3F4bC9xeGxfZGVidWdmcy5jIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL3F4bC9x
eGxfcmVsZWFzZS5jIHwgNiArKystLS0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rl
YnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2RlYnVnZnMuYwppbmRleCBiZGI1YWMw
OTg3YWIuLjk0NDM5MjEyYTVjNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxf
ZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2RlYnVnZnMuYwpAQCAtNjEs
NyArNjEsNyBAQCBxeGxfZGVidWdmc19idWZmZXJzX2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2
b2lkICpkYXRhKQogCQlpbnQgcmVsOwogCiAJCXJjdV9yZWFkX2xvY2soKTsKLQkJZm9iaiA9IHJj
dV9kZXJlZmVyZW5jZShiby0+dGJvLnJlc3YtPmZlbmNlKTsKKwkJZm9iaiA9IHJjdV9kZXJlZmVy
ZW5jZShiby0+dGJvLmJhc2UucmVzdi0+ZmVuY2UpOwogCQlyZWwgPSBmb2JqID8gZm9iai0+c2hh
cmVkX2NvdW50IDogMDsKIAkJcmN1X3JlYWRfdW5sb2NrKCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9xeGwvcXhsX3JlbGVhc2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX3Jl
bGVhc2UuYwppbmRleCAwMDIyZTMxYmE5MTAuLmRmNTViODNlMGE1NSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwv
cXhsX3JlbGVhc2UuYwpAQCAtMjM4LDcgKzIzOCw3IEBAIHN0YXRpYyBpbnQgcXhsX3JlbGVhc2Vf
dmFsaWRhdGVfYm8oc3RydWN0IHF4bF9ibyAqYm8pCiAJCQlyZXR1cm4gcmV0OwogCX0KIAotCXJl
dCA9IHJlc2VydmF0aW9uX29iamVjdF9yZXNlcnZlX3NoYXJlZChiby0+dGJvLnJlc3YsIDEpOwor
CXJldCA9IHJlc2VydmF0aW9uX29iamVjdF9yZXNlcnZlX3NoYXJlZChiby0+dGJvLmJhc2UucmVz
diwgMSk7CiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIApAQCAtNDU4LDkgKzQ1OCw5IEBAIHZv
aWQgcXhsX3JlbGVhc2VfZmVuY2VfYnVmZmVyX29iamVjdHMoc3RydWN0IHF4bF9yZWxlYXNlICpy
ZWxlYXNlKQogCWxpc3RfZm9yX2VhY2hfZW50cnkoZW50cnksICZyZWxlYXNlLT5ib3MsIGhlYWQp
IHsKIAkJYm8gPSBlbnRyeS0+Ym87CiAKLQkJcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9zaGFyZWRf
ZmVuY2UoYm8tPnJlc3YsICZyZWxlYXNlLT5iYXNlKTsKKwkJcmVzZXJ2YXRpb25fb2JqZWN0X2Fk
ZF9zaGFyZWRfZmVuY2UoYm8tPmJhc2UucmVzdiwgJnJlbGVhc2UtPmJhc2UpOwogCQl0dG1fYm9f
YWRkX3RvX2xydShibyk7Ci0JCXJlc2VydmF0aW9uX29iamVjdF91bmxvY2soYm8tPnJlc3YpOwor
CQlyZXNlcnZhdGlvbl9vYmplY3RfdW5sb2NrKGJvLT5iYXNlLnJlc3YpOwogCX0KIAlzcGluX3Vu
bG9jaygmZ2xvYi0+bHJ1X2xvY2spOwogCXd3X2FjcXVpcmVfZmluaSgmcmVsZWFzZS0+dGlja2V0
KTsKLS0gCjIuMTguMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3Nw
aWNlLWRldmVs
