Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2323ED0000
	for <lists+spice-devel@lfdr.de>; Tue,  8 Oct 2019 19:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26EFE6E881;
	Tue,  8 Oct 2019 17:39:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 951196E881
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3F25110C094B
 for <spice-devel@lists.freedesktop.org>; Tue,  8 Oct 2019 17:39:31 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 27BE619C7F;
 Tue,  8 Oct 2019 17:39:29 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue,  8 Oct 2019 18:39:18 +0100
Message-Id: <20191008173924.12388-2-fziglio@redhat.com>
In-Reply-To: <20191008173924.12388-1-fziglio@redhat.com>
References: <20191008173924.12388-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Tue, 08 Oct 2019 17:39:31 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server v2 1/7] smartcard-channel-client:
 Remove properties code
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

Tm90IHVzZWQKClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQu
Y29tPgotLS0KIHNlcnZlci9zbWFydGNhcmQtY2hhbm5lbC1jbGllbnQuYyB8IDI2IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjYgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvc2VydmVyL3NtYXJ0Y2FyZC1jaGFubmVsLWNsaWVudC5jIGIvc2VydmVyL3NtYXJ0
Y2FyZC1jaGFubmVsLWNsaWVudC5jCmluZGV4IGY3MWI2NTIzOC4uZDQ3YjQ0MmU0IDEwMDY0NAot
LS0gYS9zZXJ2ZXIvc21hcnRjYXJkLWNoYW5uZWwtY2xpZW50LmMKKysrIGIvc2VydmVyL3NtYXJ0
Y2FyZC1jaGFubmVsLWNsaWVudC5jCkBAIC00NywzMCArNDcsNiBAQCBzbWFydGNhcmRfY2hhbm5l
bF9jbGllbnRfcmVsZWFzZV9tc2dfcmN2X2J1ZihSZWRDaGFubmVsQ2xpZW50ICpyY2MsIHVpbnQx
Nl90IHR5cAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdWlu
dDMyX3Qgc2l6ZSwgdWludDhfdCAqbXNnKTsKIHN0YXRpYyB2b2lkIHNtYXJ0Y2FyZF9jaGFubmVs
X2NsaWVudF9vbl9kaXNjb25uZWN0KFJlZENoYW5uZWxDbGllbnQgKnJjYyk7CiAKLXN0YXRpYyB2
b2lkIHNtYXJ0X2NhcmRfY2hhbm5lbF9jbGllbnRfZ2V0X3Byb3BlcnR5KEdPYmplY3QgKm9iamVj
dCwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGd1
aW50IHByb3BlcnR5X2lkLAotICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgR1ZhbHVlICp2YWx1ZSwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIEdQYXJhbVNwZWMgKnBzcGVjKQotewotICAgIHN3aXRjaCAo
cHJvcGVydHlfaWQpCi0gICAgewotICAgICAgICBkZWZhdWx0OgotICAgICAgICAgICAgR19PQkpF
Q1RfV0FSTl9JTlZBTElEX1BST1BFUlRZX0lEKG9iamVjdCwgcHJvcGVydHlfaWQsIHBzcGVjKTsK
LSAgICB9Ci19Ci0KLXN0YXRpYyB2b2lkIHNtYXJ0X2NhcmRfY2hhbm5lbF9jbGllbnRfc2V0X3By
b3BlcnR5KEdPYmplY3QgKm9iamVjdCwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGd1aW50IHByb3BlcnR5X2lkLAotICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgR1ZhbHVlICp2YWx1ZSwKLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdQYXJhbVNw
ZWMgKnBzcGVjKQotewotICAgIHN3aXRjaCAocHJvcGVydHlfaWQpCi0gICAgewotICAgICAgICBk
ZWZhdWx0OgotICAgICAgICAgICAgR19PQkpFQ1RfV0FSTl9JTlZBTElEX1BST1BFUlRZX0lEKG9i
amVjdCwgcHJvcGVydHlfaWQsIHBzcGVjKTsKLSAgICB9Ci19Ci0KIHN0YXRpYyB2b2lkIHNtYXJ0
X2NhcmRfY2hhbm5lbF9jbGllbnRfZmluYWxpemUoR09iamVjdCAqb2JqZWN0KQogewogICAgIFNt
YXJ0Q2FyZENoYW5uZWxDbGllbnQgKnNlbGYgPSBTTUFSVENBUkRfQ0hBTk5FTF9DTElFTlQob2Jq
ZWN0KTsKQEAgLTkwLDggKzY2LDYgQEAgc3RhdGljIHZvaWQgc21hcnRfY2FyZF9jaGFubmVsX2Ns
aWVudF9jbGFzc19pbml0KFNtYXJ0Q2FyZENoYW5uZWxDbGllbnRDbGFzcyAqa2wKICAgICBjbGll
bnRfY2xhc3MtPnJlbGVhc2VfcmVjdl9idWYgPSBzbWFydGNhcmRfY2hhbm5lbF9jbGllbnRfcmVs
ZWFzZV9tc2dfcmN2X2J1ZjsKICAgICBjbGllbnRfY2xhc3MtPm9uX2Rpc2Nvbm5lY3QgPSBzbWFy
dGNhcmRfY2hhbm5lbF9jbGllbnRfb25fZGlzY29ubmVjdDsKIAotICAgIG9iamVjdF9jbGFzcy0+
Z2V0X3Byb3BlcnR5ID0gc21hcnRfY2FyZF9jaGFubmVsX2NsaWVudF9nZXRfcHJvcGVydHk7Ci0g
ICAgb2JqZWN0X2NsYXNzLT5zZXRfcHJvcGVydHkgPSBzbWFydF9jYXJkX2NoYW5uZWxfY2xpZW50
X3NldF9wcm9wZXJ0eTsKICAgICBvYmplY3RfY2xhc3MtPmZpbmFsaXplID0gc21hcnRfY2FyZF9j
aGFubmVsX2NsaWVudF9maW5hbGl6ZTsKIH0KIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
