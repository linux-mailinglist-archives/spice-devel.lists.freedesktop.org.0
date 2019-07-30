Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB8B7A799
	for <lists+spice-devel@lfdr.de>; Tue, 30 Jul 2019 14:04:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 021786E4E6;
	Tue, 30 Jul 2019 12:04:47 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 732AD6E4FF
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1AB9A308C381
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Jul 2019 12:04:45 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.10])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2A08B5D6B2;
 Tue, 30 Jul 2019 12:04:43 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:03:30 +0100
Message-Id: <20190730120331.17967-42-fziglio@redhat.com>
In-Reply-To: <20190730120331.17967-1-fziglio@redhat.com>
References: <20190730120331.17967-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 30 Jul 2019 12:04:45 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-gtk 43/44] CI: Add --werror
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

R2l2ZSBlcnJvcnMgb24gd2FybmluZ3MsIHdlIHdhbnQgdGhlIGNvZGUgdG8gY29tcGlsZSB3aXRo
b3V0Cndhcm5pbmdzLCBhdCBsZWFzdCB3aXRoIENJLgoKU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8g
WmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Ci0tLQogLmdpdGxhYi1jaS55bWwgfCAxMCArKysr
Ky0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhLy5naXRsYWItY2kueW1sIGIvLmdpdGxhYi1jaS55bWwKaW5kZXggZmE3MGY3
YWQuLjhiY2VmNjVkIDEwMDY0NAotLS0gYS8uZ2l0bGFiLWNpLnltbAorKysgYi8uZ2l0bGFiLWNp
LnltbApAQCAtMjgsMTEgKzI4LDExIEBAIGZlZG9yYToKICAgYmVmb3JlX3NjcmlwdDoKICAgICAt
IGRuZiBpbnN0YWxsIC15ICRERVBTX0NPTU1PTiAkREVQU19GRURPUkEKICAgICAtIGdpdCBjbG9u
ZSAke0NJX1JFUE9TSVRPUllfVVJML3NwaWNlLWd0ay9zcGljZS1wcm90b2NvbH0KLSAgICAtIG1l
c29uIC0tYnVpbGR0eXBlPXJlbGVhc2Ugc3BpY2UtcHJvdG9jb2wgYnVpbGQtc3BpY2UtcHJvdG9j
b2wgLS1wcmVmaXg9L3VzcgorICAgIC0gbWVzb24gLS1idWlsZHR5cGU9cmVsZWFzZSBzcGljZS1w
cm90b2NvbCBidWlsZC1zcGljZS1wcm90b2NvbCAtLXByZWZpeD0vdXNyIC0td2Vycm9yCiAgICAg
LSBuaW5qYSAtQyBidWlsZC1zcGljZS1wcm90b2NvbCBpbnN0YWxsCiAKICAgc2NyaXB0OgotICAg
IC0gbWVzb24gLS1idWlsZHR5cGU9cmVsZWFzZSBidWlsZC1kZWZhdWx0CisgICAgLSBtZXNvbiAt
LWJ1aWxkdHlwZT1yZWxlYXNlIGJ1aWxkLWRlZmF1bHQgLS13ZXJyb3IKICAgICAjIE1lc29uIGRv
ZXMgbm90IHVwZGF0ZSBzdWJtb2R1bGVzIHJlY3Vyc2l2ZWx5CiAgICAgLSBnaXQgc3VibW9kdWxl
IHVwZGF0ZSAtLWluaXQgLS1yZWN1cnNpdmUKICAgICAjIHRoaXMgZml4IGFuIGlzc3VlIHdpdGgg
TWVzb24gZGlzdApAQCAtNDIsNyArNDIsNyBAQCBmZWRvcmE6CiAgICAgLSBuaW5qYSAtQyBidWls
ZC1kZWZhdWx0CiAgICAgLSBuaW5qYSAtQyBidWlsZC1kZWZhdWx0IHRlc3QKIAotICAgIC0gbWVz
b24gLS1idWlsZHR5cGU9cmVsZWFzZSBidWlsZC1mZWF0LWRpc2FibGVkIC1EYXV0b19mZWF0dXJl
cz1kaXNhYmxlZAorICAgIC0gbWVzb24gLS1idWlsZHR5cGU9cmVsZWFzZSBidWlsZC1mZWF0LWRp
c2FibGVkIC1EYXV0b19mZWF0dXJlcz1kaXNhYmxlZCAtLXdlcnJvcgogICAgIC0gbmluamEgLUMg
YnVpbGQtZmVhdC1kaXNhYmxlZAogICAgIC0gbmluamEgLUMgYnVpbGQtZmVhdC1kaXNhYmxlZCB0
ZXN0CiAKQEAgLTU4LDExICs1OCwxMSBAQCB3aW5kb3dzOgogICAgIC0gZG5mIGluc3RhbGwgLXkg
JERFUFNfQ09NTU9OICRERVBTX01JTkdXCiAgICAgLSBnaXQgY2xvbmUgJHtDSV9SRVBPU0lUT1JZ
X1VSTC9zcGljZS1ndGsvc3BpY2UtcHJvdG9jb2x9CiAgICAgLSBta2RpciBzcGljZS1wcm90b2Nv
bC9idWlsZC1zcGljZS1wcm90b2NvbCAmJiBjZCBzcGljZS1wcm90b2NvbC9idWlsZC1zcGljZS1w
cm90b2NvbAotICAgIC0gbWluZ3c2NC1tZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIC0tcHJlZml4
PS91c3IKKyAgICAtIG1pbmd3NjQtbWVzb24gLS1idWlsZHR5cGU9cmVsZWFzZSAtLXByZWZpeD0v
dXNyIC0td2Vycm9yCiAgICAgLSBuaW5qYSBpbnN0YWxsCiAKICAgc2NyaXB0OgogICAgIC0gY2Qg
JENJX1BST0pFQ1RfRElSCiAgICAgLSBta2RpciBidWlsZC13aW42NCAmJiBjZCBidWlsZC13aW42
NAotICAgIC0gbWluZ3c2NC1tZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIC1EZ3RrX2RvYz1kaXNh
YmxlZAorICAgIC0gbWluZ3c2NC1tZXNvbiAtLWJ1aWxkdHlwZT1yZWxlYXNlIC1EZ3RrX2RvYz1k
aXNhYmxlZCAtLXdlcnJvcgogICAgIC0gbmluamEgaW5zdGFsbAotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWls
aW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
