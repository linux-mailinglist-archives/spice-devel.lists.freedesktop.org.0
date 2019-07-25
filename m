Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C92E874DAA
	for <lists+spice-devel@lfdr.de>; Thu, 25 Jul 2019 14:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445B56E729;
	Thu, 25 Jul 2019 12:04:05 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 749FF6E729
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 12:04:03 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id r12so15208238edo.5
 for <spice-devel@lists.freedesktop.org>; Thu, 25 Jul 2019 05:04:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=cy0ew9uPB8kVgEkmAFM7ms4faY7aDGiLUN/eaDicKPg=;
 b=SJlIiynNAbLrtEJgXNPqyiL3PLu+SwTiAGU85SGS24GPj7ppjLrG2Dk/HfkE3jbavs
 VIhWrZs8786ojxysNfJ0F+07CMxQpQvVG2tbduTquDke8cHrUoMgXOTow0u+B6YMff7r
 GYJEBRkbYO/HAEaVIYDw+7C1hKpGayQs2e1ljztJvEkQ9M2uD94waakfR4DWVJQ5AIpq
 NEaHDJ1YJVfRBN35OqOpAFHAdVu6c2qdkD5u0JWmtP22/VMeaI51dbuTbpcFVjDBx9FK
 io4jRMrfd8Okyqp9fPJQxJAUVLkueo3rgaaLQDbiYTES+UAnKu8YzAMsGLQzaZTgZJOh
 WhiA==
X-Gm-Message-State: APjAAAX/NqPdLmoPJ8zA+J0klv8aD6zErA/5OmLBEI2Wefs7VemxyR/G
 SymDNk6NzM4Xr2HhF2I04rE=
X-Google-Smtp-Source: APXvYqyaIPnd0FN+ekWkoKh4vPAtSWP2GBKrYKSJbcPhM7k3XbUpl7CE1EwxPieoU4WbQXNb3+RMyA==
X-Received: by 2002:a50:9871:: with SMTP id h46mr76005765edb.69.1564056241883; 
 Thu, 25 Jul 2019 05:04:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id k8sm13001747edr.31.2019.07.25.05.04.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 05:04:01 -0700 (PDT)
Date: Thu, 25 Jul 2019 14:03:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <20190725120359.GB15868@phenom.ffwll.local>
Mail-Followup-To: Jia-Ju Bai <baijiaju1990@gmail.com>, airlied@redhat.com,
 kraxel@redhat.com, airlied@linux.ie,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20190725102127.16086-1-baijiaju1990@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725102127.16086-1-baijiaju1990@gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=cy0ew9uPB8kVgEkmAFM7ms4faY7aDGiLUN/eaDicKPg=;
 b=WPZhZWmRLRFJE8jPPQtDSMQzuxgwp3LQMY9ubs6jUiptnchPg7kFyCCu6lCq07dzQM
 Bv+b5kp750NTw97eMhhEIN/2+zSUClyeCkEsIT/KpeyftRjloI9FYcvGhe7H6n21aHB7
 QXdsWpYtCXLTZIJx5CLvoTfenLF2F848/TPPE=
Subject: Re: [Spice-devel] [PATCH] gpu: drm: qxl: Fix possible null-pointer
 dereferences in qxl_crtc_atomic_flush()
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 kraxel@redhat.com, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 airlied@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMDY6MjE6MjdQTSArMDgwMCwgSmlhLUp1IEJhaSB3cm90
ZToKPiBJbiBxeGxfY3J0Y19hdG9taWNfZmx1c2goKSwgdGhlcmUgaXMgYW4gaWYgc3RhdGVtZW50
IG9uIGxpbmUgMzc2IHRvCj4gY2hlY2sgd2hldGhlciBjcnRjLT5zdGF0ZSBpcyBOVUxMOgo+ICAg
ICBpZiAoY3J0Yy0+c3RhdGUgJiYgY3J0Yy0+c3RhdGUtPmV2ZW50KQo+IAo+IFdoZW4gY3J0Yy0+
c3RhdGUgaXMgTlVMTCBhbmQgcXhsX2NydGNfdXBkYXRlX21vbml0b3JzX2NvbmZpZygpIGlzIGNh
bGwsIAo+IHF4bF9jcnRjX3VwZGF0ZV9tb25pdG9yc19jb25maWcoKSB1c2VzIGNydGMtPnN0YXRl
IG9uIGxpbmUgMzI2Ogo+ICAgICBpZiAoY3J0Yy0+c3RhdGUtPmFjdGl2ZSkKPiBhbmQgb24gbGlu
ZSAzNTg6Cj4gICAgIERSTV9ERUJVR19LTVMoLi4uLCBjcnRjLT5zdGF0ZS0+YWN0aXZlLCAuLi4p
Owo+IAo+IFRodXMsIHBvc3NpYmxlIG51bGwtcG9pbnRlciBkZXJlZmVyZW5jZXMgbWF5IG9jY3Vy
Lgo+IAo+IFRvIGZpeCB0aGVzZSBidWdzLCBjcnRjLT5zdGF0ZSBpcyBjaGVja2VkIGJlZm9yZSBj
YWxsaW5nCj4gcXhsX2NydGNfdXBkYXRlX21vbml0b3JzX2NvbmZpZygpLgo+IAo+IFRoZXNlIGJ1
Z3MgYXJlIGZvdW5kIGJ5IGEgc3RhdGljIGFuYWx5c2lzIHRvb2wgU1RDaGVjayB3cml0dGVuIGJ5
IHVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEppYS1KdSBCYWkgPGJhaWppYWp1MTk5MEBnbWFpbC5j
b20+CgpjcnRjLT5zdGF0ZSBzaG91bGQgbmV2ZXIgYmUgTlVMTCBpbiB0aGlzIGZ1bmN0aW9uLCBl
dmVyLiBJbW8gY29ycmVjdCBmaXgKaXMgdG8gcmVtb3ZlIHRoYXQgb3RoZXIgTlVMTCBjaGVjayAo
c2luY2Ugb2J2aW91c2x5IGl0IHdvdWxkIGJsb3cgdXAsCmhlbmNlIGl0J3MgZGVhZCBjb2RlKS4K
CkF0b21pYyBrbXMgZHJpdmVycyB1c2UgZHJtX21vZGVfY29uZmlnX3Jlc2V0KCkgdG8gbWFrZSBz
dXJlIHRoZSB2YXJpb3VzCi0+c3RhdGUgcG9pbnRlcnMgYXJlIGFsd2F5cyBzZXQgYW5kIHZhbGlk
LgotRGFuaWVsCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9kaXNwbGF5LmMgfCAz
ICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9xeGwvcXhsX2Rpc3BsYXkuYwo+IGluZGV4IDhiMzE5ZWJiYjBmYi4uZmFlMThl
ZjFiYTU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rpc3BsYXkuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX2Rpc3BsYXkuYwo+IEBAIC0zODIsNyArMzgy
LDggQEAgc3RhdGljIHZvaWQgcXhsX2NydGNfYXRvbWljX2ZsdXNoKHN0cnVjdCBkcm1fY3J0YyAq
Y3J0YywKPiAgCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXYtPmV2ZW50X2xvY2ssIGZsYWdz
KTsKPiAgCX0KPiAgCj4gLQlxeGxfY3J0Y191cGRhdGVfbW9uaXRvcnNfY29uZmlnKGNydGMsICJm
bHVzaCIpOwo+ICsJaWYgKGNydGMtPnN0YXRlKQo+ICsJCXF4bF9jcnRjX3VwZGF0ZV9tb25pdG9y
c19jb25maWcoY3J0YywgImZsdXNoIik7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIHF4bF9jcnRj
X2Rlc3Ryb3koc3RydWN0IGRybV9jcnRjICpjcnRjKQo+IC0tIAo+IDIuMTcuMAo+IAoKLS0gCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
