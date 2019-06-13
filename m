Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD93B433B7
	for <lists+spice-devel@lfdr.de>; Thu, 13 Jun 2019 09:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70526893C9;
	Thu, 13 Jun 2019 07:31:31 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A33893C9
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 07:31:28 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c6so8973566wml.0
 for <spice-devel@lists.freedesktop.org>; Thu, 13 Jun 2019 00:31:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=2FSa6s2tIXrDs8JEhNLtqUM7afGeP9Oh1Wat0oYGo6I=;
 b=H/Udn6MWbCiDaVeoF7FfJbbPHqDuLG7lKwsqkifbwf0C2o6jU6OJtcrx7I+Orrdeey
 HCfg1p6KOUIRLXdkvxwqZ3u3qwztelMvyn/N8O+sda61orT+VghFMDOOd0+OZYMsTWzJ
 t6U9gB9ozS490eOzPlsEY1kzdzj59+sdC2lmAwt3JubnDuMu/eqq7ryOQPbSFV9vk/K1
 hZpRMMfwdELn/CLlIzuN19f8vbwk9i/Olll8OQDlDQMm2GloGLZPN8JLogSkSotBYTh5
 9+LNdUTRONDDwFyX9CK1A7JPtbgvh4xaMVwbgtSm5tm7HrviJxDh8obEFA+R/+niVTDw
 Gn1Q==
X-Gm-Message-State: APjAAAWv61wn85dSWPjlQGsn/VaT0PZgTliVYnaLWzwGPvqMLAiYkJtg
 HIINSwIQAwt4/cCGNTmEZa1cEQ/gwqfNFQ==
X-Google-Smtp-Source: APXvYqyjYy0eyRfFrxchr1KtGenNNNWDgIxWfOm29kuFnPD1uFJytQ03tFLNms8fNmmlSJNzBo8YxQ==
X-Received: by 2002:a7b:cb4b:: with SMTP id v11mr2283373wmj.85.1560411086388; 
 Thu, 13 Jun 2019 00:31:26 -0700 (PDT)
Received: from dhcp-4-181.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id w5sm2216829wrr.86.2019.06.13.00.31.24
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 00:31:25 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190612115354.8472-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <b8c3d006-6123-01e6-92ee-062ffd4bc70e@redhat.com>
Date: Thu, 13 Jun 2019 10:31:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190612115354.8472-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] Update spice-common submodule
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

SXQgc2VlbXMgdGhpcyB3YXMgcHVzaGVkIGFscmVhZHkgc29tZSB0aW1lIGFnbwoKT24gNi8xMi8x
OSAyOjUzIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gVGhpcyBicmluZ3MgaW4gdGhlIGZv
bGxvd2luZyBjaGFuZ2VzOgo+Cj4gRnJlZGlhbm8gWmlnbGlvICg0KToKPiAgICAgICAgZ2l0aWdu
b3JlOiBJZ25vcmUgYXV0byBnZW5lcmF0ZWQgZ2VuZXJhdGVkX21lc3NhZ2VzLmggZmlsZQo+ICAg
ICAgICBEbyBub3QgY2hlY2sgZm9yIEhBVkVfQ09ORklHX0gKPiAgICAgICAgYnVpbGQ6IFJlbW92
ZSB1bnVzZWQgZ2l0LXZlcnNpb24tZ2VuIGZpbGUKPiAgICAgICAgcmVjb3JkZXI6IFVwZGF0ZQo+
Cj4gVXJpIEx1YmxpbiAoMSk6Cj4gICAgICAgIGNvZGVnZW4gTWFrZWZpbGU6IGFkZCBjb21tb24v
IHRvIC0taW5jbHVkZSBjbGllbnRfbWFyc2hhbGxlcnMuaAo+Cj4gU2lnbmVkLW9mZi1ieTogRnJl
ZGlhbm8gWmlnbGlvIDxmemlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gICBzdWJwcm9qZWN0cy9z
cGljZS1jb21tb24gfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24gYi9z
dWJwcm9qZWN0cy9zcGljZS1jb21tb24KPiBpbmRleCA0N2JhOGUwZjIuLmNjMTA5YTgzYiAxNjAw
MDAKPiAtLS0gYS9zdWJwcm9qZWN0cy9zcGljZS1jb21tb24KPiArKysgYi9zdWJwcm9qZWN0cy9z
cGljZS1jb21tb24KPiBAQCAtMSArMSBAQAo+IC1TdWJwcm9qZWN0IGNvbW1pdCA0N2JhOGUwZjI1
ZGRiYTExMGZlNzdiYTU1YWQ1ZGE1NzBmNDU4MmJkCj4gK1N1YnByb2plY3QgY29tbWl0IGNjMTA5
YTgzYjZjNmE5MjA1YTIyOWU4NDI0NjA3OWRiZjU0MGFiZjcKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
