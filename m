Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 621B07BB34
	for <lists+spice-devel@lfdr.de>; Wed, 31 Jul 2019 10:10:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8E28999E;
	Wed, 31 Jul 2019 08:10:37 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510748999E
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 08:10:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C85B8C0467C3
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 08:10:35 +0000 (UTC)
Received: from ptitpuce (ovpn-116-130.ams2.redhat.com [10.36.116.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B095419C67
 for <spice-devel@lists.freedesktop.org>; Wed, 31 Jul 2019 08:10:34 +0000 (UTC)
References: <20190731072728.4437-1-fziglio@redhat.com>
User-agent: mu4e 1.3.2; emacs 26.2
From: Christophe de Dinechin <dinechin@redhat.com>
To: spice-devel@lists.freedesktop.org
In-reply-to: <20190731072728.4437-1-fziglio@redhat.com>
Date: Wed, 31 Jul 2019 10:10:31 +0200
Message-ID: <m14l32oc94.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 31 Jul 2019 08:10:35 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 1/2] build: Remove obsolete
 comments referring to Autotools
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

CkZyZWRpYW5vIFppZ2xpbyB3cml0ZXM6Cgo+IEF1dG90b29scyBzdXBwb3J0IHdlcmUgcmVtb3Zl
ZCBieSBjb21taXQKPiA5ODM3Zjk3NGNjMzIxODVmM2JkYjFkNDEwMmZkNWI2NTYwN2MzZTAyICgi
RHJvcCBhdXRvdG9vbHMiKS4KPgo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICBzcmMvbWVzb24uYnVpbGQgfCAyIC0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3NyYy9tZXNvbi5idWls
ZCBiL3NyYy9tZXNvbi5idWlsZAo+IGluZGV4IDRiYWIwODdkLi5hMGJkYmMyYSAxMDA2NDQKPiAt
LS0gYS9zcmMvbWVzb24uYnVpbGQKPiArKysgYi9zcmMvbWVzb24uYnVpbGQKPiBAQCAtMTg0LDcg
KzE4NCw2IEBAIGlmIG5vdCBzcGljZV9ndGtfaGFzX3ZlcnNpb25fc2NyaXB0Cj4gIGVuZGlmCj4K
PiAgIyBzb3ZlcnNpb24KPiAtIyBYWFg6IEtFRVAgSU4gU1lOQyBXSVRIIHNyYy9NYWtlZmlsZS5h
bSBGSUxFCj4gICMgaHR0cDovL3d3dy5nbnUub3JnL3NvZnR3YXJlL2xpYnRvb2wvbWFudWFsL2h0
bWxfbm9kZS9VcGRhdGluZy12ZXJzaW9uLWluZm8uaHRtbAo+ICBzcGljZV9jbGllbnRfZ2xpYl9j
dXJyZW50ID0gMTQKPiAgc3BpY2VfY2xpZW50X2dsaWJfcmV2aXNpb24gPSAwCj4gQEAgLTMzMyw3
ICszMzIsNiBAQCBpZiBzcGljZV9ndGtfaGFzX2d0awo+ICAgIGVuZGlmCj4KPiAgICAjIHNvdmVy
c2lvbgo+IC0gICMgWFhYOiBLRUVQIElOIFNZTkMgV0lUSCBzcmMvTWFrZWZpbGUuYW0gRklMRQo+
ICAgICMgaHR0cDovL3d3dy5nbnUub3JnL3NvZnR3YXJlL2xpYnRvb2wvbWFudWFsL2h0bWxfbm9k
ZS9VcGRhdGluZy12ZXJzaW9uLWluZm8uaHRtbAo+ICAgIHNwaWNlX2NsaWVudF9ndGtfY3VycmVu
dCA9IDUKPiAgICBzcGljZV9jbGllbnRfZ3RrX3JldmlzaW9uID0gMAoKVHJpdmlhbCBjaGFuZ2Uu
CkFja2VkLWJ5OiBDaHJpc3RvcGhlIGRlIERpbmVjaGluIDxkaW5lY2hpbkByZWRoYXQuY29tPgoK
LS0KQ2hlZXJzLApDaHJpc3RvcGhlIGRlIERpbmVjaGluIChJUkMgYzNkKQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxp
c3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
