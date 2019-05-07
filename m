Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E01D161DE
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 12:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549F389FD3;
	Tue,  7 May 2019 10:23:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380D289FD3
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 10:23:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CCE6359467
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 10:23:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C398560BEC
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 10:23:18 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id BB1A218089CA;
 Tue,  7 May 2019 10:23:18 +0000 (UTC)
Date: Tue, 7 May 2019 06:23:17 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1917941004.17162544.1557224597408.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190507092512.2696-2-ssheribe@redhat.com>
References: <20190507092512.2696-1-ssheribe@redhat.com>
 <20190507092512.2696-2-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.5]
Thread-Topic: Remove -Wchkp warning, deprecated in GCC 9
Thread-Index: NjTIFhsU09QISDU8pSFFmy4RY8C1Iw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 07 May 2019 10:23:18 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] Remove -Wchkp warning,
 deprecated in GCC 9
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

QWNrZWQKCj4gCj4gLS0tCj4gIG00L21hbnl3YXJuaW5ncy5tNCB8IDEgLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9tNC9tYW55d2FybmluZ3MubTQg
Yi9tNC9tYW55d2FybmluZ3MubTQKPiBpbmRleCA5MDgyM2IwLi4xNTBiYWEyIDEwMDY0NAo+IC0t
LSBhL200L21hbnl3YXJuaW5ncy5tNAo+ICsrKyBiL200L21hbnl3YXJuaW5ncy5tNAo+IEBAIC0x
MTQsNyArMTE0LDYgQEAgQUNfREVGVU4oW2dsX01BTllXQVJOX0FMTF9HQ0NdLAo+ICAgICAgLVdi
dWlsdGluLW1hY3JvLXJlZGVmaW5lZCBcCj4gICAgICAtV2Nhc3QtYWxpZ24gXAo+ICAgICAgLVdj
aGFyLXN1YnNjcmlwdHMgXAo+IC0gICAgLVdjaGtwIFwKPiAgICAgIC1XY2xvYmJlcmVkIFwKPiAg
ICAgIC1XY29tbWVudCBcCj4gICAgICAtV2NvbW1lbnRzIFwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
