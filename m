Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8E5614BA
	for <lists+spice-devel@lfdr.de>; Sun,  7 Jul 2019 13:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C11D7899D6;
	Sun,  7 Jul 2019 11:44:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E88F89B62
 for <spice-devel@lists.freedesktop.org>; Sun,  7 Jul 2019 11:44:40 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id f9so14079382wre.12
 for <spice-devel@lists.freedesktop.org>; Sun, 07 Jul 2019 04:44:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=tPVL5k1hPRq8uZr0KD6Rqg0RnYpOCvy7D8ksyhlZbZ8=;
 b=eX/svhuYohCpjwT2ZwjYX+T2I4bEWxbKlFGNPzKJAxpRAw9jpcKEjJInLs2P4CFlmA
 pOAZ32L3dBm1N9Er0EbSslZkH/2NyA6+PrYM2f5+w+V7bB2VJMqPInss6opdExnTuZYd
 7u9cHLLEYUBT0e1n45O/dG72glyvVReTVoNamB8FPErlq+ldEnhI/aybruZGgRq1LIwE
 gaYBVdYzQdZ2/Ga53a5J4mP3JwA4bXQEpP2eIjiajBVVCTD9VwC2/VN8X1Pcx3hAwYST
 ssFVasWBLBwuaKNQFJHP6tlI017pZwdy7iQVl20URH+rlskGhBxZ2JsnjcPpj6ooEYDc
 Nrvw==
X-Gm-Message-State: APjAAAVVbaGi8q+sINLrptQfQoUHpXcbeEx1vLRKRso+POMoIvOnDoH3
 4zLYpP97eoM292RK2kuavmgVyLEqV+GEkw==
X-Google-Smtp-Source: APXvYqwc4xHG3n9Ej2mf5BvxyeU75Mky9GerUNCvcTyJ8ya2j+ExI91AqkzJjOasptGoLdByLpcY+Q==
X-Received: by 2002:a5d:514f:: with SMTP id u15mr4594849wrt.183.1562499878621; 
 Sun, 07 Jul 2019 04:44:38 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id l8sm23012905wrg.40.2019.07.07.04.44.37
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 07 Jul 2019 04:44:37 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190705130922.12132-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <6edf85cc-cc0c-6fa5-df00-fc9dcbd009d5@redhat.com>
Date: Sun, 7 Jul 2019 14:44:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190705130922.12132-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] test-codecs-parsing: On bad
 codec string spice_server_set_video_codecs can fail
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

SGksCgpPbiA3LzUvMTkgNDowOSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFRoZSAwIHJl
c3VsdCBtZWFucyBzdWNjZXNzIGhvd2V2ZXIgdGhlIGZ1bmN0aW9uIChjb3JyZWN0bHkpIGNvdWxk
Cj4gcmVwb3J0IGEgZmFpbHVyZSBpZiB0aGUgc3RyaW5nIGlzIGluY29ycmVjdC4KPiBUaGlzIGZp
eGVzIHRoZSB0ZXN0IGFmdGVyIGNvbW1pdCBiNDE1MGRlM2NkMGU1NmQ0Y2U0M2E5OWVmNWMzYzVm
NWNiZGZjNGEzCj4gKCJzcGljZV9zZXJ2ZXJfc2V0X3ZpZGVvX2NvZGVjczogZmFpbCB3aGVuIG5v
IGNvZGVjIGNhbiBiZSBpbnN0YWxsZWQiKS4KPgo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFpp
Z2xpbyA8ZnppZ2xpb0ByZWRoYXQuY29tPgo+IC0tLQo+ICAgc2VydmVyL3Rlc3RzL3Rlc3QtY29k
ZWNzLXBhcnNpbmcuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL3NlcnZlci90ZXN0cy90ZXN0LWNvZGVjcy1w
YXJzaW5nLmMgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1jb2RlY3MtcGFyc2luZy5jCj4gaW5kZXggNzk5
ODUwMWM5Li4wOGQ4M2NjMmIgMTAwNjQ0Cj4gLS0tIGEvc2VydmVyL3Rlc3RzL3Rlc3QtY29kZWNz
LXBhcnNpbmcuYwo+ICsrKyBiL3NlcnZlci90ZXN0cy90ZXN0LWNvZGVjcy1wYXJzaW5nLmMKPiBA
QCAtMTQwLDcgKzE0MCw3IEBAIHN0YXRpYyB2b2lkIGNvZGVjc19iYWQodm9pZCkKPiAgICAgICAg
ICAgZ190ZXN0X2V4cGVjdF9tZXNzYWdlKEdfTE9HX0RPTUFJTiwgdGVzdF9jYXNlc1tpXS5sb2df
bGV2ZWwsIHRlc3RfY2FzZXNbaV0uZXJyb3JfbWVzc2FnZSk7Cj4gICAgICAgICAgIGlmICh0ZXN0
X2Nhc2VzW2ldLmRlZmF1bHRfZXJyX21lc3NhZ2UpCj4gICAgICAgICAgICAgICBnX3Rlc3RfZXhw
ZWN0X21lc3NhZ2UoR19MT0dfRE9NQUlOLCBHX0xPR19MRVZFTF9XQVJOSU5HLCAiKkZhaWxlZCB0
byBzZXQgdmlkZW8gY29kZWNzKiIpOwo+IC0gICAgICAgIGdfYXNzZXJ0X2NtcGludChzcGljZV9z
ZXJ2ZXJfc2V0X3ZpZGVvX2NvZGVjcyhzZXJ2ZXIsIHRlc3RfY2FzZXNbaV0uY29kZWNzKSwgPT0s
IDApOwo+ICsgICAgICAgIHNwaWNlX3NlcnZlcl9zZXRfdmlkZW9fY29kZWNzKHNlcnZlciwgdGVz
dF9jYXNlc1tpXS5jb2RlY3MpOwoKCkNhbid0IHdlIGFzc2VydCBmb3LCoCAtMSBub3c/CgpTbmly
LgoKPiAgICAgICAgICAgZ190ZXN0X2Fzc2VydF9leHBlY3RlZF9tZXNzYWdlcygpOwo+ICAgICAg
IH0KPiAgIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2
ZWw=
