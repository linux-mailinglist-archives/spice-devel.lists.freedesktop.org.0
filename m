Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A80E76BBF5
	for <lists+spice-devel@lfdr.de>; Wed, 17 Jul 2019 13:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF7789FF7;
	Wed, 17 Jul 2019 11:54:52 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EAA89FF7
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:54:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 32FC130842AF
 for <spice-devel@lists.freedesktop.org>; Wed, 17 Jul 2019 11:54:51 +0000 (UTC)
Received: from lub.tlv (dhcp-4-204.tlv.redhat.com [10.35.4.204])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 907926013B;
 Wed, 17 Jul 2019 11:54:50 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20190717094603.12234-1-fziglio@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <a2a4a257-992b-7f76-2276-d3dc751c7b64@redhat.com>
Date: Wed, 17 Jul 2019 14:54:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190717094603.12234-1-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Wed, 17 Jul 2019 11:54:51 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] ci: Workaround an issue with
 GLib on Fedora 30
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

T24gNy8xNy8xOSAxMjo0NiBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFRoaXMgcmVtb3Zl
IHRoaXMgZXJyb3IgcnVubmluZyB0ZXN0LWxpc3RlbiB0ZXN0IG9uIGEgRmVkb3JhIDMwIGRvY2tl
cgo+IGltYWdlOgo+IAo+ICgvYnVpbGRzL3NwaWNlL3NwaWNlL2J1aWxkL3NlcnZlci90ZXN0cy90
ZXN0LWxpc3RlbjoyMjMzKTogR0xpYi1HSU8tQ1JJVElDQUwgKio6IDE1OjI5OjAzLjEyMzogZ19m
aWxlX25ld19mb3JfcGF0aDogYXNzZXJ0aW9uICdwYXRoICE9IE5VTEwnIGZhaWxlZAo+IAo+IFRo
aXMgZXJyb3IgaXMgZHVlIHRvIHNvbWUgbWlzc2luZyBjb25maWd1cmF0aW9uIG9uIHRoZSBpbWFn
ZS4KPiBPbiBhIGZ1bGx5IGluc3RhbGxlZCBEZXNrdG9wL1NlcnZlciBtYWNoaW5lIHRoZXNlIGNv
bmZpZ3VyYXRpb24KPiBhcmUgdXN1YWxseSBpbiBwbGFjZSBzbyB5b3Ugd29uJ3Qgbm90ZSB0aGUg
aXNzdWUgYnV0IG9uIHJlY2VudAo+IGRvY2tlciBpbWFnZXMgdGhlc2UgY29uZmlndXJhdGlvbiBh
cmUgbWlzc2luZy4KPiAKPiBSdW5uaW5nIHRoZSBkY29uZiBjb21tYW5kIGFkZCByZXF1aXJlZCBj
b25maWd1cmF0aW9uLgoKCk5pY2UuIEl0IHNlZW1zIGl0IGRvZXMgaW5kZWVkIGZpeCB0aGUgd2Vp
cmQgZmFpbHVyZSBvZiB0ZXN0LWxpc3Rlbi4KVGhpcyBpcyBtYWdpYyAtLSB0aGUgcGF0Y2ggcmVz
ZXRzICdsb2NhdGlvbicgKD09R1BTKS4KClRoYW5rcywKICAgICBVcmkuCgoKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgIC5n
aXRsYWItY2kueW1sIHwgMiArKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCj4gaW5kZXgg
YjMwM2Q0NjU2Li4zYzUyOThmODQgMTAwNjQ0Cj4gLS0tIGEvLmdpdGxhYi1jaS55bWwKPiArKysg
Yi8uZ2l0bGFiLWNpLnltbAo+IEBAIC04LDkgKzgsMTEgQEAgYmVmb3JlX3NjcmlwdDoKPiAgICAg
ICBnbGliMi1kZXZlbCBjZWx0MDUxLWRldmVsIHBpeG1hbi1kZXZlbCBhbHNhLWxpYi1kZXZlbCBv
cGVuc3NsLWRldmVsIGxpYmpwZWctdHVyYm8tZGV2ZWwKPiAgICAgICBsaWJjYWNhcmQtZGV2ZWwg
Y3lydXMtc2FzbC1kZXZlbCBsejQtZGV2ZWwgb3B1cy1kZXZlbAo+ICAgICAgIGdzdHJlYW1lcjEt
ZGV2ZWwgZ3N0cmVhbWVyMS1wbHVnaW5zLWJhc2UtZGV2ZWwKPiArICAgIGRjb25mCj4gICAgICAg
LXkKPiAgICAgLSBnaXQgY2xvbmUgJHtDSV9SRVBPU0lUT1JZX1VSTC9zcGljZS5naXQvc3BpY2Ut
cHJvdG9jb2wuZ2l0fQo+ICAgICAtIChjZCBzcGljZS1wcm90b2NvbCAmJiAuL2F1dG9nZW4uc2gg
LS1wcmVmaXg9L3VzciAmJiBtYWtlIGluc3RhbGwpCj4gKyAgLSBkY29uZiByZXNldCAvb3JnL2du
b21lL3N5c3RlbS9sb2NhdGlvbi9lbmFibGVkIHx8IHRydWUKPiAgIAo+ICAgbWFrZWNoZWNrOgo+
ICAgICBzY3JpcHQ6Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
