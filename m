Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B574581E0C
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 15:51:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4811F89F35;
	Mon,  5 Aug 2019 13:51:55 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7447089DF9
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 218974ACA7
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 182705C1D6
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:53 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 104A74EE68
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 13:51:53 +0000 (UTC)
Date: Mon, 5 Aug 2019 09:51:53 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <1996279287.4733444.1565013113012.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190723082230.10381-4-fziglio@redhat.com>
References: <20190723082230.10381-1-fziglio@redhat.com>
 <20190723082230.10381-4-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.3]
Thread-Topic: red-replay-qxl: Fix replay on 32 bit systems
Thread-Index: FNGUFyh1DJ9uLJlEQ0Hcj7MNwR6APQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Mon, 05 Aug 2019 13:51:53 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-replay-qxl: Fix replay
 on 32 bit systems
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

cGluZwoKPiAKPiBPbiAzMiBzeXN0ZW1zIHBvaW50ZXJzIGFyZSAzMiBiaXQgd2hpbGUgUVhMUEhZ
U0lDQUwgaXMgYWx3YXlzCj4gNjQgYml0Lgo+IFVzaW5nIHBvaW50ZXIgLT4gaW50cHRyX3QgLT4g
UVhMUEhZU0lDQUwgY29udmVyc2lvbiBjYXVzZSBwb2ludGVycwo+IHRvIGhhdmUgaGlnaGVyIDMy
IGJpdCBzZXQgdG8gMSBpZiB0aGUgYWRkcmVzcyBpcyA+PSAweDgwMDAwMDAwLgo+IFRoaXMgaXMg
cG9zc2libGUgZGVwZW5kaW5nIG9uIGFkZHJlc3Mgc3BhY2UuCj4gVGhlIFFYTFBIWVNJQ0FMIGlz
IHNwbGl0IGluIDMgc2VjdGlvbnM6Cj4gLSBzbG90IElEOwo+IC0gZ2VuZXJhdGlvbjsKPiAtIHZp
cnR1YWwgYWRkcmVzcy4KPiBDdXJyZW50IHV0aWxpdHkgdXNpbmcgcmVjb3JkIGZpbGUgKHNwaWNl
LXNlcnZlci1yZXBsYXkpIHNldCBzbG90IElECj4gYW5kIGdlbmVyYXRpb24gdG8gMCBzbyBpZiB0
aGUgaGlnaGVyIGJpdHMgYmVjb21lIGFsbCAxIHNsb3QgSUQgYW5kCj4gZ2VuZXJhdGlvbiB3b24n
dCBiZSAwIGNhdXNpbmcgdGhlIHV0aWxpdHkgdG8gZmFpbC4KPiBVc2UgcG9pbnRlciAtPiB1aW50
cHRyX3QgLT4gUVhMUEhZU0lDQUwgY29udmVyc2lvbiB0byBhdm9pZCB0aGlzCj4gaXNzdWUuCj4g
Tm90ZSB0aGF0IGZvciBvcHBvc2l0ZSBjb252ZXJzaW9uIChRWExQSFlTSUNBTF9UT19QVFIpIHRo
ZSBjb252ZXJzaW9uCj4gZG9lcyBub3QgY2hhbmdlLCB0eXBlIGlzIGNoYW5nZWQganVzdCBmb3Ig
Y29uc2lzdGVuY3kuCj4gCj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxmemlnbGlv
QHJlZGhhdC5jb20+Cj4gLS0tCj4gIHNlcnZlci9yZWQtcmVwbGF5LXF4bC5jIHwgNCArKy0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL3NlcnZlci9yZWQtcmVwbGF5LXF4bC5jIGIvc2VydmVyL3JlZC1yZXBsYXktcXhs
LmMKPiBpbmRleCA2NzRmZWFlMmYuLmIzOGM0Y2RiZCAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvcmVk
LXJlcGxheS1xeGwuYwo+ICsrKyBiL3NlcnZlci9yZWQtcmVwbGF5LXF4bC5jCj4gQEAgLTI5LDgg
KzI5LDggQEAKPiAgI2luY2x1ZGUgIm1lbXNsb3QuaCIKPiAgI2luY2x1ZGUgInJlZC1wYXJzZS1x
eGwuaCIKPiAgCj4gLSNkZWZpbmUgUVhMUEhZU0lDQUxfRlJPTV9QVFIocHRyKSAoKFFYTFBIWVNJ
Q0FMKShpbnRwdHJfdCkocHRyKSkKPiAtI2RlZmluZSBRWExQSFlTSUNBTF9UT19QVFIocGh5KSAo
KHZvaWQqKShpbnRwdHJfdCkocGh5KSkKPiArI2RlZmluZSBRWExQSFlTSUNBTF9GUk9NX1BUUihw
dHIpICgoUVhMUEhZU0lDQUwpKHVpbnRwdHJfdCkocHRyKSkKPiArI2RlZmluZSBRWExQSFlTSUNB
TF9UT19QVFIocGh5KSAoKHZvaWQqKSh1aW50cHRyX3QpKHBoeSkpCj4gIAo+ICB0eXBlZGVmIGVu
dW0gewo+ICAgICAgUkVQTEFZX09LID0gMCwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL3NwaWNlLWRldmVs
