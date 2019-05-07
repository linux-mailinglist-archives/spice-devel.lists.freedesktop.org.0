Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D787216353
	for <lists+spice-devel@lfdr.de>; Tue,  7 May 2019 14:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC766E7BA;
	Tue,  7 May 2019 12:01:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E25CC6E7BA
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 12:01:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 64D1F3097063
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 12:01:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A449173D5
 for <spice-devel@lists.freedesktop.org>; Tue,  7 May 2019 12:01:55 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 500EE18089CA;
 Tue,  7 May 2019 12:01:55 +0000 (UTC)
Date: Tue, 7 May 2019 08:01:53 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <1134627526.17174516.1557230513781.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190507092512.2696-1-ssheribe@redhat.com>
References: <20190507092512.2696-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.12]
Thread-Topic: Remove -Wchkp warning, deprecated in GCC 9
Thread-Index: 4IAMWbUB/1D9LxG/j3u192N+/idcQA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 07 May 2019 12:01:55 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice] Remove -Wchkp warning,
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

PiBTaWduZWQtb2ZmLWJ5OiBTbmlyIFNoZXJpYmVyIDxzc2hlcmliZUByZWRoYXQuY29tPgoKQWNr
ZWQKCj4gLS0tCj4gIG00L21hbnl3YXJuaW5ncy5tNCB8IDEgLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9tNC9tYW55d2FybmluZ3MubTQgYi9tNC9t
YW55d2FybmluZ3MubTQKPiBpbmRleCA0ZjcwMWY0ZS4uMzg2NDEwMDEgMTAwNjQ0Cj4gLS0tIGEv
bTQvbWFueXdhcm5pbmdzLm00Cj4gKysrIGIvbTQvbWFueXdhcm5pbmdzLm00Cj4gQEAgLTExNiw3
ICsxMTYsNiBAQCBBQ19ERUZVTihbZ2xfTUFOWVdBUk5fQUxMX0dDQ10sCj4gICAgICAtV2J1aWx0
aW4tbWFjcm8tcmVkZWZpbmVkIFwKPiAgICAgIC1XY2FzdC1hbGlnbiBcCj4gICAgICAtV2NoYXIt
c3Vic2NyaXB0cyBcCj4gLSAgICAtV2Noa3AgXAo+ICAgICAgLVdjbG9iYmVyZWQgXAo+ICAgICAg
LVdjb21tZW50IFwKPiAgICAgIC1XY29tbWVudHMgXApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
