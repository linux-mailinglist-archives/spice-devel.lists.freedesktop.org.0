Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 769B18BF0D
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 18:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041966E1B8;
	Tue, 13 Aug 2019 16:56:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5CB76E1B8
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:56:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4DD083037ACC
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 16:56:22 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.40.205.69])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 724221001B08;
 Tue, 13 Aug 2019 16:56:20 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 13 Aug 2019 17:56:07 +0100
Message-Id: <20190813165608.32249-3-fziglio@redhat.com>
In-Reply-To: <20190813165608.32249-1-fziglio@redhat.com>
References: <20190813165608.32249-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 13 Aug 2019 16:56:22 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-common 3/4] codegen: Exit with error on
 error generating C structures
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

VGhpcyB3YXMgc29tZSBsZWZ0LW92ZXIgZHVyaW5nIGRldmVsb3BtZW50IG9mIEMgc3RydWN0dXJl
CmdlbmVyYXRpb25zICh0aGUgc2luZ2xlIHN0cnVjdHVyZSBnZW5lcmF0aW9uIHdhcyBza2lwcGVk
KS4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgot
LS0KIHNwaWNlX2NvZGVnZW4ucHkgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQoKZGlmZiAtLWdpdCBhL3NwaWNlX2NvZGVnZW4ucHkgYi9zcGljZV9jb2RlZ2VuLnB5CmluZGV4
IDA1MzJkNmYuLmQzYTFiZjUgMTAwNzU1Ci0tLSBhL3NwaWNlX2NvZGVnZW4ucHkKKysrIGIvc3Bp
Y2VfY29kZWdlbi5weQpAQCAtMjgzLDYgKzI4Myw3IEBAIGN1cnJlbnQ6CiAgICAgICAgIHByaW50
ID4+IHN5cy5zdGRlcnIsICd0eXBlICVzJyAlIHQKICAgICAgICAgcHJpbnQgPj4gc3lzLnN0ZGVy
ciwgd3JpdGVyLmdldHZhbHVlKCkKICAgICAgICAgdHJhY2ViYWNrLnByaW50X2V4YyhzeXMuc3Rk
ZXJyKQorICAgICAgICBzeXMuZXhpdCgxKQogCiBkZWYgZ2VuZXJhdGVfZGVjbGFyYXRpb25zKCk6
CiAgICAgd3JpdGVyID0gY29kZWdlbi5Db2RlV3JpdGVyKCkKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
