Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDBE55420
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE496E183;
	Tue, 25 Jun 2019 16:12:07 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 943FD6E179
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 40F017FDCA
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:12:04 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3334E5D70D;
 Tue, 25 Jun 2019 16:12:03 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:35 +0100
Message-Id: <20190625161147.25211-12-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 25 Jun 2019 16:12:04 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 11/23] websocket: Better variable
 types
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

InR5cGUiIGlzIGp1c3QgOCBiaXQuCiJmcmFtZV9yZWFkeSIgYW5kICJtYXNrZWQiIGFzIGJvb2xl
YW5zLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+
Ci0tLQogc2VydmVyL3dlYnNvY2tldC5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3dlYnNvY2tl
dC5jIGIvc2VydmVyL3dlYnNvY2tldC5jCmluZGV4IDlhOTQwMDM3NS4uMzg0OTZmYjVhIDEwMDY0
NAotLS0gYS9zZXJ2ZXIvd2Vic29ja2V0LmMKKysrIGIvc2VydmVyL3dlYnNvY2tldC5jCkBAIC02
OCwxMSArNjgsMTEgQEAKICNkZWZpbmUgV0VCU09DS0VUX01BWF9IRUFERVJfU0laRSAoMSArIDkg
KyA0KQogCiB0eXBlZGVmIHN0cnVjdCB7Ci0gICAgaW50IHR5cGU7Ci0gICAgaW50IG1hc2tlZDsK
KyAgICB1aW50OF90IHR5cGU7CiAgICAgdWludDhfdCBoZWFkZXJbV0VCU09DS0VUX01BWF9IRUFE
RVJfU0laRV07CiAgICAgaW50IGhlYWRlcl9wb3M7Ci0gICAgaW50IGZyYW1lX3JlYWR5OjE7Cisg
ICAgYm9vbCBmcmFtZV9yZWFkeToxOworICAgIGJvb2wgbWFza2VkOjE7CiAgICAgdWludDhfdCBt
YXNrWzRdOwogICAgIHVpbnQ2NF90IHJlbGF5ZWQ7CiAgICAgdWludDY0X3QgZXhwZWN0ZWRfbGVu
OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
