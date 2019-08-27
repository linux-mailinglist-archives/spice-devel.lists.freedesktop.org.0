Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ADE9E40C
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 11:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAAA89994;
	Tue, 27 Aug 2019 09:24:12 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BF689949
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:24:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2888D3084242
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 09:24:11 +0000 (UTC)
Received: from fziglio.remote.csb (ovpn-204-114.brq.redhat.com [10.40.204.114])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3BB195DD64;
 Tue, 27 Aug 2019 09:24:07 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 27 Aug 2019 10:22:45 +0100
Message-Id: <20190827092246.10276-29-fziglio@redhat.com>
In-Reply-To: <20190827092246.10276-1-fziglio@redhat.com>
References: <20190827092246.10276-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 27 Aug 2019 09:24:11 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk v4 28/29] test-cd-emu: Make sure we
 can call spice_usb_backend_channel_flush_writes
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

Q3VycmVudGx5IHdlIGNhbGwgdGhpcyBmdW5jdGlvbiB3aGVuIHRoZSBTUElDRSBjaGFubmVsIGlz
IHVwCmhvd2V2ZXIgdGhpcyBmdW5jdGlvbiBzaG91bGQgY29udGludWUgdG8gd29yayBhcyBpbiB0
aGVvcnkKdGhlIGNoYW5uZWwgY291bGQgYXZvaWQgdG8gaGFuZGxlIHRoZSBtZXNzYWdlIGFuZCBz
dG9wIHRoZSBmbG93Cihmb3IgaW5zdGFuY2UgdG8gaW1wbGVtZW50IHNvbWUga2luZCBvZiBmbG93
IGxpbWl0YXRpb24pCmFuZCBzbyB3aWxsIG5lZWQgdG8gY2FsbCB0aGlzIGZ1bmN0aW9uIGFnYWlu
LgpUaGlzIHdhcyBmYWlsaW5nIGluIHRoZSBmaXJzdCBVU0IgZW11bGF0aW9uIGltcGxlbWVudGF0
aW9uCmNhdXNpbmcgYSBjcmFzaC4KClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8Znpp
Z2xpb0ByZWRoYXQuY29tPgotLS0KIHRlc3RzL2NkLWVtdS5jIHwgNCArKysrCiAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMvY2QtZW11LmMgYi90ZXN0
cy9jZC1lbXUuYwppbmRleCA4YmMzYTdlZC4uZGE2ZTNjM2YgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2Nk
LWVtdS5jCisrKyBiL3Rlc3RzL2NkLWVtdS5jCkBAIC0xNTEsNiArMTUxLDEwIEBAIHByaW50Zigi
TE9PUCAlZFxuIiwgbG9vcCk7CiAgICAgZ19hc3NlcnRfY21waW50KGhlbGxvc19zZW50LCA9PSwg
aGVsbG9zX2V4cGVjdGVkKTsKICAgICBnX2Fzc2VydF9jbXBpbnQobWVzc2FnZXNfc2VudCwgPj0s
IG1lc3NhZ2VzX2V4cGVjdGVkKTsKIAorICAgIHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfZmx1
c2hfd3JpdGVzKHVzYl9jaCk7CisgICAgZ19hc3NlcnRfY21waW50KGhlbGxvc19zZW50LCA9PSwg
aGVsbG9zX2V4cGVjdGVkKTsKKyAgICBnX2Fzc2VydF9jbXBpbnQobWVzc2FnZXNfc2VudCwgPj0s
IG1lc3NhZ2VzX2V4cGVjdGVkKTsKKwogICAgIC8vIHNlbmQgaGVsbG8gcmVwbHkKICAgICBpZiAo
bG9vcCA9PSAwKSB7CiAgICAgICAgIERBVEFfU1RBUlQKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBs
aXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
