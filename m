Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683AAA0759
	for <lists+spice-devel@lfdr.de>; Wed, 28 Aug 2019 18:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D650D8959D;
	Wed, 28 Aug 2019 16:28:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FDBE8959D
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:28:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BE619859FB
 for <spice-devel@lists.freedesktop.org>; Wed, 28 Aug 2019 16:28:55 +0000 (UTC)
Received: from redhat.com (unknown [10.42.17.64])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1377560BEC;
 Wed, 28 Aug 2019 16:28:54 +0000 (UTC)
Date: Wed, 28 Aug 2019 17:28:52 +0100
From: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190828162852.GO2991@redhat.com>
References: <20190828155716.6294-1-ssheribe@redhat.com>
 <629757608.9968633.1567009403052.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <629757608.9968633.1567009403052.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 28 Aug 2019 16:28:55 +0000 (UTC)
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
Reply-To: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgMTI6MjM6MjNQTSAtMDQwMCwgRnJlZGlhbm8gWmlnbGlv
IHdyb3RlOgo+ID4gCj4gPiBUaGlzIHdpbGwgZHJvcCB0aGUgZm9sbG93aW5nIHdhcm5pbmc6Cj4g
PiAiUHJvamVjdCBzcGVjaWZpZXMgYSBtaW5pbXVtIG1lc29uX3ZlcnNpb24gJz49IDAuNDknIGJ1
dCB1c2VzCj4gPiAgZmVhdHVyZXMgd2hpY2ggd2VyZSBhZGRlZCBpbiBuZXdlciB2ZXJzaW9ucyIK
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogU25pciBTaGVyaWJlciA8c3NoZXJpYmVAcmVkaGF0LmNv
bT4KPiAKPiBXaHkgbm90IDAuNTE/IEZyb20gcmVwb2xvZ3kgbG9va3MgbGlrZSBhbGwgZGlzdHJv
cyBoYXZlIGxlc3MgdGhhbiAwLjUwIG9yCj4gYXQgbGVhc3QgMC41MS4KPiAKPiBJdCBsb29rcyBs
aWtlIHRoaXMgd2FybmluZyBpcyBhIGZhbHNlIHBvc2l0aXZlLCBJIGRvbid0IHJlbWVtYmVyIGFu
eQo+IHNpZ25pZmljYW50IHVwZGF0ZXMgc2luY2Ugd2UgYnVtcCB0byAwLjQ5LgoKVGhlIGNvbW1p
dCBtZXNzYWdlIGhlcmUgaXMgdHJ1bmNhdGVkIGZyb20gd2hhdCBtZXNvbiBhY3R1YWxseSByZXBv
cnRzCgogIFdBUk5JTkc6IFByb2plY3Qgc3BlY2lmaWVzIGEgbWluaW11bSBtZXNvbl92ZXJzaW9u
ICc+PSAwLjQ5JyBidXQgdXNlcyBmZWF0dXJlcyB3aGljaCB3ZXJlIGFkZGVkIGluIG5ld2VyIHZl
cnNpb25zOgogICAqIDAuNTAuMDogeydpbnN0YWxsIGFyZyBpbiBjb25maWd1cmVfZmlsZSd9CgpU
aGUgdG9wIGxldmVsIG1lc29uLmJ1aWxkIGRvZXMgaW5kZWVkIHVzZSB0aGlzICdpbnN0YWxsJyBh
cmcKc28gbmVlZWRzIDAuNTAuMC4KCgpSZWdhcmRzLApEYW5pZWwKLS0gCnw6IGh0dHBzOi8vYmVy
cmFuZ2UuY29tICAgICAgLW8tICAgIGh0dHBzOi8vd3d3LmZsaWNrci5jb20vcGhvdG9zL2RiZXJy
YW5nZSA6fAp8OiBodHRwczovL2xpYnZpcnQub3JnICAgICAgICAgLW8tICAgICAgICAgICAgaHR0
cHM6Ly9mc3RvcDEzOC5iZXJyYW5nZS5jb20gOnwKfDogaHR0cHM6Ly9lbnRhbmdsZS1waG90by5v
cmcgICAgLW8tICAgIGh0dHBzOi8vd3d3Lmluc3RhZ3JhbS5jb20vZGJlcnJhbmdlIDp8Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1h
aWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
