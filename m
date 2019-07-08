Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAF061F2D
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 15:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BCB899A5;
	Mon,  8 Jul 2019 13:01:01 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D14E899A5
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:00:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 27236C05B03E
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 13:00:59 +0000 (UTC)
Received: from lub.tlv (dhcp-4-218.tlv.redhat.com [10.35.4.218])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F5EF4FF26;
 Mon,  8 Jul 2019 13:00:56 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190520073947.5382-1-fziglio@redhat.com>
 <20190520073947.5382-5-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <f5b051a4-d046-5426-a402-0cbbd38bedbe@redhat.com>
Date: Mon, 8 Jul 2019 16:00:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190520073947.5382-5-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 08 Jul 2019 13:00:59 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk 4/4] ci: Try Meson dist
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

T24gNS8yMC8xOSAxMDozOSBBTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IE1ha2Ugc3VyZSBN
ZXNvbiBpcyBhYmxlIHRvIGdlbmVyYXRlIGEgY29ycmVjdCB0YXJiYWxsLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICAgLmdp
dGxhYi1jaS55bWwgfCA2ICsrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCj4gaW5k
ZXggYTZjYjJjZGEuLjVkZGI0ZGI4IDEwMDY0NAo+IC0tLSBhLy5naXRsYWItY2kueW1sCj4gKysr
IGIvLmdpdGxhYi1jaS55bWwKPiBAQCAtODIsNiArODIsMTIgQEAgZmVkb3JhLW1lc29uOgo+ICAg
Cj4gICAgIHNjcmlwdDoKPiAgICAgICAtIG1lc29uIC0tYnVpbGR0eXBlPXJlbGVhc2UgYnVpbGQt
ZGVmYXVsdAo+ICsgICAgIyBNZXNvbiBkb2VzIG5vdCB1cGRhdGUgc3VibW9kdWxlcyByZWN1cnNp
dmVseQoKQXV0b3Rvb2xzIGRvIG5vdCBkbyB0aGF0IGVpdGhlciwgaXQncyBkb25lIGluIHRoZSBh
dXRvZ2VuLnNoIHNjcmlwdAoKPiArICAgIC0gZ2l0IHN1Ym1vZHVsZSB1cGRhdGUgLS1pbml0IC0t
cmVjdXJzaXZlCj4gKyAgICAjIHRoaXMgZml4IGFuIGlzc3VlIHdpdGggTWVzb24gZGlzdAo+ICsg
ICAgLSBpZiAhIHRlc3QgLXIgLi4vc3BpY2UtY29tbW9uLmdpdDsgdGhlbiBESVI9YGJhc2VuYW1l
ICIkUFdEImA7IGxuIC1zICIkRElSLy5naXQvbW9kdWxlcy9zcGljZS1jb21tb24iIC4uL3NwaWNl
LWNvbW1vbi5naXQ7IGZpCgpUaGF0J3Mgd2VpcmQuIEl0IGRvZXMgd29yayBmb3IgbWUgbG9jYWxs
eS4KSXQgaXMgZXhwZWN0ZWQgdGhhdCAuLi9zcGljZS1jb21tb24uZ2l0IHdvdWxkIGJlIHJlbGF0
aXZlIHRvICdvcmlnaW4nLgoKPiArICAgIC0gcm0gLXJmIG1lc29uLWRpc3QKPiArICAgIC0gbmlu
amEgLUMgYnVpbGQtZGVmYXVsdCBkaXN0CgpOb3RlLCB0aGF0IHRoZSBnZW5lcmF0ZWQgdGFyYmFs
bCBkb2VzIG5vdCBjb250YWluIGEgY29uZmlndXJlIHNjcmlwdC4KVGhpcyBpcyBwcm9iYWJseSBl
eHBlY3RlZCBhcyBhdXRvdG9vbHMgYXJlIG5vdCB1c2VkLCBidXQgSSB3YW50ZWQKdG8gZW1waGFz
aXplIHRoYXQgdGhlIHR3byB0YXJiYWxscyBhcmUgZGlmZmVyZW50LgoKVXJpLgoKPiAgICAgICAt
IG5pbmphIC1DIGJ1aWxkLWRlZmF1bHQKPiAgICAgICAtIG5pbmphIC1DIGJ1aWxkLWRlZmF1bHQg
dGVzdAo+ICAgCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
