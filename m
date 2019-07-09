Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DF663526
	for <lists+spice-devel@lfdr.de>; Tue,  9 Jul 2019 13:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EC289FD4;
	Tue,  9 Jul 2019 11:47:22 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E1089FD4
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 11:47:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B2E743082B6D
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 11:47:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AB4FD79582
 for <spice-devel@lists.freedesktop.org>; Tue,  9 Jul 2019 11:47:19 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id A27B2206D1;
 Tue,  9 Jul 2019 11:47:19 +0000 (UTC)
Date: Tue, 9 Jul 2019 07:47:18 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: uril@redhat.com
Message-ID: <1438838942.26817085.1562672838194.JavaMail.zimbra@redhat.com>
In-Reply-To: <a29c56ec-11b8-247a-1ec1-6feb0bb8033f@redhat.com>
References: <20190708120016.27270-1-fziglio@redhat.com>
 <a29c56ec-11b8-247a-1ec1-6feb0bb8033f@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.13, 10.4.195.4]
Thread-Topic: Drop autotools
Thread-Index: IAYrf8gv6bAurlSUH2Fw36ZoE3mO0Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 09 Jul 2019 11:47:19 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 0/2] Drop autotools
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

PiAKPiBPbiA3LzgvMTkgMzowMCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4gVGhpcyBz
ZXJpZXMgaXMgZnJvbSBNYXJjLUFuZHLDqSwgSSBqdXN0IHJlYmFzZWQgaXQgb24gY3VycmVudCBt
YXN0ZXIuCj4gPiBOb3QgbXVjaCBsZWZ0IG9mIHRoZSBvcmlnaW5hbCBzZXJpZXMuCj4gPiBJIHRo
aW5rIGl0J3MgdGltZSB0byBnZXQgYmFjayB0byBpdC4KPiAKPiAKPiBEb2VzIG1lc29uIHdvcmsg
d2VsbCBmb3IgbWluZ3ctc3BpY2UtZ3RrID8KPiAKPiBJIHRoaW5rIGEgc2FmZXIgcGF0aCBpcyB0
byBtYWtlIGEgcmVsZWFzZSB3aXRoIE1lc29uCj4gYmVmb3JlIHJlbW92aW5nIGF1dG90b29scy4K
PiAKPiBVcmkuCj4gCgpXZSBoYWQgd2luZG93cyBpbiBDSSBhbmQgTWFyYy1hbmRyZSBpcyB1c2lu
ZyBNZXNvbiBmb3IgRmVkb3JhLgpWaWN0b3IsIGFzIGZhciBhcyBJIGtub3csIG1hbmFnZWQgdG8g
ZG8gYSBwYWNrYWdlIHVzaW5nIE1lc29uLgpXZSBjb3VsZCByb2xsYmFjayBpZiBuZWVkZWQgYnV0
IHdlIHRlc3RlZCBpdCBpbiBkaWZmZXJlbnQgd2F5cy4KUkhFTCA3IGhhcyBNZXNvbiBwYWNrYWdl
cyBuZWVkZWQgKGFsdGhvdWdoIEkgZG9uJ3QgcmVtZW1iZXIgaWYKdGhpcyB3YXMgdGVzdGVkKS4K
CkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
