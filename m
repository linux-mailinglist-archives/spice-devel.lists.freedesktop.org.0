Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 502DF89787
	for <lists+spice-devel@lfdr.de>; Mon, 12 Aug 2019 09:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 745E66E4AB;
	Mon, 12 Aug 2019 07:09:09 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30CE06E4AB
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 07:09:08 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id f72so11118624wmf.5
 for <spice-devel@lists.freedesktop.org>; Mon, 12 Aug 2019 00:09:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=CwUAzZ9jUy86nzoXd+H31NO0XHSFamMAkZlQTJ2CWlk=;
 b=aSV23TK+tXrXu0wlWGVgcidDl+F5YWBtmxo7gNQqZOd23m+llIaK33F9BXEtm2t37J
 GPH9DM/XyRKruFlmta1N+kKvFqbS5mN11UyjDiZG63TCyv8w74c+DFfaefrwPOMDNaFb
 UCNw8tJIvHbeBjtDyfzgXfn3o+0/gEHXqIKWTKND89CkIy43z0XC5kO9skXnEevZPPJ/
 ESyjn4kHqaYsuJEraeiiFHD6hLBneABO8DuugpqhgOHbrJVg4EDmRKxApnaQSbdWs5Oi
 aAM53tSZToU1fbAh7SD6upOi/fArjJ0p2yjMkB0qtRceX3LHWYUXp2f5FcfbnZqGxYw8
 jbsw==
X-Gm-Message-State: APjAAAWNOyCRXD2Tvm6p5FVtrB/K/dAmPbtcGY/+uqsYCGQaARMogPeG
 4IqNzmVNTd84NzTu/ImtWHMWw1FuPhY=
X-Google-Smtp-Source: APXvYqzl9qO2+9oyoCkQlFXL54nrh5XuQRjBw/7r0TjBL82Q+UUMYGKST7iTeB0KJwv5GxKF1eQwxA==
X-Received: by 2002:a7b:c347:: with SMTP id l7mr25298962wmj.163.1565593746457; 
 Mon, 12 Aug 2019 00:09:06 -0700 (PDT)
Received: from dhcp-4-70.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id j16sm60057643wrp.62.2019.08.12.00.09.05
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 00:09:05 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190812065656.6875-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <d6d04b85-a5b9-ac12-fe89-91c97ee1ed24@redhat.com>
Date: Mon, 12 Aug 2019 10:09:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812065656.6875-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] style: Specify the
 possibility of "pragma once" usage
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

QWNrZWQtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+CgpPbiA4LzEyLzE5
IDk6NTYgQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFu
byBaaWdsaW8gPGZ6aWdsaW9AcmVkaGF0LmNvbT4KPiAtLS0KPiAgIGRvY3Mvc3BpY2Vfc3R5bGUu
dHh0IHwgOSArKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9kb2NzL3NwaWNlX3N0eWxlLnR4dCBiL2RvY3Mvc3BpY2Vfc3R5bGUudHh0
Cj4gaW5kZXggZTRkN2ZjNmQxLi44OWE1NTBmYjggMTAwNjQ0Cj4gLS0tIGEvZG9jcy9zcGljZV9z
dHlsZS50eHQKPiArKysgYi9kb2NzL3NwaWNlX3N0eWxlLnR4dAo+IEBAIC0zNzIsNiArMzcyLDE1
IEBAIFRoZSBtYWNybyBtYXkgaW5jbHVkZSBhZGRpdGlvbmFsIGluZm9ybWF0aW9uLCBlLmcuIGEg
Y29tcG9uZW50LiBGb3IgZXhhbXBsZSBhIGZpCj4gICAKPiAgIEhpc3RvcmljYWxseSwgc29tZSBo
ZWFkZXJzIGFkZGVkIHVuZGVyc2NvcmVzIGxpYmVyYWxseSwgZS5nLiBNWV9NT0RVTEVfSF8uIFRo
aXMgaXMgbmVpdGhlciBuZWNlc3Nhcnkgbm9yIGRpc2NvdXJhZ2VkLCBhbHRob3VnaCBhcyBhIHJl
bWluZGVyLCBhIGxlYWRpbmcgdW5kZXJzY29yZSBmb2xsb3dlZCBieSBhIGNhcGl0YWwgbGV0dGVy
IGlzIHJlc2VydmVkIGZvciB0aGUgaW1wbGVtZW50YXRpb24gYW5kIHNob3VsZCBub3QgYmUgdXNl
ZCwgc28gX01ZX01PRFVMRV9IIGlzLCB0ZWNobmljYWxseSBzcGVha2luZywgaW52YWxpZCBDLgo+
ICAgCj4gK0FsdGVybmF0aXZlbHkgKHJlY29tbWVuZGVkIG9uIG5ld2VyIGNvZGUpIHlvdSBjYW4g
dXNlIHRoZSBgcHJhZ21hIG9uY2VgIGRpcmVjdGl2ZSwgYXM6Cj4gKwo+ICtbc291cmNlLGNdCj4g
Ky0tLS0KPiArI3ByYWdtYSBvbmNlCj4gKwo+ICsuLi4KPiArLS0tLQo+ICsKPiAgIEhlYWRlciBp
bmNsdXNpb24KPiAgIC0tLS0tLS0tLS0tLS0tLS0KPiAgIApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2Ut
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
