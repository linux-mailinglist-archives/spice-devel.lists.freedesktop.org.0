Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0EA55416
	for <lists+spice-devel@lfdr.de>; Tue, 25 Jun 2019 18:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855536E165;
	Tue, 25 Jun 2019 16:11:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B6C16E160
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AC7EE3082E8E
 for <spice-devel@lists.freedesktop.org>; Tue, 25 Jun 2019 16:11:53 +0000 (UTC)
Received: from fziglio.remote.csb (unknown [10.33.32.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DFB595D70D;
 Tue, 25 Jun 2019 16:11:52 +0000 (UTC)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Date: Tue, 25 Jun 2019 17:11:26 +0100
Message-Id: <20190625161147.25211-3-fziglio@redhat.com>
In-Reply-To: <20190625161147.25211-1-fziglio@redhat.com>
References: <20190625161147.25211-1-fziglio@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 25 Jun 2019 16:11:53 +0000 (UTC)
Subject: [Spice-devel] [PATCH spice-server 02/23] reds: Fix
 SSL_CTX_set_ecdh_auto call for some old OpenSSL
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

U1NMX0NUWF9zZXRfZWNkaF9hdXRvIGlzIG5vdCBkZWZpbmVkIGluIHNvbWUgb2xkIHZlcnNpb25z
IG9mIE9wZW5TU0wKClNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgotLS0KIGNvbmZpZ3VyZS5hYyAgfCA5ICsrKysrKysrKwogc2VydmVyL3JlZHMuYyB8
IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Nv
bmZpZ3VyZS5hYyBiL2NvbmZpZ3VyZS5hYwppbmRleCBlMTJkN2U4NTQuLjQ5YzAwOWQ0YyAxMDA2
NDQKLS0tIGEvY29uZmlndXJlLmFjCisrKyBiL2NvbmZpZ3VyZS5hYwpAQCAtMjA5LDYgKzIwOSwx
NSBAQCBBQ19TVUJTVChTU0xfQ0ZMQUdTKQogQUNfU1VCU1QoU1NMX0xJQlMpCiBBU19WQVJfQVBQ
RU5EKFtTUElDRV9SRVFVSVJFU10sIFsiIG9wZW5zc2wiXSkKIAorc2F2ZV9DRkxBR1M9IiRDRkxB
R1MiCitDRkxBR1M9IiRDRkxBR1MgJFNTTF9DRkxBR1MiCitBQ19DSEVDS19ERUNMUyhbU1NMX0NU
WF9zZXRfZWNkaF9hdXRvXSwgW10sIFtdLCBbCitBQ19JTkNMVURFU19ERUZBVUxUCisjaW5jbHVk
ZSA8b3BlbnNzbC9lcnIuaD4KKyNpbmNsdWRlIDxvcGVuc3NsL3NzbC5oPgorXSkKK0NGTEFHUz0i
JHNhdmVfQ0ZMQUdTIgorCiBBQ19DSEVDS19MSUIoanBlZywganBlZ19kZXN0cm95X2RlY29tcHJl
c3MsCiAgICAgQUNfTVNHX0NIRUNLSU5HKFtmb3IganBlZ2xpYi5oXSkKICAgICBBQ19UUllfQ1BQ
KApkaWZmIC0tZ2l0IGEvc2VydmVyL3JlZHMuYyBiL3NlcnZlci9yZWRzLmMKaW5kZXggNzkyZTk4
MzgxLi5iNDA2MWZiYzMgMTAwNjQ0Ci0tLSBhL3NlcnZlci9yZWRzLmMKKysrIGIvc2VydmVyL3Jl
ZHMuYwpAQCAtMjkzNyw3ICsyOTM3LDkgQEAgc3RhdGljIGludCByZWRzX2luaXRfc3NsKFJlZHNT
dGF0ZSAqcmVkcykKICAgICB9CiAKICAgICBTU0xfQ1RYX3NldF9vcHRpb25zKHJlZHMtPmN0eCwg
c3NsX29wdGlvbnMpOworI2lmIEhBVkVfREVDTF9TU0xfQ1RYX1NFVF9FQ0RIX0FVVE8gfHwgZGVm
aW5lZChTU0xfQ1RYX3NldF9lY2RoX2F1dG8pCiAgICAgU1NMX0NUWF9zZXRfZWNkaF9hdXRvKHJl
ZHMtPmN0eCwgMSk7CisjZW5kaWYKIAogICAgIC8qIExvYWQgb3VyIGtleXMgYW5kIGNlcnRpZmlj
YXRlcyovCiAgICAgcmV0dXJuX2NvZGUgPSBTU0xfQ1RYX3VzZV9jZXJ0aWZpY2F0ZV9jaGFpbl9m
aWxlKHJlZHMtPmN0eCwgcmVkcy0+Y29uZmlnLT5zc2xfcGFyYW1ldGVycy5jZXJ0c19maWxlKTsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
