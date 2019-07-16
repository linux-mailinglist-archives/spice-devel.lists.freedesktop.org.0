Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2F76AB00
	for <lists+spice-devel@lfdr.de>; Tue, 16 Jul 2019 16:52:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CF289FFD;
	Tue, 16 Jul 2019 14:52:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDDAE89FFD
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 14:52:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5F03D3082B6D
 for <spice-devel@lists.freedesktop.org>; Tue, 16 Jul 2019 14:52:18 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BF34A5D71B;
 Tue, 16 Jul 2019 14:52:17 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190627150358.16534-1-fziglio@redhat.com>
 <20190627150358.16534-2-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <e46d3638-a6cd-918a-644d-49b5cce068cd@redhat.com>
Date: Tue, 16 Jul 2019 17:52:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190627150358.16534-2-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 16 Jul 2019 14:52:18 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 2/2] websocket: Make header
 self-independent
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

T24gNi8yNy8xOSA2OjAzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+CgpBY2ssIHdpdGggY29tbWVu
dC9zdWdnZXN0aW9uIGJlbG93LgoKPiAtLS0KPiAgIHNlcnZlci93ZWJzb2NrZXQuaCB8IDQgKysr
Kwo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9z
ZXJ2ZXIvd2Vic29ja2V0LmggYi9zZXJ2ZXIvd2Vic29ja2V0LmgKPiBpbmRleCA3NzA3ZTY4MDQu
LmVjNDUyMDM4YiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvd2Vic29ja2V0LmgKPiArKysgYi9zZXJ2
ZXIvd2Vic29ja2V0LmgKPiBAQCAtMTgsNiArMTgsMTAgQEAKPiAgICNpZm5kZWYgV0VCU09DS0VU
X0hfCj4gICAjZGVmaW5lIFdFQlNPQ0tFVF9IXwo+ICAgCj4gKyNpbmNsdWRlIDxpbnR0eXBlcy5o
PgoKVGhpcyBpcyBmb3IgdWludDhfdCwgbWF5YmUKI2luY2x1ZGUgPHN0ZGludC5oPgoKPiArCj4g
KyNpbmNsdWRlICJzeXMtc29ja2V0LmgiCgooVGhpcyBpcyBmb3Igc3RydWN0IGlvdmVjKQoKVXJp
Lgo+ICsKPiAgIHR5cGVkZWYgc3NpemVfdCAoKndlYnNvY2tldF9yZWFkX2NiX3QpKHZvaWQgKm9w
YXF1ZSwgdm9pZCAqYnVmLCBzaXplX3QgbmJ5dGUpOwo+ICAgdHlwZWRlZiBzc2l6ZV90ICgqd2Vi
c29ja2V0X3dyaXRlX2NiX3QpKHZvaWQgKm9wYXF1ZSwgY29uc3Qgdm9pZCAqYnVmLCBzaXplX3Qg
bmJ5dGUpOwo+ICAgdHlwZWRlZiBzc2l6ZV90ICgqd2Vic29ja2V0X3dyaXRldl9jYl90KSh2b2lk
ICpvcGFxdWUsIHN0cnVjdCBpb3ZlYyAqaW92LCBpbnQgaW92Y250KTsKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
