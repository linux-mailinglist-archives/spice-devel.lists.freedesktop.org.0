Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4075768E1F
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 16:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74AEB896B0;
	Mon, 15 Jul 2019 14:04:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDCB4896B0
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 14:04:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E87559440;
 Mon, 15 Jul 2019 14:04:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 123F560C64;
 Mon, 15 Jul 2019 14:04:38 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 04B9B41F40;
 Mon, 15 Jul 2019 14:04:38 +0000 (UTC)
Date: Mon, 15 Jul 2019 10:04:37 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <582622360.127784.1563199477825.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190714140741.3274-5-yuri.benditovich@daynix.com>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-5-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.12]
Thread-Topic: usb-redir: delete usb-backend context on initialization error
Thread-Index: izYyX17P5eWgQizuKP1pR+FsyjZSMg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 15 Jul 2019 14:04:38 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 4/5] usb-redir: delete usb-backend
 context on initialization error
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBUaGUgZGVsZXRlIGluIGVycm9yIGZsb3cgd2FzIG1pc3NpbmcuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogWXVyaSBCZW5kaXRvdmljaCA8eXVyaS5iZW5kaXRvdmljaEBkYXluaXguY29tPgo+IC0t
LQo+ICBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYyBi
L3NyYy91c2ItZGV2aWNlLW1hbmFnZXIuYwo+IGluZGV4IDg1N2QwNTcuLjcxMDVmZjEgMTAwNjQ0
Cj4gLS0tIGEvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCj4gKysrIGIvc3JjL3VzYi1kZXZpY2Ut
bWFuYWdlci5jCj4gQEAgLTI1OSw2ICsyNTksNyBAQCBzdGF0aWMgZ2Jvb2xlYW4KPiBzcGljZV91
c2JfZGV2aWNlX21hbmFnZXJfaW5pdGFibGVfaW5pdChHSW5pdGFibGUgICppbml0YWJsZSwKPiAg
ICAgIGlmICghc3BpY2VfdXNiX2JhY2tlbmRfcmVnaXN0ZXJfaG90cGx1Zyhwcml2LT5jb250ZXh0
LCBzZWxmLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNw
aWNlX3VzYl9kZXZpY2VfbWFuYWdlcl9ob3RwbHVnX2NiLAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGVycikpIHsKPiArICAgICAgICBzcGljZV91c2JfYmFj
a2VuZF9kZWxldGUocHJpdi0+Y29udGV4dCk7CgpTaG91bGQgbm90IGhhdmUgYSBmb2xsb3dpbmcg
InByaXYtPmNvbnRleHQgPSBOVUxMIiA/Cgo+ICAgICAgICAgIHJldHVybiBGQUxTRTsKPiAgICAg
IH0KPiAgI2lmbmRlZiBHX09TX1dJTjMyCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
