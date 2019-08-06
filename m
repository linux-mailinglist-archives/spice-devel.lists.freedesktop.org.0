Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F335F83111
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 13:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870736E362;
	Tue,  6 Aug 2019 11:59:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F22E6E362
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 11:59:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E31CB4E83C
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 11:59:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D932260127
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 11:59:43 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D04CE3CB8;
 Tue,  6 Aug 2019 11:59:43 +0000 (UTC)
Date: Tue, 6 Aug 2019 07:59:43 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <633532876.4856834.1565092783652.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190801150119.29179-1-ssheribe@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.14, 10.4.195.28]
Thread-Topic: gst-plugin: Allow ANY memory type to pass from convertor to
 encoder
Thread-Index: w8POn6dBONcmNGEaupjPUk5Pqbb5ow==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 06 Aug 2019 11:59:43 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 1/4] gst-plugin:
 Allow ANY memory type to pass from convertor to encoder
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

TWlub3I6IHR5cG8gaW4gc3ViamVjdCAiY29udmVydG9yIiAtPiAiY29udmVydGVyIi4KCk90aGVy
d2lzZSwKICBBY2tlZC4KCkl0IHdvdWxkIGJlIGV2ZW4gYmV0dGVyIHRvIHN0YXRlIHRoYXQgdGhp
cyBhbGxvdyBmb3IgZXhhbXBsZSBWQVN1cmZhY2UgdHlwZS4KCkZyZWRpYW5vCgo+IAo+IC0tLQo+
ICBzcmMvZ3N0LXBsdWdpbi5jcHAgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9zcmMvZ3N0LXBsdWdpbi5jcHAg
Yi9zcmMvZ3N0LXBsdWdpbi5jcHAKPiBpbmRleCA2NDE1YWMwLi5lOWQ5MzY0IDEwMDY0NAo+IC0t
LSBhL3NyYy9nc3QtcGx1Z2luLmNwcAo+ICsrKyBiL3NyYy9nc3QtcGx1Z2luLmNwcAo+IEBAIC0y
NTIsNyArMjUyLDcgQEAgdm9pZCBHc3RyZWFtZXJGcmFtZUNhcHR1cmU6OnBpcGVsaW5lX2luaXQo
Y29uc3QKPiBHc3RyZWFtZXJFbmNvZGVyU2V0dGluZ3MgJnNldHRpbgo+ICAgICAgZ3N0X2Jpbl9h
ZGQoYmluLCBlbmNvZGVyKTsKPiAgICAgIGdzdF9iaW5fYWRkKGJpbiwgc2luayk7Cj4gIAo+IC0g
ICAgR3N0Q2Fwc1VQdHIgY2Fwcyhnc3RfY2Fwc19mcm9tX3N0cmluZygidmlkZW8veC1yYXciKSk7
Cj4gKyAgICBHc3RDYXBzVVB0ciBjYXBzKGdzdF9jYXBzX2Zyb21fc3RyaW5nKCJ2aWRlby94LXJh
dyhBTlkpIikpOwo+ICAgICAgbGluayA9IGdzdF9lbGVtZW50X2xpbmsoY2FwdHVyZS5nZXQoKSwg
Y29udmVydC5nZXQoKSkgJiYKPiAgICAgICAgICAgICBnc3RfZWxlbWVudF9saW5rX2ZpbHRlcmVk
KGNvbnZlcnQuZ2V0KCksIGVuY29kZXIuZ2V0KCksCj4gICAgICAgICAgICAgY2Fwcy5nZXQoKSkg
JiYKPiAgICAgICAgICAgICBnc3RfZWxlbWVudF9saW5rX2ZpbHRlcmVkKGVuY29kZXIuZ2V0KCks
IHNpbmsuZ2V0KCksCj4gICAgICAgICAgICAgc2lua19jYXBzLmdldCgpKTsKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcg
bGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
