Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5B1129DF
	for <lists+spice-devel@lfdr.de>; Fri,  3 May 2019 10:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559568912B;
	Fri,  3 May 2019 08:27:32 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 570F98912B
 for <spice-devel@lists.freedesktop.org>; Fri,  3 May 2019 08:27:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E789530ADBCB;
 Fri,  3 May 2019 08:27:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DBB2C5C64C;
 Fri,  3 May 2019 08:27:29 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D2C0718089C9;
 Fri,  3 May 2019 08:27:29 +0000 (UTC)
Date: Fri, 3 May 2019 04:27:28 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jeremy White <jwhite@codeweavers.com>
Message-ID: <1683339192.16188660.1556872048544.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190502221211.25575-2-jwhite@codeweavers.com>
References: <20190502221211.25575-1-jwhite@codeweavers.com>
 <20190502221211.25575-2-jwhite@codeweavers.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.5]
Thread-Topic: Apply Spice style to the spice-video-dummy
Thread-Index: y0PpbObvgp2l0lGGtUy7NarhqK653A==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 03 May 2019 08:27:29 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH v3 x11spice 2/5] Apply Spice style to the
 spice-video-dummy
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

PiAKPiBEbyB0aGlzIHVzaW5nIHRoZSBzcGljZV9pbmRlbnQgc2NyaXB0IHdoaWNoIHVzZXMgaW5k
ZW50IHRvIGFwcGx5Cj4gY3VycmVudCBTcGljZSBzdHlsZXMgKGFzIHBlciBGcmVkaWFubyBaaWds
aW8gb24gMjAxOS0wNS0wMS4KCkRvIHlvdSBtaXNzIGEgY2xvc2UgcGFyZW50aGVzaXM/IE5vdCBh
IGJpZyBpc3N1ZQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBKZXJlbXkgV2hpdGUgPGp3aGl0ZUBjb2Rl
d2VhdmVycy5jb20+Cj4gLS0tCj4gdjI6IE9yaWdpbmFsIHZlcnNpb24KPiB2MzogUmV2aXNlZCB0
byBoYXZlIGNhc2UgaW5kZW50IGF0IDAsIGN1ZGRsZSBlbHNlLCBmaXggZnVuY3Rpb25zCj4gICAg
IHJldHVybmluZyBCb29sLCBhbmQgcHJlc2VydmUgWG9yZyBmdW5jdGlvbiBkZWNsYXJhdGlvbiBz
dHlsZQoKR290IGEgZm9sbG93IHVwIGF0IGh0dHBzOi8vY2dpdC5mcmVlZGVza3RvcC5vcmcvfmZ6
aWdsaW8veDExc3BpY2UvbG9nLz9oPWp3LApzcGVjaWZpY2FsbHkgaHR0cHM6Ly9jZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9+ZnppZ2xpby94MTFzcGljZS9jb21taXQvP2g9ancmaWQ9ZmU4YTM3ZmNhNTZk
ZTc5MjA5OWE2YmYxYWQzMTZkM2E0YWEyMmE1Zi4KCi4uLiBvbWlzc2lzIC4uLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
