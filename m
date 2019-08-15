Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC548E5F9
	for <lists+spice-devel@lfdr.de>; Thu, 15 Aug 2019 10:12:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DADD6E8C1;
	Thu, 15 Aug 2019 08:12:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4BE6E8C1
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 08:12:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 42BEAC0003A1
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 08:12:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 38C1617C13
 for <spice-devel@lists.freedesktop.org>; Thu, 15 Aug 2019 08:12:50 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3177118089C8;
 Thu, 15 Aug 2019 08:12:50 +0000 (UTC)
Date: Thu, 15 Aug 2019 04:12:49 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Kevin Pouget <kpouget@redhat.com>
Message-ID: <954100180.5882976.1565856769970.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190806153453.20616-10-kpouget@redhat.com>
References: <20190806153453.20616-1-kpouget@redhat.com>
 <20190806153453.20616-10-kpouget@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.40.205.47, 10.4.195.8]
Thread-Topic: channel-display: fix bug when sending preferred video codecs
Thread-Index: 6laoP0WGVvzy4ek+GkNvPjzIn6RRJQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 15 Aug 2019 08:12:50 +0000 (UTC)
Subject: Re: [Spice-devel] [RFC spice-gtk 2/2] channel-display: fix bug when
 sending preferred video codecs
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

PiAKPiBUaGUgdHJhbnNmZXIgYmV0d2VlbiB0aGUgY29kZWNzIGFycmF5IGFuZCB0aGUgbWVzc2Fn
ZSBwYXlsb2FkIGNhbm5vdAo+IGJlIGRvbmUgd2l0aCBtZW1jcHkgYmVjYXVzZSB0aGUgZGF0YS10
eXBlIGxlbmd0aHMgYXJlIGRpZmZlcmVudAo+IChnaW50L3VpbnQ4X3QpLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEtldmluIFBvdWdldCA8a3BvdWdldEByZWRoYXQuY29tPgo+IC0tLQo+ICBzcmMvY2hh
bm5lbC1kaXNwbGF5LmMgfCA4ICsrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL2NoYW5uZWwtZGlzcGxh
eS5jIGIvc3JjL2NoYW5uZWwtZGlzcGxheS5jCj4gaW5kZXggNDQ1NTVlMy4uMzdmZGJjZSAxMDA2
NDQKPiAtLS0gYS9zcmMvY2hhbm5lbC1kaXNwbGF5LmMKPiArKysgYi9zcmMvY2hhbm5lbC1kaXNw
bGF5LmMKPiBAQCAtNjE1LDExICs2MTUsMTcgQEAgc3RhdGljIHZvaWQKPiBzcGljZV9kaXNwbGF5
X3NlbmRfY2xpZW50X3ByZWZlcnJlZF92aWRlb19jb2RlY3MoU3BpY2VDaGFubmVsICpjaGFubgo+
ICB7Cj4gICAgICBTcGljZU1zZ091dCAqb3V0Owo+ICAgICAgU3BpY2VNc2djRGlzcGxheVByZWZl
cnJlZFZpZGVvQ29kZWNUeXBlICptc2c7Cj4gKyAgICBpbnQgaTsKPiAKPiAgICAgIG1zZyA9IGdf
bWFsbG9jMChzaXplb2YoU3BpY2VNc2djRGlzcGxheVByZWZlcnJlZFZpZGVvQ29kZWNUeXBlKSAr
Cj4gICAgICAgICAgICAgICAgICAgICAgKHNpemVvZihTcGljZVZpZGVvQ29kZWNUeXBlKSAqIG5j
b2RlY3MpKTsKCkZvciBzaW1pbGFyIHJlYXNvbiBJIHdvdWxkIGNoYW5nZSB0aGlzIHRvCgogICAg
bXNnID0gZ19tYWxsb2MwKHNpemVvZihTcGljZU1zZ2NEaXNwbGF5UHJlZmVycmVkVmlkZW9Db2Rl
Y1R5cGUpICsKICAgICAgICAgICAgICAgICAgICAoc2l6ZW9mKG1zZy0+Y29kZWNzWzBdKSAqIG5j
b2RlY3MpKTsKCgo+ICAgICAgbXNnLT5udW1fb2ZfY29kZWNzID0gbmNvZGVjczsKPiAtICAgIG1l
bWNweShtc2ctPmNvZGVjcywgY29kZWNzLCBzaXplb2YoKmNvZGVjcykgKiBuY29kZWNzKTsKPiAr
Cj4gKyAgICAvKiBjYW5ub3QgbWVtY3B5IGJlY2F1c2UgY29kZWNzIGlzIGdpbnQsIGJ1dCBtc2ct
PmNvZGVjcyBpcyB1aW50OF90Cj4gKyAgICAgKiBidXQgc2FmZSBiZWNhdXNlIGNvZGVjc1tpXSA8
PSAyNTUgKi8KPiArICAgIGZvciAoaSA9IDA7IGkgPCBuY29kZWNzOyBpKyspIHsKPiArICAgICAg
ICBtc2ctPmNvZGVjc1tpXSA9IGNvZGVjc1tpXTsKPiArICAgIH0KPiAKPiAgICAgIG91dCA9IHNw
aWNlX21zZ19vdXRfbmV3KGNoYW5uZWwsCj4gICAgICBTUElDRV9NU0dDX0RJU1BMQVlfUFJFRkVS
UkVEX1ZJREVPX0NPREVDX1RZUEUpOwo+ICAgICAgb3V0LT5tYXJzaGFsbGVycy0+bXNnY19kaXNw
bGF5X3ByZWZlcnJlZF92aWRlb19jb2RlY190eXBlKG91dC0+bWFyc2hhbGxlciwKPiAgICAgIG1z
Zyk7CgpHb29kIGNhdGNoIQoKTm90IG11Y2ggcGFydCBvZiB0aGUgc2VyaWVzIChxdWl0ZSBpbmRl
cGVuZGVudCBJIHdvdWxkIHNheSkuCgpGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
