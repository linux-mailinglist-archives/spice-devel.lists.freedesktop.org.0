Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6699448365
	for <lists+spice-devel@lfdr.de>; Mon, 17 Jun 2019 15:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EAB8919D;
	Mon, 17 Jun 2019 13:03:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C978C8919D
 for <spice-devel@lists.freedesktop.org>; Mon, 17 Jun 2019 13:03:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5F0B53B72A;
 Mon, 17 Jun 2019 13:03:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 175B910246F5;
 Mon, 17 Jun 2019 13:03:51 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 03690206D1;
 Mon, 17 Jun 2019 13:03:50 +0000 (UTC)
Date: Mon, 17 Jun 2019 09:03:49 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Francois Gouget <fgouget@codeweavers.com>
Message-ID: <1289592463.23107872.1560776629375.JavaMail.zimbra@redhat.com>
In-Reply-To: <alpine.DEB.2.21.1906150211110.8132@amboise.dolphin>
References: <3cfa084bfb39cf77de9269282c087f8b30f99867.1560528809.git.fgouget@free.fr>
 <87006434.22885842.1560532156244.JavaMail.zimbra@redhat.com>
 <alpine.DEB.2.21.1906150211110.8132@amboise.dolphin>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.51, 10.4.195.26]
Thread-Topic: gstreamer: Avoid direct access to GQueue fields
Thread-Index: EK+SCu9w7CJgfrRJzKDfwy5E0S5hQw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 17 Jun 2019 13:03:52 +0000 (UTC)
Subject: Re: [Spice-devel] [client 1/5] gstreamer: Avoid direct access to
 GQueue fields
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

PiAKPiBPbiBGcmksIDE0IEp1biAyMDE5LCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gCj4gPiA+
IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBGcmFuY29pcyBHb3VnZXQgPGZnb3VnZXRAY29kZXdlYXZl
cnMuY29tPgo+ID4gCj4gPiBDb25zaWRlcmluZyB0aGF0IHRoZSBmaWVsZCBpcyBwdWJsaWMgYW5k
IHRoYXQgY29kZSB3aWxsIGdldAo+ID4gc2xvd2VyIGFuZCBiaWdnZXIgYXQgbGVhc3Qgd291bGQg
YmUgZ29vZCB0byBkZXNjcmliZSB0aGUgcmVhc29uCj4gPiB3aHkgeW91IGNvbnNpZGVyIGl0IGJl
dHRlci4KPiAKPiBDb25zaXN0ZW5jeSBtb3N0bHkuIFRoaXMgaXMgdGhlIG9ubHkgcGxhY2Ugd2hl
cmUgd2UgYWNjZXNzIHRoZSBHUXVldWUKPiBmaWVsZHMuIEluIG90aGVyIHBsYWNlcyB3ZSB1c2Ug
Z19xdWV1ZV9wZWVrX2hlYWRfbGluaygpIGluc3RlYWQgb2YKPiBkZWNvZGluZ19xdWV1ZS0+aGVh
ZCBmb3IgaW5zdGFuY2UuCj4gCj4gQnV0IEknbSBmaW5lIHdpdGgga2VlcGluZyBkZWNvZGluZ19x
dWV1ZS0+bGVuZ3RoIGlmIHRoYXQncyBwcmVmZXJyZWQuCj4gCgpJIHdvdWxkIHBlcnNvbmFsbHkg
anVzdCB1c2UgdGhlIGZpZWxkLgoKTG9va2luZyBhdCBHTGliIGdxdWV1ZS5oIGhlYWRlciBsb29r
cyBsaWtlIHRoZSBzdHJ1Y3R1cmUgd2FzIGludGVuZGVkIHRvCmJlIHBhcnRpYWxseSBvcGFxdWUg
YnV0IGdvdCBmdWxseSBwdWJsaWMgc2luY2UgMi4xNCB2ZXJzaW9uIChzZWUKR19RVUVVRV9JTklU
KS4KVGhlICJDb250YWlucyB0aGUgcHVibGljIGZpZWxkcyBvZiBhIC4uLiIgY29tbWVudCBvbiBf
R1F1ZXVlIHN0cnVjdHVyZQpzaG91bGQgYmUgY2hhbmdlZCB0byAiQ29udGFpbnMgdGhlIGZpZWxk
cyBvZiBhIi4KCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9zcGljZS1kZXZlbA==
