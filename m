Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A32C89E401
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129ED898F0;
	Tue, 27 Aug 2019 09:23:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C0D898F0
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D9E7CC058CA4
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:23:42 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 33E4B5D9CC;
 Tue, 27 Aug 2019 09:23:40 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:34 +0100
Message-Id: <20190827092246.10276-18-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 27 Aug 2019 09:23:42 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 17/29] fixup! usb-redir: enable
 redirection of emulated CD drive
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

TWlub3Igc3R5bGVzLCBzcGFjZXMsIGRvdWJsZSBlbmQgb2Ygc3RhdGVtZW50LgotLS0KIHNyYy91
c2ItZGV2aWNlLWNkLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3VzYi1kZXZpY2UtY2QuYyBiL3NyYy91
c2ItZGV2aWNlLWNkLmMKaW5kZXggMjIzNDI4OWMuLjJmNDIxYzQyIDEwMDY0NAotLS0gYS9zcmMv
dXNiLWRldmljZS1jZC5jCisrKyBiL3NyYy91c2ItZGV2aWNlLWNkLmMKQEAgLTg2LDcgKzg2LDcg
QEAgc3RydWN0IFNwaWNlVXNiRW11bGF0ZWREZXZpY2UgewogICAgIHN0cnVjdCBCdWZmZXJlZEJ1
bGtSZWFkIHJlYWRfYnVsa1tNQVhfQlVMS19JTl9SRVFVRVNUU107CiAgICAgLyogYWNjb3JkaW5n
IHRvIFVTQiBNU0Mgc3BlYyAqLwogICAgIHVpbnQxNl90IHNlcmlhbFsxMl07Ci0gICAgdWludDhf
dCAgbWF4X2x1bl9pbmRleDsKKyAgICB1aW50OF90IG1heF9sdW5faW5kZXg7CiB9OwogCiB0eXBl
ZGVmIHN0cnVjdCBTcGljZVVzYkVtdWxhdGVkRGV2aWNlIFVzYkNkOwpAQCAtNTMwLDcgKzUzMCw3
IEBAIHN0YXRpYyB2b2lkIHVzYl9jZF9jb250cm9sX3JlcXVlc3QoVXNiQ2QgKmRldmljZSwKICAg
ICAgICAgICAgIC8vIHJldHVybmluZyBvbmUgYnl0ZQogICAgICAgICAgICAgaWYgKGgtPmxlbmd0
aCkgewogICAgICAgICAgICAgICAgIGgtPmxlbmd0aCA9IDE7Ci0gICAgICAgICAgICAgICAgaC0+
c3RhdHVzID0gdXNiX3JlZGlyX3N1Y2Nlc3M7OworICAgICAgICAgICAgICAgIGgtPnN0YXR1cyA9
IHVzYl9yZWRpcl9zdWNjZXNzOwogICAgICAgICAgICAgICAgICpidWZmZXIgPSAmZGV2aWNlLT5t
YXhfbHVuX2luZGV4OwogICAgICAgICAgICAgfQogICAgICAgICAgICAgYnJlYWs7Ci0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
