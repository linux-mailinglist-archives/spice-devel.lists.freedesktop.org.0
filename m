Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 301F12EBD4F
	for <lists+spice-devel@lfdr.de>; Wed,  6 Jan 2021 12:49:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E22488AC2;
	Wed,  6 Jan 2021 11:49:06 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7196E88AC2
 for <spice-devel@lists.freedesktop.org>; Wed,  6 Jan 2021 11:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1609933743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mJsPuvCWJBULqGawpvJV1yD0f8gPOcgWq2n1Pb87H8E=;
 b=gAlbcpB2BVyUAd5qM6d/YnY8RKzKzMefbv+WUHevZw3QYzg1ZL4NddluL9XHjtsBypMOEJ
 IIr42+49UohJ4GnBcArtmXqXxZTIhYx7nUOxIeI0qlVDXZwSVc5UwPnkVki78VcWqTWp1r
 pthyJXWNJ0ky3mDt02OKdxFVR74fY90=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-578-ZV1HgtRzM6mXXQ44CcnR7Q-1; Wed, 06 Jan 2021 06:48:53 -0500
X-MC-Unique: ZV1HgtRzM6mXXQ44CcnR7Q-1
Received: by mail-qk1-f199.google.com with SMTP id a17so2314537qko.11
 for <spice-devel@lists.freedesktop.org>; Wed, 06 Jan 2021 03:48:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mJsPuvCWJBULqGawpvJV1yD0f8gPOcgWq2n1Pb87H8E=;
 b=oclqsgrUCw+dhQzd3DzRO9F/u0ti2rQzHjC0potvzCChU7CgtvpZarOoJY4vbgVpju
 HIZKPASrAFqPE/P6+BdzdggD55+SGRVVco5L+YiHo9LRFYzE72OWcLB6QPQ3Y6YKOosB
 jyKNjBPymfSoDjzHFFMhz4AWWl6A75bizcfiNQIyl/ZYJfOpHPOYY+MxvdcFmuG99n6P
 ce2kh0gXxMMHcxSrywyZDUJBOy0I+DiChZYTd4Umi1ZQUJqpEU9qArbVQ0H1E/ec7KvQ
 eOAXj3LGXsA6Q3qyv/rasJ6qOQLZEOH/kmZgqaMko9IHkiKkgfAfLW7S6IC0cqEW0zq3
 6g/Q==
X-Gm-Message-State: AOAM532lpDnTUCKCkNCyrxWozQOqYRe+5TMXYX7m1SoLF5EmkRqeRNbC
 7FvEb8FB1zE/KQvqZA63FmWWzWCqYc5ihWNQpRQZPaImOP84DTdNo/rsW01edJelPMbLUzbPU7F
 KkY1tklr3mX7N6NOs+r/BFASLqrLuMeigQy2TDcC7wasRVyE=
X-Received: by 2002:ad4:4f11:: with SMTP id fb17mr3796783qvb.46.1609933732837; 
 Wed, 06 Jan 2021 03:48:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx0GvhYFxR6CJj7tFbn6bRJPUwvnBUuuf2s1ut5Sx3qyMy1XKv8SWsjd7MfI6WrVbrI8ag31smfGzueQFTCJiI=
X-Received: by 2002:ad4:4f11:: with SMTP id fb17mr3796773qvb.46.1609933732595; 
 Wed, 06 Jan 2021 03:48:52 -0800 (PST)
MIME-Version: 1.0
References: <ae3d253a-1231-4f9d-1017-05cf3e442ffb@free.fr>
 <e39ee648-3f62-4a4f-84b2-8ce7426e60ec@free.fr>
In-Reply-To: <e39ee648-3f62-4a4f-84b2-8ce7426e60ec@free.fr>
From: Jakub Janku <jjanku@redhat.com>
Date: Wed, 6 Jan 2021 12:48:41 +0100
Message-ID: <CAH=CeiBxwN2WB+LkPBbwEEVvmE0HFWBRS3wrrO8qOF4C6FPjKQ@mail.gmail.com>
To: Roland Baudin <roland65@free.fr>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jjanku@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] Working seamless mode
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGksCgpPbiBTYXQsIEphbiAyLCAyMDIxIGF0IDk6NDkgQU0gUm9sYW5kIEJhdWRpbiA8cm9sYW5k
NjVAZnJlZS5mcj4gd3JvdGU6Cj4KPiBIaSwKPgo+IHBlcmhhcHMgdGhpcyBpcyBub3QgdGhlIHJp
Z2h0IHBsYWNlIGZvciB0aGlzIHJlcXVlc3Q/IENvdWxkIHlvdSBnaXZlIG1lCj4gc29tZSBwbGFj
ZSB3aGVyZSBJIGNhbiBwb3N0IHRoaXMgcmVxdWVzdD8KClRoaXMgaXMgdGhlIHJpZ2h0IHBsYWNl
LCBJIGJlbGlldmUuIEFsdGVybmF0aXZlbHksIHlvdSBjb3VsZCBvcGVuIGEKbmV3IGlzc3VlIGhl
cmU6Cmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9zcGljZS9zcGljZS1wcm90b2NvbC8t
L2lzc3VlcwoKQnV0IHRvIGJlIGhvbmVzdCwgSSB3b3VsZG4ndCBleHBlY3QgYW55b25lIHRvIHRh
a2UgaXQgdXAgYW55dGltZSBzb29uLgoKSSBkb24ndCBrbm93IGhvdyB0aGVzZSBwYXRjaGVzIGhh
dmUgYWdlZCBzaW5jZSB0aGUgdGltZSBJIHB1Ymxpc2hlZCB0aGVtLApidXQgSSBhc3N1bWUgdGhh
dCB0aGVyZSB3aWxsIGJlIHNvbWUgaXNzdWVzIHdpdGggV2F5bGFuZCAoYm90aCBvbiB0aGUgY2xp
ZW50CmFuZCBndWVzdCBzaWRlKS4KClRoZSBtYWluIHByb2JsZW0gaXMgcHJvYmFibHkgdGhlIGRl
c2lnbiBpdHNlbGYuCgpzcGljZS1na3QvdmlydC12aWV3ZXIgc2hvd3MgYSBzaW5nbGUgZnVsbHNj
cmVlbiB3aW5kb3cgdGhhdCBpcwpwYXJ0aWFsbHkgdHJhbnNwYXJlbnQKKGluIHRoZSBhcmVhcyB3
aGVyZSB0aGVyZSdzIG5vIGd1ZXN0IHdpbmRvdykuIFRoaXMgcmVzdWx0cyBpbiBhIHBvb3IgaW50
ZWdyYXRpb24Kd2l0aCB0aGUgY2xpZW50J3Mgc3lzdGVtIC0tIHdoYXQgeW91J2Qgd2FudCBpcyB0
byBoYXZlIGEgbmV3IHdpbmRvdyBpbgp0aGUgY2xpZW50IGZvciBlYWNoCndpbmRvdy9hcHBsaWNh
dGlvbiBvbiB0aGUgZ3Vlc3QgYW5kIHNlcGFyYXRlIGRyYXdpbmcgY29udGV4dHMgZm9yIGVhY2gg
YXBwLgpUaGUgb3JpZ2luYWwgdGhyZWFkIGdvZXMgaW50byBtb3JlIGRldGFpbCBvbiB0aGUgaXNz
dWVzLCBJIHRoaW5rLgoKU28gdGhlIHBhdGNoZXMgd291bGQgcHJvYmFibHkgcmVxdWlyZSBhIGxv
dCBvZiBmdXJ0aGVyIHdvcmssIG9yCmNvbXBsZXRlIHJld3JpdGUuCkkgd291bGQgYmUgaGFwcHkg
dG8gaGF2ZSB0aGlzIGZlYXR1cmUgYXMgd2VsbCwgYnV0IHRoZSBjaGFuY2VzIGFyZQppbWhvIHNs
aW0sIHNvcnJ5LgoKUmVnYXJkcywKSmFrdWIKCj4KPiBUaGFua3MgYSBsb3QsCj4gUkIKPgo+Cj4g
TGUgMzEvMTIvMjAyMCDDoCAxMDo0MiwgUm9sYW5kIEJhdWRpbiBhIMOpY3JpdCA6Cj4gPiBIaSB0
aGVyZSwKPiA+Cj4gPiBmb3IgbXkgb3duIHB1cnBvc2UsIEkgaGF2ZSBwb3J0ZWQgdGhlIHNlYW1s
ZXNzIG1vZGUgcGF0Y2hlcyB3cml0dGVuIGJ5Cj4gPiBKYWt1YiBKYW5rxa8sIE9uZMWZZWogSG9s
w70gYW5kIEx1a8OhxaEgVmVuaG9kYSAoc2VlCj4gPiBodHRwczovL3d3dy5zcGluaWNzLm5ldC9s
aXN0cy9zcGljZS1kZXZlbC9tc2czMDE3Ny5odG1sKSB0byBVYnVudHUgMjAuMDQuCj4gPgo+ID4g
SSBoYXZlIGFsc28gaGFja2VkIHRoZSB2aXJ0LXZpZXdlciBndGsgYXBwIHRvIGFsbG93IGVhc2ls
eSBlbnRlcmluZwo+ID4gYW5kIGxlYXZpbmcgc2VhbWxlc3MgbW9kZS4gVGhpcyBpcyBhIHZlcnkg
Y29udmVuaWVudCB3YXkgdG8gd29yayB3aXRoCj4gPiB0aGUgVk0gaW4gVWJ1bnR1LiBJdCdzIHBy
b2JhYmx5IG5vdCBkaWZmaWN1bHQgdG8gZG8gdGhlIHNhbWUgd2l0aAo+ID4gdmlydC1tYW5hZ2Vy
IGJ1dCBhbGFzIEknbSBub3QgYSBQeXRob24gcHJvZ3JhbW1lci4KPiA+Cj4gPiBTbywgSSBoYXZl
IGEgc2V0IG9mIHBhY2thZ2VzIGZvciBVYnVudHUgMjAuMDQgYW5kIGluc3RhbGxhdGlvbiBvZgo+
ID4gdGhlc2UgcGFja2FnZXMgaXMgdmVyeSBzaW1wbGUuIEluIHRoZSBXaW5kb3dzIFZNLCBpdCBp
cyBhbHNvIHJlcXVpcmVkCj4gPiB0byByZXBsYWNlIHRoZSB2ZGFnZW50IGFuZCB2ZHNlcnZpY2Ug
cHJvZ3JhbXMgYnkgdGhlIHBhdGNoZWQgb25lcy4KPiA+IFRoaXMgaXMgbm90IGRpZmZpY3VsdCwg
YnV0IGl0J3MgYSBtYW51YWwgcHJvY2VzcyBmb3Igbm93Lgo+ID4KPiA+IEV2ZXJ5dGhpbmcgd29y
a3Mgd2VsbCAoYnV0IHRoZXJlIGFyZSBwcm9iYWJseSBpc3N1ZXMgSSBkaWRuJ3Qgc2VlLAo+ID4g
cG9zc2libHkgd2l0aCBtdWx0aXBsZSBzY3JlZW5zKSBhbmQgSSB0aGluayB0aGlzIGNvdWxkIGJl
IGEgbWFqb3IKPiA+IGltcHJvdmVtZW50IHRvIHRoZSBrdm0vcWVtdSB1c2VyIGV4cGVyaWVuY2Ug
aW4gTGludXguCj4gPgo+ID4gSG93ZXZlciwgSSBkb24ndCBoYXZlIHRpbWUgKGFuZCBza2lsbHMp
IHRvIG1haW50YWluIHRoZXNlIHBhY2thZ2VzIGFuZAo+ID4gcGF0Y2hlcy4gSSBoYXZlIHR3byBv
dGhlciBvcGVuIHNvdXJjZSBwcm9qZWN0cyAoWGZlIGFuZCBUZXhNYXRocykgYW5kCj4gPiBhIGZ1
bGwgdGltZSBqb2IuLi4KPiA+Cj4gPiBTbywgSSdtIGFza2luZyBoZXJlIGlmIHNvbWVvbmUgaXMg
aW50ZXJlc3RlZHRvIGdldCB0aGlzIHdvcmsgYW5kCj4gPiBtYWludGFpbiBpdD8gSSBjb3VsZCBn
aXZlIHlvdSBteSBwYWNrYWdlcyAodGhlIHBhdGNoZXMgYXJlIGluIHRoZQo+ID4gc291cmNlIHBh
Y2thZ2VzKSBhbmQgYSBsaXR0bGUgZXhwbGFuYXRpb24gdG8gc3RhcnQuCj4gPgo+ID4gSSdkIGJl
IGhhcHB5IGlmIHRoZSBjb21tdW5pdHkgY291bGQgYnVpbGQgc29tZXRoaW5nIHVzZWZ1bCB1cG9u
IHRoaXMKPiA+IHdvcmsuCj4gPgo+ID4gSWYgc29tZW9uZSBpcyBpbnRlcmVzdGVkLCBob3cgY2Fu
IEkgc2VuZCB0aGUgZmlsZXM/IE1haWwgYXR0YWNobWVudCB0bwo+ID4gdGhpcyBsaXN0PyBHb29n
bGUgZHJpdmU/Cj4gPgo+ID4gVGhhbmtzIGZvciBhbmR5IGFuc3dlciBhbmQgaGF2ZSBhIG5pY2Ug
ZGF5LAo+ID4KPiA+IFJCCj4gPgo+ID4KPiA+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IFNwaWNlLWRldmVsIG1haWxpbmcgbGlzdAo+IFNwaWNl
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
