Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C1365316
	for <lists+spice-devel@lfdr.de>; Thu, 11 Jul 2019 10:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DBD16E14D;
	Thu, 11 Jul 2019 08:25:33 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A02D56E14D
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:25:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 207D33082E40
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:25:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 185875C1B5
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Jul 2019 08:25:31 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0B3441833002;
 Thu, 11 Jul 2019 08:25:31 +0000 (UTC)
Date: Thu, 11 Jul 2019 04:25:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Uri Lublin <uril@redhat.com>
Message-ID: <1256748891.27119537.1562833528472.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190710174435.15833-2-uril@redhat.com>
References: <20190710174435.15833-1-uril@redhat.com>
 <20190710174435.15833-2-uril@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.5]
Thread-Topic: dcc-send: remove useless pipe_item assignment pipe_item
Thread-Index: 6z+jiqMQJoEG+1t30hkAgTit4WyXJQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 11 Jul 2019 08:25:31 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-server PATCH v2 1/3] dcc-send: remove
 useless pipe_item assignment pipe_item
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

PiAKPiBJbiByZWRfcGlwZV9yZXBsYWNlX3JlbmRlcmVkX2RyYXdhYmxlc193aXRoX2ltYWdlcywg
dGhlCj4gdmFsdWUgb2YgcGlwZV9pdGVtIGlzIHJlLXdyaXR0ZW4gb24gdGhlIG5leHQgaXRlcmF0
aW9uLgo+IAo+IFNpbmNlIGE3OGE3ZDI1MTA0Mjg5MjE4MmIxNTg2NTAyOTFkMTlhODViYmQ2YjEg
cGlwZV9pdGVtCj4gaXMgbm8gbG9uZ2VyIHVzZWQgdG8gY29udHJvbCB0aGUgbG9vcC4KPiAKPiBG
b3VuZCBieSBDb3ZzY2FuLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVk
aGF0LmNvbT4KCkFja2VkCgo+IC0tLQo+ICBzZXJ2ZXIvZGNjLXNlbmQuYyB8IDEgLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvZGNjLXNl
bmQuYyBiL3NlcnZlci9kY2Mtc2VuZC5jCj4gaW5kZXggYjE0NjE5YTJiLi41NjVhNzlmMzMgMTAw
NjQ0Cj4gLS0tIGEvc2VydmVyL2RjYy1zZW5kLmMKPiArKysgYi9zZXJ2ZXIvZGNjLXNlbmQuYwo+
IEBAIC03NTMsNyArNzUzLDYgQEAgc3RhdGljIHZvaWQKPiByZWRfcGlwZV9yZXBsYWNlX3JlbmRl
cmVkX2RyYXdhYmxlc193aXRoX2ltYWdlcyhEaXNwbGF5Q2hhbm5lbENsaWVudAo+ICAKPiAgICAg
ICAgICBzcGljZV9hc3NlcnQoaW1hZ2UpOwo+ICAgICAgICAgIHJlZF9jaGFubmVsX2NsaWVudF9w
aXBlX3JlbW92ZV9hbmRfcmVsZWFzZV9wb3MoUkVEX0NIQU5ORUxfQ0xJRU5UKGRjYyksCj4gICAg
ICAgICAgbCk7Cj4gLSAgICAgICAgcGlwZV9pdGVtID0gJmltYWdlLT5iYXNlOwo+ICAgICAgfQo+
ICB9Cj4gIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
