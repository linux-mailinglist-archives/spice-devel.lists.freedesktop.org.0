Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4ED8B6C8
	for <lists+spice-devel@lfdr.de>; Tue, 13 Aug 2019 13:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D48E6E109;
	Tue, 13 Aug 2019 11:29:19 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 473306E109
 for <spice-devel@lists.freedesktop.org>; Tue, 13 Aug 2019 11:29:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C313B315C013;
 Tue, 13 Aug 2019 11:29:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B9CC580FE5;
 Tue, 13 Aug 2019 11:29:17 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC8831800202;
 Tue, 13 Aug 2019 11:29:17 +0000 (UTC)
Date: Tue, 13 Aug 2019 07:29:17 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <421257129.5631324.1565695757528.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190812095729.32692-9-yuri.benditovich@daynix.com>
References: <20190812095729.32692-1-yuri.benditovich@daynix.com>
 <20190812095729.32692-9-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.69, 10.4.195.27]
Thread-Topic: usb-redir: enable redirection of emulated CD drive
Thread-Index: GpZA+Pk0ZsUv4XVgr/SyVlnZ/QfL1A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 13 Aug 2019 11:29:17 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk v3 8/9] usb-redir: enable redirection
 of emulated CD drive
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBBZGQgaW1wbGVtZW50YXRpb24gb2YgZW11bGF0ZWQgZGV2aWNlIHRvIGJ1aWxkLgo+IE5v
dyBpdCBpcyBwb3NzaWJsZSB0byBjcmVhdGUgZW11bGF0ZWQgQ0QgZGV2aWNlcy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+
CgpXb3VsZCBiZSBiZXR0ZXIgdG8gY29tcGlsZSBvbmx5IGlmIG5lZWRlZCwgbGlrZQoKaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Z6aWdsaW8vc3BpY2UtZ3RrL2NvbW1pdC9mNzQ0NDMz
OTA5MDIzMzVhMDIzM2JiMzJlMWQ5NDUwN2U1YjlmNWY0Cgo/Cgo+IC0tLQo+ICBzcmMvbWVzb24u
YnVpbGQgfCA3ICsrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS9zcmMvbWVzb24uYnVpbGQgYi9zcmMvbWVzb24uYnVpbGQKPiBpbmRleCBm
ZTE5YzE2Li4zODM3YTlkIDEwMDY0NAo+IC0tLSBhL3NyYy9tZXNvbi5idWlsZAo+ICsrKyBiL3Ny
Yy9tZXNvbi5idWlsZAo+IEBAIC0xMjQsNiArMTI0LDEzIEBAIHNwaWNlX2NsaWVudF9nbGliX3Nv
dXJjZXMgPSBbCj4gICAgJ3VzYi1iYWNrZW5kLmMnLAo+ICAgICd1c2ItZW11bGF0aW9uLmgnLAo+
ICAgICd1c2ItYmFja2VuZC5oJywKPiArICAndXNiLWRldmljZS1jZC5jJywKPiArICAndXNiLWRl
dmljZS1jZC5oJywKPiArICAnY2Qtc2NzaS5jJywKPiArICAnY2Qtc2NzaS5oJywKPiArICAnY2Qt
c2NzaS1kZXYtcGFyYW1zLmgnLAo+ICsgICdjZC11c2ItYnVsay1tc2QuYycsCj4gKyAgJ2NkLXVz
Yi1idWxrLW1zZC5oJywKPiAgICAndm1jc3RyZWFtLmMnLAo+ICAgICd2bWNzdHJlYW0uaCcsCj4g
IF0KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
