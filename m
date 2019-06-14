Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B800546565
	for <lists+spice-devel@lfdr.de>; Fri, 14 Jun 2019 19:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 694DF8999C;
	Fri, 14 Jun 2019 17:09:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667B18999C
 for <spice-devel@lists.freedesktop.org>; Fri, 14 Jun 2019 17:09:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DC370308427E;
 Fri, 14 Jun 2019 17:09:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D1ED85D9E2;
 Fri, 14 Jun 2019 17:09:17 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9309206D1;
 Fri, 14 Jun 2019 17:09:17 +0000 (UTC)
Date: Fri, 14 Jun 2019 13:09:16 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <87006434.22885842.1560532156244.JavaMail.zimbra@redhat.com>
In-Reply-To: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
References: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.58, 10.4.195.20]
Thread-Topic: gstreamer: Avoid direct access to GQueue fields
Thread-Index: pQFSX0fGh4CNqVDDrjuD8GUBKBX6FQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Fri, 14 Jun 2019 17:09:17 +0000 (UTC)
Subject: Re: [Spice-devel] [client 1/5] gstreamer: Avoid direct access to
 GQueue fields
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZlcnMu
Y29tPgoKQ29uc2lkZXJpbmcgdGhhdCB0aGUgZmllbGQgaXMgcHVibGljIGFuZCB0aGF0IGNvZGUg
d2lsbCBnZXQgCnNsb3dlciBhbmQgYmlnZ2VyIGF0IGxlYXN0IHdvdWxkIGJlIGdvb2QgdG8gZGVz
Y3JpYmUgdGhlIHJlYXNvbgp3aHkgeW91IGNvbnNpZGVyIGl0IGJldHRlci4KCk9UOiBJIGRvbid0
IHVuZGVyc3RhbmQgd2h5IHRoZXkgZGlkbid0IGRlZmluZSBnX3F1ZXVlX2dldF9sZW5ndGgKYXMg
YW4gaW5saW5lIG9yIGEgbWFjcm8uLi4KCj4gLS0tCj4gIHNyYy9jaGFubmVsLWRpc3BsYXktZ3N0
LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jIGIvc3JjL2NoYW5u
ZWwtZGlzcGxheS1nc3QuYwo+IGluZGV4IDkxZWNlMGZhLi5jNzU2ZjkxNiAxMDA2NDQKPiAtLS0g
YS9zcmMvY2hhbm5lbC1kaXNwbGF5LWdzdC5jCj4gKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1n
c3QuYwo+IEBAIC0yNzgsNyArMjc4LDcgQEAgc3RhdGljIFNwaWNlR3N0RnJhbWUgKmdldF9kZWNv
ZGVkX2ZyYW1lKFNwaWNlR3N0RGVjb2Rlcgo+ICpkZWNvZGVyLCBHc3RCdWZmZXIgKmJ1Zgo+ICAg
ICAgICAgICAgICAgICAiZnJhbWUgbW1fdGltZSAldSBzaXplICV1IGNyZWF0aW9uIHRpbWUgJSIg
UFJJZDY0Cj4gICAgICAgICAgICAgICAgICIgZGVjb2RlZCB0aW1lICUiIFBSSWQ2NCAiIHF1ZXVl
ICV1IiwKPiAgICAgICAgICAgICAgICAgZnJhbWUtPm1tX3RpbWUsIGZyYW1lLT5zaXplLCBmcmFt
ZS0+Y3JlYXRpb25fdGltZSwKPiAtICAgICAgICAgICAgICAgZHVyYXRpb24sIGRlY29kZXItPmRl
Y29kaW5nX3F1ZXVlLT5sZW5ndGgpOwo+ICsgICAgICAgICAgICAgICBkdXJhdGlvbiwgZ19xdWV1
ZV9nZXRfbGVuZ3RoKGRlY29kZXItPmRlY29kaW5nX3F1ZXVlKSk7Cj4gICAgICB9Cj4gICAgICBy
ZXR1cm4gZ3N0ZnJhbWU7Cj4gIH0KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
