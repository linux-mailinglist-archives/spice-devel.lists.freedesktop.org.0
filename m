Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C68D769072
	for <lists+spice-devel@lfdr.de>; Mon, 15 Jul 2019 16:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E9B8940E;
	Mon, 15 Jul 2019 14:21:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 216AF8940E
 for <spice-devel@lists.freedesktop.org>; Mon, 15 Jul 2019 14:21:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AD6E3C04959F;
 Mon, 15 Jul 2019 14:21:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A04C25B684;
 Mon, 15 Jul 2019 14:21:54 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 965C31818485;
 Mon, 15 Jul 2019 14:21:54 +0000 (UTC)
Date: Mon, 15 Jul 2019 10:21:54 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Yuri Benditovich <yuri.benditovich@daynix.com>
Message-ID: <2128834677.166369.1563200514428.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190714140741.3274-2-yuri.benditovich@daynix.com>
References: <20190714140741.3274-1-yuri.benditovich@daynix.com>
 <20190714140741.3274-2-yuri.benditovich@daynix.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.11, 10.4.195.4]
Thread-Topic: build: require minimal libusb version 1.0.21
Thread-Index: 4Q8Lw1MaL876+2VzvaFkamtfY4jtkw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 15 Jul 2019 14:21:54 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-gtk 1/5] build: require minimal libusb
 version 1.0.21
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
Cc: yan@daynix.com, spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Cj4gCj4gUHJldmlvdXMgY29tbWl0IGNhNjQxYTViOTIgdXNlcyBsaWJ1c2JfaW50ZXJydXB0X2V2
ZW50X2hhbmRsZXIKPiB3aGljaCByZXF1aXJlcyBuZXdlciB2ZXJzaW9uIG9mIGxpYnVzYi4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5dXJpLmJlbmRpdG92aWNoQGRheW5p
eC5jb20+CgpNeSBmYXVsdC4KQWNjb3JkaW5nIHRvIHJlcG9sb2d5IHRoaXMgc2hvdWxkIG5vdCBi
ZSBhbiBpc3N1ZS4KRmluZSBmb3IgbWUuCgo+IC0tLQo+ICBtZXNvbi5idWlsZCB8IDIgKy0KPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKPiBpbmRleCAzMjU2MWVlLi41NDE2MGY5
IDEwMDY0NAo+IC0tLSBhL21lc29uLmJ1aWxkCj4gKysrIGIvbWVzb24uYnVpbGQKPiBAQCAtMTk5
LDcgKzE5OSw3IEBAIHVzYnJlZGlyX3ZlcnNpb24gPSAnMC43LjEnCj4gIHVzYnJlZGlyX3ZlcnNp
b25faW5mbyA9ICc+PSBAMEAnLmZvcm1hdCh1c2JyZWRpcl92ZXJzaW9uKQo+ICBkMSA9IGRlcGVu
ZGVuY3koJ2xpYnVzYnJlZGlycGFyc2VyLTAuNScsIHZlcnNpb246IHVzYnJlZGlyX3ZlcnNpb25f
aW5mbywKPiAgcmVxdWlyZWQgOiBnZXRfb3B0aW9uKCd1c2JyZWRpcicpKQo+ICBkMiA9IGRlcGVu
ZGVuY3koJ2xpYnVzYnJlZGlyaG9zdCcsIHZlcnNpb246IHVzYnJlZGlyX3ZlcnNpb25faW5mbywg
cmVxdWlyZWQKPiAgOiBnZXRfb3B0aW9uKCd1c2JyZWRpcicpKQo+IC1kMyA9IGRlcGVuZGVuY3ko
J2xpYnVzYi0xLjAnLCB2ZXJzaW9uIDogJz49IDEuMC4xNicsIHJlcXVpcmVkIDoKPiBnZXRfb3B0
aW9uKCd1c2JyZWRpcicpKQo+ICtkMyA9IGRlcGVuZGVuY3koJ2xpYnVzYi0xLjAnLCB2ZXJzaW9u
IDogJz49IDEuMC4yMScsIHJlcXVpcmVkIDoKPiBnZXRfb3B0aW9uKCd1c2JyZWRpcicpKQo+ICBp
ZiBkMS5mb3VuZCgpIGFuZCBkMi5mb3VuZCgpIGFuZCBkMy5mb3VuZCgpCj4gICAgc3BpY2VfZ2xp
Yl9kZXBzICs9IFtkMSwgZDIsIGQzXQo+ICAgIHNwaWNlX2d0a19jb25maWdfZGF0YS5zZXQoJ1VT
RV9VU0JSRURJUicsICcxJykKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
