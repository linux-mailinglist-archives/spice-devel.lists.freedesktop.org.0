Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E628BF64
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 19:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59C26E1F2;
	Tue, 13 Aug 2019 17:09:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1523589DD2
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 17:09:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B613F305883E
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 17:09:51 +0000 (UTC)
Received: from lub.tlv (dhcp-4-135.tlv.redhat.com [10.35.4.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 258D31000329;
 Tue, 13 Aug 2019 17:09:50 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190813165608.32249-1-fziglio@redhat.com>
 <20190813165608.32249-3-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <c30291a9-9d3b-ec7b-74f2-3ba139c612bf@redhat.com>
Date: Tue, 13 Aug 2019 20:09:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813165608.32249-3-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 13 Aug 2019 17:09:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common 3/4] codegen: Exit with error
 on error generating C structures
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

T24gOC8xMy8xOSA3OjU2IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gVGhpcyB3YXMgc29t
ZSBsZWZ0LW92ZXIgZHVyaW5nIGRldmVsb3BtZW50IG9mIEMgc3RydWN0dXJlCj4gZ2VuZXJhdGlv
bnMgKHRoZSBzaW5nbGUgc3RydWN0dXJlIGdlbmVyYXRpb24gd2FzIHNraXBwZWQpLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKQWNrLgoK
VXJpLgoKPiAtLS0KPiAgIHNwaWNlX2NvZGVnZW4ucHkgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9zcGljZV9jb2RlZ2VuLnB5IGIvc3Bp
Y2VfY29kZWdlbi5weQo+IGluZGV4IDA1MzJkNmYuLmQzYTFiZjUgMTAwNzU1Cj4gLS0tIGEvc3Bp
Y2VfY29kZWdlbi5weQo+ICsrKyBiL3NwaWNlX2NvZGVnZW4ucHkKPiBAQCAtMjgzLDYgKzI4Myw3
IEBAIGN1cnJlbnQ6Cj4gICAgICAgICAgIHByaW50ID4+IHN5cy5zdGRlcnIsICd0eXBlICVzJyAl
IHQKPiAgICAgICAgICAgcHJpbnQgPj4gc3lzLnN0ZGVyciwgd3JpdGVyLmdldHZhbHVlKCkKPiAg
ICAgICAgICAgdHJhY2ViYWNrLnByaW50X2V4YyhzeXMuc3RkZXJyKQo+ICsgICAgICAgIHN5cy5l
eGl0KDEpCj4gICAKPiAgIGRlZiBnZW5lcmF0ZV9kZWNsYXJhdGlvbnMoKToKPiAgICAgICB3cml0
ZXIgPSBjb2RlZ2VuLkNvZGVXcml0ZXIoKQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
