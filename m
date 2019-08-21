Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADF798015
	for <lists+spice-devel@lfdr.de>; Wed, 21 Aug 2019 18:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C7C89E59;
	Wed, 21 Aug 2019 16:29:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A78489E59
 for <spice-devel@lists.freedesktop.org>; Wed, 21 Aug 2019 16:29:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 282037F750;
 Wed, 21 Aug 2019 16:29:41 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 80C3A60126;
 Wed, 21 Aug 2019 16:29:40 +0000 (UTC)
From: Uri Lublin <uril@redhat.com>
To: zhou qi <atmgnd@outlook.com>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
References: <HK0PR06MB242009302E3419E214904AE2C9AA0@HK0PR06MB2420.apcprd06.prod.outlook.com>
Organization: Red Hat
Message-ID: <59e67d01-f17c-6029-a7ca-3916c8738d41@redhat.com>
Date: Wed, 21 Aug 2019 19:29:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HK0PR06MB242009302E3419E214904AE2C9AA0@HK0PR06MB2420.apcprd06.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Wed, 21 Aug 2019 16:29:41 +0000 (UTC)
Subject: Re: [Spice-devel] windows spice-client-glib hotplug not working
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
Reply-To: uril@redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gOC8yMS8xOSAzOjI1IEFNLCB6aG91IHFpIHdyb3RlOgo+IEhlbGxvLCBJIHdyaXRlIGEgZGVt
byB1bmRlciB3aW5kb3dzIHVuc2luZyAqc3BpY2UtY2xpZW50LWdsaWIgb25seSosIEk+IGNhbiBn
ZXQgdXNiIGRldmljZXMgZnJvbSBVc2JNYW5hZ2VyLiBidXQgaG90cGx1ZyBpcyBub3Qgd29ya2lu
Zy4gbm8+IGRldmljZSBjaGFuZ2UgZXZlbnQgcmVjaWV2ZWQuCgpIZWxsbywKCj4gSSBmb3VuZCB0
aGUgZnVuY3Rpb24gZ191ZGV2X2NsaWVudF9pbml0YWJsZV9pbml0IGluIHdpbi11c2ItZGV2LmMg
Y3JlYXRlPiBhIGhpZGRlbiB3aW5kb3cgdG8gbW9uaXRvciBXTV9ERVZJQ0VDSEFOR0UgbWVzc2Fn
ZS4gYnV0IEkgY291bGQgbm90PiBmb3VuZCB0aGUgY29ycmVzcG9uZGluZyBtZXNzYWdlIGxvb3Dv
vIhHZXRNZXNzYWdlL0Rpc3BhdGNoTWVzc2FnZS4uLikuPiBXaGVyZSBpcyB0aGUgbWVzc2FnZSBs
b29wKGd0ayk/IERvZXMgaXQgZGVwZW5kcyBvbiBzb21lIGhpZ2hlcj4gbGlicmFyeShndGsp77yf
SG93IGNhbiBJIGdldCB1c2IgaG90cGx1ZyB3b3JraW5nPwoKVGhlc2UgZXZlbnRzIGFyZSBzZW50
IHRvIHduZF9wcm9jIGJ5IFdpbmRvd3MgKHRoZSBPUykuCgpUaGUgaGlkZGVuIHdpbmRvdyBpcyBj
cmVhdGVkLCBzbyBzcGljZS1ndGsgZ2V0cyB0aG9zZQptZXNzYWdlcyBmcm9tIFdpbmRvd3MuCgpO
b3RlIHRoYXQgdGhpcyBjb2RlIHdhcyBtb3ZlZCByZWNlbnRseSBpbiBzcGljZS1ndGsgLS0gbm93
IGl0J3MgaW4KdXNiLWJhY2tlbmQuYyAodGhhdCByZXBsYWNlcyB3aW4tdXNiLWRldi5jKQoKVXJp
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
