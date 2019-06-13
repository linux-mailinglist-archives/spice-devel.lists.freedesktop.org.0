Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C182434A4
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 11:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE18C89789;
	Thu, 13 Jun 2019 09:25:46 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 705F789789
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 09:25:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E22413083394
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 09:25:44 +0000 (UTC)
Received: from lub.tlv (dhcp-4-88.tlv.redhat.com [10.35.4.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E323600C0;
 Thu, 13 Jun 2019 09:25:44 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190612105330.18091-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <e2afe030-d952-fb05-be80-b6e1de944c7b@redhat.com>
Date: Thu, 13 Jun 2019 12:25:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612105330.18091-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 13 Jun 2019 09:25:44 +0000 (UTC)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gNi8xMi8xOSAxOjUzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gT24gV2luZG93cyBG
ZWRvcmEgMzAgcmVwb3J0cyB0aGVzZSBlcnJvcnM6Cj4gCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9t
IC91c3IveDg2XzY0LXc2NC1taW5ndzMyL3N5cy1yb290L21pbmd3L2luY2x1ZGUvb3BlbnNzbC9j
cnlwdG8uaDoyOSwKPiAgICAgICAgICAgICAgICAgICBmcm9tIC91c3IveDg2XzY0LXc2NC1taW5n
dzMyL3N5cy1yb290L21pbmd3L2luY2x1ZGUvb3BlbnNzbC9iaW8uaDoyMCwKPiAgICAgICAgICAg
ICAgICAgICBmcm9tIC91c3IveDg2XzY0LXc2NC1taW5ndzMyL3N5cy1yb290L21pbmd3L2luY2x1
ZGUvb3BlbnNzbC9lcnIuaDoyMSwKPiAgICAgICAgICAgICAgICAgICBmcm9tIHJlZC1zdHJlYW0u
YzozMToKPiAvdXNyL3g4Nl82NC13NjQtbWluZ3czMi9zeXMtcm9vdC9taW5ndy9pbmNsdWRlL29w
ZW5zc2wveDUwOS5oOjc1OjE6IGVycm9yOiBwYXN0aW5nICJzdGFja19zdF8iIGFuZCAiKCIgZG9l
cyBub3QgZ2l2ZSBhIHZhbGlkIHByZXByb2Nlc3NpbmcgdG9rZW4KPiAgIERFRklORV9TVEFDS19P
RihYNTA5X05BTUUpCj4gICBefn5+fn5+fn5+fn5+fn4KPiAvdXNyL3g4Nl82NC13NjQtbWluZ3cz
Mi9zeXMtcm9vdC9taW5ndy9pbmNsdWRlL29wZW5zc2wveDUwOS5oOjc1OjE3OiBlcnJvcjogZXhw
ZWN0ZWQgJyknIGJlZm9yZSBudW1lcmljIGNvbnN0YW50Cj4gICBERUZJTkVfU1RBQ0tfT0YoWDUw
OV9OQU1FKQo+ICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fgo+IC4uLgo+IAo+IFRoaXMgaXMg
ZHVlIHRvIG1pc3NpbmcgWDUwOV9OQU1FIGRlZmluaXRpb24gYnkgV2luZG93cyBoZWFkZXJzLgo+
IEluY3VkZSBtaXNzaW5nIGhlYWRlciBpbiBvcmRlciB0byBtYWtlIGNvZGUgY29tcGlsZSBhZ2Fp
bi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNv
bT4KPiAtLS0KPiAgIHNlcnZlci9yZWQtc3RyZWFtLmMgfCAyICsrCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9yZWQtc3RyZWFtLmMg
Yi9zZXJ2ZXIvcmVkLXN0cmVhbS5jCj4gaW5kZXggMzA1N2Q4YmJiLi43N2ZlZDA5N2UgMTAwNjQ0
Cj4gLS0tIGEvc2VydmVyL3JlZC1zdHJlYW0uYwo+ICsrKyBiL3NlcnZlci9yZWQtc3RyZWFtLmMK
PiBAQCAtMjQsNiArMjQsOCBAQAo+ICAgI2luY2x1ZGUgPG5ldGRiLmg+Cj4gICAjaW5jbHVkZSA8
c3lzL3NvY2tldC5oPgo+ICAgI2luY2x1ZGUgPG5ldGluZXQvdGNwLmg+Cj4gKyNlbHNlCj4gKyNp
bmNsdWRlIDx3czJ0Y3BpcC5oPgoKSSBzZWUgWDUwOV9OQU1FIGlzIGRlZmluZWQgaW4gd2luY3J5
cHQuaAoKSSBkaWQgbm90IGZvbGxvdyB0aGUgaW5jbHVkZS1wYXRoIGJ1dCBzaW5jZQp0aGUgTGlu
dXggc2lkZSBpbmNsdWRlcyBuZXR3b3JrIGgtZmlsZXMgaXQKbWFrZXMgc2Vuc2UgdGhlIHdpbmRv
d3Mgc2lkZSB3aWxsIGRvIHRoZSBzYW1lLgoKVXJpLgoKPiAgICNlbmRpZgo+ICAgCj4gICAjaW5j
bHVkZSA8Z2xpYi5oPgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
