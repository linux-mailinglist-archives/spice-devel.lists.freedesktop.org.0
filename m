Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7019B10D69A
	for <lists+spice-devel@lfdr.de>; Fri, 29 Nov 2019 15:01:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CC16E911;
	Fri, 29 Nov 2019 14:01:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F9D6E911
 for <spice-devel@lists.freedesktop.org>; Fri, 29 Nov 2019 14:01:44 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-426-UK-z3X2gMuGanwzyObpINw-1; Fri, 29 Nov 2019 09:01:41 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2840F80183C;
 Fri, 29 Nov 2019 14:01:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2051C600C8;
 Fri, 29 Nov 2019 14:01:40 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 17A8C4BB5C;
 Fri, 29 Nov 2019 14:01:40 +0000 (UTC)
Date: Fri, 29 Nov 2019 09:01:38 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: =?utf-8?B?6LS65q+F5rab?= <linuxgcc@163.com>
Message-ID: <2070886453.13820400.1575036098352.JavaMail.zimbra@redhat.com>
In-Reply-To: <29990268.9698.16e9c77f757.Coremail.linuxgcc@163.com>
References: <29990268.9698.16e9c77f757.Coremail.linuxgcc@163.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.17, 10.4.195.17]
Thread-Topic: how to spice-gtk-0.35 on windows 7 home
Thread-Index: vlIUygVnT1uTM/+NIALUts6FnUUZhA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: UK-z3X2gMuGanwzyObpINw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575036102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OHEhHpaqlLR7qO7JenIhTZ5FriBV8XVKGewsONiBz7I=;
 b=d2iqzZy6YT5Qk8q+Fym7z+SWixI5CTteXvCNWXdMwM7PFtnNdaPfx0YeP4ONZsneqqxiEK
 wN1kRuzBAVkjR6Gj8KVOHqgBtAulTHPoBwXQas8q9ZsUY2wtz06MEvLVRAafTk/kB2XlR8
 Mv/WdHfiAtp9ZmL95pn8mlewe9vziuw=
Subject: Re: [Spice-devel] how to spice-gtk-0.35 on windows 7 home
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

PiBGcm9tOiAi6LS65q+F5rabIiA8bGludXhnY2NAMTYzLmNvbT4KPiBUbzogc3BpY2UtZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gU2VudDogU3VuZGF5LCAyNCBOb3ZlbWJlciwgMjAxOSA4
OjEyOjE4IEFNCj4gU3ViamVjdDogW1NwaWNlLWRldmVsXSBob3cgdG8gc3BpY2UtZ3RrLTAuMzUg
b24gd2luZG93cyA3IGhvbWUKCj4gcGxlYXNlIGhlbHAgbWUsaSB3YW50IGJ1aWxkIHNwaWNlLWd0
ay0wLjM1IG9uIHdpbmRvd3MgLGlzIHRoZXJlIGhhdmUgc2FtZQo+IGJ1aWxkIGd1aWRlPwoKVXN1
YWxseSBzcGljZS1ndGsgaXMgY3Jvc3MgYnVpbHQgZnJvbSBhIExpbnV4IG1hY2hpbmUuCkN1cnJl
bnRseSB3ZSB1c2UgTWVzb24gYXMgYnVpbGQgc3lzdGVtLgpXaHkgZG8geW91IHdhbnQgdG8gYnVp
bGQgMC4zNSBpbnN0ZWFkIG9mIDAuMzcgKHRoZSBsYXN0KSA/CgpGcmVkaWFubwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGlu
ZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
