Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD388E19B8
	for <lists+spice-devel@lfdr.de>; Wed, 23 Oct 2019 14:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7A96EA6A;
	Wed, 23 Oct 2019 12:15:14 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47A006EA6A
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 12:15:13 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-380-metwVEofOLOacqeodKIlnw-1; Wed, 23 Oct 2019 08:15:08 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B01A9801E5C
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 12:15:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A75AB5D6C8
 for <spice-devel@lists.freedesktop.org>; Wed, 23 Oct 2019 12:15:07 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 99B724EE50;
 Wed, 23 Oct 2019 12:15:07 +0000 (UTC)
Date: Wed, 23 Oct 2019 08:15:07 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Message-ID: <2067109522.8176385.1571832907346.JavaMail.zimbra@redhat.com>
In-Reply-To: <a0de28e3-857a-e677-b494-4b12a50d38e9@redhat.com>
References: <20191023100632.26265-1-fziglio@redhat.com>
 <20191023100632.26265-5-fziglio@redhat.com>
 <a0de28e3-857a-e677-b494-4b12a50d38e9@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.34.247.51, 10.4.195.17]
Thread-Topic: build-sys: Requires proper pkg-config for MingW
Thread-Index: ZOP+s7YSReGoilHahedtOiV51L14pg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: metwVEofOLOacqeodKIlnw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571832912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H+xQiTsaOoV5Ag+y1b8HeXmS+cczkpptEsHDeLFwRzs=;
 b=Voqs1/jIpE1M5qdci4YL3v31FQBSxkL+0Meitk71QqHNt26M5o6FHyxOEG1SHExcz7BRMV
 VGL1azQzohEcLLsy/V+eVTOMfbVio2rfOn0AaLTryO7JU19MirHbdE05igDoZzhTYN3bWv
 bHSVv7d1BUyCATByCmkVfusJlCGzseo=
Subject: Re: [Spice-devel] [PATCH spice-protocol v4 5/5] build-sys: Requires
 proper pkg-config for MingW
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

PiAKPiBPbiAxMC8yMy8xOSAxMjowNiBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+ID4gLnBj
IGZpbGVzIHJlcXVpcmVzIE1pbmdXIHZlcnNpb24sIG5vdCBzeXN0ZW0gb25lLgo+ID4KPiAKPiBJ
IHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciBpZiBzcXVhc2hlZCBpbnRvIHByZXZpb3VzIHBhdGNo
PyBUaGlzIGlkZWEgb2YKPiBidWlsZGluZyB0aGUgbWluZ3cgcGFja2FnZXMgZnJvbSB0aGUgc2Ft
ZSBzb3VyY2UgaXMgbmljZSwgYnV0IGl0IG5lZWRzCj4gc29tZSBtb3JlIGRpc2N1c3Npb24uIExl
dHMga2VlcCB0aGlzIHBhdGNoIG9uIGhvbGQgZm9yIGEgd2lobGUgYW5kCj4gcmV2aXNpdCBpdCBs
YXRlciBvbi4KPiAKPiBSZWdhcmRzLCBFZHVhcmRvCj4gCgpGaW5lIGZvciBtZS4gU3F1YXNoZWQg
YW5kIEknbGwgd2FpdAoKRnJlZGlhbm8KCj4gPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWds
aW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiA+IC0tLQo+ID4gICBzcGljZS1wcm90b2NvbC5zcGVj
LmluIHwgMiArLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3NwaWNlLXByb3RvY29sLnNwZWMuaW4gYi9zcGlj
ZS1wcm90b2NvbC5zcGVjLmluCj4gPiBpbmRleCA1NGFhY2ZkLi4yZmU5NDBiIDEwMDY0NAo+ID4g
LS0tIGEvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbgo+ID4gKysrIGIvc3BpY2UtcHJvdG9jb2wuc3Bl
Yy5pbgo+ID4gQEAgLTE5LDcgKzE5LDcgQEAgYW5kIHRoZSBwYXJhLXZpcnR1YWwgZ3JhcGhpY3Mg
Y2FyZCBRWEwuCj4gPiAgICVkZWZpbmUgbWluZ3dfZmlsZXMoKSBcCj4gPiAgICVwYWNrYWdlIC1u
ICV7MX0tc3BpY2UtcHJvdG9jb2wgXAo+ID4gICBTdW1tYXJ5OiAgICAgICAgU3BpY2UgcHJvdG9j
b2wgaGVhZGVyIGZpbGVzIFwKPiA+IC1SZXF1aXJlczogICAgICAgcGtnY29uZmlnIFwKPiA+ICtS
ZXF1aXJlczogICAgICAgJXsxfS1wa2ctY29uZmlnIFwKPiA+ICAgXAo+ID4gICAlZGVzY3JpcHRp
b24gLW4gJXsxfS1zcGljZS1wcm90b2NvbCBcCj4gPiAgIEhlYWRlciBmaWxlcyBkZXNjcmliaW5n
IHRoZSBzcGljZSBwcm90b2NvbCBcCj4gPiAKPiAKPiAKPiAtLQo+IEVkdWFyZG8gZGUgQmFycm9z
IExpbWEgKEV0cnVua28pCj4gU29mdHdhcmUgRW5naW5lZXIgLSBSZWQgSGF0Cj4gZXRydW5rb0By
ZWRoYXQuY29tCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL3NwaWNlLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
