Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0B6105ED
	for <lists+spice-devel@lfdr.de>; Wed,  1 May 2019 09:46:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEA98929D;
	Wed,  1 May 2019 07:46:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDD008929D
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 07:46:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 68242356E4
 for <spice-devel@lists.freedesktop.org>; Wed,  1 May 2019 07:46:41 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3A0EA1001DCD;
 Wed,  1 May 2019 07:46:39 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Wed,  1 May 2019 08:46:35 +0100
Message-Id: <20190501074635.19607-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Wed, 01 May 2019 07:46:41 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk] build: Add some missing check for
 headers
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

SGVhZGVycyBtYWNyb3MgKEhBVkVfKl9IKSBhcmUgZ3VhcmRpbmcgc29tZSBpbmNsdWRlIGluIHRo
ZSBjb2RlLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Ci0tLQogY29uZmlndXJlLmFjIHwgIDIgKy0KIG1lc29uLmJ1aWxkICB8IDEwICsrKysrKysr
LS0KIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2NvbmZpZ3VyZS5hYyBiL2NvbmZpZ3VyZS5hYwppbmRleCAwNjY2ZTJhOC4uNjE1
OTE2OTEgMTAwNjQ0Ci0tLSBhL2NvbmZpZ3VyZS5hYworKysgYi9jb25maWd1cmUuYWMKQEAgLTcx
LDcgKzcxLDcgQEAgZXNhYwogQUNfTVNHX1JFU1VMVChbJG9zX21hY10pCiBBTV9DT05ESVRJT05B
TChbT1NfTUFDXSxbdGVzdCAiJG9zX21hYyIgPSAieWVzIl0pCiAKLUFDX0NIRUNLX0hFQURFUlMo
W3N5cy9zb2NrZXQuaCBuZXRpbmV0L2luLmggYXJwYS9pbmV0LmhdKQorQUNfQ0hFQ0tfSEVBREVS
Uyhbc3lzL3NvY2tldC5oIHN5cy90eXBlcy5oIG5ldGluZXQvaW4uaCBhcnBhL2luZXQuaF0pCiBB
Q19DSEVDS19IRUFERVJTKFt0ZXJtaW9zLmhdKQogQUNfQ0hFQ0tfSEVBREVSUyhbZXBveHkvZWds
LmhdLAogICAgICAgICAgICAgICAgICBbaGF2ZV9lZ2w9eWVzXSwKZGlmZiAtLWdpdCBhL21lc29u
LmJ1aWxkIGIvbWVzb24uYnVpbGQKaW5kZXggZTBmYmE5MzAuLjhjNjI4OGYzIDEwMDY0NAotLS0g
YS9tZXNvbi5idWlsZAorKysgYi9tZXNvbi5idWlsZApAQCAtNDgsOCArNDgsMTQgQEAga2V5bWFw
Y3N2ID0gZmlsZXMoJ3N1YnByb2plY3RzL2tleWNvZGVtYXBkYi9kYXRhL2tleW1hcHMuY3N2JykK
ICMKICMgY2hlY2sgZm9yIHN5c3RlbSBoZWFkZXJzCiAjCi1oZWFkZXJzID0gWyd0ZXJtaW9zLmgn
LAotICAgICAgICAgICAnWDExL1hLQmxpYi5oJ10KK2hlYWRlcnMgPSBbCisgICd0ZXJtaW9zLmgn
LAorICAnWDExL1hLQmxpYi5oJywKKyAgJ3N5cy9zb2NrZXQuaCcsCisgICdzeXMvdHlwZXMuaCcs
CisgICduZXRpbmV0L2luLmgnLAorICAnYXJwYS9pbmV0LmgnLAorXQogCiBmb3JlYWNoIGhlYWRl
ciA6IGhlYWRlcnMKICAgaWYgY29tcGlsZXIuaGFzX2hlYWRlcihoZWFkZXIpCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
