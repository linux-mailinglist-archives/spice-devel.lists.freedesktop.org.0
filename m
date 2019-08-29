Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E0CA1070
	for <lists+spice-devel@lfdr.de>; Thu, 29 Aug 2019 06:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2BB289F43;
	Thu, 29 Aug 2019 04:26:17 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E94A89F43
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 04:26:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DE4BD46288
 for <spice-devel@lists.freedesktop.org>; Thu, 29 Aug 2019 04:26:15 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.2])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C0D4F10016EB;
 Thu, 29 Aug 2019 04:26:13 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Thu, 29 Aug 2019 05:26:06 +0100
Message-Id: <20190829042606.11637-2-fziglio@redhat.com>
In-Reply-To: <20190829042606.11637-1-fziglio@redhat.com>
References: <20190829042606.11637-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Thu, 29 Aug 2019 04:26:15 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 2/2] meson: Remove a warning in
 spice-common
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

VGhpcyB3aWxsIGRyb3AgdGhlIGZvbGxvd2luZyB3YXJuaW5nOgoiUHJvamVjdCB0YXJnZXR0aW5n
ICc+PSAwLjQ4LjAnIGJ1dCB0cmllZCB0byB1c2UgZmVhdHVyZSBpbnRyb2R1Y2VkCmluICcwLjUw
LjAnOiBpbnN0YWxsIGFyZyBpbiBjb25maWd1cmVfZmlsZSIKClRoaXMgYnJpbmdzIGluIHRoZSBm
b2xsb3dpbmcgY2hhbmdlczoKCkZyZWRpYW5vIFppZ2xpbyAoNSk6CiAgICAgIGNvZGVnZW46IFVz
ZSBoYXNfZW5kX2F0dHIgaW5zdGVhZCBvZiBoYXNfYXR0cigiZW5kIikKICAgICAgY29kZWdlbjog
RXhpdCB3aXRoIGVycm9yIG9uIGVycm9yIGdlbmVyYXRpbmcgQyBzdHJ1Y3R1cmVzCiAgICAgIHBy
b3RvY29sOiBSZW1vdmVkIHVubmVlZGVkIHR5cGUgc3BlY2lmaWNhdGlvbnMKICAgICAgY29kZWdl
bjogQWRkIGEgY2hlY2sgZm9yIEMgc3RydWN0dXJlIGZpZWxkcwogICAgICBtZXNvbjogUmVtb3Zl
ICJpbnN0YWxsIiBhcmd1bWVudCBmcm9tIGNvbmZpZ3VyZV9maWxlCgpVcmkgTHVibGluICgyKToK
ICAgICAgcHR5cGVzLnB5OiByZW1vdmUgdXNlbGVzcyBjb25kaXRpb24gbWVtYmVyICE9IE5vbmUK
ICAgICAgdGVzdC1tYXJzaGFsbGVycy5wcm90bzogQXJyYXlNZXNzYWdlOiBtYWtlIHNwYWNlIGZv
ciBuYW1lCgpTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KLS0tCiBzdWJwcm9qZWN0cy9zcGljZS1jb21tb24gfCAyICstCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zdWJwcm9qZWN0cy9z
cGljZS1jb21tb24gYi9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24KaW5kZXggZmYyZTk5ZDg5Li40
NzI3YzE5ZDMgMTYwMDAwCi0tLSBhL3N1YnByb2plY3RzL3NwaWNlLWNvbW1vbgorKysgYi9zdWJw
cm9qZWN0cy9zcGljZS1jb21tb24KQEAgLTEgKzEgQEAKLVN1YnByb2plY3QgY29tbWl0IGZmMmU5
OWQ4OTMyZGI2YjMwYjI0NTAxYWVmMDc4OTg1MzVhYzBiYjQKK1N1YnByb2plY3QgY29tbWl0IDQ3
MjdjMTlkMzZiMzMwNzE5Mjg1MDBhZGFhODMyZWNlZjZiZGQ5NDIKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
