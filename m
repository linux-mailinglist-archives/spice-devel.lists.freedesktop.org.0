Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E524CFDDB
	for <lists+spice-devel@lfdr.de>; Tue, 30 Apr 2019 18:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 887D589207;
	Tue, 30 Apr 2019 16:29:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC6A789207
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 16:29:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8C76F309264B
 for <spice-devel@lists.freedesktop.org>; Tue, 30 Apr 2019 16:29:17 +0000 (UTC)
Received: from lub.tlv (dhcp-4-231.tlv.redhat.com [10.35.4.231])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B101A171DF;
 Tue, 30 Apr 2019 16:29:16 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190430100740.8085-1-uril@redhat.com>
 <644291405.15614295.1556619351870.JavaMail.zimbra@redhat.com>
From: Uri Lublin <uril@redhat.com>
Organization: Red Hat
Message-ID: <20e4cee4-3efb-6df0-3452-cc44ca5f0c04@redhat.com>
Date: Tue, 30 Apr 2019 19:29:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <644291405.15614295.1556619351870.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 30 Apr 2019 16:29:17 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH] gitlab-ci: build out-of-tree too
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

T24gNC8zMC8xOSAxOjE1IFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gVGhpcyBpcyBmb3Ig
U1BJQ0Ugc2VydmVyIChtaXNzaW5nIGluIHRoZSBzdWJqZWN0KS4KClllcywgc29ycnkuCgo+IAo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBVcmkgTHVibGluIDx1cmlsQHJlZGhhdC5jb20+Cj4+IC0tLQo+
Pgo+PiBUaGUgcmVsZXZhbnQgam9iIG9mIHRoZSBwaXBlbGluZSBpczoKPj4gaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL3VyaWwvc3BpY2UvLS9qb2JzLzI2OTczNQo+Pgo+PiAtLS0KPj4g
ICAuZ2l0bGFiLWNpLnltbCB8IDUgKysrKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS8uZ2l0bGFiLWNpLnltbCBi
Ly5naXRsYWItY2kueW1sCj4+IGluZGV4IDljZTk1YzAwZS4uNDNjZGI0NWFjIDEwMDY0NAo+PiAt
LS0gYS8uZ2l0bGFiLWNpLnltbAo+PiArKysgYi8uZ2l0bGFiLWNpLnltbAo+PiBAQCAtMTQsMTIg
KzE0LDE1IEBAIGJlZm9yZV9zY3JpcHQ6Cj4+ICAgCj4+ICAgbWFrZWNoZWNrOgo+PiAgICAgc2Ny
aXB0Ogo+PiArICAtIG1rZGlyIGJ1aWxkZGlyCj4gCj4gSSB3b3VsZCBwdXQgYSBjb21tZW50IGJl
Zm9yZSB0aGlzICJta2RpciIgbGlrZSBpbiBzcGljZS1ndGsuCj4gT3RoZXIgdGVzdHMgKElNSE8g
Y29ycmVjdGx5KSBydW4gYWxzbyBpbi10cmVlIHNvIGJvdGggY29uZGl0aW9ucwo+IGFyZSB0ZXN0
ZWQuCgpPSy4gSSdsbCBzZW5kIGEgVjIuCgpUaGFua3MsCiAgICAgVXJpLgoKPiAKPj4gKyAgLSBj
ZCBidWlsZGRpcgo+PiAgICAgLSA+Cj4+ICAgICAgIENGTEFHUz0nLU8yIC1waXBlIC1nIC1mc2Fu
aXRpemU9YWRkcmVzcyAtZm5vLW9taXQtZnJhbWUtcG9pbnRlcgo+PiAgICAgICAtV2ZyYW1lLWxh
cmdlci10aGFuPTQwOTIwJwo+PiAgICAgICBMREZMQUdTPSctZnNhbml0aXplPWFkZHJlc3MgLWxh
c2FuJwo+PiAtICAgIC4vYXV0b2dlbi5zaCAtLWVuYWJsZS1jZWx0MDUxCj4+ICsgICAgLi4vYXV0
b2dlbi5zaCAtLWVuYWJsZS1jZWx0MDUxCj4+ICAgICAtIG1ha2UKPj4gICAgIC0gbWFrZSAtQyBz
ZXJ2ZXIgY2hlY2sgfHwgKGNhdCBzZXJ2ZXIvdGVzdHMvdGVzdC1zdWl0ZS5sb2cgJiYgZXhpdCAx
KQo+PiArICAtIGNkIC4uCj4+ICAgCj4+ICAgbWVzb24tbWFrZWNoZWNrOgo+PiAgICAgc2NyaXB0
Ogo+IAo+IE90aGVyd2lzZSBmaW5lIHdpdGggaXQuCj4gCj4gRnJlZGlhbm8KPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
