Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCB2216FB
	for <lists+spice-devel@lfdr.de>; Fri, 17 May 2019 12:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191A7898D9;
	Fri, 17 May 2019 10:34:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B9B898D9
 for <spice-devel@lists.freedesktop.org>; Fri, 17 May 2019 10:34:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 67CCC30C543C
 for <spice-devel@lists.freedesktop.org>; Fri, 17 May 2019 10:34:54 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.9])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4DDA05D707;
 Fri, 17 May 2019 10:34:53 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Fri, 17 May 2019 11:34:49 +0100
Message-Id: <20190517103449.21697-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Fri, 17 May 2019 10:34:54 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] ci: Test we can create a no dirty
 package
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

U2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQog
LmdpdGxhYi1jaS55bWwgfCAxNCArKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE0IGlu
c2VydGlvbnMoKykKCkl0IHdhcyBub3QgdGhhdCBlYXN5IHRvIHVuZGVyc3RhbmQgaG93LgpNYXli
ZSB3ZSBjb3VsZCBqdXN0IGNoZWNrIGNvbmZpZ3VyZSBWRVJTSU9OIChmaXJzdCBncmVwKS4KTWF5
YmUgd291bGQgYWxzbyBtYWtlIHNlbnNlIChtYXliZSBPVCkgdG8gaW5zdGFsbCBjY2FjaGUgYXMK
d2UgZG8gZGlmZmVyZW50IGJ1aWxkIG9mIHRoZSBzYW1lIGNvZGUgaW4gdGhlIHNhbWUgam9iLgoK
ZGlmZiAtLWdpdCBhLy5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1jaS55bWwKaW5kZXggNzc2NjUz
OWUuLmE2Y2IyY2RhIDEwMDY0NAotLS0gYS8uZ2l0bGFiLWNpLnltbAorKysgYi8uZ2l0bGFiLWNp
LnltbApAQCAtMTIsNiArMTIsNyBAQCB2YXJpYWJsZXM6CiAgICAgICAgICAgICAgICBwb2xraXQt
ZGV2ZWwgdmFsYSBsejQtZGV2ZWwgb3B1cy1kZXZlbCBwaXhtYW4tZGV2ZWwKICAgICAgICAgICAg
ICAgIGxpYmNhY2FyZC1kZXZlbCBjZWx0MDUxLWRldmVsIGxpYnBob2Rhdi1kZXZlbCB1c2J1dGls
cwogICAgICAgICAgICAgICAgdXNicmVkaXItZGV2ZWwgbGlidXNieC1kZXZlbCBsaWJzb3VwLWRl
dmVsIGpzb24tZ2xpYi1kZXZlbAorICAgICAgICAgICAgICAgYnppcDIKIAogICBERVBTX01JTkdX
OiBtaW5ndzY0LWdjYyBtaW5ndzY0LXBrZy1jb25maWcgbWluZ3c2NC1waXhtYW4gbWluZ3c2NC1v
cGVuc3NsCiAgICAgICAgICAgICAgIG1pbmd3NjQtZ3RrMyBtaW5ndzY0LWpzb24tZ2xpYiBtaW5n
dzY0LW9wdXMKQEAgLTM5LDYgKzQwLDE5IEBAIGZlZG9yYS1hdXRvdG9vbHM6CiAgICAgLSBtYWtl
IC1qNAogICAgIC0gbWFrZSBjaGVjawogICAgIC0gY2QgLi4KKyAgICAjIFJ1biBkaXN0LCBjaGVj
ayB3ZSBkb24ndCBoYXZlIC1kaXJ0eSBpbiB0aGUgYnVpbGQKKyAgICAtIGdpdCBjbGVhbiAteGZk
CisgICAgLSBnaXQgc3VibW9kdWxlIGZvcmVhY2ggLS1yZWN1cnNpdmUgZ2l0IGNsZWFuIC14ZmQK
KyAgICAtIGdpdCByZXNldCAtLWhhcmQgSEVBRAorICAgIC0gLi9hdXRvZ2VuLnNoIC0tZGlzYWJs
ZS1kZXBlbmRlbmN5LXRyYWNraW5nIC0tZW5hYmxlLWNlbHQwNTEKKyAgICAtIG1ha2UgZ2l0aWdu
b3JlCisgICAgLSAoY2Qgc3VicHJvamVjdHMvc3BpY2UtY29tbW9uICYmIG1ha2UgZ2l0aWdub3Jl
KQorICAgIC0gLi9hdXRvZ2VuLnNoIC0tZGlzYWJsZS1kZXBlbmRlbmN5LXRyYWNraW5nIC0tZW5h
YmxlLWNlbHQwNTEKKyAgICAtIGlmIGdyZXAgLXEgJ1ZFUlNJT049LiotZGlydHknIGNvbmZpZ3Vy
ZTsgdGhlbiBlY2hvICdWZXJzaW9uIGlzIGRpcnR5ISc7IGZhbHNlOyBmaQorICAgIC0gbWFrZSAt
ajQKKyAgICAtIG1ha2UgZGlzdAorICAgIC0gdGVzdCAtZSBzcGljZS1ndGstKi50YXIuYnoyCisg
ICAgLSB0ZXN0IFwhIC1lIHNwaWNlLWd0ay0qLWRpcnR5LnRhci5iejIKICAgICAjIFJ1biB3aXRo
b3V0IGZlYXR1cmVzCiAgICAgLSBnaXQgY2xlYW4gLXhmZAogICAgIC0gZ2l0IHN1Ym1vZHVsZSBm
b3JlYWNoIC0tcmVjdXJzaXZlIGdpdCBjbGVhbiAteGZkCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
