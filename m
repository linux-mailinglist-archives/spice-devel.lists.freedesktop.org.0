Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EAC41BB7
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A83B8915A;
	Wed, 12 Jun 2019 05:55:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F928916B
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:55:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 026BEC18B2DB
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:55:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EF2A66B8DC
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:55:54 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id E87741806B0E
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:55:54 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:55:54 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <177022366.22408146.1560318954907.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-11-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-11-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: red-channel: Remove unused declaration
Thread-Index: yV6eIBstfMNZ93R7Ocx2OYihY5UMmQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 12 Jun 2019 05:55:55 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 11/13] red-channel: Remove
 unused declaration
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

cGluZwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0
LmNvbT4KPiAtLS0KPiAgc2VydmVyL3JlZC1jaGFubmVsLmggfCAxIC0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZC1jaGFubmVsLmgg
Yi9zZXJ2ZXIvcmVkLWNoYW5uZWwuaAo+IGluZGV4IDRiZmQ4MWVlMS4uZWIxNmJkNGI4IDEwMDY0
NAo+IC0tLSBhL3NlcnZlci9yZWQtY2hhbm5lbC5oCj4gKysrIGIvc2VydmVyL3JlZC1jaGFubmVs
LmgKPiBAQCAtNDcsNyArNDcsNiBAQCB0eXBlZGVmIHN0cnVjdCBNYWluQ2hhbm5lbENsaWVudCBN
YWluQ2hhbm5lbENsaWVudDsKPiAgCj4gIHR5cGVkZWYgYm9vbCAoKmNoYW5uZWxfaGFuZGxlX21l
c3NhZ2VfcHJvYykoUmVkQ2hhbm5lbENsaWVudCAqcmNjLCB1aW50MTZfdAo+ICB0eXBlLAo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVpbnQzMl90IHNpemUs
IHZvaWQgKm1zZyk7Cj4gLXR5cGVkZWYgYm9vbCAoKmNoYW5uZWxfY29uZmlndXJlX3NvY2tldF9w
cm9jKShSZWRDaGFubmVsQ2xpZW50ICpyY2MpOwo+ICB0eXBlZGVmIHZvaWQgKCpjaGFubmVsX3Nl
bmRfcGlwZV9pdGVtX3Byb2MpKFJlZENoYW5uZWxDbGllbnQgKnJjYywKPiAgUmVkUGlwZUl0ZW0g
Kml0ZW0pOwo+ICAKPiAgdHlwZWRlZiBib29sICgqY2hhbm5lbF9oYW5kbGVfbWlncmF0ZV9mbHVz
aF9tYXJrX3Byb2MpKFJlZENoYW5uZWxDbGllbnQKPiAgKmJhc2UpOwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
