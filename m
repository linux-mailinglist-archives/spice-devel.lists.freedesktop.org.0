Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11FC82C28
	for <lists+spice-devel@lfdr.de>; Tue,  6 Aug 2019 08:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 728E589E7B;
	Tue,  6 Aug 2019 06:59:16 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840A189E7B
 for <spice-devel@lists.freedesktop.org>; Tue,  6 Aug 2019 06:59:15 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id c2so83475815wrm.8
 for <spice-devel@lists.freedesktop.org>; Mon, 05 Aug 2019 23:59:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Gz4U94YcgyzBgPajFMGGUbjn9a5cW/hTAHUttaw63XE=;
 b=E+NDt/KoFHHmzvipqv9dgNbxp/UDP3uzUnc72OgStjlrt6TSOAbOcRjpBPi6l86qdI
 cP1mFB2wGIckglDS3LH/Ml47Pwj5jeZs2pYKFHdszlujjxp7whZZqCWlr9CI0tUCMwMh
 lJ4F1Uz1leCu2LYmkiLtdpSuExwUxEV8P6XiwPm+xS3+60qLh9QZbCtKEhJV7xJT/Ngy
 3g0iboUsvos4HuKYtny/cFxCMAPuNmUh0v5pUFU2VsrjdnE8oIbjr3htG/RgfV8nPz5c
 rGphCIFaDpptKiHXtmqcPUNhPulaXG50+6nnn8vkJU0rWQcsG9rdKY1YE1pQWSpqDMrL
 jmbQ==
X-Gm-Message-State: APjAAAWEbwwD1a0j8Nm5noTFsayY2SYr3PPCkO2VSxqB3G+71sIJZUws
 xK6kdbDaFjoLSUv+DKNCzM9VIphuH30=
X-Google-Smtp-Source: APXvYqxEaB8Ac131iiNvBRN26zg/rvds5ZhZJdVc7IBEOBP5DsFy9R7LC+isjejLT+IVOW/maDYqFA==
X-Received: by 2002:a5d:6a05:: with SMTP id m5mr2705308wru.305.1565074753814; 
 Mon, 05 Aug 2019 23:59:13 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id q10sm84987667wrf.32.2019.08.05.23.59.12
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 23:59:12 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190227112651.1470-1-ssheribe@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <4b49dcd5-2ee9-8292-da67-59c2a76740bb@redhat.com>
Date: Tue, 6 Aug 2019 09:59:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190227112651.1470-1-ssheribe@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH v2 spice-streaming-agent] Add copr Makefile
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

cGluZwoKCk9uIDIvMjcvMTkgMToyNiBQTSwgU25pciBTaGVyaWJlciB3cm90ZToKPiBUaGlzIE1h
a2VmaWxlIHNjcmlwdCBpcyBpbnZva2VkIGJ5IGNvcHIgdG8gYnVpbGQgc291cmNlIHJwbQo+IFNl
ZTogaHR0cHM6Ly9kb2NzLnBhZ3VyZS5vcmcvY29wci5jb3ByL3VzZXJfZG9jdW1lbnRhdGlvbi5o
dG1sI21ha2Utc3JwbQo+IC0tLQo+Cj4gQ2hhbmdlcyBmcm9tIHYxIGFyZSBzY3JpcHQgaW1wcm92
ZW1lbnRzIGFuZCBkZXNjcmlwdGlvbgo+Cj4gLS0tCj4gICAuY29wci9NYWtlZmlsZSB8IDIxICsr
KysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykK
PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCAuY29wci9NYWtlZmlsZQo+Cj4gZGlmZiAtLWdpdCBhLy5j
b3ByL01ha2VmaWxlIGIvLmNvcHIvTWFrZWZpbGUKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAuLjBhZTNiZWQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvLmNvcHIvTWFrZWZp
bGUKPiBAQCAtMCwwICsxLDIxIEBACj4gKyMgVGhpcyBNYWtlZmlsZSBzY3JpcHQgaXMgaW52b2tl
ZCBieSBjb3ByIHRvIGJ1aWxkIHNvdXJjZSBycG0KPiArIyBTZWU6IGh0dHBzOi8vZG9jcy5wYWd1
cmUub3JnL2NvcHIuY29wci91c2VyX2RvY3VtZW50YXRpb24uaHRtbCNtYWtlLXNycG0KPiArCj4g
K1BST1RPQ09MX0dJVF9SRVBPID0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3NwaWNl
L3NwaWNlLXByb3RvY29sCj4gK0JVSUxEID0gbWFrZSBhdXRvbWFrZSBhdXRvY29uZiBhdXRvY29u
Zi1hcmNoaXZlIGxpYnRvb2wgeHogZ2l0IHJwbS1idWlsZAo+ICsKPiArc3JwbToKPiArCWRuZiBp
bnN0YWxsIC15ICQoQlVJTEQpCj4gKwo+ICsJIyBnZXQgdXBzdHJlYW0gc3BpY2UgcHJvdG9jb2wK
PiArCWdpdCBjbG9uZSAkKFBST1RPQ09MX0dJVF9SRVBPKQo+ICsJY2Qgc3BpY2UtcHJvdG9jb2wg
JiYgLi9hdXRvZ2VuLnNoIC0tcHJlZml4PS91c3IvICYmIG1ha2UgaW5zdGFsbAo+ICsKPiArCSMg
Z2V0IG90aGVyIGRlcGVuZGVuY2llcyBmb3IgcHJvamVjdCBleGNsdWRpbmcgc3BpY2UtcHJvdG9j
b2wKPiArCWRuZiBpbnN0YWxsIC15IGBzZWQgJy9eQnVpbGRSZXF1aXJlczovIWQ7IHMvLio6Ly87
IHMvXGJzcGljZS1wcm90b2NvbFxiLy87IHMvPi4qLy8nICouc3BlYy5pbmAKPiArCj4gKwkjIGNy
ZWF0ZSBzb3VyY2UgcnBtCj4gKwkuL2F1dG9nZW4uc2gKPiArCXNlZCAtaSAtRSAicy8oXlJlbGVh
c2U6W1s6c3BhY2U6XV0qKShbXiVdKikvXDFgZGF0ZSArJyVZJW0lZCVIJU0uc3BpY2UubmlndGhs
eSdgLyIgKi5zcGVjCj4gKwltYWtlIGRpc3QKPiArCXJwbWJ1aWxkIC1icyAqLnNwZWMgLS1kZWZp
bmUgIl9zb3VyY2VkaXIgJCRQV0QiIC0tZGVmaW5lICJfc3JjcnBtZGlyICQob3V0ZGlyKSIKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwg
bWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs
