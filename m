Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 015D3A0737
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 18:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781DC897F6;
	Wed, 28 Aug 2019 16:23:24 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6873897F6
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:23:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 47A5D3060289
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:23:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D8EC1001925
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:23:23 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34AC31802216;
 Wed, 28 Aug 2019 16:23:23 +0000 (UTC)
Date: Wed, 28 Aug 2019 12:23:23 -0400 (EDT)
From: Frediano Ziglio <fziglio@redhat.com>
To: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <629757608.9968633.1567009403052.JavaMail.zimbra@redhat.com>
In-Reply-To: <20190828155716.6294-1-ssheribe@redhat.com>
References: <20190828155716.6294-1-ssheribe@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.21, 10.4.195.1]
Thread-Topic: meson: Bump minimum required meson_version to 0.50
Thread-Index: jK/lffw7a2kRzSxdTJO/iV6KrZO+Iw==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 28 Aug 2019 16:23:23 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk] meson: Bump minimum required
 meson_version to 0.50
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

PiAKPiBUaGlzIHdpbGwgZHJvcCB0aGUgZm9sbG93aW5nIHdhcm5pbmc6Cj4gIlByb2plY3Qgc3Bl
Y2lmaWVzIGEgbWluaW11bSBtZXNvbl92ZXJzaW9uICc+PSAwLjQ5JyBidXQgdXNlcwo+ICBmZWF0
dXJlcyB3aGljaCB3ZXJlIGFkZGVkIGluIG5ld2VyIHZlcnNpb25zIgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+CgpXaHkgbm90IDAuNTE/IEZy
b20gcmVwb2xvZ3kgbG9va3MgbGlrZSBhbGwgZGlzdHJvcyBoYXZlIGxlc3MgdGhhbiAwLjUwIG9y
CmF0IGxlYXN0IDAuNTEuCgpJdCBsb29rcyBsaWtlIHRoaXMgd2FybmluZyBpcyBhIGZhbHNlIHBv
c2l0aXZlLCBJIGRvbid0IHJlbWVtYmVyIGFueQpzaWduaWZpY2FudCB1cGRhdGVzIHNpbmNlIHdl
IGJ1bXAgdG8gMC40OS4KCj4gLS0tCj4gIG1lc29uLmJ1aWxkIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvbWVz
b24uYnVpbGQgYi9tZXNvbi5idWlsZAo+IGluZGV4IDA3ZGJiNzAuLmVlYWUzNTYgMTAwNjQ0Cj4g
LS0tIGEvbWVzb24uYnVpbGQKPiArKysgYi9tZXNvbi5idWlsZAo+IEBAIC00LDcgKzQsNyBAQAo+
ICBwcm9qZWN0KCdzcGljZS1ndGsnLCAnYycsCj4gICAgICAgICAgIHZlcnNpb24gOiBydW5fY29t
bWFuZCgnYnVpbGQtYXV4L2dpdC12ZXJzaW9uLWdlbicsCj4gICAgICAgICAgICdAMEAvLnRhcmJh
bGwtdmVyc2lvbicuZm9ybWF0KG1lc29uLnNvdXJjZV9yb290KCkpLCBjaGVjayA6Cj4gICAgICAg
ICAgIHRydWUpLnN0ZG91dCgpLnN0cmlwKCksCj4gICAgICAgICAgIGxpY2Vuc2UgOiAnTEdQTHYy
LjEnLAo+IC0gICAgICAgICBtZXNvbl92ZXJzaW9uIDogJz49IDAuNDknKQo+ICsgICAgICAgICBt
ZXNvbl92ZXJzaW9uIDogJz49IDAuNTAnKQo+ICAKPiAgbWVzb24uYWRkX2Rpc3Rfc2NyaXB0KCdi
dWlsZC1hdXgvbWVzb24tZGlzdCcsIG1lc29uLnByb2plY3RfdmVyc2lvbigpLAo+ICBtZXNvbi5z
b3VyY2Vfcm9vdCgpKQo+ICAKCkZyZWRpYW5vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9zcGljZS1kZXZlbA==
