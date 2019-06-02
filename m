Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F19322B4
	for <lists+spice-devel@lfdr.de>; Sun,  2 Jun 2019 10:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 377AD8930F;
	Sun,  2 Jun 2019 08:21:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73D0C8930F
 for <spice-devel@lists.freedesktop.org>; Sun,  2 Jun 2019 08:21:04 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c6so5474944wml.0
 for <spice-devel@lists.freedesktop.org>; Sun, 02 Jun 2019 01:21:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=xX3o1CG5+eyFS2u/Y8mF+ITpXa0i+lwP8KJt16q9npU=;
 b=MMvq4+QKfnfoF+oF1SosAKc9n1gCoxoVuQXZpn3Ivb6SD9kty83WVEPwwGjsMx+76l
 GU1W+DhIadEZhAtYTIX6m71PdWDylO4VYVOl0VlEPX1rmIgPEt1oLu/KGVVWYzQnZUEr
 hWggKn2k3tVqJ3stlGzPsGTzGvR4eKwE3LnR9j7y7nxjUDr/TP6QHALgISH4vzkN+ydx
 W94rADhzQk49J6nMtc3l7HJfm7apCn0SdvMxpjHR8DG3itpd7OTwXWUfGNl0jqYTO9mL
 MMZqIEFLwhSNlruO2StvP5M2WImheFPk6829VaQ99fuvCA3UVDwRMUuB9zVvpViw//Cs
 uUdw==
X-Gm-Message-State: APjAAAVVj696w7lChmuhzDmSb8UcXAE/hfmGZYBWUG9+4drjiObk2r91
 V4cSElRwhbFTZ/T5taC+nHaWMKlq+lo=
X-Google-Smtp-Source: APXvYqwpIJAq24Sjzhbt56hnuk+Ev7mzZ0PbUn2m70XPvld4+hjaeEmmYvkylOQ3q8vy0a8Ulw35IA==
X-Received: by 2002:a7b:c751:: with SMTP id w17mr11079236wmk.127.1559463662660; 
 Sun, 02 Jun 2019 01:21:02 -0700 (PDT)
Received: from dhcp-4-76.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id x83sm8147440wmb.42.2019.06.02.01.21.01
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 01:21:01 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190531045239.3937-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <730fc007-7ff4-7ed1-e947-14bfbc4a02c9@redhat.com>
Date: Sun, 2 Jun 2019 11:21:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190531045239.3937-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] char-device: Fix some
 comments
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

QWNrZWQtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20+CgpPbiA1LzMxLzE5
IDc6NTIgQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBTb21lIGZ1bmN0aW9uIG5hbWVzIHdo
ZXJlIGNoYW5nZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBGcmVkaWFubyBaaWdsaW8gPGZ6aWdsaW9A
cmVkaGF0LmNvbT4KPiAtLS0KPiAgIHNlcnZlci9jaGFyLWRldmljZS5oIHwgNiArKystLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvc2VydmVyL2NoYXItZGV2aWNlLmggYi9zZXJ2ZXIvY2hhci1kZXZpY2UuaAo+IGlu
ZGV4IDYyZDJmYTYxZS4uYjE5NTYwODE2IDEwMDY0NAo+IC0tLSBhL3NlcnZlci9jaGFyLWRldmlj
ZS5oCj4gKysrIGIvc2VydmVyL2NoYXItZGV2aWNlLmgKPiBAQCAtOTMsMTMgKzkzLDEzIEBAIEdU
eXBlIHJlZF9jaGFyX2RldmljZV9nZXRfdHlwZSh2b2lkKSBHX0dOVUNfQ09OU1Q7Cj4gICAgKiBk
ZXZpY2UgYXR0YWNoZWQ6IGNyZWF0ZSBuZXcgb2JqZWN0IGluc3RhbnRpYXRpbmcgYSBSZWRDaGFy
RGV2aWNlIGNoaWxkIGNsYXNzCj4gICAgKiBkZXZpY2UgZGV0YWNoZWQ6IGNhbGwgZ19vYmplY3Rf
dW5yZWYvcmVkX2NoYXJfZGV2aWNlX3Jlc2V0Cj4gICAgKgo+IC0gKiBjbGllbnQgY29ubmVjdGVk
IGFuZCBhc3NvY2lhdGVkIHdpdGggYSBkZXZpY2U6IHJlZF9jaGFyX2RldmljZV9fYWRkCj4gLSAq
IGNsaWVudCBkaXNjb25uZWN0ZWQ6IHJlZF9jaGFyX2RldmljZV9fcmVtb3ZlCj4gKyAqIGNsaWVu
dCBjb25uZWN0ZWQgYW5kIGFzc29jaWF0ZWQgd2l0aCBhIGRldmljZTogcmVkX2NoYXJfZGV2aWNl
X2NsaWVudF9hZGQKPiArICogY2xpZW50IGRpc2Nvbm5lY3RlZDogcmVkX2NoYXJfZGV2aWNlX2Ns
aWVudF9yZW1vdmUKPiAgICAqCj4gICAgKiBXcml0aW5nIHRvIHRoZSBkZXZpY2UKPiAgICAqIC0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgICogV3JpdGUgdGhlIGRhdGEgaW50byBSZWRDaGFyRGV2
aWNlV3JpdGVCdWZmZXI6Cj4gLSAqIGNhbGwgcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9n
ZXQvcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9nZXRfc2VydmVyX25vX3Rva2VuCj4gKyAq
IGNhbGwgcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZlcl9nZXRfY2xpZW50L3JlZF9jaGFyX2Rl
dmljZV93cml0ZV9idWZmZXJfZ2V0X3NlcnZlcgo+ICAgICogaW4gb3JkZXIgdG8gZ2V0IGFuIGFw
cHJvcHJpYXRlIGJ1ZmZlci4KPiAgICAqIGNhbGwgcmVkX2NoYXJfZGV2aWNlX3dyaXRlX2J1ZmZl
cl9hZGQgaW4gb3JkZXIgdG8gcHVzaCB0aGUgYnVmZmVyIHRvIHRoZSB3cml0ZSBxdWV1ZS4KPiAg
ICAqIElmIHlvdSBjaG9vc2Ugbm90IHRvIHB1c2ggdGhlIGJ1ZmZlciB0byB0aGUgZGV2aWNlLCBj
YWxsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNl
LWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
