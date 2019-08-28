Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88701A0583
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 17:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E093F890BF;
	Wed, 28 Aug 2019 15:02:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79B289885
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:02:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6FF1C89AD0
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:02:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6709D5C221
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:02:48 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5ED221802217
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 15:02:48 +0000 (UTC)
Date: Wed, 28 Aug 2019 11:02:48 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1126453792.9954038.1567004568339.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190814170825.11903-2-fziglio@redhat.com>
References: <20190814170825.11903-1-fziglio@redhat.com>
 <20190814170825.11903-2-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.3]
Thread-Topic: codegen: Add 'chunk' to the output attributes
Thread-Index: oZvqvZBdEuK5z1nGXdk34O8H8hUf8Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 28 Aug 2019 15:02:48 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-common] codegen: Add 'chunk' to the
 output attributes
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

cGluZwoKPiAKPiBPdXRwdXQgYXR0cmlidXRlcyBhcmUgdGhlIGF0dHJpYnV0ZXMgdGhhdCBzcGVj
aWZ5IGhvdyB0byBzdG9yZQo+IHRoYXQgZmllbGQgaW4gdGhlIEMgc3RydWN0dXJlLgo+IFRoZXJl
IGNhbiBiZSBvbmx5IG9uZSBvdXRwdXQgdHlwZSBzcGVjaWZpZWQuCj4gCj4gU2lnbmVkLW9mZi1i
eTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHB5dGhvbl9t
b2R1bGVzL3B0eXBlcy5weSB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5w
eSBiL3B5dGhvbl9tb2R1bGVzL3B0eXBlcy5weQo+IGluZGV4IGViZTAwMWMuLjc5NmE0MzYgMTAw
NjQ0Cj4gLS0tIGEvcHl0aG9uX21vZHVsZXMvcHR5cGVzLnB5Cj4gKysrIGIvcHl0aG9uX21vZHVs
ZXMvcHR5cGVzLnB5Cj4gQEAgLTk4LDcgKzk4LDcgQEAgZGVmIGZpeF9hdHRyaWJ1dGVzKGF0dHJp
YnV0ZV9saXN0KToKPiAgICAgICAgICBhdHRyc1tuYW1lXSA9IGxzdAo+ICAKPiAgICAgICMgdGhl
c2UgYXR0cmlidXRlcyBzcGVjaWZ5IG91dHB1dCBmb3JtYXQsIG9ubHkgb25lIGNhbiBiZSBzZXQK
PiAtICAgIG91dHB1dF9hdHRycyA9IHNldChbJ2VuZCcsICd0b19wdHInLCAnYXNfcHRyJywgJ3B0
cl9hcnJheScsICd6ZXJvJ10pCj4gKyAgICBvdXRwdXRfYXR0cnMgPSBzZXQoWydlbmQnLCAndG9f
cHRyJywgJ2FzX3B0cicsICdwdHJfYXJyYXknLCAnemVybycsCj4gJ2NodW5rJ10pCj4gICAgICBp
ZiBsZW4ob3V0cHV0X2F0dHJzLmludGVyc2VjdGlvbihhdHRycy5rZXlzKCkpKSA+IDE6Cj4gICAg
ICAgICAgcmFpc2UgRXhjZXB0aW9uKCJNdWx0aXBsZSBvdXRwdXQgdHlwZSBhdHRyaWJ1dGVzIHNw
ZWNpZmllZCAlcyIgJQo+ICAgICAgICAgIG91dHB1dF9hdHRycykKPiAgCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
