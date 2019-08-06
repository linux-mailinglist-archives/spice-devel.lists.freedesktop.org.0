Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC47382C27
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 08:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4267489DB0;
	Tue,  6 Aug 2019 06:58:49 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D789F89DB0
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 06:58:47 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n4so86777315wrs.3
 for <spice-devel@lists.freedesktop.org>; Mon, 05 Aug 2019 23:58:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=prF/QtlDz69fTZO5DCwxLoPHNSztV3R8FUhRnUP7s0g=;
 b=qtiTVLQ68vqe9vWMcVBDwkqTvUTVgfJT6mihlkyWknuuYhj1rIDv6IlfDTtIpv1JjH
 omjYUWh+m38HnRW5YLpwGOUjF0ff8ZLvb2EFF/QyGPOMBSXgmjb2biKtMxHuS5dLsnc2
 yryw7HNLFBj7qkkONykP37mbLhaF6aMqvONUEAxWKrnOt52kh1Ob6LbULJCe70+dZoxZ
 bgNT/igJb+tGgj3gBXx211UKD70MbNFRKnYPoFgPkCjKxvxidenGeE0J392CVxOjwKKC
 ma1ZpCX0F6i9RLiqfVJpgJYTrM3NkYBrqvD8wyt6NMzckb7T1M5ORvyLGu5UAAAySyJL
 zRAA==
X-Gm-Message-State: APjAAAWeG7eJa0y3pyD56qbRKa/E5N7oYAf5KjWbCi0SbTOyvbruaAgk
 vU+v6SCBtR6T/0bqSMd8/Cn/Ah5X3l0=
X-Google-Smtp-Source: APXvYqytybkG9Ktvt43tw+elE7qEjYVFjC5xh/pwWupDlnFsdYFaWq6nVri1I7zI95MKkBgF6d9EcQ==
X-Received: by 2002:a05:6000:1043:: with SMTP id
 c3mr2739191wrx.236.1565074726137; 
 Mon, 05 Aug 2019 23:58:46 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id n8sm73529119wro.89.2019.08.05.23.58.44
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 23:58:45 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190225145647.31675-1-ssheribe@redhat.com>
 <20190225145647.31675-2-ssheribe@redhat.com>
 <9f341c18-6997-ef81-a493-5f16178d0f92@redhat.com>
 <1769132116.4756860.1565021494348.JavaMail.zimbra@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <749d8b53-8429-1ce5-3321-f2f9a1e39786@redhat.com>
Date: Tue, 6 Aug 2019 09:58:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1769132116.4756860.1565021494348.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH 1/3] Add copr Makefile
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpPbiA4LzUvMTkgNzoxMSBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+IEhpIFNuaXIs
Cj4gICAgdGhlcmUgd2VyZSBzb21lIG5vdGVzIGF0Cj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3BhdGNoLzI4ODU2OC8/c2VyaWVzPTU3MTk5JnJldj0xCj4gYW5kCj4gaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzI4ODU2OS8/c2VyaWVzPTU3MTk5JnJl
dj0xCgpUaGlzIHBhdGNoIFsyLzNdIGlzIG5vdCBuZWVkZWQgd2UgcHVzaGVkIGFub3RoZXIgb25l
IHdoaWNoCmV4dHJhY3RzIHRoZSBkZXBzIGZyb20gdGhlIHNwZWMgZmlsZS4KCgo+IHNvbWUgbm90
IGFkZHJlc3NlZC4KPiBBbHNvIHBhdGNoICMzIHdhcyBtZXJnZWQsIG1heWJlIHdvdWxkIGJlIHdv
cnRoIHRvIHNlbmQgYW4gdXBkYXRlZAo+IHZlcnNpb24uCj4gKHNlcmllcyBhdCBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU3MTk5LykKCgpZZXMsIHNvcnJ5LCBpIHBp
bmdlZCB0aGUgd3Jvbmcgb25lLCB0aGVyZSdzIHYyLCBJJ2xsIHBpbmcgaXQgbm93LgoKCj4KPiBX
ZSBhbHJlYWR5IGhhdmUgQ29wciBzZXQgdXAgZm9yIFNQSUNFIHNlcnZlci4gSG93IHdvdWxkIHlv
dSBsaWtlIHRvCj4gcHJvY2VlZD8gTW92ZSBhbGwgdG8gR2l0bGFiPyBIb3cgaXMgdGhlIGludGVn
cmF0aW9uIHdpdGggU1BJQ0Ugc2VydmVyPwoKWWVzIHdlIGRvLCBhbmQgaXQncyBnZW5lcmF0ZWQg
ZnJvbSBhIHNjcmlwdCBydW5uaW5nIGluIGEgdm0Kd2hlbiB3ZSBwdXNoIHRvIHNwaWNlLXNlcnZl
cidzIGdpdCByZXBvCgpUaGUgaWRlYSBpcyB0byBkcm9wIHRoZSBuZWNlc3NpdHkgb2YgYSB2bSB0
aGF0IGdlbmVyYXRlcyB0aGUgY29wciBidWlsZHMuCkluIG9yZGVyIHRvIHRoaXMgaW4gc3BpY2Ug
c2VydmVyIHdlIG5lZWQgdG8gYWRkIHRoZSBjb3ByIG1ha2VmaWxlIGFuZAphbHNvIGl0J3MgYmV0
dGVyIHRvIGhhdmUgdGhlIHNwZWMgZmlsZSBpbnNpZGUgdGhlIHJlcG8uCgoKPiBZb3UgcmVmZXJy
ZWQgdG8gYSBob29rIHRvIHNldHVwIG9uIEdpdGxhYiwgd2hpY2ggc3lzdGVtcyBhcmUgeW91Cj4g
Z29pbmcgdG8gdXNlPyBGZWRvcmEgQ29wciBJIGltYWdpbmUuCgoKWWVzLCBGZWRvcmEgQ29wciwg
Z2l0bGFiIGFuZCB0aGF0J3MgaXQuCgpUaGUgd2F5IGl0IHdvcmtzIGlzIHlvdSBjb25maWd1cmUg
Z2l0bGFiIChpbiBnaXRsYWIgcHJvamVjdCAKc2V0dGluZ3MtPmludGVncmF0aW9uKQp0byB0cmln
Z2VyIHRoZSBjb3ByIHJlcG8gd2ViaG9vayBsaW5rIHdpdGggZXZlcnkgcHVzaCAodGhpcyB3aWxs
IHRyaWdnZXIgCmEgYnVpbGQKaW4gY29wciwgdGhpcyBidWlsZCBpcyBiYXNlZCBvbiBzcnBtIGNy
ZWF0ZWQgYnkgdGhlIC5jb3ByL01ha2VmaWxlIHNjcmlwdCkKCgpTbmlyLgoKPiBGcmVkaWFubwo+
Cj4+IHBpbmcKPj4KPj4KPj4gT24gMi8yNS8xOSA0OjU2IFBNLCBTbmlyIFNoZXJpYmVyIHdyb3Rl
Ogo+Pj4gLS0tCj4+PiAgICAuY29wci9NYWtlZmlsZSB8IDIxICsrKysrKysrKysrKysrKysrKysr
Kwo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPj4+ICAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCAuY29wci9NYWtlZmlsZQo+Pj4KPj4+IGRpZmYgLS1naXQgYS8uY29wci9NYWtl
ZmlsZSBiLy5jb3ByL01ha2VmaWxlCj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXgg
MDAwMDAwMC4uNTNiMWIxYgo+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4gKysrIGIvLmNvcHIvTWFrZWZp
bGUKPj4+IEBAIC0wLDAgKzEsMjEgQEAKPj4+ICtQUk9UT0NPTF9HSVRfUkVQTyA9IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGljZS1wcm90b2NvbAo+Pj4gK0JVSUxEID0g
bWFrZSBhdXRvbWFrZSBhdXRvY29uZiBhdXRvY29uZi1hcmNoaXZlIGxpYnRvb2wgeHogZ2NjLWMr
KyBmZWRwa2cKPj4+ICsKPj4+ICtzcnBtOgo+Pj4gKwlkbmYgaW5zdGFsbCAteSAkKEJVSUxEKQo+
Pj4gKwo+Pj4gKwkjIGdldCB1cHN0cmVhbSBzcGljZSBwcm90b2NvbAo+Pj4gKwlnaXQgY2xvbmUg
JChQUk9UT0NPTF9HSVRfUkVQTykKPj4+ICsJY2Qgc3BpY2UtcHJvdG9jb2wgOyAuL2F1dG9nZW4u
c2ggOyBtYWtlIGluc3RhbGwKPj4+ICsKPj4+ICsJIyBnZXQgZGVwZW5kZW5jaWVzCj4+PiArCWRu
ZiBpbnN0YWxsIC15IGBncmVwIEJ1aWxkUmVxdWlyZXNcOiBzcGljZS1zdHJlYW1pbmctYWdlbnQu
c3BlYy5pbiB8IGF3awo+Pj4gJ3skJDE9IiI7IHByaW50ICQkMH0nIHwgc2VkICJzL1xic3BpY2Ut
cHJvdG9jb2xcYi8vIDsgcy8+LiovLyIgfCB0ciAtcwo+Pj4gIlxuIiAiICJgCj4+PiArCSMgYnVp
bGQgdGhpcyBwcm9qZWN0Cj4+PiArCVBLR19DT05GSUdfUEFUSD0vdXNyL2xvY2FsL3NoYXJlL3Br
Z2NvbmZpZyAuL2F1dG9nZW4uc2gKPj4+ICsKPj4+ICsJIyBjcmVhdGUgc291cmNlIHJwbQo+Pj4g
KwlzZWQgLWkgLUUgInMvKF5SZWxlYXNlOltbOnNwYWNlOl1dKikoW14lXSopL1wxYGRhdGUKPj4+
ICsnJVklbSVkJUglTS5zcGljZS5uaWd0aGx5J2AvIiBzcGljZS1zdHJlYW1pbmctYWdlbnQuc3Bl
Ywo+Pj4gKwltYWtlIGRpc3QKPj4+ICsJbWQ1c3VtICp0YXIqIHwgaGVhZCAtbjEgPiAic291cmNl
cyIKPj4+ICsJZmVkcGtnIC0tcmVsZWFzZSAiZXBlbDciIC0tcGF0aCAuIHNycG0KPj4+ICsJY3Ag
KnNyYy5ycG0gJChvdXRkaXIpCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+PiBTcGljZS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9zcGljZS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vc3BpY2UtZGV2ZWw=
