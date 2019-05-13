Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E942B1B7A9
	for <lists+spice-devel@lfdr.de>; Mon, 13 May 2019 16:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D000E89DA3;
	Mon, 13 May 2019 14:02:38 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3279989DA3
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 14:02:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C9C8CC058CA8
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 14:02:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BDF931001DE1
 for <spice-devel@lists.freedesktop.org>; Mon, 13 May 2019 14:02:37 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B274E18089CA;
 Mon, 13 May 2019 14:02:37 +0000 (UTC)
Date: Mon, 13 May 2019 10:02:36 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <957937010.17861132.1557756156132.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190513135246.14849-1-ssheribe@redhat.com>
References: <20190513135246.14849-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.7, 10.4.195.29]
Thread-Topic: Remove -Wchkp warning, deprecated in GCC 9
Thread-Index: JMhU/XPxD9ACi4rqni6EtgwKzEBpiw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 13 May 2019 14:02:37 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent] Remove -Wchkp
 warning, deprecated in GCC 9
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

PiAKPiBTaWduZWQtb2ZmLWJ5OiBTbmlyIFNoZXJpYmVyIDxzc2hlcmliZUByZWRoYXQuY29tPgoK
QWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgoKPiAtLS0KPiAg
bTQvbWFueXdhcm5pbmdzLm00IHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL200L21hbnl3YXJuaW5ncy5tNCBiL200L21hbnl3YXJuaW5ncy5t
NAo+IGluZGV4IDRmNzAxZjQuLjM4NjQxMDAgMTAwNjQ0Cj4gLS0tIGEvbTQvbWFueXdhcm5pbmdz
Lm00Cj4gKysrIGIvbTQvbWFueXdhcm5pbmdzLm00Cj4gQEAgLTExNiw3ICsxMTYsNiBAQCBBQ19E
RUZVTihbZ2xfTUFOWVdBUk5fQUxMX0dDQ10sCj4gICAgICAtV2J1aWx0aW4tbWFjcm8tcmVkZWZp
bmVkIFwKPiAgICAgIC1XY2FzdC1hbGlnbiBcCj4gICAgICAtV2NoYXItc3Vic2NyaXB0cyBcCj4g
LSAgICAtV2Noa3AgXAo+ICAgICAgLVdjbG9iYmVyZWQgXAo+ICAgICAgLVdjb21tZW50IFwKPiAg
ICAgIC1XY29tbWVudHMgXApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
