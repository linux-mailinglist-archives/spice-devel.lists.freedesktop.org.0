Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9D56BBCE
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 13:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628DD6E116;
	Wed, 17 Jul 2019 11:49:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F39546E116
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:49:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 81260307D90D
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:49:12 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DFF8F5D720;
 Wed, 17 Jul 2019 11:49:11 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190717113245.711-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <c416fd34-3062-de32-cb44-853089fdf509@redhat.com>
Date: Wed, 17 Jul 2019 14:49:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190717113245.711-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 17 Jul 2019 11:49:12 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] websocket: Include proper
 type header
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNy8xNy8xOSAyOjMyIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gaW50dHlwZXMuaCBj
b250YWlucyBtYWNybyBmb3IgZm9ybWF0IHN0cmluZyB3aGlsZQo+IHN0ZGludC5oIG1vcmUgc3Bl
Y2lmaWNhbGx5IGNvbnRhaW5zIHR5cGUgZGVmaW5pdGlvbnMgKGxpa2UgdWludDhfdCkuCj4gCj4g
U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpBY2sg
OikKCj4gLS0tCj4gICBzZXJ2ZXIvd2Vic29ja2V0LmggfCAyICstCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVy
L3dlYnNvY2tldC5oIGIvc2VydmVyL3dlYnNvY2tldC5oCj4gaW5kZXggZWM0NTIwMzhiLi40NjE5
ODM2YTYgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3dlYnNvY2tldC5oCj4gKysrIGIvc2VydmVyL3dl
YnNvY2tldC5oCj4gQEAgLTE4LDcgKzE4LDcgQEAKPiAgICNpZm5kZWYgV0VCU09DS0VUX0hfCj4g
ICAjZGVmaW5lIFdFQlNPQ0tFVF9IXwo+ICAgCj4gLSNpbmNsdWRlIDxpbnR0eXBlcy5oPgo+ICsj
aW5jbHVkZSA8c3RkaW50Lmg+Cj4gICAKPiAgICNpbmNsdWRlICJzeXMtc29ja2V0LmgiCj4gICAK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
