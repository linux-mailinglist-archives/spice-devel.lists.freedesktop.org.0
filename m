Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47604809D1
	for <lists+spice-devel@lfdr.de>; Sun,  4 Aug 2019 09:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDECB6E1E5;
	Sun,  4 Aug 2019 07:26:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 203AC6E1E5
 for <spice-devel@lists.freedesktop.org>; Sun,  4 Aug 2019 07:26:43 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id w9so4397996wmd.1
 for <spice-devel@lists.freedesktop.org>; Sun, 04 Aug 2019 00:26:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=YWddvq5/PuXZAfYo1ajyr+nVoHYLGVi1PyrT7cjlgoo=;
 b=aAVywUJ7G/eVwhQ3vZM2Ga6lYQ1FHw4RchGTF9DRMnKT32OptdoChSjfB4iOY7FXCK
 j8zeJtMLnGma6kY02UjVP17Kuifc+lU0IhMbVvQudZy1DhxkIXFo6bAOUXT3l+MhxoJ8
 YLy670DytrDKA+3a9mpVgQ+i2yBfWhZdKYEWRXdo4ah2bhVzQLZhVVCfGmRSGEJSY70Y
 4uh8+JWxbEsFb238oLhcSm2Dpgi9PbWqMkYY0d8CVLVqdB9WxMAUz9bgJHdn9QegkP5T
 lUT6+5WPASu5PZwHBCMZdc6cxFjZh+pgr2eyTitnzJt8f8tmRkQel0LEPtLDRJnqjWCo
 AVDQ==
X-Gm-Message-State: APjAAAXOYIfE59zwUNrs9iYmzdfDbdrH1IduwSXJIrK2QvXGpI5bgBFn
 si0rhNYnUMON0Vs/1R5ubmmgc4yTZs8=
X-Google-Smtp-Source: APXvYqxbCNyEhHmE2btmVg0fpv/+jySf0jNdLfMzgob0Rg8GN6ofcSOsT1lpyG0vh9v4j/aw5pgGIA==
X-Received: by 2002:a05:600c:20c3:: with SMTP id
 y3mr13028846wmm.3.1564903601440; 
 Sun, 04 Aug 2019 00:26:41 -0700 (PDT)
Received: from dhcp-4-93.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id s188sm75188667wmf.40.2019.08.04.00.26.40
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 04 Aug 2019 00:26:40 -0700 (PDT)
From: Snir Sheriber <ssheribe@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
References: <20190801150119.29179-1-ssheribe@redhat.com>
 <669939202.4201626.1564673432892.JavaMail.zimbra@redhat.com>
Message-ID: <3f58d620-b4fa-3918-f6b6-de3fe01ce859@redhat.com>
Date: Sun, 4 Aug 2019 10:26:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <669939202.4201626.1564673432892.JavaMail.zimbra@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-streaming-agent 1/4] gst-plugin:
 Allow ANY memory type to pass from convertor to encoder
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

Ck9uIDgvMS8xOSA2OjMwIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6Cj4gTG9va3MgZmluZS4K
Pgo+IEJ1dCB3aGF0IGFyZSB0aGUgZGlmZmVyZW5jZT8gRm9yIGluc3RhbmNlIHdoYXQgYWRkaXRp
b25hbCBtZW1vcnkgdHlwZXMgd2UKPiB3YW50IHRvIGZlZWQgdG8gdGhlIHBpcGVsaW5lPwoKCkZv
ciBleGFtcGxlIFZBU3VyZmFjZSBmb3IgdmFhcGkgYmFzZWQgcGx1Z2lucwoKU25pcgoKPj4gLS0t
Cj4+ICAgc3JjL2dzdC1wbHVnaW4uY3BwIHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvc3JjL2dzdC1wbHVn
aW4uY3BwIGIvc3JjL2dzdC1wbHVnaW4uY3BwCj4+IGluZGV4IDY0MTVhYzAuLmU5ZDkzNjQgMTAw
NjQ0Cj4+IC0tLSBhL3NyYy9nc3QtcGx1Z2luLmNwcAo+PiArKysgYi9zcmMvZ3N0LXBsdWdpbi5j
cHAKPj4gQEAgLTI1Miw3ICsyNTIsNyBAQCB2b2lkIEdzdHJlYW1lckZyYW1lQ2FwdHVyZTo6cGlw
ZWxpbmVfaW5pdChjb25zdAo+PiBHc3RyZWFtZXJFbmNvZGVyU2V0dGluZ3MgJnNldHRpbgo+PiAg
ICAgICBnc3RfYmluX2FkZChiaW4sIGVuY29kZXIpOwo+PiAgICAgICBnc3RfYmluX2FkZChiaW4s
IHNpbmspOwo+PiAgIAo+PiAtICAgIEdzdENhcHNVUHRyIGNhcHMoZ3N0X2NhcHNfZnJvbV9zdHJp
bmcoInZpZGVvL3gtcmF3IikpOwo+PiArICAgIEdzdENhcHNVUHRyIGNhcHMoZ3N0X2NhcHNfZnJv
bV9zdHJpbmcoInZpZGVvL3gtcmF3KEFOWSkiKSk7Cj4+ICAgICAgIGxpbmsgPSBnc3RfZWxlbWVu
dF9saW5rKGNhcHR1cmUuZ2V0KCksIGNvbnZlcnQuZ2V0KCkpICYmCj4+ICAgICAgICAgICAgICBn
c3RfZWxlbWVudF9saW5rX2ZpbHRlcmVkKGNvbnZlcnQuZ2V0KCksIGVuY29kZXIuZ2V0KCksCj4+
ICAgICAgICAgICAgICBjYXBzLmdldCgpKSAmJgo+PiAgICAgICAgICAgICAgZ3N0X2VsZW1lbnRf
bGlua19maWx0ZXJlZChlbmNvZGVyLmdldCgpLCBzaW5rLmdldCgpLAo+PiAgICAgICAgICAgICAg
c2lua19jYXBzLmdldCgpKTsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L3NwaWNlLWRldmVs
