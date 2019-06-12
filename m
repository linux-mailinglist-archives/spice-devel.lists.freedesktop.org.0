Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E18141BC2
	for <lists+spice-devel@lfdr.de>; Wed, 12 Jun 2019 07:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28F928924C;
	Wed, 12 Jun 2019 05:56:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F4C8924C
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9CEFF859FE
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 942137BE6F
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:11 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8B2C454D3C
 for <spice-devel@lists.freedesktop.org>; Wed, 12 Jun 2019 05:56:11 +0000 (UTC)
Date: Wed, 12 Jun 2019 01:56:11 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: spice-devel@lists.freedesktop.org
Message-ID: <16588546.22408151.1560318971523.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190530142254.28937-10-fziglio@redhat.com>
References: <20190530142254.28937-1-fziglio@redhat.com>
 <20190530142254.28937-10-fziglio@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.204.108, 10.4.195.9]
Thread-Topic: inputs-channel-client: Remove unused declarations
Thread-Index: 1YbxfUt2GHDFeXhpRhmyqkjN33JbLA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 12 Jun 2019 05:56:11 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server 10/13] inputs-channel-client:
 Remove unused declarations
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

cGluZwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0
LmNvbT4KPiAtLS0KPiAgc2VydmVyL2lucHV0cy1jaGFubmVsLWNsaWVudC5oIHwgMyAtLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9p
bnB1dHMtY2hhbm5lbC1jbGllbnQuaCBiL3NlcnZlci9pbnB1dHMtY2hhbm5lbC1jbGllbnQuaAo+
IGluZGV4IGMyMjI4ODk4MC4uMWFmYzIyYmQ0IDEwMDY0NAo+IC0tLSBhL3NlcnZlci9pbnB1dHMt
Y2hhbm5lbC1jbGllbnQuaAo+ICsrKyBiL3NlcnZlci9pbnB1dHMtY2hhbm5lbC1jbGllbnQuaAo+
IEBAIC02MSw5ICs2MSw2IEBAIFJlZENoYW5uZWxDbGllbnQqIGlucHV0c19jaGFubmVsX2NsaWVu
dF9jcmVhdGUoUmVkQ2hhbm5lbAo+ICpjaGFubmVsLAo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFJlZFN0cmVhbSAqc3RyZWFtLAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJlZENoYW5uZWxDYXBhYmlsaXRp
ZXMKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqY2Fw
cyk7Cj4gIAo+IC11aW50MTZfdCBpbnB1dHNfY2hhbm5lbF9jbGllbnRfZ2V0X21vdGlvbl9jb3Vu
dChJbnB1dHNDaGFubmVsQ2xpZW50KiBzZWxmKTsKPiAtLyogb25seSBmb3IgbWlncmF0aW9uICov
Cj4gLXZvaWQgaW5wdXRzX2NoYW5uZWxfY2xpZW50X3NldF9tb3Rpb25fY291bnQoSW5wdXRzQ2hh
bm5lbENsaWVudCogc2VsZiwKPiB1aW50MTZfdCBjb3VudCk7Cj4gIHZvaWQgaW5wdXRzX2NoYW5u
ZWxfY2xpZW50X29uX21vdXNlX21vdGlvbihJbnB1dHNDaGFubmVsQ2xpZW50KiBzZWxmKTsKPiAg
dm9pZCBpbnB1dHNfY2hhbm5lbF9jbGllbnRfc2VuZF9taWdyYXRlX2RhdGEoUmVkQ2hhbm5lbENs
aWVudCAqcmNjLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBTcGljZU1hcnNoYWxsZXIgKm0sIFJlZFBpcGVJdGVtCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICppdGVtKTsKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
