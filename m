Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE0A713DA
	for <lists+spice-devel@lfdr.de>; Tue, 23 Jul 2019 10:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79E86E245;
	Tue, 23 Jul 2019 08:22:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ED466E243
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:22:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CFEE030C7128
 for <spice-devel@lists.freedesktop.org>; Tue, 23 Jul 2019 08:22:35 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 12C495D9C5;
 Tue, 23 Jul 2019 08:22:34 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 23 Jul 2019 09:22:28 +0100
Message-Id: <20190723082230.10381-2-fziglio@redhat.com>
In-Reply-To: <20190723082230.10381-1-fziglio@redhat.com>
References: <20190723082230.10381-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 23 Jul 2019 08:22:35 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/2] replay: Remove some leak and
 a FIXME
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

VGhyZWFkcyBhcmUgam9pbmVkIGJ5IHNwaWNlX3NlcnZlcl9kZXN0cm95LCBqdXN0IG5lZWQgdG8g
cmVsZWFzZQpsYXN0IHJlc291cmNlcy4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8
ZnppZ2xpb0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci90ZXN0cy9yZXBsYXkuYyB8IDUgKystLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvc2VydmVyL3Rlc3RzL3JlcGxheS5jIGIvc2VydmVyL3Rlc3RzL3JlcGxheS5jCmluZGV4
IDk5MmYyNmQ2My4uNDRmMjQ0NDU3IDEwMDY0NAotLS0gYS9zZXJ2ZXIvdGVzdHMvcmVwbGF5LmMK
KysrIGIvc2VydmVyL3Rlc3RzL3JlcGxheS5jCkBAIC00ODEsOSArNDgxLDggQEAgaW50IG1haW4o
aW50IGFyZ2MsIGNoYXIgKiphcmd2KQogICAgIGZyZWVfcXVldWUoY3Vyc29yX3F1ZXVlKTsKICAg
ICBlbmRfcmVwbGF5KCk7CiAKLSAgICAvKiBGSVhNRTogdGhlcmUgc2hvdWxkIGJlIGEgd2F5IHRv
IGpvaW4gc2VydmVyIHRocmVhZHMgYmVmb3JlOgotICAgICAqIGdfbWFpbl9sb29wX3VucmVmKGxv
b3ApOwotICAgICAqLworICAgIGdfbWFpbl9sb29wX3VucmVmKGxvb3ApOworICAgIGJhc2ljX2V2
ZW50X2xvb3BfZGVzdHJveSgpOwogCiAgICAgcmV0dXJuIDA7CiB9Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
