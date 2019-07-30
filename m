Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5EE7A795
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8DA6E4C9;
	Tue, 30 Jul 2019 12:04:43 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B3089237
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 120F430BD1BF
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:41 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2CD175D6B2;
 Tue, 30 Jul 2019 12:04:39 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:27 +0100
Message-Id: <20190730120331.17967-39-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 30 Jul 2019 12:04:41 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 40/44] fixup! usb-redir: add
 implementation of emulated CD device
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

VXNlIHByb3BlciB0eXBlIGZvciBVc2JDZEJ1bGtNc2REZXZpY2UgcG9pbnRlciwgbW9yZSB0eXBl
IHNhZmUuCi0tLQogc3JjL3VzYi1kZXZpY2UtY2QuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy91c2ItZGV2aWNl
LWNkLmMgYi9zcmMvdXNiLWRldmljZS1jZC5jCmluZGV4IGJhOGUxYmZmLi5jZGE2Y2EzZSAxMDA2
NDQKLS0tIGEvc3JjL3VzYi1kZXZpY2UtY2QuYworKysgYi9zcmMvdXNiLWRldmljZS1jZC5jCkBA
IC03OCw3ICs3OCw3IEBAIHN0cnVjdCBTcGljZVVzYkVtdWxhdGVkRGV2aWNlIHsKICAgICBTcGlj
ZVVzYkJhY2tlbmQgKmJhY2tlbmQ7CiAgICAgU3BpY2VVc2JCYWNrZW5kRGV2aWNlICpwYXJlbnQ7
CiAgICAgc3RydWN0IHVzYnJlZGlycGFyc2VyICpwYXJzZXI7Ci0gICAgdm9pZCAqIG1zYzsKKyAg
ICBVc2JDZEJ1bGtNc2REZXZpY2UqIG1zYzsKICAgICBTcGljZUNkTFUgdW5pdHNbTUFYX0xVTl9Q
RVJfREVWSUNFXTsKICAgICBnYm9vbGVhbiBsb2NrZWQ7CiAgICAgZ2Jvb2xlYW4gZGVsZXRlX29u
X2VqZWN0OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vc3BpY2UtZGV2ZWw=
