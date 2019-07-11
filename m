Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF51B6577E
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 15:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 769A76E21F;
	Thu, 11 Jul 2019 13:00:58 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E796C6E21F
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:00:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 905C03083394
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 13:00:57 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BAB4B5C221;
 Thu, 11 Jul 2019 13:00:56 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 11 Jul 2019 14:00:48 +0100
Message-Id: <20190711130054.17867-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 11 Jul 2019 13:00:57 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 1/7] usb-device-manager: Put all
 windows field in a single #if section
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

VGhpcyByZWR1Y2VzIGNvbmRpdGlvbmFsIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBa
aWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KLS0tCiBzcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMg
fCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9zcmMvdXNiLWRldmljZS1tYW5hZ2VyLmMgYi9zcmMvdXNiLWRldmlj
ZS1tYW5hZ2VyLmMKaW5kZXggODYwZjVjMTkuLjQ3OTU1OGY0IDEwMDY0NAotLS0gYS9zcmMvdXNi
LWRldmljZS1tYW5hZ2VyLmMKKysrIGIvc3JjL3VzYi1kZXZpY2UtbWFuYWdlci5jCkBAIC0xMDMs
MTMgKzEwMywxMSBAQCBzdHJ1Y3QgX1NwaWNlVXNiRGV2aWNlTWFuYWdlclByaXZhdGUgewogICAg
IGludCByZWRpcmVjdF9vbl9jb25uZWN0X3J1bGVzX2NvdW50OwogI2lmZGVmIEdfT1NfV0lOMzIK
ICAgICBHVWRldkNsaWVudCAqdWRldjsKKyAgICB1c2Jka19hcGlfd3JhcHBlciAqdXNiZGtfYXBp
OworICAgIEhBTkRMRSB1c2Jka19oaWRlcl9oYW5kbGU7CiAjZWxzZQogICAgIGdib29sZWFuIHJl
ZGlyZWN0aW5nOyAvKiBIYW5kbGVkIGJ5IEdVZGV2Q2xpZW50IGluIHRoZSBndWRldiBjYXNlICov
CiAjZW5kaWYKLSNpZmRlZiBHX09TX1dJTjMyCi0gICAgdXNiZGtfYXBpX3dyYXBwZXIgICAgICp1
c2Jka19hcGk7Ci0gICAgSEFORExFICAgICAgICAgICAgICAgICB1c2Jka19oaWRlcl9oYW5kbGU7
Ci0jZW5kaWYKICNlbmRpZgogICAgIEdQdHJBcnJheSAqZGV2aWNlczsKICAgICBHUHRyQXJyYXkg
KmNoYW5uZWxzOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vc3BpY2UtZGV2ZWw=
