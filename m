Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3387326A
	for <lists+spice-devel@lfdr.de>; Wed, 24 Jul 2019 17:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991CE6E5C9;
	Wed, 24 Jul 2019 15:01:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2070B6E5C9
 for <spice-devel@lists.freedesktop.org>; Wed, 24 Jul 2019 15:01:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B9F3F30821A0;
 Wed, 24 Jul 2019 15:01:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id ACF4C5C22D;
 Wed, 24 Jul 2019 15:01:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A10A241F40;
 Wed, 24 Jul 2019 15:01:26 +0000 (UTC)
Date: Wed, 24 Jul 2019 11:01:26 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1087555963.2817413.1563980486620.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190724141726.32063-4-jwhite@codeweavers.com>
References: <20190724141726.32063-1-jwhite@codeweavers.com>
 <20190724141726.32063-4-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.9, 10.4.195.9]
Thread-Topic: Bug fix: a listen specification from the config file was ignored
Thread-Index: 6N3tOqSXTyYAD5ILj/UTcJWbO87q2A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 24 Jul 2019 15:01:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH fixup1 x11spice 3/3] Bug fix: a listen
 specification from the config file was ignored
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5jb20+
CgpBY2tlZAoKPiAtLS0KPiAgc3JjL29wdGlvbnMuYyB8IDQgKysrLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9v
cHRpb25zLmMgYi9zcmMvb3B0aW9ucy5jCj4gaW5kZXggNjYyMGI4NTMuLjY0ZTZhYzk1IDEwMDY0
NAo+IC0tLSBhL3NyYy9vcHRpb25zLmMKPiArKysgYi9zcmMvb3B0aW9ucy5jCj4gQEAgLTMyNyw3
ICszMjcsOSBAQCBpbnQgb3B0aW9uc19wYXJzZV9hcmd1bWVudHMoaW50IGFyZ2MsIGNoYXIgKmFy
Z3ZbXSwKPiBvcHRpb25zX3QgKm9wdGlvbnMpCj4gICAgICBpZiAocmMgPT0gMCkgewo+ICAgICAg
ICAgIGlmIChvcHRpbmQgPj0gYXJnYykgewo+ICAgICAgICAgICAgICAvKiBEZWZhdWx0ICovCj4g
LSAgICAgICAgICAgIHN0cl9yZXBsYWNlKCZvcHRpb25zLT5saXN0ZW4sICI1OTAwIik7Cj4gKyAg
ICAgICAgICAgIGlmIChvcHRpb25zLT5saXN0ZW4gPT0gTlVMTCkgewo+ICsgICAgICAgICAgICAg
ICAgc3RyX3JlcGxhY2UoJm9wdGlvbnMtPmxpc3RlbiwgIjU5MDAiKTsKPiArICAgICAgICAgICAg
fQo+ICAgICAgICAgIH0gZWxzZSBpZiAob3B0aW5kIDwgKGFyZ2MgLSAxKSkgewo+ICAgICAgICAg
ICAgICBmcHJpbnRmKHN0ZGVyciwgIkVycm9yOiB0b28gbWFueSBhcmd1bWVudHNcbiIpOwo+ICAg
ICAgICAgICAgICByYyA9IFgxMVNQSUNFX0VSUl9CQURBUkdTOwoKRnJlZGlhbm8KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
