Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4B6DFEED
	for <lists+spice-devel@lfdr.de>; Tue, 22 Oct 2019 10:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D1B6E431;
	Tue, 22 Oct 2019 08:04:39 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB6C6E431
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:04:39 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-64-kjwnLcdRN42-YrrBVlhyVg-1; Tue, 22 Oct 2019 04:04:35 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 371221005500
 for <spice-devel@lists.freedesktop.org>; Tue, 22 Oct 2019 08:04:34 +0000 (UTC)
Received: from [10.34.247.144] (unknown [10.34.247.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 87D286012C;
 Tue, 22 Oct 2019 08:04:33 +0000 (UTC)
To: Frediano Ziglio <fziglio@redhat.com>, spice-devel@lists.freedesktop.org
References: <20191021141048.4847-1-fziglio@redhat.com>
 <20191021141048.4847-4-fziglio@redhat.com>
From: "Eduardo Lima (Etrunko)" <etrunko@redhat.com>
Organization: Red Hat
Message-ID: <77efcae2-0987-946f-8460-4103952c75c4@redhat.com>
Date: Tue, 22 Oct 2019 10:04:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191021141048.4847-4-fziglio@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: kjwnLcdRN42-YrrBVlhyVg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571731477;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UO9sr5G0MhMk1CbGIwMx06PKWp9BWzne7NzPAQlUyTg=;
 b=NHc40bJMsqqzq5ykicMkjoWG1uW1MqD86CkN/HCJ33sYyyD7xdp8VRv29wNn71T5kbSsnd
 CnAu8FOQh+eX4Cuuk+GvFSg0Vq5NTq8OvrKJYyf0jTx+h01iMJZG9RSAbwiT9gyuh1E2Dy
 Dn2Lkbn1/S4IaBiDXybL8lkOBE7INTI=
Subject: Re: [Spice-devel] [PATCH spice-protocol v2 4/5] build-sys: Update
 URL in SPEC file
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

T24gMTAvMjEvMTkgMTE6MTAgQU0sIEZyZWRpYW5vIFppZ2xpbyB3cm90ZToKPiBVc2UgaHR0cHMg
aW5zdGVhZCBvZiBodHRwLCB3ZWIgc2VydmVyIGF1dG9tYXRpY2FsbHkgcmVkaXJlY3RzCj4gdG8g
c2VjdXJlIHZlcnNpb24uCj4gUmVtb3ZlIHNsYXNoIGF0IHRoZSBlbmQsIG5vdCBuZWVkZWQuCj4g
CgpJIHRoaW5rIHRoaXMgY2FuIGJlIHNxdWFzaGVkIHdpdGggdGhlIGZpcnN0IHBhdGNoIGluIHRo
ZSBzZXJpZXMuCgo+IFNpZ25lZC1vZmYtYnk6IEZyZWRpYW5vIFppZ2xpbyA8ZnppZ2xpb0ByZWRo
YXQuY29tPgo+IC0tLQo+ICAgc3BpY2UtcHJvdG9jb2wuc3BlYy5pbiB8IDQgKystLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvc3BpY2UtcHJvdG9jb2wuc3BlYy5pbiBiL3NwaWNlLXByb3RvY29sLnNwZWMuaW4KPiBp
bmRleCA3MWFiOTFhLi41NGFhY2ZkIDEwMDY0NAo+IC0tLSBhL3NwaWNlLXByb3RvY29sLnNwZWMu
aW4KPiArKysgYi9zcGljZS1wcm90b2NvbC5zcGVjLmluCj4gQEAgLTUsOCArNSw4IEBAIFN1bW1h
cnk6ICAgICAgICBTcGljZSBwcm90b2NvbCBoZWFkZXIgZmlsZXMKPiAgIEdyb3VwOiAgICAgICAg
ICBEZXZlbG9wbWVudC9MaWJyYXJpZXMKPiAgICMgTWFpbiBoZWFkZXJzIGFyZSBCU0QsIGNvbnRy
b2xsZXIgLyBmb3JlaWduIG1lbnUgYXJlIExHUEwKPiAgIExpY2Vuc2U6ICAgICAgICBCU0QgYW5k
IExHUEx2MisKPiAtVVJMOiAgICAgICAgICAgIGh0dHA6Ly93d3cuc3BpY2Utc3BhY2Uub3JnLwo+
IC1Tb3VyY2UwOiAgICAgICAgaHR0cDovL3d3dy5zcGljZS1zcGFjZS5vcmcvZG93bmxvYWQvcmVs
ZWFzZXMvJXtuYW1lfS0le3ZlcnNpb259LnRhci5iejIKPiArVVJMOiAgICAgICAgICAgIGh0dHBz
Oi8vd3d3LnNwaWNlLXNwYWNlLm9yZwo+ICtTb3VyY2UwOiAgICAgICAgaHR0cHM6Ly93d3cuc3Bp
Y2Utc3BhY2Uub3JnL2Rvd25sb2FkL3JlbGVhc2VzLyV7bmFtZX0tJXt2ZXJzaW9ufS50YXIuYnoy
Cj4gICBCdWlsZEFyY2g6ICAgICAgbm9hcmNoCj4gICBCdWlsZFJlcXVpcmVzOiAgbWluZ3czMi1m
aWxlc3lzdGVtID49IDk1Cj4gICBCdWlsZFJlcXVpcmVzOiAgbWluZ3c2NC1maWxlc3lzdGVtID49
IDk1Cj4gCgoKLS0gCkVkdWFyZG8gZGUgQmFycm9zIExpbWEgKEV0cnVua28pClNvZnR3YXJlIEVu
Z2luZWVyIC0gUmVkIEhhdApldHJ1bmtvQHJlZGhhdC5jb20KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGlj
ZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
