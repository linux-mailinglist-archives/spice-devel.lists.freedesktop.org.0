Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E79CD49BD2
	for <lists+spice-devel@lfdr.de>; Tue, 18 Jun 2019 10:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7345389D1D;
	Tue, 18 Jun 2019 08:15:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBC0D89D1D
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 08:15:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 56C50369AC
 for <spice-devel@lists.freedesktop.org>; Tue, 18 Jun 2019 08:15:58 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-128.brq.redhat.com [10.40.204.128])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A12501001925;
 Tue, 18 Jun 2019 08:15:56 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 18 Jun 2019 09:15:50 +0100
Message-Id: <20190618081551.20585-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 18 Jun 2019 08:15:58 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] Replace some missing "latency" terms
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

VGhpcyBmb2xsb3dzIHVwIGNvbW1pdCA4ODdhZWRmZjQxYmRiODk4NDVlN2NiMzQ5NDU0YThkY2Ji
NTE1ZGI0CiJUaGUgdmlkZW8gbGF0ZW5jeSBpcyBpbiBmYWN0IGEgbWFyZ2luIi4KClNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNyYy9jaGFu
bmVsLWRpc3BsYXktcHJpdi5oIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLWRpc3BsYXktcHJp
di5oIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2LmgKaW5kZXggNDk1ZGY3YWMuLjE2YzEyYzZl
IDEwMDY0NAotLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaAorKysgYi9zcmMvY2hhbm5l
bC1kaXNwbGF5LXByaXYuaApAQCAtNjMsMTIgKzYzLDEyIEBAIHN0cnVjdCBWaWRlb0RlY29kZXIg
ewogICAgICAqCiAgICAgICogQGRlY29kZXI6ICAgVGhlIHZpZGVvIGRlY29kZXIuCiAgICAgICog
QGZyYW1lOiAgICAgVGhlIGNvbXByZXNzZWQgU3BpY2UgZnJhbWUuCi0gICAgICogQGxhdGVuY3k6
ICAgSG93IGxvbmcgaW4gbWlsbGlzZWNvbmRzIHVudGlsIHRoZSBmcmFtZSBzaG91bGQgYmUKKyAg
ICAgKiBAbWFyZ2luOiAgICBIb3cgbG9uZyBpbiBtaWxsaXNlY29uZHMgdW50aWwgdGhlIGZyYW1l
IHNob3VsZCBiZQogICAgICAqICAgICAgICAgICAgIGRpc3BsYXllZC4gTmVnYXRpdmUgdmFsdWVz
IG1lYW4gdGhlIGZyYW1lIGlzIGxhdGUuCiAgICAgICogQHJldHVybjogICAgRmFsc2UgaWYgdGhl
IGRlY29kZXIgY2FuIG5vIGxvbmdlciBkZWNvZGUgZnJhbWVzLAogICAgICAqICAgICAgICAgICAg
IFRydWUgb3RoZXJ3aXNlLgogICAgICAqLwotICAgIGdib29sZWFuICgqcXVldWVfZnJhbWUpKFZp
ZGVvRGVjb2RlciAqdmlkZW9fZGVjb2RlciwgU3BpY2VGcmFtZSAqZnJhbWUsIGludCBsYXRlbmN5
KTsKKyAgICBnYm9vbGVhbiAoKnF1ZXVlX2ZyYW1lKShWaWRlb0RlY29kZXIgKnZpZGVvX2RlY29k
ZXIsIFNwaWNlRnJhbWUgKmZyYW1lLCBpbnQgbWFyZ2luKTsKIAogICAgIC8qIFRoZSBmb3JtYXQg
b2YgdGhlIGVuY29kZWQgdmlkZW8uICovCiAgICAgaW50IGNvZGVjX3R5cGU7Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
