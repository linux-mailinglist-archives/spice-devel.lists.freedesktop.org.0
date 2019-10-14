Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D96BD5EAA
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 11:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E0A6E1B3;
	Mon, 14 Oct 2019 09:22:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8AC6E1A8
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E907A3082B4B
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 09:22:22 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 047A560A35;
 Mon, 14 Oct 2019 09:22:21 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:22:10 +0100
Message-Id: <20191014092217.24405-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Mon, 14 Oct 2019 09:22:22 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 0/7] Thread and Smartcard
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
Cc: cfergeau@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgc2hvdWxkIGZpbmlzaCB0aGUgU21hcnRjYXJkIGNoYW5nZXMuCkkgc3RpbGwg
aGFkIGEgc3VidGVzdCBmb3IgU21hcnRjYXJkIGJ1dCBpdCB3YXMgbm90IHdvcmtpbmcgZHVlCnRv
IGEgc21hbGwgaXNzdWUgaW4gUmVkQ2hhbm5lbENsaWVudC4KSW4gb3JkZXIgdG8gZml4IHRoYXQg
aXNzdWUgSSB1c2VkIGFuIG9sZCBzZXJpZXMgd2hpY2ggd2FzIG5vdAptZXJnZWQgd2hpY2ggd2Fz
IGZpeGluZyBzb21lIG1pbm9yIGlzc3VlcyBvbiBSZWRDbGllbnQuCgpCZXNpZGUgcmVtb3Zpbmcg
bWlub3IgaXNzdWVzIHRoZSBjaGFuZ2VzIHdpbGwgYWxsb3dzIHRoZQpjbGllbnQgdG8gY29ubmVj
dCB0byBjbG9zZWQgY2hhbm5lbHMuCgpGcmVkaWFubyBaaWdsaW8gKDcpOgogIHNtYXJ0LWNoYW5u
ZWwtY2xpZW50OiBSZW1vdmUgc3BpY2VjIGNsaWVudCByZWZlcmVuY2UgZnJvbSBjb21tZW50CiAg
cmVkLWNsaWVudDogUHJvdGVjdCBjb25jdXJyZW50IGxpc3QgYWNjZXNzZXMKICByZWQtY2xpZW50
OiBBdm9pZCBzdGFsZSBjaGFubmVsIGNsaWVudCBhZnRlciBkaXNjb25uZWN0aW9uCiAgcmVkLWNs
aWVudDogTWFrZSBzdXJlIE1haW5DaGFubmVsQ2xpZW50IGlzIGZyZWVkIGFzIGxhc3QKICByZWQt
Y2xpZW50OiBBdXRvbWF0aWNhbGx5IHNldCBNYWluQ2hhbm5lbENsaWVudAogIHRlc3Qtc21hcnRj
YXJkOiBUZXN0IGludmFsaWQgcmVhZGVyIGNsb3NlcyB0aGUgY2hhbm5lbAogIHJlZC1jaGFubmVs
LWNsaWVudDogUmV1c2UgcmVkX2NoYW5uZWxfY2xpZW50X3NodXRkb3duCgogc2VydmVyL2RjYy5j
ICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKysKIHNlcnZlci9yZWQtY2hhbm5lbC1jbGllbnQu
YyAgICAgICB8IDE4ICsrKysrKysrLS0tLQogc2VydmVyL3JlZC1jbGllbnQuYyAgICAgICAgICAg
ICAgIHwgNDggKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQogc2VydmVyL3JlZC1jbGll
bnQuaCAgICAgICAgICAgICAgIHwgIDIgLS0KIHNlcnZlci9yZWRzLmMgICAgICAgICAgICAgICAg
ICAgICB8ICAxIC0KIHNlcnZlci9zbWFydGNhcmQtY2hhbm5lbC1jbGllbnQuYyB8ICAzICstCiBz
ZXJ2ZXIvdGVzdHMvdGVzdC1jaGFubmVsLmMgICAgICAgfCAgMSAtCiBzZXJ2ZXIvdGVzdHMvdGVz
dC1zbWFydGNhcmQuYyAgICAgfCAzMCArKysrKysrKysrKysrKystLS0tCiA4IGZpbGVzIGNoYW5n
ZWQsIDc4IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
