Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CC6435A0
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 13:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD15789296;
	Thu, 13 Jun 2019 11:45:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D7F689296
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 11:44:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1D62FC04AC69
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 11:44:59 +0000 (UTC)
Received: from lub.tlv (dhcp-4-88.tlv.redhat.com [10.35.4.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FEEC7836F;
 Thu, 13 Jun 2019 11:44:56 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190612105330.18091-1-fziglio@redhat.com>
 <e2afe030-d952-fb05-be80-b6e1de944c7b@redhat.com>
 <420073056.22554354.1560419853598.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <768ec3b3-22d2-2364-dc1a-1fa297f4a47a@redhat.com>
Date: Thu, 13 Jun 2019 14:44:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <420073056.22554354.1560419853598.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 13 Jun 2019 11:44:59 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] red-stream: Fix compilation
 on Fedora 30 for Windows using MingW
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

T24gNi8xMy8xOSAxMjo1NyBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+PiBPbiA2LzEyLzE5
IDE6NTMgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4+IE9uIFdpbmRvd3MgRmVkb3JhIDMw
IHJlcG9ydHMgdGhlc2UgZXJyb3JzOgo+Pj4KPj4+IEluIGZpbGUgaW5jbHVkZWQgZnJvbQo+Pj4g
L3Vzci94ODZfNjQtdzY0LW1pbmd3MzIvc3lzLXJvb3QvbWluZ3cvaW5jbHVkZS9vcGVuc3NsL2Ny
eXB0by5oOjI5LAo+Pj4gICAgICAgICAgICAgICAgICAgIGZyb20KPj4+ICAgICAgICAgICAgICAg
ICAgICAvdXNyL3g4Nl82NC13NjQtbWluZ3czMi9zeXMtcm9vdC9taW5ndy9pbmNsdWRlL29wZW5z
c2wvYmlvLmg6MjAsCj4+PiAgICAgICAgICAgICAgICAgICAgZnJvbQo+Pj4gICAgICAgICAgICAg
ICAgICAgIC91c3IveDg2XzY0LXc2NC1taW5ndzMyL3N5cy1yb290L21pbmd3L2luY2x1ZGUvb3Bl
bnNzbC9lcnIuaDoyMSwKPj4+ICAgICAgICAgICAgICAgICAgICBmcm9tIHJlZC1zdHJlYW0uYzoz
MToKPj4+IC91c3IveDg2XzY0LXc2NC1taW5ndzMyL3N5cy1yb290L21pbmd3L2luY2x1ZGUvb3Bl
bnNzbC94NTA5Lmg6NzU6MTogZXJyb3I6Cj4+PiBwYXN0aW5nICJzdGFja19zdF8iIGFuZCAiKCIg
ZG9lcyBub3QgZ2l2ZSBhIHZhbGlkIHByZXByb2Nlc3NpbmcgdG9rZW4KPj4+ICAgIERFRklORV9T
VEFDS19PRihYNTA5X05BTUUpCj4+PiAgICBefn5+fn5+fn5+fn5+fn4KPj4+IC91c3IveDg2XzY0
LXc2NC1taW5ndzMyL3N5cy1yb290L21pbmd3L2luY2x1ZGUvb3BlbnNzbC94NTA5Lmg6NzU6MTc6
IGVycm9yOgo+Pj4gZXhwZWN0ZWQgJyknIGJlZm9yZSBudW1lcmljIGNvbnN0YW50Cj4+PiAgICBE
RUZJTkVfU1RBQ0tfT0YoWDUwOV9OQU1FKQo+Pj4gICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+
fgo+Pj4gLi4uCj4+Pgo+Pj4gVGhpcyBpcyBkdWUgdG8gbWlzc2luZyBYNTA5X05BTUUgZGVmaW5p
dGlvbiBieSBXaW5kb3dzIGhlYWRlcnMuCj4+PiBJbmN1ZGUgbWlzc2luZyBoZWFkZXIgaW4gb3Jk
ZXIgdG8gbWFrZSBjb2RlIGNvbXBpbGUgYWdhaW4uCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRnJl
ZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4+PiAtLS0KPj4+ICAgIHNlcnZlci9y
ZWQtc3RyZWFtLmMgfCAyICsrCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtc3RyZWFtLmMgYi9zZXJ2ZXIvcmVkLXN0
cmVhbS5jCj4+PiBpbmRleCAzMDU3ZDhiYmIuLjc3ZmVkMDk3ZSAxMDA2NDQKPj4+IC0tLSBhL3Nl
cnZlci9yZWQtc3RyZWFtLmMKPj4+ICsrKyBiL3NlcnZlci9yZWQtc3RyZWFtLmMKPj4+IEBAIC0y
NCw2ICsyNCw4IEBACj4+PiAgICAjaW5jbHVkZSA8bmV0ZGIuaD4KPj4+ICAgICNpbmNsdWRlIDxz
eXMvc29ja2V0Lmg+Cj4+PiAgICAjaW5jbHVkZSA8bmV0aW5ldC90Y3AuaD4KPj4+ICsjZWxzZQo+
Pj4gKyNpbmNsdWRlIDx3czJ0Y3BpcC5oPgo+Pgo+PiBJIHNlZSBYNTA5X05BTUUgaXMgZGVmaW5l
ZCBpbiB3aW5jcnlwdC5oCj4+Cj4+IEkgZGlkIG5vdCBmb2xsb3cgdGhlIGluY2x1ZGUtcGF0aCBi
dXQgc2luY2UKPj4gdGhlIExpbnV4IHNpZGUgaW5jbHVkZXMgbmV0d29yayBoLWZpbGVzIGl0Cj4+
IG1ha2VzIHNlbnNlIHRoZSB3aW5kb3dzIHNpZGUgd2lsbCBkbyB0aGUgc2FtZS4KPj4KPj4gVXJp
Lgo+Pgo+IAo+IFdpbmRvd3MgYW5kIFVuaXggKHNvIExpbnV4KSBpbmNsdWRlIGZpbGVzIGZvciBu
ZXR3b3JrIGFyZSBxdWl0ZQo+IGRpZmZlcmVudCBzbyB0aGUgI2lmZGVmLiBJIGluY2x1ZGVkIHRo
aXMgaGVhZGVyIGFzIEkgbm90ZWQgdGhhdAo+IHRoaXMgd2FzIGRvbmUgaW4gcmVkcy5jIGFuZCB0
aGUgcHJvYmxlbSBkaWRuJ3QgaGFwcGVuIHNvIGZvcgo+IGNvaGVyZW5jZSBJIGluY2x1ZGVkIHRo
YXQgc3BlY2lmaWMgaGVhZGVyLgo+IAoKQWNrZWQtYnk6IFVyaSBMdWJsaW4gPHVyaWxAcmVkaGF0
LmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
aWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZl
bA==
