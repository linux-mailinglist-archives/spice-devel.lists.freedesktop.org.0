Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72987129E5
	for <lists+spice-devel@lfdr.de>; Fri,  3 May 2019 10:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6AD18991C;
	Fri,  3 May 2019 08:29:29 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFBB8991C
 for <spice-devel@lists.freedesktop.org>; Fri,  3 May 2019 08:29:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 619058666E;
 Fri,  3 May 2019 08:29:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 578775EE0B;
 Fri,  3 May 2019 08:29:28 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DD0A18089C9;
 Fri,  3 May 2019 08:29:28 +0000 (UTC)
Date: Fri, 3 May 2019 04:29:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1896541738.16188744.1556872168253.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190502221211.25575-3-jwhite@codeweavers.com>
References: <20190502221211.25575-1-jwhite@codeweavers.com>
 <20190502221211.25575-3-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.21]
Thread-Topic: Initial set of revisions to the dummy driver to add DRI and
 Present.
Thread-Index: 6HNdLdDr+R15hoH97diMEECx/MOV9w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Fri, 03 May 2019 08:29:28 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v3 x11spice 3/5] Initial set of revisions
 to the dummy driver to add DRI and Present.
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

PiBUaGlzIG1ha2VzIHRoZSBkdW1teSBkcml2ZXIgc2ltaWxhciB0byB0aGUgbW9kZSBzZXR0aW5n
IGRyaXZlci4KPiAKPiBUaGlzIHdvcmsgd2FzIGRvbmUgYnkgSGVucmkgVmVyYmVldCwgd2hpY2gg
d2FzIGluIHR1cm4gYmFzZWQgaGVhdmlseSBvbgo+IHRoZSBYb3JnIG1vZGVzZXR0aW5nIGRyaXZl
ci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rld2VhdmVycy5j
b20+Cj4gLS0tCj4gdjI6IEFwcGx5IFNwaWNlIHN0eWxlCj4gdjM6IFJlZmluZSBTcGljZSBzdHls
ZSwgZGlzYWJsZSBjb25zb2xlIGtleWJvYXJkIGFuZCBtb3VzZSBpbiBkZWZhdWx0Cj4gICAgIHhv
cmcuY29uZiwgc2hhcmUgYW4gaW5saW5lIGZ1bmN0aW9uIHRvIHJldHVybiBtaWNyb3NlY29uZHMs
Cj4gICAgIG1vcmUgdmlzaWJseSBkaXNhYmxlIGdsYW1vciB3aGVuIHRoZSByZW5kZXIgbm9kZSBp
cyB1bmF2YWlsYWJsZSwKPiAgICAgbGVhdmUgZHVtbXkuaCBhcyBkdW1teS5oCgpHb3QgYSBmb2xs
b3cgdXAgYXQgaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9+ZnppZ2xpby94MTFzcGljZS9s
b2cvP2g9ancsCnNwZWNpZmljYWxseSBodHRwczovL2NnaXQuZnJlZWRlc2t0b3Aub3JnL35memln
bGlvL3gxMXNwaWNlL2NvbW1pdC8/aD1qdyZpZD0xZGRjOTU5Mzk1MzUxZjVkZTAxZmEwMzlmMDAw
YjYzNGM3MmZiZWM3LgoKT3RoZXJ3aXNlIGZpbmUgd2l0aCB0aGUgcGF0Y2guCgpGcmVkaWFubwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZl
bCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
