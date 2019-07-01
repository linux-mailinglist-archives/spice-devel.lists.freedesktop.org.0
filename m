Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8415B644
	for <lists+spice-devel@lfdr.de>; Mon,  1 Jul 2019 10:03:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01E989F85;
	Mon,  1 Jul 2019 08:03:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45AA989F85
 for <spice-devel@lists.freedesktop.org>; Mon,  1 Jul 2019 08:03:27 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f9so12609544wre.12
 for <spice-devel@lists.freedesktop.org>; Mon, 01 Jul 2019 01:03:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=cbarocBgZUG4FwYo5et8/g/B5+FqY2a2o1hAJ3XE2Lc=;
 b=mY0+k10+9/f9c1roA9mw3tzSDkb7NWpFxQQTpwy8k2fWfW9Z9xgrGsJxSE0UmC8NqO
 koYPpYLcQqisbBkQwM3B2ZIwpv4/YxCSRFP/j1OG+KU1BfkQNF3VCMF6MjYsQpW4Nr/A
 dRw0gbFfGV2e8ZsqvSaZa5xhX0GSycI8ov5WMdyBiOyj0Q0ZfcVu8/mDBrReVhoGzcSx
 G12ya9e2LpmqzkZbo+w/7cuE5wTjrhlB5ePcS+u5sjbyffMfwmp36SW33ukC9LbUSyji
 ANt3p/pWIpOzLBLQgJqZT032uf9T4WuMkUg1j3Z1gjPX1e8lZ+DoKDrub4wCN5yxlkWQ
 +KcQ==
X-Gm-Message-State: APjAAAVkE5TjQeINniK2US2nuDoYbXFSbmv4N99NQK2xHMOnYEu1EGHL
 qJa2xBq3DpmNrJwbm8KZRB7gqD7cAo8=
X-Google-Smtp-Source: APXvYqxj8UhDZoE3zLtfnx+UEKcj67dj8pOAmXGAFjlp2sjy8O0zU9U2IFjWjyVqDtSinSQnv7899g==
X-Received: by 2002:a5d:670b:: with SMTP id o11mr8200825wru.311.1561968205476; 
 Mon, 01 Jul 2019 01:03:25 -0700 (PDT)
Received: from localhost.localdomain ([141.226.14.149])
 by smtp.gmail.com with ESMTPSA id n125sm13979554wmf.6.2019.07.01.01.03.24
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 01:03:24 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190618081551.20585-1-fziglio@redhat.com>
 <1836786546.25082793.1561707997349.JavaMail.zimbra@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <bd50f68b-01d8-cde6-ac8c-e0de0815f110@redhat.com>
Date: Mon, 1 Jul 2019 11:03:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1836786546.25082793.1561707997349.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-gtk] Replace some missing "latency"
 terms
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

QWNrIGZvciBib3RoCgpPbiA2LzI4LzE5IDEwOjQ2IEFNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6
Cj4gcGluZwo+Cj4+IFRoaXMgZm9sbG93cyB1cCBjb21taXQgODg3YWVkZmY0MWJkYjg5ODQ1ZTdj
YjM0OTQ1NGE4ZGNiYjUxNWRiNAo+PiAiVGhlIHZpZGVvIGxhdGVuY3kgaXMgaW4gZmFjdCBhIG1h
cmdpbiIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+PiAtLS0KPj4gICBzcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaCB8IDQgKystLQo+
PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9zcmMvY2hhbm5lbC1kaXNwbGF5LXByaXYuaCBiL3NyYy9jaGFubmVsLWRp
c3BsYXktcHJpdi5oCj4+IGluZGV4IDQ5NWRmN2FjLi4xNmMxMmM2ZSAxMDA2NDQKPj4gLS0tIGEv
c3JjL2NoYW5uZWwtZGlzcGxheS1wcml2LmgKPj4gKysrIGIvc3JjL2NoYW5uZWwtZGlzcGxheS1w
cml2LmgKPj4gQEAgLTYzLDEyICs2MywxMiBAQCBzdHJ1Y3QgVmlkZW9EZWNvZGVyIHsKPj4gICAg
ICAgICoKPj4gICAgICAgICogQGRlY29kZXI6ICAgVGhlIHZpZGVvIGRlY29kZXIuCj4+ICAgICAg
ICAqIEBmcmFtZTogICAgIFRoZSBjb21wcmVzc2VkIFNwaWNlIGZyYW1lLgo+PiAtICAgICAqIEBs
YXRlbmN5OiAgIEhvdyBsb25nIGluIG1pbGxpc2Vjb25kcyB1bnRpbCB0aGUgZnJhbWUgc2hvdWxk
IGJlCj4+ICsgICAgICogQG1hcmdpbjogICAgSG93IGxvbmcgaW4gbWlsbGlzZWNvbmRzIHVudGls
IHRoZSBmcmFtZSBzaG91bGQgYmUKPj4gICAgICAgICogICAgICAgICAgICAgZGlzcGxheWVkLiBO
ZWdhdGl2ZSB2YWx1ZXMgbWVhbiB0aGUgZnJhbWUgaXMgbGF0ZS4KPj4gICAgICAgICogQHJldHVy
bjogICAgRmFsc2UgaWYgdGhlIGRlY29kZXIgY2FuIG5vIGxvbmdlciBkZWNvZGUgZnJhbWVzLAo+
PiAgICAgICAgKiAgICAgICAgICAgICBUcnVlIG90aGVyd2lzZS4KPj4gICAgICAgICovCj4+IC0g
ICAgZ2Jvb2xlYW4gKCpxdWV1ZV9mcmFtZSkoVmlkZW9EZWNvZGVyICp2aWRlb19kZWNvZGVyLCBT
cGljZUZyYW1lICpmcmFtZSwKPj4gaW50IGxhdGVuY3kpOwo+PiArICAgIGdib29sZWFuICgqcXVl
dWVfZnJhbWUpKFZpZGVvRGVjb2RlciAqdmlkZW9fZGVjb2RlciwgU3BpY2VGcmFtZSAqZnJhbWUs
Cj4+IGludCBtYXJnaW4pOwo+PiAgIAo+PiAgICAgICAvKiBUaGUgZm9ybWF0IG9mIHRoZSBlbmNv
ZGVkIHZpZGVvLiAqLwo+PiAgICAgICBpbnQgY29kZWNfdHlwZTsKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dAo+IFNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0
ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
