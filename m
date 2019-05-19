Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 294A522708
	for <lists+spice-devel@lfdr.de>; Sun, 19 May 2019 16:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0BE8921C;
	Sun, 19 May 2019 14:49:18 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12AB18921C
 for <spice-devel@lists.freedesktop.org>; Sun, 19 May 2019 14:49:17 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id t5so9217956wmh.3
 for <spice-devel@lists.freedesktop.org>; Sun, 19 May 2019 07:49:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=gbSDiG6HrcU1hUgZ1R9jynP7hkh9xS3gzP0cN92+Zsw=;
 b=kycXf7pCzkeZduezX8KrnLvjRDcWz++b89mycybqGJ/Ckfy02/lEc6Qr1eZc5qnvnI
 jL9o/v1ln+5d4OxY/Tk0Qdwc2AhUG8pDDne4L7jORO7F2fInE4ZzOZP71kR+B/u/+yoF
 nBmh6gsFytNQsqifKUWYlIceVaKXjD+CSYT29RtlmtRLyjbRcl5DCR7RMwdaiciYLFYL
 Mk7tg5FoxmzdmtSbgnkmbPjOBHUZg1KgKPFIoycMPzFN5Xrg6oie1eFU/1vaPmFoQ8xd
 xY1yCSKtfl5TZUgyhght7tJhfPSAKQIFe2IiqpUdmgKTT3I1kS1YURIT0WaoPNG9YP7U
 2gTw==
X-Gm-Message-State: APjAAAUXHAuaXy2ebgwKKDoJnm1NlTCyVAJUkl/eWDgARU07o6RshSmc
 WXRr37hbF9FJBptVDx1M0dV9tD+4EhI=
X-Google-Smtp-Source: APXvYqxmWa1kkVNuaHkWQnDLG2zfA485GaMX4QoRUvsiupu+77EhHfXRqVtYlq5m0tw2nt5/nCg19w==
X-Received: by 2002:a1c:ca0b:: with SMTP id a11mr39035896wmg.52.1558277355324; 
 Sun, 19 May 2019 07:49:15 -0700 (PDT)
Received: from dhcp-4-103.tlv.redhat.com (bzq-82-81-161-50.red.bezeqint.net.
 [82.81.161.50])
 by smtp.gmail.com with ESMTPSA id z21sm1791689wmf.25.2019.05.19.07.49.14
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 07:49:14 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190518075549.7003-1-fziglio@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <660caf12-e5c9-b250-fac0-6c7d75776dc6@redhat.com>
Date: Sun, 19 May 2019 17:49:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190518075549.7003-1-fziglio@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] [PATCH spice-server] spice-experimental: Remove
 obsolete file
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

SGksCgoKYWNrCgoobG9va3Mgc2FmZSB0byByZW1vdmUgYnV0IGkgZGlkbid0IHB1c2ggeWV0IChp
ZiBzb21lb25lIHdhbnQgdG8gb2JqZWN0IApieSB0b21vcnJvdyApKQoKCk9uIDUvMTgvMTkgMTA6
NTUgQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBUaGlzIGhlYWRlciB3YXMgcmVtb3ZlZCBp
biAyMDE0ICgzYzZiNGU0MTUpIGFzIGRlcHJlY2F0ZWQgYW5kIGFkZGVkIGFnYWluCj4gaW4gMjAx
NSAoMmU4OGViNzA1KSBhcyBjYXVzaW5nIHNvbWUgaXNzdWUgd2l0aCBmb3JtZXIgUWVtdSB2ZXJz
aW9ucy4KPiBBZnRlciA0IHllYXJzIHJlbW92ZSBhZ2Fpbiwgbm93IHRoZXJlIHNob3VsZCBub3Qg
YmUgYW55IHVzYWdlIG9mIGl0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogRnJlZGlhbm8gWmlnbGlvIDxm
emlnbGlvQHJlZGhhdC5jb20+Cj4gLS0tCj4gICBzZXJ2ZXIvTWFrZWZpbGUuYW0gICAgICAgICAg
fCAgMSAtCj4gICBzZXJ2ZXIvbWVzb24uYnVpbGQgICAgICAgICAgfCAgMSAtCj4gICBzZXJ2ZXIv
c3BpY2UtZXhwZXJpbWVudGFsLmggfCAyNCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDMg
ZmlsZXMgY2hhbmdlZCwgMjYgZGVsZXRpb25zKC0pCj4gICBkZWxldGUgbW9kZSAxMDA2NDQgc2Vy
dmVyL3NwaWNlLWV4cGVyaW1lbnRhbC5oCj4KPiBDSSByZXN1bHRzIGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9memlnbGlvL3NwaWNlL3BpcGVsaW5lcy8zNzYwNwo+Cj4gZGlmZiAtLWdp
dCBhL3NlcnZlci9NYWtlZmlsZS5hbSBiL3NlcnZlci9NYWtlZmlsZS5hbQo+IGluZGV4IDdmMjYw
NjEyLi4yMGFkZjY1ZiAxMDA2NDQKPiAtLS0gYS9zZXJ2ZXIvTWFrZWZpbGUuYW0KPiArKysgYi9z
ZXJ2ZXIvTWFrZWZpbGUuYW0KPiBAQCAtNjQsNyArNjQsNiBAQCBsaWJzcGljZV9zZXJ2ZXJpbmNs
dWRlX0hFQURFUlMgPQkJXAo+ICAgCXNwaWNlLWF1ZGlvLmgJCQkJXAo+ICAgCXNwaWNlLWNoYXIu
aAkJCQlcCj4gICAJc3BpY2UtY29yZS5oCQkJCVwKPiAtCXNwaWNlLWV4cGVyaW1lbnRhbC5oCQkJ
XAo+ICAgCXNwaWNlLWlucHV0LmgJCQkJXAo+ICAgCXNwaWNlLW1pZ3JhdGlvbi5oCQkJXAo+ICAg
CXNwaWNlLXF4bC5oCQkJCVwKPiBkaWZmIC0tZ2l0IGEvc2VydmVyL21lc29uLmJ1aWxkIGIvc2Vy
dmVyL21lc29uLmJ1aWxkCj4gaW5kZXggMzRkOGVlZjEuLjJjYTQzZTljIDEwMDY0NAo+IC0tLSBh
L3NlcnZlci9tZXNvbi5idWlsZAo+ICsrKyBiL3NlcnZlci9tZXNvbi5idWlsZAo+IEBAIC0yNiw3
ICsyNiw2IEBAIHNwaWNlX3NlcnZlcl9oZWFkZXJzID0gWwo+ICAgICAnc3BpY2UtYXVkaW8uaCcs
Cj4gICAgICdzcGljZS1jaGFyLmgnLAo+ICAgICAnc3BpY2UtY29yZS5oJywKPiAtICAnc3BpY2Ut
ZXhwZXJpbWVudGFsLmgnLAo+ICAgICAnc3BpY2UtaW5wdXQuaCcsCj4gICAgICdzcGljZS1taWdy
YXRpb24uaCcsCj4gICAgICdzcGljZS1xeGwuaCcsCj4gZGlmZiAtLWdpdCBhL3NlcnZlci9zcGlj
ZS1leHBlcmltZW50YWwuaCBiL3NlcnZlci9zcGljZS1leHBlcmltZW50YWwuaAo+IGRlbGV0ZWQg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDU4OWUyOWJmLi4wMDAwMDAwMAo+IC0tLSBhL3NlcnZl
ci9zcGljZS1leHBlcmltZW50YWwuaAo+ICsrKyAvZGV2L251bGwKPiBAQCAtMSwyNCArMCwwIEBA
Cj4gLS8qIC0qLSBNb2RlOiBDOyBjLWJhc2ljLW9mZnNldDogNDsgaW5kZW50LXRhYnMtbW9kZTog
bmlsIC0qLSAqLwo+IC0vKgo+IC0gICBDb3B5cmlnaHQgKEMpIDIwMDktMjAxNSBSZWQgSGF0LCBJ
bmMuCj4gLQo+IC0gICBUaGlzIGxpYnJhcnkgaXMgZnJlZSBzb2Z0d2FyZTsgeW91IGNhbiByZWRp
c3RyaWJ1dGUgaXQgYW5kL29yCj4gLSAgIG1vZGlmeSBpdCB1bmRlciB0aGUgdGVybXMgb2YgdGhl
IEdOVSBMZXNzZXIgR2VuZXJhbCBQdWJsaWMKPiAtICAgTGljZW5zZSBhcyBwdWJsaXNoZWQgYnkg
dGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbjsgZWl0aGVyCj4gLSAgIHZlcnNpb24gMi4xIG9m
IHRoZSBMaWNlbnNlLCBvciAoYXQgeW91ciBvcHRpb24pIGFueSBsYXRlciB2ZXJzaW9uLgo+IC0K
PiAtICAgVGhpcyBsaWJyYXJ5IGlzIGRpc3RyaWJ1dGVkIGluIHRoZSBob3BlIHRoYXQgaXQgd2ls
bCBiZSB1c2VmdWwsCj4gLSAgIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVu
IHRoZSBpbXBsaWVkIHdhcnJhbnR5IG9mCj4gLSAgIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNT
IEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUgR05VCj4gLSAgIExlc3NlciBHZW5l
cmFsIFB1YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCj4gLQo+IC0gICBZb3Ugc2hvdWxk
IGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljCj4g
LSAgIExpY2Vuc2UgYWxvbmcgd2l0aCB0aGlzIGxpYnJhcnk7IGlmIG5vdCwgc2VlIDxodHRwOi8v
d3d3LmdudS5vcmcvbGljZW5zZXMvPi4KPiAtKi8KPiAtCj4gLSNpZm5kZWYgU1BJQ0VfRVhQRVJJ
TUVOVEFMX0hfCj4gLSNkZWZpbmUgU1BJQ0VfRVhQRVJJTUVOVEFMX0hfCj4gLQo+IC0jd2Fybmlu
ZyBzcGljZS1leHBlcmltZW50YWwuaCBpcyBkZXByZWNhdGVkCj4gLQo+IC0jZW5kaWYgLyogU1BJ
Q0VfRVhQRVJJTUVOVEFMX0hfICovCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9zcGljZS1kZXZlbA==
