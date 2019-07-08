Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8876A61A4D
	for <lists+spice-devel@lfdr.de>; Mon,  8 Jul 2019 07:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7269D8996F;
	Mon,  8 Jul 2019 05:21:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E0DA8996F
 for <spice-devel@lists.freedesktop.org>; Mon,  8 Jul 2019 05:21:50 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id r1so9157052wrl.7
 for <spice-devel@lists.freedesktop.org>; Sun, 07 Jul 2019 22:21:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=vSNhBFSphTK/HrzNAzIZ6HFCAo0y41ySKgDC5VtgSaA=;
 b=QZ3Zt+CIX2X0+8wTZBMkm0FDSlvJbdCsby/TMKvjYLmwGDMVPU7RgVbs/p7o6o3GIo
 rUE8+QcGSd3Bbz7jJSFteCBTRgPQ3XANZeojz5BuW9hkMk1BhKSe6sqpAEcMX/oAvpM1
 63jF0Cb3GEfEVhTLC8Vz5sW5qqWgT9iSbWAoxX/b0jqBHaReB+zv9+m/wl7B4Uzc1v2b
 PzlYlvczfXH9m6G6d7mD6de84YSlVHhcYluxNefBONBwBSZgrABFnwWKENG4mGM2i0cC
 k+dW59fxfZLSdOOi5zPvrnnRjcZ4Uw9Z9HwmaoxNrksF7VT5hfct6RmYj7X7JeAMhd6P
 S49Q==
X-Gm-Message-State: APjAAAV2b9LzytmPsmHvLPhM9RlB8Y7Vvfg4oxD7w+6z73VTUmwbZrEU
 rsJwHi0xkF4Pmr66aoiZQIruwFPjtAI=
X-Google-Smtp-Source: APXvYqzNfAaiGM/80oVDZPvf6hEfbphic+4d8IdwE1BrrjT0KvMHKchf0hZxISMVPuedTQILhXWkNg==
X-Received: by 2002:a5d:514f:: with SMTP id u15mr7434930wrt.183.1562563308725; 
 Sun, 07 Jul 2019 22:21:48 -0700 (PDT)
Received: from localhost.localdomain ([31.210.177.32])
 by smtp.gmail.com with ESMTPSA id i66sm1846381wmi.11.2019.07.07.22.21.47
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 07 Jul 2019 22:21:48 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190707162624.12059-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <056d5b73-010e-38fb-e6a4-df45121c95fe@redhat.com>
Date: Mon, 8 Jul 2019 08:21:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190707162624.12059-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server v2] test-codecs-parsing: On
 bad codec string spice_server_set_video_codecs can fail
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

QWNrZWQtYnk6IFNuaXIgU2hlcmliZXIgPHNzaGVyaWJlQHJlZGhhdC5jb20KCgpPbiA3LzcvMTkg
NzoyNiBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IFRoZSAwIHJlc3VsdCBtZWFucyBzdWNj
ZXNzIGhvd2V2ZXIgdGhlIGZ1bmN0aW9uIChjb3JyZWN0bHkpIGNvdWxkCj4gcmVwb3J0IGEgZmFp
bHVyZSBpZiB0aGUgc3RyaW5nIGlzIGluY29ycmVjdC4KPiBUaGlzIGZpeGVzIHRoZSB0ZXN0IGFm
dGVyIGNvbW1pdCBiNDE1MGRlM2NkMGU1NmQ0Y2U0M2E5OWVmNWMzYzVmNWNiZGZjNGEzCj4gKCJz
cGljZV9zZXJ2ZXJfc2V0X3ZpZGVvX2NvZGVjczogZmFpbCB3aGVuIG5vIGNvZGVjIGNhbiBiZSBp
bnN0YWxsZWQiKS4KPgo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0By
ZWRoYXQuY29tPgo+IC0tLQo+ICAgc2VydmVyL3Rlc3RzL3Rlc3QtY29kZWNzLXBhcnNpbmcuYyB8
IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
Cj4gQ2hhbmdlcyBzaW5jZSB2MToKPiAtIGNoZWNrIGFsd2F5cyBlcnJvciBzZXR0aW5nIGNvZGVj
cy4KPgo+IGRpZmYgLS1naXQgYS9zZXJ2ZXIvdGVzdHMvdGVzdC1jb2RlY3MtcGFyc2luZy5jIGIv
c2VydmVyL3Rlc3RzL3Rlc3QtY29kZWNzLXBhcnNpbmcuYwo+IGluZGV4IDc5OTg1MDFjOS4uMDAz
N2MwNThmIDEwMDY0NAo+IC0tLSBhL3NlcnZlci90ZXN0cy90ZXN0LWNvZGVjcy1wYXJzaW5nLmMK
PiArKysgYi9zZXJ2ZXIvdGVzdHMvdGVzdC1jb2RlY3MtcGFyc2luZy5jCj4gQEAgLTE0MCw3ICsx
NDAsNyBAQCBzdGF0aWMgdm9pZCBjb2RlY3NfYmFkKHZvaWQpCj4gICAgICAgICAgIGdfdGVzdF9l
eHBlY3RfbWVzc2FnZShHX0xPR19ET01BSU4sIHRlc3RfY2FzZXNbaV0ubG9nX2xldmVsLCB0ZXN0
X2Nhc2VzW2ldLmVycm9yX21lc3NhZ2UpOwo+ICAgICAgICAgICBpZiAodGVzdF9jYXNlc1tpXS5k
ZWZhdWx0X2Vycl9tZXNzYWdlKQo+ICAgICAgICAgICAgICAgZ190ZXN0X2V4cGVjdF9tZXNzYWdl
KEdfTE9HX0RPTUFJTiwgR19MT0dfTEVWRUxfV0FSTklORywgIipGYWlsZWQgdG8gc2V0IHZpZGVv
IGNvZGVjcyoiKTsKPiAtICAgICAgICBnX2Fzc2VydF9jbXBpbnQoc3BpY2Vfc2VydmVyX3NldF92
aWRlb19jb2RlY3Moc2VydmVyLCB0ZXN0X2Nhc2VzW2ldLmNvZGVjcyksID09LCAwKTsKPiArICAg
ICAgICBnX2Fzc2VydF9jbXBpbnQoc3BpY2Vfc2VydmVyX3NldF92aWRlb19jb2RlY3Moc2VydmVy
LCB0ZXN0X2Nhc2VzW2ldLmNvZGVjcyksICE9LCAwKTsKPiAgICAgICAgICAgZ190ZXN0X2Fzc2Vy
dF9leHBlY3RlZF9tZXNzYWdlcygpOwo+ICAgICAgIH0KPiAgIApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3Bp
Y2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
