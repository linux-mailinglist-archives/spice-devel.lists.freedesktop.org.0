Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D3D1279E8
	for <lists+spice-devel@lfdr.de>; Fri, 20 Dec 2019 12:26:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2072D6E048;
	Fri, 20 Dec 2019 11:26:26 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C406E048
 for <spice-devel@lists.freedesktop.org>; Fri, 20 Dec 2019 11:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576841183;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nrHW3yFMv3rwHvApi9w3d0YrfVzVIMfwJHcd4QgFmLI=;
 b=UMYLDwzxQMSxpmAVF1TQVVsWXB4DbFxBCSSRoGZe5elUQjHcBvgRunNFnu38w9Z8CUtcnG
 HZjcqF3bnV1xuhoqbmw9ySq7XM/StylMH6tSIx6H+UohGJgb+t5DrUNgduhj8HH5b94hey
 qNjUFYf/UvWJRr2/PEGcNnfD++qlv4A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-132-ZOr8R0NUPZOv9jm3d3HmtA-1; Fri, 20 Dec 2019 06:26:21 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDDA08DC693;
 Fri, 20 Dec 2019 11:26:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BB8E47574A;
 Fri, 20 Dec 2019 11:26:20 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AD139252E7;
 Fri, 20 Dec 2019 11:26:20 +0000 (UTC)
Date: Fri, 20 Dec 2019 06:26:19 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: franklin zhou <codeit@live.com>
Message-ID: <38520022.16705087.1576841179351.JavaMail.zimbra@redhat.com>
In-Reply-To: <MN2PR06MB5966D55A1D656DE364345514B32D0@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB5966D55A1D656DE364345514B32D0@MN2PR06MB5966.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.30, 10.4.195.29]
Thread-Topic: spice-vdagent does not work on ubuntu18.04
Thread-Index: AQHVtwCgW+vRHrd6ska7S1tfDsBpe8Lto/3K
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: ZOr8R0NUPZOv9jm3d3HmtA-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] spice-vdagent does not work on ubuntu18.04
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PiBoaSwgYWxsLAoKPiBJIGluc3RhbGwgdWJ1bnR1IDE4LjA0IGFtZDY0IHdpdGggdmlydC1tYW5h
Z2VyLAoKPiB0aGUgdmRhZ2VudCBkZWZhdWx0IGluc3RhbGxlZCBpcyBvay4gdGhlIGNvcHkgJnBh
c3RlIGFuZCB3aW5kb3dzIHJlc2l6ZSBpcwo+IG9r44CCCgo+IGJ1dCB3aGVuIEkgYnVpbGQgdGhl
IHZkYWdlbnQgd2l0aCB0aGUgc291cmNlIGNvZGUsIGl0IGRvZXMgbm90IHdvcmsuCj4gYW5kIGxv
ZyBoYXMgdGhpcyBlcnJvcjogIkdldFNlYXRzIGZhaWxlZDogVGhlIG5hbWUgb3JnLmZyZWVkZXNr
dG9wLkNvbnNvbGVLaXQKPiB3YXMgbm90IHByb3ZpZGVkIGJ5IGFueSAuc2VydmljZSBmaWxlcyIK
Cj4gd2FzIEkgbWlzc2luZyBzb21ldGhpbmcgPwoKPiBhbGwgbXkgYnVpbGQgY29tbWFuZCBoZXJl
Ogo+IC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgo+IHN1ZG8g
YXB0LWdldCBpbnN0YWxsIGF1dG9jb25mIGxpYnRvb2wgbGlicGl4bWFuLTEtZGV2IGxpYmpwZWct
ZGV2IGxpYm9wdXMtZGV2Cj4gcHl0aG9uLXB5cGFyc2luZyBweXRob24tc2l4Cj4gc3VkbyBhcHQt
Z2V0IGluc3RhbGwgYnVpbGQtZXNzZW50aWFsCj4gc3VkbyBhcHQtZ2V0IGluc3RhbGwgcGtnLWNv
bmZpZwoKPiBzdWRvIGFwdC1nZXQgaW5zdGFsbCBsaWJwZXJsLWRldgo+IHN1ZG8gYXB0LWdldCBp
bnN0YWxsIGxpYmd0azIuMC1kZXYKPiBzdWRvIGFwdCBpbnN0YWxsIGxpYmFzb3VuZDItZGV2Cj4g
c3VkbyBhcHQtZ2V0IGluc3RhbGwgbGliZGJ1cy0xLWRldgo+IHN1ZG8gYXB0LWdldCBpbnN0YWxs
IGxpYmRybS1kZXYKPiBzdWRvIGFwdC1nZXQgaW5zdGFsbCBsaWJwY2lhY2Nlc3MtZGV2CgpMYXN0
IHRpbWUgSSBidWlsdCBhIHBhY2thZ2Ugb24gRGViaWFuIGJhc2VkIGRpc3RybyB3YXMgdG9vIG11
Y2ggYWdvIGJ1dApJIHJlbWVtYmVyIEkgc2VhcmNoZWQgc29tZXRoaW5nIGxpa2UgImRlYmlhbiBy
ZWJ1aWxkIGRlYiBwYWNrYWdlIi4KRm9yIGluc3RhbmNlIEkgZm91bmQgaHR0cHM6Ly9yYXBoYWVs
aGVydHpvZy5jb20vMjAxMC8xMi8xNS9ob3d0by10by1yZWJ1aWxkLWRlYmlhbi1wYWNrYWdlcy8K
VGhlIGtleSBpcyB0aGUgY29tbWFuZCAiYXB0LWdldCBidWlsZC1kZXAiIHRoYXQgd2lsbCBpbnN0
YWxsIGFsbCBuZWVkZWQKZGVwZW5kZW5jaWVzLiBBbHRob3VnaCB5b3UgZG9uJ3Qgd2FudCB0byBi
dWlsZCBhIERlYmlhbiBwYWNrYWdlIGl0IHdpbGwKaW5zdGFsbCB0aGUgZGVwZW5kZW5jaWVzIG5l
ZWRlZCBmb3IgdGhlIHNvdXJjZXMuCk9uZSBwb3NzaWJsZSBtaXNzaW5nIGRlcGVuZGVuY2llcyBs
b29raW5nIGF0IGVycm9yIGFib3ZlIGlzIHNvbWUgc3lzdGVtZApkZXZlbG9wbWVudCBwYWNrYWdl
LgoKCj4gZ2l0IGNsb25lIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGlj
ZS1wcm90b2NvbC5naXQKPiBnaXQgY2hlY2tvdXQgdjAuMTQuMAo+IC4vYXV0b2dlbi5zaCAtLXBy
ZWZpeD0vdXNyCj4gc3VkbyBtYWtlIGluc3RhbGwKCj4gZ2l0IGNsb25lIGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9zcGljZS9saW51eC92ZF9hZ2VudC5naXQKPiBnaXQgY2hlY2tvdXQg
c3BpY2UtdmRhZ2VudC0wLjE3LjAKCj4gLi9hdXRvZ2VuLnNoIC0tcHJlZml4PS91c3IKPiBzdWRv
IG1ha2UgaW5zdGFsbAo+ICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
Ki8KCkZyZWRpYW5vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWwK
