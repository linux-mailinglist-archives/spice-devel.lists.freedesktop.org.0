Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E655BC20
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 14:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B1489ABA;
	Mon,  1 Jul 2019 12:49:42 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA0C89ABA
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 12:49:40 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id j19so13356207otq.2
 for <spice-devel@lists.freedesktop.org>; Mon, 01 Jul 2019 05:49:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SMdU7pbRoopCCJlH4w6L4Ecmh1yMrH6v2DreevfJ+IM=;
 b=lqSAvsMvR3UNc1IDNZKWs0OSyjFVFgrOASsAZ52YW4Rh1qt2IDeSRQuCwCJU6XW2vm
 jw9XLXEwYRjCaj6/AtBWwxpAyb96ANrySFBwU+oVQqj+LqnJ0rsCs2JUuX6gUfS8ZFSh
 MA7YWPt5A2VcpLS2hjngfgMzD+cPw9MJSebA/+LOVFidR+uZJkU8CaRC2xLtKLTY+jvF
 Z/WwHeA5g/1xWgFxxw9dZJMrJyCCy7x9eCGAmZjepKSUO722Y0QVWcxFejKsLcKsylzR
 nf9yLpNqP5TENLTvDWRiCOiy0/pKnsz2kkQSTG0AuYARPt3SshTFi92xkYWML/5hEtm9
 N0rg==
X-Gm-Message-State: APjAAAVEPFlm3dqumHx+TIfSkVviZdLBCWjcz5At4RfVmwa/QxaI6H9h
 HzICtRI5pdKYaiPFbsgYSUvsonFI4dKSJRhJyOpdhQ==
X-Google-Smtp-Source: APXvYqyFPx64pZfsa0umHH+7vNRAkr/5bFwjlfmGI2t8n2ZLXhrQZjMV6Lj+NBQUPxrh2YACNxhZIkbrWJiR8oJ+CvU=
X-Received: by 2002:a9d:304:: with SMTP id 4mr13234885otv.134.1561985380202;
 Mon, 01 Jul 2019 05:49:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190701120639.31441-1-kpouget@redhat.com>
 <m1pnmugcl7.fsf@dinechin.org>
In-Reply-To: <m1pnmugcl7.fsf@dinechin.org>
From: Kevin Pouget <kpouget@redhat.com>
Date: Mon, 1 Jul 2019 14:49:29 +0200
Message-ID: <CADJ1XR1+kjKTrWrCj2OFKYgyRy74zaA7XxdXWrsHpuUQ9LQ93g@mail.gmail.com>
To: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
Subject: Re: [Spice-devel] [PATCH] gstreamer-encoder: fix compiler warning
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
Cc: Spice devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMSwgMjAxOSBhdCAyOjMzIFBNIENocmlzdG9waGUgZGUgRGluZWNoaW4KPGNo
cmlzdG9waGUuZGUuZGluZWNoaW5AZ21haWwuY29tPiB3cm90ZToKPgo+Cj4gS2V2aW4gUG91Z2V0
IHdyaXRlczoKPgo+ID4gdGhpcyB3YXJuaW5nIGlzIGZhaWxpbmcgbXkgYnVpbGQsIEkgYXNzdW1l
IGl0IGNvbWVzIGZyb20gYSBuZXcgdmVyc2lvbgo+ID4gb2YgdGhlIGNvbXBpbGVyIGNhdGNoaW5n
IHRoZSB1c2VsZXNzIGNhbGwgdG8gYWJzKCkuCj4KPiBJcyBpdCB1c2VsZXNzLCBvciBpcyB0aGVy
ZSBhIHNpZ25lZC91bnNpZ25lZCBtaXNtYXRjaD8KPgo+IEkgc3VzcGVjdCB0aGUgaW50ZW50IGlz
IG1vcmUgc29tZXRoaW5nIGxpa2U6Cj4KPiAgICAgYWJzKChpbnQ2NCkgKGJpdF9yYXRlIC0gZW5j
b2Rlci0+dmlkZW9fYml0X3JhdGUpKQo+Cj4gaW4gb3JkZXIgdG8gY2F0Y2ggdGhlIGRlbHRhIGlu
IGJpdHJhdGUgaW4gZWl0aGVyIGRpcmVjdGlvbi4KCmdvb2QgcG9pbnQsIGEgdHlwZSBlcnJvciBt
YWtlcyBtb3JlIHNlbnNlIHRoYXQgYSB1c2VsZXNzIGFicygpIGNhbGwsIEkKc2hvdWxkIGhhdmUg
dGhvdWdodCB0d2ljZSBhYm91dCBpdCEKCgo+ID4KPiA+IC0tLQo+ID4KPiA+PiBlcnJvcjogdGFr
aW5nIHRoZSBhYnNvbHV0ZSB2YWx1ZSBvZiB1bnNpZ25lZCB0eXBlICd1aW50NjRfdCcKPiA+PiB7
YWthICdsb25nIHVuc2lnbmVkIGludCd9IGhhcyBubyBlZmZlY3QgWy1XZXJyb3I9YWJzb2x1dGUt
dmFsdWVdCj4gPiAtLS0KPiA+ICBzZXJ2ZXIvZ3N0cmVhbWVyLWVuY29kZXIuYyB8IDIgKy0KPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvc2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMgYi9zZXJ2ZXIvZ3N0cmVhbWVy
LWVuY29kZXIuYwo+ID4gaW5kZXggNjQxNmI2ODguLmRiZDRiMTFkIDEwMDY0NAo+ID4gLS0tIGEv
c2VydmVyL2dzdHJlYW1lci1lbmNvZGVyLmMKPiA+ICsrKyBiL3NlcnZlci9nc3RyZWFtZXItZW5j
b2Rlci5jCj4gPiBAQCAtNTE1LDcgKzUxNSw3IEBAIHN0YXRpYyB2b2lkIHNldF92aWRlb19iaXRf
cmF0ZShTcGljZUdzdEVuY29kZXIgKmVuY29kZXIsIHVpbnQ2NF90IGJpdF9yYXRlKQo+ID4gICAg
ICAgICAgZW5jb2Rlci0+dmlkZW9fYml0X3JhdGUgPSBiaXRfcmF0ZTsKPiA+ICAgICAgICAgIHNl
dF9nc3RlbmNfYml0cmF0ZShlbmNvZGVyKTsKPiA+Cj4gPiAtICAgIH0gZWxzZSAgaWYgKGFicyhi
aXRfcmF0ZSAtIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlKSA+IGVuY29kZXItPnZpZGVvX2JpdF9y
YXRlICogU1BJQ0VfR1NUX1ZJREVPX0JJVFJBVEVfTUFSR0lOKSB7Cj4gPiArICAgIH0gZWxzZSAg
aWYgKChiaXRfcmF0ZSAtIGVuY29kZXItPnZpZGVvX2JpdF9yYXRlKSA+IGVuY29kZXItPnZpZGVv
X2JpdF9yYXRlICogU1BJQ0VfR1NUX1ZJREVPX0JJVFJBVEVfTUFSR0lOKSB7Cj4gPiAgICAgICAg
ICBlbmNvZGVyLT52aWRlb19iaXRfcmF0ZSA9IGJpdF9yYXRlOwo+ID4gICAgICAgICAgc2V0X3Bp
cGVsaW5lX2NoYW5nZXMoZW5jb2RlciwgU1BJQ0VfR1NUX1ZJREVPX1BJUEVMSU5FX0JJVFJBVEUp
Owo+ID4gICAgICB9Cj4KPgo+IC0tCj4gQ2hlZXJzLAo+IENocmlzdG9waGUgZGUgRGluZWNoaW4g
KElSQyBjM2QpCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGlj
ZS1kZXZlbA==
