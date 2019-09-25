Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5A8BDAE9
	for <lists+spice-devel@lfdr.de>; Wed, 25 Sep 2019 11:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484AD6EB58;
	Wed, 25 Sep 2019 09:26:25 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01CA46EB58
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:26:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 909BC2BFDC
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:26:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8463F5D721
 for <spice-devel@lists.freedesktop.org>; Wed, 25 Sep 2019 09:26:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B7314EDA5;
 Wed, 25 Sep 2019 09:26:23 +0000 (UTC)
Date: Wed, 25 Sep 2019 05:26:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Victor Toso <victortoso@redhat.com>
Message-ID: <1206892568.3205028.1569403583290.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190925090701.19130-2-victortoso@redhat.com>
References: <20190925090701.19130-1-victortoso@redhat.com>
 <20190925090701.19130-2-victortoso@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.18, 10.4.195.21]
Thread-Topic: tests: migrate: remove spicec option
Thread-Index: xUqDauE/55JkpkIBVPBwr7/bqNukNA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Wed, 25 Sep 2019 09:26:23 +0000 (UTC)
Subject: Re: [Spice-devel] [spice 1/8] tests: migrate: remove spicec option
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

PiAKPiBGcm9tOiBWaWN0b3IgVG9zbyA8bWVAdmljdG9ydG9zby5jb20+Cj4gCj4gUmVtb3ZlZCwg
c2VlOgo+IAo+ICB8IGNvbW1pdCAxODc2OTcxNDQyZWY4MDhiNWRjZGFhNWRjMTJkZjYxN2YyMTc5
Y2I1Cj4gIHwgQXV0aG9yOiBDaHJpc3RvcGhlIEZlcmdlYXUgPGNmZXJnZWF1QHJlZGhhdC5jb20+
Cj4gIHwgRGF0ZTogICBGcmkgTm92IDIxIDExOjAxOjE3IDIwMTQgKzAxMDAKPiAgfAo+ICB8ICAg
ICBjbGllbnQ6IFJlbW92ZSBjbGllbnQgY29kZQo+ICB8Cj4gIHwgICAgIFRoZSBjbGllbnQgaGFz
IGJlZW4gc3VwZXJzZWRlZCBieSB2aXJ0LXZpZXdlciAoCj4gIHwgICAgIGh0dHA6Ly92aXJ0LW1h
bmFnZXIub3JnL2Rvd25sb2FkL3NvdXJjZXMvdmlydC12aWV3ZXIvICkKPiAgfCAgICAgYW5kIGlz
IG5vIGxvbmdlciBiZWluZyBtYWludGFpbmVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpY3RvciBU
b3NvIDx2aWN0b3J0b3NvQHJlZGhhdC5jb20+Cj4gLS0tCj4gIHRlc3RzL21pZ3JhdGUucHkgfCA0
ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvbWlncmF0ZS5weSBiL3Rlc3RzL21pZ3JhdGUucHkKPiBp
bmRleCA5YTNjZWY0Ny4uMGMzMDJjOTIgMTAwNzU1Cj4gLS0tIGEvdGVzdHMvbWlncmF0ZS5weQo+
ICsrKyBiL3Rlc3RzL21pZ3JhdGUucHkKPiBAQCAtMTYsNyArMTYsNyBAQCBXaWxsIGxlYXZlIGEg
bG9nIGZpbGUsIG1pZ3JhdGVfdGVzdC5sb2csIGluIGN1cnJlbnQKPiBkaXJlY3RvcnkuCj4gICIi
Igo+ICAKPiAgIwo+IC0jIHN0YXJ0IG9uZSBzcGljZWNsaWVudCwgaGF2ZSB0d28gbWFjaGluZXMg
KGFjdGl2ZSBhbmQgdGFyZ2V0KSwKPiArIyBzdGFydCBvbmUgc3BpY2UgY2xpZW50LCBoYXZlIHR3
byBtYWNoaW5lcyAoYWN0aXZlIGFuZCB0YXJnZXQpLAo+ICAjIGFuZCByZXBlYXQ6Cj4gICMgIGFj
dGl2ZSB3YWl0IHVudGlsIGl0J3MgYWN0aXZlCj4gICMgIGFjdGl2ZSBjbGllbnRfbWlncmF0ZV9p
bmZvCj4gQEAgLTU4LDcgKzU4LDcgQEAgZGVmIGdldF9hcmdzKCk6Cj4gICAgICBwYXJzZXIuYWRk
X2FyZ3VtZW50KCctLXFlbXUnLCBkZXN0PSdxZW11JywKPiAgICAgIGRlZmF1bHQ9Jy4uLy4uL3Fl
bXUveDg2XzY0LXNvZnRtbXUvcWVtdS1zeXN0ZW0teDg2XzY0JykKPiAgICAgIHBhcnNlci5hZGRf
YXJndW1lbnQoJy0tbG9nX2ZpbGVuYW1lJywgZGVzdD0nbG9nX2ZpbGVuYW1lJywKPiAgICAgIGRl
ZmF1bHQ9J21pZ3JhdGUubG9nJykKPiAgICAgIHBhcnNlci5hZGRfYXJndW1lbnQoJy0taW1hZ2Un
LCBkZXN0PSdpbWFnZScsIGRlZmF1bHQ9JycpCj4gLSAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCct
LWNsaWVudCcsIGRlc3Q9J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywKPiBjaG9pY2VzPVsnc3Bp
Y2VjJywgJ3NwaWN5J10pCj4gKyAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctLWNsaWVudCcsIGRl
c3Q9J2NsaWVudCcsIGRlZmF1bHQ9J3NwaWN5JywKPiBjaG9pY2VzPVsnc3BpY3knXSkKPiAgICAg
IHBhcnNlci5hZGRfYXJndW1lbnQoJy0tdmRhZ2VudCcsIGNob2ljZXM9WydvbicsICdvZmYnXSwg
ZGVmYXVsdD0nb24nKQo+ICAgICAgYXJncyA9IHBhcnNlci5wYXJzZV9hcmdzKHN5cy5hcmd2WzE6
XSkKPiAgICAgIGlmIG9zLnBhdGguZXhpc3RzKGFyZ3MucWVtdSk6CgpQYXRjaCBsb29rcyBmaW5l
LgpUaGVyZSdzIGFub3RoZXIgcGF0Y2ggYWRkaW5nIGFnYWluIGFub3RoZXIgY2xpZW50LCBhbnl3
YXkKCkFja2VkLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KCkZyZWRp
YW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
