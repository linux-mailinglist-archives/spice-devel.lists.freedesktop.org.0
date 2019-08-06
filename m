Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E5683113
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 14:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D078C6E36D;
	Tue,  6 Aug 2019 12:00:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 352416E36B
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 12:00:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CDDC013227
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 12:00:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C1B9760623
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 12:00:26 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF26F1803B5D;
 Tue,  6 Aug 2019 12:00:25 +0000 (UTC)
Date: Tue, 6 Aug 2019 08:00:25 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <42938877.4856912.1565092825874.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190801150119.29179-2-ssheribe@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
 <20190801150119.29179-2-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.28]
Thread-Topic: gst-plugin: Allow generation gstreamer dot file
Thread-Index: 9Hld62GbaGue9Rs+ZB00uMTCYMpbyg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 06 Aug 2019 12:00:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 2/4] gst-plugin:
 Allow generation gstreamer dot file
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

PiAKPiBTZXQgR1NUX0RFQlVHX0RVTVBfRE9UX0RJUiB0byBzcGVjaWZ5IHdoZXJlIHRvIHBsYWNl
IHRoZSBnZW5lcmF0ZWQKPiAuZG90IGZpbGUKCkFja2VkLgoKV2h5IG5vdCB0aGUgc2lnbmVkLW9m
ZiA/Cgo+IC0tLQo+ICBzcmMvZ3N0LXBsdWdpbi5jcHAgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvZ3N0
LXBsdWdpbi5jcHAgYi9zcmMvZ3N0LXBsdWdpbi5jcHAKPiBpbmRleCBlOWQ5MzY0Li4wYTFkMDQx
IDEwMDY0NAo+IC0tLSBhL3NyYy9nc3QtcGx1Z2luLmNwcAo+ICsrKyBiL3NyYy9nc3QtcGx1Z2lu
LmNwcAo+IEBAIC0yNjEsNyArMjYxLDcgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBp
cGVsaW5lX2luaXQoY29uc3QKPiBHc3RyZWFtZXJFbmNvZGVyU2V0dGluZ3MgJnNldHRpbgo+ICAg
ICAgfQo+ICAKPiAgICAgIGdzdF9lbGVtZW50X3NldF9zdGF0ZShwaXBlbGluZS5nZXQoKSwgR1NU
X1NUQVRFX1BMQVlJTkcpOwo+IC0KPiArICAgIEdTVF9ERUJVR19CSU5fVE9fRE9UX0ZJTEUoYmlu
LCBHU1RfREVCVUdfR1JBUEhfU0hPV19WRVJCT1NFLAo+ICJnc3QtcGx1Z2luLXBpcGVsaW5lLWRl
YnVnIik7Cj4gICNpZiAhWExJQl9DQVBUVVJFCj4gICAgICBpbnQgc3gsIHN5LCBleCwgZXk7Cj4g
ICAgICBnX29iamVjdF9nZXQoY2FwdHVyZS5nZXQoKSwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
