Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 804BE5812D
	for <lists+spice-devel@lfdr.de>; Thu, 27 Jun 2019 13:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A2F89862;
	Thu, 27 Jun 2019 11:11:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8FDD89DED
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 11:11:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6A544C04AC69
 for <spice-devel@lists.freedesktop.org>; Thu, 27 Jun 2019 11:11:02 +0000 (UTC)
Received: from lub.tlv (dhcp-4-34.tlv.redhat.com [10.35.4.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CD5CB5D71C;
 Thu, 27 Jun 2019 11:11:01 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190627090527.7748-1-fziglio@redhat.com>
 <034f4cfc-bd30-05fc-0e7f-d79d90ede101@redhat.com>
 <746213379.24959635.1561629117134.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <f3945f32-07c4-f363-f2d7-843891233691@redhat.com>
Date: Thu, 27 Jun 2019 14:10:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <746213379.24959635.1561629117134.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 27 Jun 2019 11:11:02 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] display-channel: Initialise
 variable as soon as possible
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
Reply-To: uril@redhat.com
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNi8yNy8xOSAxMjo1MSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+Pgo+PiBIaQo+Pgo+
PiBTdWdnZXN0aW9uczoKPj4gICAgIEluaXRpYWxpc2UgLT4gSW5pdGlhbGl6ZSAgKD8pIChJcyB0
aGlzIEJyaXRpc2ggdnMgQW1lcmljYW4gPykKPiAKPiBZZXMsIFVTL1VLIDotKQo+IAo+PiAgICAg
dmFyaWFibGUgLT4gcHJldiAoPykKPj4KPiAKPiAiSW5pdGlhbGl6ZSBwcmV2IGFzIHNvb24gYXMg
cG9zc2libGUiID8KClNvcnJ5LCBJIG1lYW50ICJwcml2IgoKKFdhcyAiYWZmZWN0ZWQiIGJ5IHJp
bmdzLCBhZnRlciByZXZpZXdpbmcgS2V2aW4ncyBwYXRjaCA7LSkKCkl0J3Mgbm90IGltcG9ydGFu
dCwganVzdCBhIG1pbm9yIHN1Z2dlc3Rpb24uCgpUaGFua3MsCiAgICAgVXJpLgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
