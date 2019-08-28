Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 613E4A0760
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 18:30:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BBE8919B;
	Wed, 28 Aug 2019 16:30:00 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7138919B
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:29:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 369A6308A9E2
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:29:59 +0000 (UTC)
Received: from lub.tlv (dhcp-4-176.tlv.redhat.com [10.35.4.176])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 961D760BEC;
 Wed, 28 Aug 2019 16:29:58 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190828160234.8182-1-uril@redhat.com>
 <20190828160234.8182-2-uril@redhat.com>
 <299324888.9967562.1567008838717.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <a975ec89-bc0f-eee4-36eb-9612405f7a90@redhat.com>
Date: Wed, 28 Aug 2019 19:29:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <299324888.9967562.1567008838717.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Wed, 28 Aug 2019 16:29:59 +0000 (UTC)
Subject: Re: [Spice-devel] [spice-vdagent PATCH 2/2] virtio-port:
 handle_fds: make read and write code consistent
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

T24gOC8yOC8xOSA3OjEzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4+Cj4+ICJyZXR1cm4g
ZWFybHkiIGJlZm9yZSB3cml0ZSB0b28KPj4KPj4gU2lnbmVkLW9mZi1ieTogVXJpIEx1YmxpbiA8
dXJpbEByZWRoYXQuY29tPgo+PiAtLS0KPj4KPj4gQWx0ZXJuYXRpdmVseSwgY2hhbmdlIHRoZSBy
ZWFkIHBhcnQgc3VjaCB0aGF0Ogo+Pgo+PiAgICAgIGlmICgqdnBvcnRwICYmIEZEX0lTU0VUKCgq
dnBvcnRwKS0+ZmQsIHJlYWRmZHMpKQo+PiAgICAgICAgICB2ZGFnZW50X3ZpcnRpb19wb3J0X2Rv
X3JlYWQKPj4gICAgICBpZiAoKnZwb3J0cCAmJiBGRF9JU1NFVCgoKnZwb3J0cCktPmZkLCB3cml0
ZWZkcykpCj4+ICAgICAgICAgIHZkYWdlbnRfdmlydGlvX3BvcnRfZG9fd3JpdGUKPj4KPj4KPj4g
LS0tCj4+ICAgc3JjL3ZkYWdlbnRkL3ZpcnRpby1wb3J0LmMgfCA1ICsrKystCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvc3JjL3ZkYWdlbnRkL3ZpcnRpby1wb3J0LmMgYi9zcmMvdmRhZ2VudGQvdmlydGlvLXBvcnQu
Ywo+PiBpbmRleCAzYWU3ZjIyLi5hZjViZDU4IDEwMDY0NAo+PiAtLS0gYS9zcmMvdmRhZ2VudGQv
dmlydGlvLXBvcnQuYwo+PiArKysgYi9zcmMvdmRhZ2VudGQvdmlydGlvLXBvcnQuYwo+PiBAQCAt
MTcyLDcgKzE3MiwxMCBAQCB2b2lkIHZkYWdlbnRfdmlydGlvX3BvcnRfaGFuZGxlX2ZkcyhzdHJ1
Y3QKPj4gdmRhZ2VudF92aXJ0aW9fcG9ydCAqKnZwb3J0cCwKPj4gICAgICAgaWYgKEZEX0lTU0VU
KCgqdnBvcnRwKS0+ZmQsIHJlYWRmZHMpKQo+PiAgICAgICAgICAgdmRhZ2VudF92aXJ0aW9fcG9y
dF9kb19yZWFkKHZwb3J0cCk7Cj4+ICAgCj4+IC0gICAgaWYgKCp2cG9ydHAgJiYgRkRfSVNTRVQo
KCp2cG9ydHApLT5mZCwgd3JpdGVmZHMpKQo+PiArICAgIGlmICghKnZwb3J0cCkgLyogbWF5IGhh
dmUgYmVlbiBkZXN0cm95ZWQgaW4gZG9fcmVhZCAqLwo+PiArICAgICAgICByZXR1cm47Cj4+ICsK
Pj4gKyAgICBpZiAoRkRfSVNTRVQoKCp2cG9ydHApLT5mZCwgd3JpdGVmZHMpKQo+PiAgICAgICAg
ICAgdmRhZ2VudF92aXJ0aW9fcG9ydF9kb193cml0ZSh2cG9ydHApOwo+PiAgIH0KPj4gICAKPiAK
PiBUaGV5IGFyZSBlcXVpdmFsZW50IChiZXNpZGUgdGhlIGNvbW1lbnQgd2hpY2ggY2FuIGJlIGFk
ZGVkIG9uIHRvcCBvZgo+IHRoZSBpZikuCj4gSSBsaWtlIHRoZSBhbHRlcm5hdGl2ZSB2ZXJzaW9u
IGlmIGl0J3MgcmVhbGx5IGltcG9ydGFudC4KCk9LLCBJJ2xsIHNlbmQgdjIgd2l0aCB0aGUgYWx0
ZXJuYXRpdmUuCgo+IFN0eWxlOiBhbHdheXMgYnJhY2tldHMuCgpZZWFoLCBJIGxlZnQgaXQgYXMg
aXQgd2FzIDsgSSdsbCBmaXggdGhhdCB0b28uCgpUaGFua3MsCiAgICAgVXJpLgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5n
IGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
