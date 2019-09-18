Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32911B6116
	for <lists+spice-devel@lfdr.de>; Wed, 18 Sep 2019 12:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03CB6EEA1;
	Wed, 18 Sep 2019 10:09:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9DC56EEA1
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 10:09:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 60DEDC049E36
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 10:09:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 58C8E5C219
 for <spice-devel@lists.freedesktop.org>; Wed, 18 Sep 2019 10:09:24 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4FF844E589;
 Wed, 18 Sep 2019 10:09:24 +0000 (UTC)
Date: Wed, 18 Sep 2019 06:09:24 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1844961138.451355.1568801364300.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190916102104.20943-7-victortoso@redhat.com>
References: <20190916102104.20943-1-victortoso@redhat.com>
 <20190916102104.20943-7-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.16, 10.4.195.5]
Thread-Topic: usb-backend: add safe check on attach()
Thread-Index: sq3rwt3Uf02GNcVkXqNwUttIM4Q//w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 18 Sep 2019 10:09:24 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v7 06/20] usb-backend: add safe check on
 attach()
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBGcm9tOiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAKPiBBdCB0
aGlzIG1vbWVudCwgc3BpY2VfdXNiX2JhY2tlbmRfY2hhbm5lbF9hdHRhY2goKSBpcyBvbmx5IHJl
bGF0ZWQgdG8KPiByZWFsIGRldmljZXMgYW5kIHRoaXMgY2FsbCBtaWdodCBoYXBwZW4gb24gY2hh
bm5lbC11cCBldmVudCB0aGF0IGNhbgo+IHBvc3NpYmx5IGNvbWUgYmVmb3JlIHVzYnJlZGlyaG9z
dCBoYXMgYmVlbiBjcmVhdGVkLgoKCldlcmUgeW91IGFibGUgdG8gcmVwcm9kdWNlIHRoaXMgY29u
ZGl0aW9uPwoKSWYgSSBwdXQgdGhlIGNoZWNrIEkgcHV0IGJlY2F1c2UgdGhlIGNvZGUgd2lsbCBz
dXBwb3J0IG5vdCBoYXZpbmcKdXNicmVkaXJob3N0IGF0IGFsbCwgbm90IGJlY2F1c2UgaXQgd2ls
bCBiZSBjcmVhdGVkIGluIHRoZSBmdXR1cmUKKGluIHRoaXMgY2FzZSB3aWxsIGV2ZXIgYmUgTlVM
TCkuCgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBUb3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5j
b20+Cj4gLS0tCj4gIHNyYy91c2ItYmFja2VuZC5jIHwgNSArKysrKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy91c2ItYmFja2VuZC5jIGIv
c3JjL3VzYi1iYWNrZW5kLmMKPiBpbmRleCA2ZWQ5NTdjLi42OGZhYWFlIDEwMDY0NAo+IC0tLSBh
L3NyYy91c2ItYmFja2VuZC5jCj4gKysrIGIvc3JjL3VzYi1iYWNrZW5kLmMKPiBAQCAtNzIwLDYg
KzcyMCwxMSBAQCBnYm9vbGVhbgo+IHNwaWNlX3VzYl9iYWNrZW5kX2NoYW5uZWxfYXR0YWNoKFNw
aWNlVXNiQmFja2VuZENoYW5uZWwgKmNoLAo+ICAKPiAgICAgIGdfcmV0dXJuX3ZhbF9pZl9mYWls
KGRldiAhPSBOVUxMLCBGQUxTRSk7Cj4gIAo+ICsgICAgLy8gbm8gcGh5c2ljYWwgZGV2aWNlIGVu
YWJsZWQKPiArICAgIGlmIChjaC0+dXNicmVkaXJob3N0ID09IE5VTEwpIHsKPiArICAgICAgICBy
ZXR1cm4gRkFMU0U7Cj4gKyAgICB9Cj4gKwo+ICAgICAgbGlidXNiX2RldmljZV9oYW5kbGUgKmhh
bmRsZSA9IE5VTEw7Cj4gIAo+ICAgICAgLyoKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
