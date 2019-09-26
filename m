Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7437BF75D
	for <lists+spice-devel@lfdr.de>; Thu, 26 Sep 2019 19:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 341746EDA3;
	Thu, 26 Sep 2019 17:12:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08C1A6EDA3
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 17:12:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A86AE2116
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 17:12:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F6C75D6B0
 for <spice-devel@lists.freedesktop.org>; Thu, 26 Sep 2019 17:12:22 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 93B644E589;
 Thu, 26 Sep 2019 17:12:22 +0000 (UTC)
Date: Thu, 26 Sep 2019 13:12:22 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <964479215.3424477.1569517942569.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190926151320.18868-3-uril@redhat.com>
References: <20190926151320.18868-1-uril@redhat.com>
 <20190926151320.18868-3-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.15, 10.4.195.8]
Thread-Topic: spec: BuildRequires autoconf and friends
Thread-Index: tV1dDK2yF0564NVXfvh2C3qvQsso3Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Thu, 26 Sep 2019 17:12:22 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-streaming-agent PATCH 2/4] spec:
 BuildRequires autoconf and friends
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

Cj4gCj4gQWxzbyBvbmx5IGJ1aWxkIGZvciB4ODZfNjQKPiAKPiBTaWduZWQtb2ZmLWJ5OiBVcmkg
THVibGluIDx1cmlsQHJlZGhhdC5jb20+CgpJIGRvbid0IHNlZSB0aGUgcmVhc29uLCB0aGUgc3Bl
YyBmaWxlIGRvZXMgbm90IHVzZSB0aGVtLCB0aGUgZGlzdHJpYnV0ZWQKY29uZmlndXJlIGFuZCBy
ZWxhdGVkIGZpbGVzIGFyZSB1c2VkLgpVbmxlc3MgeW91IGZvcmNlIHRoZSBnZW5lcmF0aW9uIG9m
IGEgbmV3IGNvbmZpZ3VyZSAodGhhdCB3b3VsZCBiZSBhbgphZGRpdGlvbmFsIGNoYW5nZSBpbiB0
aGUgc3BlYykuCgpXaHkgb25seSBhbWQ2NCA/Cgo+IC0tLQo+ICBzcGljZS1zdHJlYW1pbmctYWdl
bnQuc3BlYy5pbiB8IDQgKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL3NwaWNlLXN0cmVhbWluZy1hZ2VudC5zcGVjLmluIGIvc3BpY2Utc3Ry
ZWFtaW5nLWFnZW50LnNwZWMuaW4KPiBpbmRleCAyOTllYTAyLi5hMjY3YzU0IDEwMDY0NAo+IC0t
LSBhL3NwaWNlLXN0cmVhbWluZy1hZ2VudC5zcGVjLmluCj4gKysrIGIvc3BpY2Utc3RyZWFtaW5n
LWFnZW50LnNwZWMuaW4KPiBAQCAtMTQsMTEgKzE0LDE1IEBAIEJ1aWxkUmVxdWlyZXM6ICBwa2dj
b25maWcodWRldikKPiAgQnVpbGRSZXF1aXJlczogIGxpYmRybS1kZXZlbAo+ICBCdWlsZFJlcXVp
cmVzOiAgbGliWHJhbmRyLWRldmVsCj4gIEJ1aWxkUmVxdWlyZXM6ICBnY2MtYysrCj4gK0J1aWxk
UmVxdWlyZXM6ICBhdXRvbWFrZSBhdXRvY29uZiBhdXRvY29uZi1hcmNoaXZlIGxpYnRvb2wKPiAg
IyB3ZSBuZWVkIC91c3Ivc2Jpbi9zZW1hbmFnZSBwcm9ncmFtIHdoaWNoIGlzIGF2YWlsYWJsZSBv
biBkaWZmZXJlbnQKPiAgIyBwYWNrYWdlcyBkZXBlbmRpbmcgb24gZGlzdHJpYnV0aW9uCj4gIFJl
cXVpcmVzKHBvc3QpOiAvdXNyL3NiaW4vc2VtYW5hZ2UKPiAgUmVxdWlyZXMocG9zdHVuKTogL3Vz
ci9zYmluL3NlbWFuYWdlCj4gIAo+ICtFeGNsdXNpdmVBcmNoOiB4ODZfNjQKPiArCj4gKwo+ICAl
ZGVzY3JpcHRpb24KPiAgQW4gYWdlbnQsIHJ1bm5pbmcgb24gYSBndWVzdCwgc2VuZGluZyB2aWRl
byBzdHJlYW1zIG9mIHRoZSBYIGRpc3BsYXkgdG8gYQo+ICByZW1vdGUgY2xpZW50IChvdmVyIFNQ
SUNFKS4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9z
cGljZS1kZXZlbA==
