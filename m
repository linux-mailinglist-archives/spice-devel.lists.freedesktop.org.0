Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBE55954E
	for <lists+spice-devel@lfdr.de>; Fri, 28 Jun 2019 09:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987416E891;
	Fri, 28 Jun 2019 07:46:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5DC66E891
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7333C59442
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B63C1001284
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:37 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 63F551806B15
 for <spice-devel@lists.freedesktop.org>; Fri, 28 Jun 2019 07:46:37 +0000 (UTC)
Date: Fri, 28 Jun 2019 03:46:37 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1836786546.25082793.1561707997349.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190618081551.20585-1-fziglio@redhat.com>
References: <20190618081551.20585-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.3, 10.4.195.27]
Thread-Topic: Replace some missing "latency" terms
Thread-Index: O8O7iNzQ2rUoBxDOMWtGm4EWKf9QVA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 28 Jun 2019 07:46:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] Replace some missing "latency"
 terms
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

cGluZwoKPiAKPiBUaGlzIGZvbGxvd3MgdXAgY29tbWl0IDg4N2FlZGZmNDFiZGI4OTg0NWU3Y2Iz
NDk0NTRhOGRjYmI1MTVkYjQKPiAiVGhlIHZpZGVvIGxhdGVuY3kgaXMgaW4gZmFjdCBhIG1hcmdp
biIuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5j
b20+Cj4gLS0tCj4gIHNyYy9jaGFubmVsLWRpc3BsYXktcHJpdi5oIHwgNCArKy0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL3NyYy9jaGFubmVsLWRpc3BsYXktcHJpdi5oIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1wcml2
LmgKPiBpbmRleCA0OTVkZjdhYy4uMTZjMTJjNmUgMTAwNjQ0Cj4gLS0tIGEvc3JjL2NoYW5uZWwt
ZGlzcGxheS1wcml2LmgKPiArKysgYi9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaAo+IEBAIC02
MywxMiArNjMsMTIgQEAgc3RydWN0IFZpZGVvRGVjb2RlciB7Cj4gICAgICAgKgo+ICAgICAgICog
QGRlY29kZXI6ICAgVGhlIHZpZGVvIGRlY29kZXIuCj4gICAgICAgKiBAZnJhbWU6ICAgICBUaGUg
Y29tcHJlc3NlZCBTcGljZSBmcmFtZS4KPiAtICAgICAqIEBsYXRlbmN5OiAgIEhvdyBsb25nIGlu
IG1pbGxpc2Vjb25kcyB1bnRpbCB0aGUgZnJhbWUgc2hvdWxkIGJlCj4gKyAgICAgKiBAbWFyZ2lu
OiAgICBIb3cgbG9uZyBpbiBtaWxsaXNlY29uZHMgdW50aWwgdGhlIGZyYW1lIHNob3VsZCBiZQo+
ICAgICAgICogICAgICAgICAgICAgZGlzcGxheWVkLiBOZWdhdGl2ZSB2YWx1ZXMgbWVhbiB0aGUg
ZnJhbWUgaXMgbGF0ZS4KPiAgICAgICAqIEByZXR1cm46ICAgIEZhbHNlIGlmIHRoZSBkZWNvZGVy
IGNhbiBubyBsb25nZXIgZGVjb2RlIGZyYW1lcywKPiAgICAgICAqICAgICAgICAgICAgIFRydWUg
b3RoZXJ3aXNlLgo+ICAgICAgICovCj4gLSAgICBnYm9vbGVhbiAoKnF1ZXVlX2ZyYW1lKShWaWRl
b0RlY29kZXIgKnZpZGVvX2RlY29kZXIsIFNwaWNlRnJhbWUgKmZyYW1lLAo+IGludCBsYXRlbmN5
KTsKPiArICAgIGdib29sZWFuICgqcXVldWVfZnJhbWUpKFZpZGVvRGVjb2RlciAqdmlkZW9fZGVj
b2RlciwgU3BpY2VGcmFtZSAqZnJhbWUsCj4gaW50IG1hcmdpbik7Cj4gIAo+ICAgICAgLyogVGhl
IGZvcm1hdCBvZiB0aGUgZW5jb2RlZCB2aWRlby4gKi8KPiAgICAgIGludCBjb2RlY190eXBlOwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
