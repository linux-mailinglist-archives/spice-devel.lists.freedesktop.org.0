Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6C94B5B5
	for <lists+spice-devel@lfdr.de>; Wed, 19 Jun 2019 11:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C5B6E348;
	Wed, 19 Jun 2019 09:59:04 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B9B86E348
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 09:59:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 925E9C18B2C3
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 09:59:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A77F5C220
 for <spice-devel@lists.freedesktop.org>; Wed, 19 Jun 2019 09:59:02 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7FC474EA67;
 Wed, 19 Jun 2019 09:59:02 +0000 (UTC)
Date: Wed, 19 Jun 2019 05:59:00 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Jakub =?utf-8?Q?Jank=C5=AF?= <jjanku@redhat.com>
Message-ID: <1204786216.23630824.1560938340965.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190617204630.22420-4-jjanku@redhat.com>
References: <20190617204630.22420-1-jjanku@redhat.com>
 <20190617204630.22420-4-jjanku@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.183, 10.4.195.4]
Thread-Topic: webdav: remove client on empty message
Thread-Index: Iy4s2VzQiY5O6aSyKtNQVHgR9XEX6w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 19 Jun 2019 09:59:02 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 4/5] webdav: remove client on
 empty message
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

PiAKPiBNZXNzYWdlIHdpdGggbm8gZGF0YSBmcm9tIHNwaWNlLXdlYmRhdiBkYWVtb24gbWVhbnMK
PiB0aGUgY2xpZW50IGRpc2Nvbm5lY3RlZC4KPiAKPiBJbiB0aGlzIGNhc2UsIHRoZSBjbGllbnQg
Y29ubmVjdGlvbiB0byBwaG9kYXYKPiBzaG91bGQgYmUgY2xvc2VkIGFzIHdlbGwuCj4gCj4gVGhp
cyBjYW4gaGFwcGVuIGUuZy4gd2hlbiBmaWxlIHRyYW5zZmVyIGdldHMgY2FuY2VsbGVkLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEpha3ViIEphbmvFryA8amphbmt1QHJlZGhhdC5jb20+Cj4gLS0tCj4g
IHNyYy9jaGFubmVsLXdlYmRhdi5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3NyYy9jaGFubmVsLXdl
YmRhdi5jIGIvc3JjL2NoYW5uZWwtd2ViZGF2LmMKPiBpbmRleCBlYTI4N2YxLi4zNGQ4OGE5IDEw
MDY0NAo+IC0tLSBhL3NyYy9jaGFubmVsLXdlYmRhdi5jCj4gKysrIGIvc3JjL2NoYW5uZWwtd2Vi
ZGF2LmMKPiBAQCAtMzQxLDggKzM0MSw4IEBAIHN0YXRpYyB2b2lkIGRlbXV4X3RvX2NsaWVudChD
bGllbnQgKmNsaWVudCkKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGMtPmNhbmNlbGxhYmxlLCBkZW11eF90b19jbGllbnRfY2IsCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjbGllbnQpOwo+ICAgICAgICAgIHJldHVybjsKPiAgICAg
IH0gZWxzZSB7Cj4gLSAgICAgICAgLyogTm90aGluZyB0byB3cml0ZSAqLwo+IC0gICAgICAgIGRl
bXV4X3RvX2NsaWVudF9maW5pc2goY2xpZW50LCBGQUxTRSk7Cj4gKyAgICAgICAgLyogQ2xpZW50
IGRpc2Nvbm5lY3RlZCAqLwo+ICsgICAgICAgIGRlbXV4X3RvX2NsaWVudF9maW5pc2goY2xpZW50
LCBUUlVFKTsKCk1pbm9yIHN0eWxlOiBhcyB3ZSBhcmUgY2hhbmdpbmcgdGhpcy4gUHJldmlvdXMg
aWYgYmxvY2sgZW5kcyB3aXRoIGEgInJldHVybiIsCndoeSBub3QgcmVtb3ZpbmcgdGhlICJlbHNl
IiBhbmQgcmVkdWNlIGluZGVudGF0aW9uIHRvbz8KCj4gICAgICB9Cj4gICNlbmRpZgo+ICB9CgpP
dGhlcndpc2UsCiAgQWNrZWQtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29t
PgoKRnJlZGlhbm8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNl
LWRldmVs
