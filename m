Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1120AF837
	for <lists+spice-devel@lfdr.de>; Wed, 11 Sep 2019 10:47:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1EB56E1B1;
	Wed, 11 Sep 2019 08:47:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0296E1B1
 for <spice-devel@lists.freedesktop.org>; Wed, 11 Sep 2019 08:47:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 54E4B776C2;
 Wed, 11 Sep 2019 08:47:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 322D719C4F;
 Wed, 11 Sep 2019 08:47:50 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 286C04A460;
 Wed, 11 Sep 2019 08:47:50 +0000 (UTC)
Date: Wed, 11 Sep 2019 04:47:49 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?B?5bCP6bqm?= <497657623@qq.com>
Message-ID: <889066380.11500256.1568191669975.JavaMail.zimbra@redhat.com>
In-Reply-To: <tencent_0C1908293E2EE000CA887762038975F2890A@qq.com>
References: <tencent_0C1908293E2EE000CA887762038975F2890A@qq.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.8, 10.4.195.28]
Thread-Topic: virt-viewer compile problem
Thread-Index: Rb7ZpTZoxQPIdECnc3+mbbN/FwJocg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 11 Sep 2019 08:47:50 +0000 (UTC)
Subject: Re: [Spice-devel] virt-viewer compile problem
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Cj4gaGVsbG86Cj4gV2hlbiBpIHVzZSBtaW5ndzMyIHRvIGNvbXBpbGUgdmlydC12aWV3ZXIsIGl0
IG9jY3VyaWVkIHByb2JsZW0uIFRoZSBlcnJvciBpcwo+ICdlcnJvcjogUGFja2FnZSByZXF1aXJl
bWVudHMgKHNwaWNlLWNvbnRyb2xsZXIpIHdlcmUgbm90IG1ldDonLgo+IEkndmUgYmVlbiBzZWFy
Y2hpbmcgdGhlIEludGVybmV0IGZvciBhIGxvbmcgdGltZS4gQnV0IHN0aWxsIGNhbid0IGZpbmQg
dGhlCj4gd2F5IHRvIHNvbHZlIHRoZSBwcm9ibGVtLiBJIGRvbid0IGtub3cgd2hlcmUgY2FuIEkg
Z2V0IHRoZSBwYWNrYWdlIG5hbWVkCj4gJ3NwaWNlLWNvbnRyb2xsZXInLiBTbyBJIGFzayBmb3Ig
aGVscCEgUGxlYXNlIQoKSGksCiAgIGFyZSB5b3UgY29tcGlsaW5nIHVzaW5nIGFuIFJQTT8KQXMg
ZmFyIGFzIEkgcmVtZW1iZXIgc3BpY2UtY29udHJvbGxlciB3YXMgcmVtb3ZlZCBxdWl0ZSBhIGxv
bmcgYWdvLgoKQ2FuIHlvdSBzZW5kIHRoZSBjb21tYW5kcyB5b3UgYXJlIHRyeWluZyB0byB1c2Ug
YW5kIHNvbWUgZXJyb3Igb3V0cHV0PwoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
