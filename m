Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33657BCABE
	for <lists+spice-devel@lfdr.de>; Tue, 24 Sep 2019 17:00:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7CF89CD3;
	Tue, 24 Sep 2019 15:00:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB91389CD3
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 15:00:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 556073086211
 for <spice-devel@lists.freedesktop.org>; Tue, 24 Sep 2019 15:00:38 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B7DD5DD6D;
 Tue, 24 Sep 2019 15:00:31 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 16:00:27 +0100
Message-Id: <20190924150027.28954-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 24 Sep 2019 15:00:38 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server] spicevmc: Fix g_object_new call
 for 32 bit machines
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

InNlbGYtdG9rZW5zIiBwcm9wZXJ0eSBpcyA2NCBiaXQgYW5kIG11c3QgYmUgcGFzc2VkIGFzIDY0
IGJpdCBvbgozMiBiaXQgbWFjaGluZXMgdG8gYXZvaWQgbWVtb3J5IGNvcnJ1cHRpb25zLgpUaGlz
IHdhcyBpbnRyb2R1Y2VkIGJ5IDAxZGUzYjg5MjIgKCJzcGljZXZtYzogQXZvaWRzIERvUyBpZgpn
dWVzdCBkZXZpY2UgaXMgbm90IGFibGUgdG8gZ2V0IGRhdGEgZmFzdGVyIGVub3VnaCIpLCBkZXRl
Y3RlZCBieSBDSS4KCkl0IGNhdXNlZCB0aGlzIGVycm9yIChzcGxpdCBpbnRvIG11bHRpcGxlIGxp
bmVzKToKCiAgKC4vdGVzdC1sZWFrczoxNTg3OSk6IEdMaWItR09iamVjdC1DUklUSUNBTCAqKjog
MTQ6MDM6NTkuNjUwOiBcCiAgZ19vYmplY3RfbmV3X2lzX3ZhbGlkX3Byb3BlcnR5OiBvYmplY3Qg
Y2xhc3MgJ1JlZENoYXJEZXZpY2VTcGljZVZtYycgaGFzIFwKICBubyBwcm9wZXJ0eSBuYW1lZCAn
XHhiMC9AXHhmM1x1MDAwMScKClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xp
b0ByZWRoYXQuY29tPgotLS0KIHNlcnZlci9zcGljZXZtYy5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2VydmVyL3Nw
aWNldm1jLmMgYi9zZXJ2ZXIvc3BpY2V2bWMuYwppbmRleCBmMDFkNTQxNi4uMzI1YzNmZTEgMTAw
NjQ0Ci0tLSBhL3NlcnZlci9zcGljZXZtYy5jCisrKyBiL3NlcnZlci9zcGljZXZtYy5jCkBAIC05
NDIsNyArOTQyLDcgQEAgcmVkX2NoYXJfZGV2aWNlX3NwaWNldm1jX25ldyhTcGljZUNoYXJEZXZp
Y2VJbnN0YW5jZSAqc2luLAogICAgICAgICAgICAgICAgICAgICAgICAgInNpbiIsIHNpbiwKICAg
ICAgICAgICAgICAgICAgICAgICAgICJzcGljZS1zZXJ2ZXIiLCByZWRzLAogICAgICAgICAgICAg
ICAgICAgICAgICAgImNsaWVudC10b2tlbnMtaW50ZXJ2YWwiLCAwVUxMLAotICAgICAgICAgICAg
ICAgICAgICAgICAgInNlbGYtdG9rZW5zIiwgMTI4LCAvLyBsaW1pdCBudW1iZXIgb2YgbWVzc2Fn
ZXMgc2VudCB0byBkZXZpY2UKKyAgICAgICAgICAgICAgICAgICAgICAgICJzZWxmLXRva2VucyIs
IFVJTlQ2NF9DKDEyOCksIC8vIGxpbWl0IG51bWJlciBvZiBtZXNzYWdlcyBzZW50IHRvIGRldmlj
ZQogICAgICAgICAgICAgICAgICAgICAgICAgImNoYW5uZWwiLCBjaGFubmVsLAogICAgICAgICAg
ICAgICAgICAgICAgICAgTlVMTCk7CiB9Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
