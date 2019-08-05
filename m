Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9B881F0B
	for <lists+spice-devel@lfdr.de>; Mon,  5 Aug 2019 16:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC061899E9;
	Mon,  5 Aug 2019 14:26:36 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E619899E9
 for <spice-devel@lists.freedesktop.org>; Mon,  5 Aug 2019 14:26:35 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x4so31462432wrt.6
 for <spice-devel@lists.freedesktop.org>; Mon, 05 Aug 2019 07:26:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=36HKF7jmMTxdYwnUL6ieOSNmroxsEhlyrwcECmlxzlE=;
 b=Gql5STbA7SBH7B2BSbRjViUzdXR0RKkwrLXvE1+kWb/TcJg0mnoVNSt2lMuMgQ1YdV
 CvA5h839rUBfjjXmctuhzWEyeASCx7ZqFEl03aqdTRmm6UB5/CdtfnCD+QvJXuwZdwU9
 uagbQaoTI4otayBEYT+QcUQzkL41nL3Ql4mC9s96bl2b62uho648iA7BGrG8FFwom6vl
 5go+ehLgWU44GaabVI2cFps/DRHxZQyD3OsvTSORs9n+HhP5vTzRBrczD2sRcsE5EAqk
 +pSID/mIdZSq9ud9lGpQ0vJhTF+Jznu1PsrGe96qPSfqVMTiNSHOnhnP1kIRuAeugZQ7
 ZBHw==
X-Gm-Message-State: APjAAAV7tBtCeAI74ttMjgbxTd47HBziKs8Qtu7pxIEZsRIjZ9cbgqu1
 7kU6+yavAYwdp1Q+zMNjMuIze6zMDbatbw==
X-Google-Smtp-Source: APXvYqzF8mHqq6S9lgHMPn0HIUDtxHJ18d5MbagYCXH/Bys9HBGOZhsbEk6uCsfLKtsBygXUd+VFNA==
X-Received: by 2002:adf:ce07:: with SMTP id p7mr41781wrn.129.1565015193116;
 Mon, 05 Aug 2019 07:26:33 -0700 (PDT)
Received: from localhost.localdomain ([141.226.8.46])
 by smtp.gmail.com with ESMTPSA id v204sm101808901wma.20.2019.08.05.07.26.32
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 07:26:32 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
References: <20190225145647.31675-1-ssheribe@redhat.com>
 <20190225145647.31675-2-ssheribe@redhat.com>
From: Snir Sheriber <ssheribe@redhat.com>
Message-ID: <9f341c18-6997-ef81-a493-5f16178d0f92@redhat.com>
Date: Mon, 5 Aug 2019 17:26:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190225145647.31675-2-ssheribe@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

cGluZwoKCk9uIDIvMjUvMTkgNDo1NiBQTSwgU25pciBTaGVyaWJlciB3cm90ZToKPiAtLS0KPiAg
IC5jb3ByL01ha2VmaWxlIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hh
bmdlZCwgMjEgaW5zZXJ0aW9ucygrKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IC5jb3ByL01ha2Vm
aWxlCj4KPiBkaWZmIC0tZ2l0IGEvLmNvcHIvTWFrZWZpbGUgYi8uY29wci9NYWtlZmlsZQo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uNTNiMWIxYgo+IC0tLSAvZGV2L251
bGwKPiArKysgYi8uY29wci9NYWtlZmlsZQo+IEBAIC0wLDAgKzEsMjEgQEAKPiArUFJPVE9DT0xf
R0lUX1JFUE8gPSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvc3BpY2Uvc3BpY2UtcHJv
dG9jb2wKPiArQlVJTEQgPSBtYWtlIGF1dG9tYWtlIGF1dG9jb25mIGF1dG9jb25mLWFyY2hpdmUg
bGlidG9vbCB4eiBnY2MtYysrIGZlZHBrZwo+ICsKPiArc3JwbToKPiArCWRuZiBpbnN0YWxsIC15
ICQoQlVJTEQpCj4gKwo+ICsJIyBnZXQgdXBzdHJlYW0gc3BpY2UgcHJvdG9jb2wKPiArCWdpdCBj
bG9uZSAkKFBST1RPQ09MX0dJVF9SRVBPKQo+ICsJY2Qgc3BpY2UtcHJvdG9jb2wgOyAuL2F1dG9n
ZW4uc2ggOyBtYWtlIGluc3RhbGwKPiArCj4gKwkjIGdldCBkZXBlbmRlbmNpZXMKPiArCWRuZiBp
bnN0YWxsIC15IGBncmVwIEJ1aWxkUmVxdWlyZXNcOiBzcGljZS1zdHJlYW1pbmctYWdlbnQuc3Bl
Yy5pbiB8IGF3ayAneyQkMT0iIjsgcHJpbnQgJCQwfScgfCBzZWQgInMvXGJzcGljZS1wcm90b2Nv
bFxiLy8gOyBzLz4uKi8vIiB8IHRyIC1zICJcbiIgIiAiYAo+ICsJIyBidWlsZCB0aGlzIHByb2pl
Y3QKPiArCVBLR19DT05GSUdfUEFUSD0vdXNyL2xvY2FsL3NoYXJlL3BrZ2NvbmZpZyAuL2F1dG9n
ZW4uc2gKPiArCj4gKwkjIGNyZWF0ZSBzb3VyY2UgcnBtCj4gKwlzZWQgLWkgLUUgInMvKF5SZWxl
YXNlOltbOnNwYWNlOl1dKikoW14lXSopL1wxYGRhdGUgKyclWSVtJWQlSCVNLnNwaWNlLm5pZ3Ro
bHknYC8iIHNwaWNlLXN0cmVhbWluZy1hZ2VudC5zcGVjCj4gKwltYWtlIGRpc3QKPiArCW1kNXN1
bSAqdGFyKiB8IGhlYWQgLW4xID4gInNvdXJjZXMiCj4gKwlmZWRwa2cgLS1yZWxlYXNlICJlcGVs
NyIgLS1wYXRoIC4gc3JwbQo+ICsJY3AgKnNyYy5ycG0gJChvdXRkaXIpCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxpbmcgbGlz
dApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
