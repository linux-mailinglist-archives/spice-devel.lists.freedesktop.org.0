Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 762B3D512D
	for <lists+spice-devel@lfdr.de>; Sat, 12 Oct 2019 18:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B0AE6E04A;
	Sat, 12 Oct 2019 16:56:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 374496EC93
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 20:50:36 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id y91so9812205ede.9
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 13:50:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=/CRqpEB4n3bE0dMFNwb8XdVTvCTpXdX7sB3AZwhlnBc=;
 b=dtvBbjt8HtX8E/5v6WsLgxFPB/p+SvuGnXnvQ1UJhkCB1K9o4Lbxhv31Ggfv2V32xD
 wLkvDNUAFv8Hnc+jD42a0vI5zdSpX7ZnUVOCnEvh7onl66SOEQojqxz0TR/A/DBEcO1E
 UCqptpNLLQ2We3iWuK4CeGcfJQdfce9BHDfSz18VYOyNySx0mmRveWf3j5U/BB5dDwYD
 2tnZa/3bcbB4Zu2qiNBZsSrkxrQgZGnenszjC4/Oiu0GiZwX0gYBGyrzVB7X6oobQKm9
 N5OiUKaGWrycc4WvIAN0V1Ebrnu9pF7LEnYZ0rjNY8qQLaq1ZP5ObOsz6HIxGEzIm9xW
 SiQQ==
X-Gm-Message-State: APjAAAW7AYlhmSQzRB+IFU+fqqW2s4K/OF2pfiq7fPUNJJVORbIFWNZy
 p7om95VFUPb90h3IdyBtJo4D7OKPx/o=
X-Google-Smtp-Source: APXvYqwm1+cxLkJ5hjfq4h9T9opXmvt4HwtLsY2RyJCHbiz9hWDvkRZQpWembXIF5mQqlLJsr35Zvg==
X-Received: by 2002:a17:907:10dc:: with SMTP id
 rv28mr15741527ejb.7.1570827034621; 
 Fri, 11 Oct 2019 13:50:34 -0700 (PDT)
Received: from [192.168.0.103] (ip-213-124-186-29.ip.prioritytelecom.net.
 [213.124.186.29])
 by smtp.gmail.com with ESMTPSA id d2sm1661750eda.20.2019.10.11.13.50.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 13:50:34 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <efb5b7d3-99a5-a054-6a8d-250e90eae542@ehoefel.com>
 <1890026837.6264931.1570713772940.JavaMail.zimbra@redhat.com>
 <25c4399c-4ce7-2127-2427-69f6613520a3@ehoefel.com>
 <1085520636.6354016.1570791645574.JavaMail.zimbra@redhat.com>
From: Eduardo Hoefel <business@ehoefel.com>
Message-ID: <316d9f95-3e25-3e39-3b34-83bea18a8f3d@ehoefel.com>
Date: Fri, 11 Oct 2019 22:50:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1085520636.6354016.1570791645574.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Mailman-Approved-At: Sat, 12 Oct 2019 16:56:39 +0000
Subject: Re: [Spice-devel] Question about bidirectional audio
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
Reply-To: business@ehoefel.com
Cc: spice-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGkgRnJlZGlhbm8sCgpUaGFuayB5b3UgZm9yIGNsYXJpZnlpbmcgdGhpcy4KQW5vdGhlciBxdWVz
dGlvbjoKCkknbSBjb2RpbmcgYmFzZWQgb24gdGhlIHNwaWNlLWd0ayBwcm9qZWN0OgpodHRwczov
L2dpdGh1Yi5jb20vZnJlZWRlc2t0b3Avc3BpY2UtZ3RrCgpBZnRlciByZWNlaXZpbmcgU3BpY2VM
aW5rUmVwbHkgd2l0aCB0aGUgcHViaWxjIGtleSwgSSdtIGVuY29kaW5nIHRoZSAKcGFzc3dvcmQg
d2l0aCBpdCBhbmQgc2VuZGluZyBpdCB0byB0aGUgc2VydmVyLiBJIHJlY2VpdmUgYSByZXBseSB3
aXRoIApjb2RlIDExLCB3aGljaCBpcyBub3QgZG9jdW1lbnRlZC4KCklzIHRoaXMgYSB2YWxpZCBl
cnJvciBjb2RlPyBBbSBJIG1pc3Npbmcgc29tZXRoaW5nIGltcG9ydGFudD8KCkkgdHJpZWQgc2Vu
ZGluZyB0aGUgZW5jcnlwdGVkIHBhc3N3b3JkIGJvdGggd2l0aCBhbmQgd2l0aG91dCBhIGhlYWRl
cgoKT24gMTAvMTEvMTkgMTowMCBQTSwgRnJlZGlhbm8gWmlnbGlvIHdyb3RlOgo+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRldmVsIG1haWxp
bmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbA==
