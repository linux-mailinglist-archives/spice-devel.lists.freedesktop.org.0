Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFD3A517C
	for <lists+spice-devel@lfdr.de>; Mon,  2 Sep 2019 10:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76057896BF;
	Mon,  2 Sep 2019 08:23:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD294896BF
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 08:23:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6F6AF182D
 for <spice-devel@lists.freedesktop.org>; Mon,  2 Sep 2019 08:23:29 +0000 (UTC)
Received: from lub.tlv (dhcp-4-176.tlv.redhat.com [10.35.4.176])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CCE465D6C8;
 Mon,  2 Sep 2019 08:23:28 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190901135012.2035-1-uril@redhat.com>
 <19141300.10294233.1567354855886.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <8a26d853-7ebe-0ac7-334a-bebff91a1bfd@redhat.com>
Date: Mon, 2 Sep 2019 11:23:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <19141300.10294233.1567354855886.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 02 Sep 2019 08:23:29 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-common patch] test-ssl-verify:
 test_generic: initialize num_entries
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

T24gOS8xLzE5IDc6MjAgUE0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPj4KPj4gSWYgbmFtZSBp
cyBudWxsIG51bV9lbnRyaWVzIG1heSBob2xkIGdhcmJhZ2UgdmFsdWUKPj4KPj4gY2xhbmcgd2Fy
bmluZzogQXNzaWduZWQgdmFsdWUgaXMgZ2FyYmFnZSBvciB1bmRlZmluZWQKPj4gICAgIGdfYXNz
ZXJ0X2NtcGludChudW1fZW50cmllcywgPT0sIGVudHJ5X2NvdW50KTsKPj4gICAgIF5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+Pgo+PiBBbHNvIGNoZWNrIG5h
bWUgYmVmb3JlIG51bV9lbnRyaWVzLgo+Pgo+IAo+IFdoeSB0aGlzIGxhc3Qgc2VudGVuY2U/Cgpv
b3BzLCB0aGUgZmlyc3QgcGF0Y2ggSSB3cm90ZSAoYW5kIGRpZCBub3Qgc2VuZCkgYWxzbwpjaGVj
a2VkIG5hbWUgYmVmb3JlIChzd2l0Y2hlZCB0aGUgb3JkZXIgb2YgdGhlIHR3byBjaGVjayBsaW5l
cykuClNpbmNlIGl0IGRvZXMgbm90IHJlYWxseSBtYXR0ZXIsIEkgcmVtb3ZlZCBpdC4KCkknbGwg
ZGVsZXRlIHRoaXMgZnJvbSB0aGUgY29tbWl0IGxvZy4KClRoYW5rcywKICAgICBVcmkuCgo+IAo+
PiBTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+Cj4+IC0tLQo+PiAg
IHRlc3RzL3Rlc3Qtc3NsLXZlcmlmeS5jIHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvdGVzdHMvdGVzdC1z
c2wtdmVyaWZ5LmMgYi90ZXN0cy90ZXN0LXNzbC12ZXJpZnkuYwo+PiBpbmRleCBmNWM1ODgxLi5m
ODBlYjRjIDEwMDY0NAo+PiAtLS0gYS90ZXN0cy90ZXN0LXNzbC12ZXJpZnkuYwo+PiArKysgYi90
ZXN0cy90ZXN0LXNzbC12ZXJpZnkuYwo+PiBAQCAtNzksNyArNzksNyBAQCBzdGF0aWMgdm9pZCB0
ZXN0X2dlbmVyaWMoY29uc3Qgdm9pZCAqYXJnKQo+PiAgIHsKPj4gICAgICAgY29uc3QgVGVzdEdl
bmVyaWNQYXJhbXMgKnBhcmFtcyA9IGFyZzsKPj4gICAgICAgWDUwOV9OQU1FICpuYW1lOwo+PiAt
ICAgIGludCBudW1fZW50cmllczsKPj4gKyAgICBpbnQgbnVtX2VudHJpZXMgPSAtMTsKPj4gICAK
Pj4gICAgICAgc2V0dXBfcmVzdWx0cyhwYXJhbXMtPm91dHB1dCk7Cj4+ICAgICAgIG5hbWUgPSBz
dWJqZWN0X3RvX3g1MDlfbmFtZShwYXJhbXMtPmlucHV0LCAmbnVtX2VudHJpZXMpOwo+IAo+IE90
aGVyd2lzZSBwYXRjaCBpcyBmaW5lLgo+IAo+IEZyZWRpYW5vCj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QK
U3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
