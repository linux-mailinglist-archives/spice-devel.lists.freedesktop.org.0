Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4552B1CF879
	for <lists+spice-devel@lfdr.de>; Tue, 12 May 2020 17:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D1B6E107;
	Tue, 12 May 2020 15:06:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEDC76E107
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 15:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589296014;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8W+KX/1J9YxJp7aVFu2YHg7fqr7IE8GoM5r9z7DRmpA=;
 b=b+bzks/ZQR6eG/kCBumm7UhkwMxJmDhCNR7ft4/2xhzq9KTzT8DI/FYowXduUaFEVn0YAz
 FhhYobbhHH03kpcBhVYGfGJgy5eHfVSTScZeDbM0irvfR1CK4BcGlERABUBZFpgh762CIs
 thOhPlE+Cdim+A7eMpMtAbL9xNnTdTg=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-372-Q4Cr_2-NNA2uKaNsokne2A-1; Tue, 12 May 2020 11:06:49 -0400
X-MC-Unique: Q4Cr_2-NNA2uKaNsokne2A-1
Received: by mail-wm1-f72.google.com with SMTP id l26so1654470wmh.3
 for <spice-devel@lists.freedesktop.org>; Tue, 12 May 2020 08:06:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8W+KX/1J9YxJp7aVFu2YHg7fqr7IE8GoM5r9z7DRmpA=;
 b=VNAajbuGKLyWVfdmtjcqBFy/OhWqJ17xK1xvmB7NPLxH11n77n2YBEYEmfbKY35as6
 Rbeebg2mac5rMyFLOW89EEcuYIRQmNIyaVtI3EhlcJuq7CLZtzPboO3QqqEB3OdvAsU8
 6cNveAHXaPqXtdJA2KfZzdkQOIRfXxnFLRJMplco3b73B/D2rQ7w/YU2ucbCI3Dsesuj
 UUfLv7ZJO+uECABm5qgWJg9sCgw7N1EqyIAmRpDjno9fsYYpqTuLhkCv6qvp7DhXlQQS
 BURVa3m9VGQnr8hZcwJdQZaIr69OcInvElCc8x9if+GN77sDec3YZ4jPSaRsBOcwRQaW
 anfw==
X-Gm-Message-State: AGi0PualC7LLTqH3hFVWjf0AkUAoTbK4HjUPVggXU4ALaWRagptv2Qcf
 PcP9E9TtD3m6r7gdT37zQcy0OtQ/AHbR/X1+ON6H8HMY/awbu6bM5ZuYY+ZpPHHRLJZdY+mxfUX
 3dXHU1uH+YtnmUfkeyLA46ulxt2DfvqA=
X-Received: by 2002:adf:a35c:: with SMTP id d28mr24574587wrb.37.1589296007713; 
 Tue, 12 May 2020 08:06:47 -0700 (PDT)
X-Google-Smtp-Source: APiQypIeA6s8JBei1GSrZPXAjVUV1KrNjhljeuDt+oml7p5Qzj2Chps2bga1KO8pd7KsbFYioxvnpg==
X-Received: by 2002:adf:a35c:: with SMTP id d28mr24574556wrb.37.1589296007438; 
 Tue, 12 May 2020 08:06:47 -0700 (PDT)
Received: from [192.168.1.138] ([151.21.9.164])
 by smtp.gmail.com with ESMTPSA id p8sm22843629wre.11.2020.05.12.08.06.46
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 May 2020 08:06:46 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <CAMxuvawzmqKdLwk6AvthZkmZTr9T+q+UU8Q+raVHj0nZ2swhiw@mail.gmail.com>
 <20200512092427.GI1191162@redhat.com>
From: Francesco Giudici <fgiudici@redhat.com>
Message-ID: <80cd33e2-94e1-df9a-65ea-ac84d07b18d1@redhat.com>
Date: Tue, 12 May 2020 17:06:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200512092427.GI1191162@redhat.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] About decisions and reviews
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

CgpPbiAxMi8wNS8yMCAxMToyNCwgRGFuaWVsIFAuIEJlcnJhbmfDqSB3cm90ZToKPiBPbiBNb24s
IE1heSAxMSwgMjAyMCBhdCAxMjoxNjoyNFBNICswMjAwLCBNYXJjLUFuZHLDqSBMdXJlYXUgd3Jv
dGU6Cj4+IEhpLAo+Pgo+PiBBYm91dCAiTW92ZSBjb2RlIHRvIEMrKyI6Cj4+IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGljZS8tL21lcmdlX3JlcXVlc3RzLzYyCj4+Cj4+
IEkgd291bGQgbGlrZSB0byBrbm93IGhvdyB0aGUgZGVjaXNpb24gaGFwcGVuZWQuIEFzIGxvbmcg
YXMgSSBoYXZlIGJlZW4KPj4gaW52b2x2ZWQgaW4gdGhlIFNwaWNlIHByb2plY3QsIHdlIGhhZCBv
cGVuIGRpc2N1c3Npb25zIGFuZCBkaWQKPj4gbWFuZGF0b3J5IHJldmlldyBmb3IgYW55dGhpbmcg
bm9uLXRyaXZpYWwuCj4+Cj4+IFRoaXMgY2hhbmdlIGlzIHN1YnN0YW50aWFsLCBhbmQgaW1wYWN0
cyB0aGUgd29yayBhbmQgY29udHJpYnV0aW9uIG9mCj4+IG90aGVycy4gV2hlcmUgZGlkIHRoZSBk
aXNjdXNzaW9uIGhhcHBlbj8gV2hvIHJldmlld2VkIHRoZSBjb2RlCj4+IGNoYW5nZXM/Cj4gCj4g
TG9va2luZyBhdCB0aGF0IG1lcmdlIHJlcXVlc3QsIGl0IGlzIHByZXR0eSBzdXJwcmlzaW5nIHRv
IHNlZSBhIDEwMAo+IHBhdGNoIGxvbmcgc2VyaWVzIG1lcmdlZCB3aXRoIG5vIHJldmlldyBjb21t
ZW50cyB2aXNpYmxlIG9uIHRoZSBjb2RlCj4gZnJvbSBvdGhlciBtYWludGFpbmVycy4KPiAKPiBS
ZWdhcmRzLAo+IERhbmllbAo+IAoKSSBzZWUgeW91ciBwb2ludHM6IGEgcHJvcGVyIGRpc2N1c3Np
b24gYW5kIGZhaXIgcmV2aWV3IG9uIHRoZSBicmFuY2ggCndvdWxkIGhhdmUgYmVlbiB0aGUgd2F5
IHRvIGdvLgpUbyBoYXZlIGEgZmFpciBvdmVyYWxsIHBpY3R1cmUgYnR3LCBJIHRoaW5rIHdlIHNo
b3VsZCBhbHNvIGNvbnNpZGVyIHNvbWUgCm90aGVyIHBvaW50czoKJD4gZ2l0IHNob3J0bG9nIC0t
c2luY2UgMDEvMDEvMjAxOSAtcyAtbgogICAgNDExICBGcmVkaWFubyBaaWdsaW8KICAgICAyOSAg
VmljdG9yIFRvc28KICAgICAyMCAgVXJpIEx1YmxpbgogICAgIDE0ICBGcmFuY29pcyBHb3VnZXQK
ICAgICAxMSAgQ2hyaXN0b3BoZSBGZXJnZWF1CiAgICAgMTAgIFNuaXIgU2hlcmliZXIKICAgICAg
NiAgRWR1YXJkbyBMaW1hIChFdHJ1bmtvKQogICAgICA2ICBKb25hdGhvbiBKb25nc21hCiAgICAg
IDYgIEtldmluIFBvdWdldAogICAgICA2ICBMdWvDocWhIEhyw6F6a8O9CiAgICAgIDUgIEphbWVz
IExlIEN1aXJvdAogICAgICAzICBUaGlhZ28gTWVuZGVzCiAgICAgIDIgIFJvc2VuIFBlbmV2CiAg
ICAgIDEgIEJlbmphbWluIFRpc3NvaXJlcwogICAgICAxICBDaHJpc3RpYW4gRWhyaGFyZHQKICAg
ICAgMSAgRG91Z2xhcyBQYXVsCiAgICAgIDEgIEdpbG1hciBTYW50b3MgSnIKICAgICAgMSAgSmVy
ZW15IFdoaXRlCiAgICAgIDEgIHdvcmxkb2ZwZWFjZQogICAgICAxICDosKIg5piG5piOCgpGcmVk
aWFubydzIGJyYW5jaGVzIGRvbid0IGdldCBtdWNoIHJldmlld3MgKGlmIGFueS4uLiBzZWUgdGhl
IGZ1bGwgbGlzdCAKb2YgbWVyZ2VkL2Nsb3NlZCBNUiBpbiBnaXRsYWIgZm9yIHRoZSBzcGljZS9z
cGljZSBwcm9qZWN0KS4gSSB0aGluayB3ZSAKYWxsIGFncmVlIHRoYXQgaGlzIGludGVudGlvbiBp
cyBnb29kLCB3aGljaCBpcyB0byBqdXN0IG1vdmUgdGhlIHByb2plY3QgCmZvcndhcmQuIFdvbmRl
cmluZyB3aG8gd291bGQgaGF2ZSBsb29rZWQgaW50byBoaXMgMTAwIHBhdGNoZXMgYnJhbmNoIHRv
IApkbyBhIGZhaXIgcmV2aWV3IGluIGEgcmVhc29uYWJsZSB0aW1lLWZyYW1lLgpJIGZlZWwgKGF0
IGxlYXN0IHBhcnRpYWxseSkgZ3VpbHR5IGZvciB0aGlzIHNpdHVhdGlvbi4KClRoYXQgc2FpZC4u
LiBhdCB0aGlzIHBvaW50IHRoZSBicmFuY2ggaGFzIGJlZW4gbWVyZ2VkLiBXaGF0IGFyZSB0aGUg
CnByb3Bvc2FscyBub3c/CgpEcmFmdCBhIG1vcmUgZm9ybWFsIHJldmlldy9jb21taXQgcG9saWN5
PyBXaGF0IGlmIGEgYnJhbmNoIGRvZXNuJ3QgZ2V0IGEgCmZhaXIgcmV2aWV3IGluIGFuIGFjY2Vw
dGFibGUgdGltZS1mcmFtZT8gV2hvIHdpbGwgaGF2ZSB0aGUgbGFzdCB3b3JkIGlmIAp1bmFuaW1p
dHkgaXMgbm90IHJlYWNoZWQ/CgpEbyB5b3Ugd2FudCB0byBkbyBhIHBvc3QtbWVyZ2UgcmV2aWV3
IHRvIGNvbnNpZGVyIHJldmVydGluZyB0aGUgY29tbWl0cz8gCkRvIHlvdSB3YW50IHRvIGhhdmUg
YSBkZXRhY2hlZCAiQyIgYnJhbmNoIHdpdGggdGhlIGZvcm1lciBjb2RlIHRvIGJlIAprZXB0IGFz
IGEgInN0YWJsZSBDIiBvbmU/Ck9yIHdoYXQgZWxzZT8KCmJlc3QsCkZyYW5jZXNjbwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFp
bGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVsCg==
