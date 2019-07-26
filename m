Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A596976CEC
	for <lists+spice-devel@lfdr.de>; Fri, 26 Jul 2019 17:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CEA66EDA7;
	Fri, 26 Jul 2019 15:29:27 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 866D76EDA7
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 15:29:25 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id f4so105624683ioh.6
 for <spice-devel@lists.freedesktop.org>; Fri, 26 Jul 2019 08:29:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jznLf/YJvNjx6jN0KbXceobviY8SXfkvAqN9N7mRLdI=;
 b=IORVK199cxBKH2M9qIpLKwIJpmWs17+Dh/Os4JORX3iAIUyycEJF+MkrTCZxciAaa3
 votkatfTzQLAooFNQqo/7kap6ARdUWk96IpONTtmurbm/5/uZ1iFBz0zW6lBnvkdE2j1
 X6GiHHLDbEZ/wVy2J4REhDnd4gIGNZoNoCgGfPbMqNqXm3B63lenEV0RqSCZ2efs0g8h
 Bv2ZTvl+qpGU8IeZZ0n3aST5HgyHejaZnkGLeZXNJKgxw95wO5wh1NK7RynyhEvAI7CU
 MWFwAlfNFJJ/Sw31ofDVXV45qkaHkP+h/59WPXWfNPgEt6hWwp0FdEs6iMXeXSQcJ214
 IT2A==
X-Gm-Message-State: APjAAAUqUJTRQ+e+Umd7vUEAEDhgZkgLz1qG0L1P/uUba/gxRbPC6meo
 +SM4AEISxbojLjkWb+krfVEA8CXZiYw80OVYlVg=
X-Google-Smtp-Source: APXvYqwr5w8tVxKvD+v0Fn0xoSd1Y3XWyJf3vsgnF0T0DjWkd6YamBiVL9Wx1eWiVS6SBQqIyB461l09kj6GjoYdPrg=
X-Received: by 2002:a5d:96cc:: with SMTP id r12mr70369557iol.99.1564154964866; 
 Fri, 26 Jul 2019 08:29:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190724105351.13753-1-yuri.benditovich@daynix.com>
 <20190724105351.13753-10-yuri.benditovich@daynix.com>
 <1289830693.3135464.1564147025076.JavaMail.zimbra@redhat.com>
In-Reply-To: <1289830693.3135464.1564147025076.JavaMail.zimbra@redhat.com>
From: Yuri Benditovich <yuri.benditovich@daynix.com>
Date: Fri, 26 Jul 2019 18:29:10 +0300
Message-ID: <CAOEp5OeNhuh7rEVGwD5FdYvtg8QFia8MBMi_uMyDUQeQ65eGJQ@mail.gmail.com>
To: Frediano Ziglio <fziglio@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=jznLf/YJvNjx6jN0KbXceobviY8SXfkvAqN9N7mRLdI=;
 b=Q6cj7P6oRBgYkCjWT1rU3dm8sOcAz341A5P/dmIN6vBNRrapgkxLO4zop2JhITrBqy
 2yKd9wyr7SJW51shiASbPRTDnxzMmxApjCZAzuCD0vW1UWp23sybzLCibuiL8xqRgaF0
 l6Xy5hYzsRB4fUcth7TlRZugq2h3Oj2oRPEjisRxFmNGKegt24z8LRXIpkcUxVb1JXtD
 ddrwWrWh46yLHk7S+k9NIGtooLRaSBCFl20zEfks7tEMd6k7IIvxH4HfRFVUskDlbIuf
 CzyAunoHyzV8DXjJ3cAhDHHC126kdBcDWRQy6JKwX4mWAR/kJw9wyyOzqB5f5VyXSiYs
 JLFw==
Subject: Re: [Spice-devel] [spice-gtk 9/9] usb-redir: enable redirection of
 emulated CD drive
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
Cc: Yan Vugenfirer <yan@daynix.com>,
 Spice List <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgNDoxNyBQTSBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiA+Cj4gPiBSZWdpc3RlciBjb25zdHJ1Y3RvciBmb3IgZW11
bGF0ZWQgQ0QgZGV2aWNlLiBOb3cgY3JlYXRpb24KPiA+IG9mIENEIGRldmljZXMgYXQgc3RhcnR1
cCBpcyBwb3NzaWJsZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZdXJpIEJlbmRpdG92aWNoIDx5
dXJpLmJlbmRpdG92aWNoQGRheW5peC5jb20+Cj4gPiAtLS0KPiA+ICBzcmMvbWVzb24uYnVpbGQg
ICB8IDYgKysrKysrCj4gPiAgc3JjL3VzYi1iYWNrZW5kLmMgfCAxICsKPiA+ICAyIGZpbGVzIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9zcmMvbWVzb24uYnVp
bGQgYi9zcmMvbWVzb24uYnVpbGQKPiA+IGluZGV4IDQ5ZmVjNTIuLjk0NGIwODMgMTAwNjQ0Cj4g
PiAtLS0gYS9zcmMvbWVzb24uYnVpbGQKPiA+ICsrKyBiL3NyYy9tZXNvbi5idWlsZAo+ID4gQEAg
LTEyNCw2ICsxMjQsMTIgQEAgc3BpY2VfY2xpZW50X2dsaWJfc291cmNlcyA9IFsKPiA+ICAgICd1
c2ItYmFja2VuZC5jJywKPiA+ICAgICd1c2ItZW11bGF0aW9uLmgnLAo+ID4gICAgJ3VzYi1iYWNr
ZW5kLmgnLAo+ID4gKyAgJ3VzYi1kZXZpY2UtY2QuYycsCj4gPiArICAnY2Qtc2NzaS5jJywKPiA+
ICsgICdjZC1zY3NpLmgnLAo+ID4gKyAgJ2NkLXNjc2ktZGV2LXBhcmFtcy5oJywKPiA+ICsgICdj
ZC11c2ItYnVsay1tc2QuYycsCj4gPiArICAnY2QtdXNiLWJ1bGstbXNkLmgnLAo+ID4gICAgJ3Zt
Y3N0cmVhbS5jJywKPiA+ICAgICd2bWNzdHJlYW0uaCcsCj4gPiAgXQo+Cj4gSSB3b3VsZCBzcGxp
dCB0aGlzIHBhcnQgb2YgdGhlIHBhdGNoIGFuZCBhZGQgdGhlIGZpbGVzIHRvIHRoZQo+IGJ1aWxk
IGFzIHNvb24gYXMgdGhleSBhcmUgYWRkZWQgc28gdG8gY2hlY2sgdGhhdCBhdCBsZWFzdCB0aGV5
Cj4gY29tcGlsZXIsIGV2ZW4gaWYgdGhleSBhcmUgbm90IHVzZWQuCgpObyBwcm9ibGVtCgo+Cj4g
PiBkaWZmIC0tZ2l0IGEvc3JjL3VzYi1iYWNrZW5kLmMgYi9zcmMvdXNiLWJhY2tlbmQuYwo+ID4g
aW5kZXggMDIzNjlkMi4uNzYwZGMxNiAxMDA2NDQKPiA+IC0tLSBhL3NyYy91c2ItYmFja2VuZC5j
Cj4gPiArKysgYi9zcmMvdXNiLWJhY2tlbmQuYwo+ID4gQEAgLTQzMiw2ICs0MzIsNyBAQCBTcGlj
ZVVzYkJhY2tlbmQgKnNwaWNlX3VzYl9iYWNrZW5kX25ldyhHRXJyb3IgKiplcnJvcikKPiA+ICAj
ZW5kaWYKPiA+ICAjZW5kaWYKPiA+ICAgICAgICAgIGJlLT5vd25fZGV2aWNlc19tYXNrID0gMzsg
LyogZXhjbHVkZSBhZGRyZXNzZXMgMCBhbmQgMSAqLwo+ID4gKyAgICAgICAgc3BpY2VfdXNiX2Rl
dmljZV9yZWdpc3Rlcl9jZChiZSk7Cj4gPiAgICAgIH0KPiA+ICAgICAgU1BJQ0VfREVCVUcoIiVz
IDw8IiwgX19GVU5DVElPTl9fKTsKPiA+ICAgICAgcmV0dXJuIGJlOwo+Cj4gVGhpcyBpcyBhZGRp
bmcgYSBjaXJjdWxhciBkZXBlbmRlbmN5Lgo+IHVzYi1iYWNrZW5kIHdpbGwgZGVwZW5kIG9uIHVz
Yi1kZXZpY2UtY2Qgd2hpY2ggZGVwZW5kcyBvbiB1c2ItYmFja2VuZC4KCkkgYW0gbm90IGF3YXJl
IG9mIGRlcHJlY2F0aW9uIG9mIGNpcmN1bGFyIGRlcGVuZGVuY3kgYmV0d2VlbiBDIGZpbGVzLgpG
b3IgZXhhbXBsZSwgbGFzdCB0aW1lIEkgd2FzIHJlcXVlc3RlZCBieSBWaWN0b3IgdG8gY3JlYXRl
IHN1Y2gKZGVwZW5kZW5jeSBiZXR3ZWVuIHVzYi1yZWRpci1jaGFubmVsIGFuZCB1c2ItYmFja2Vu
ZC4KCj4KPiBGcmVkaWFubwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
c3BpY2UtZGV2ZWw=
