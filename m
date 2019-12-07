Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DA8115BC5
	for <lists+spice-devel@lfdr.de>; Sat,  7 Dec 2019 10:56:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2BE16E0C2;
	Sat,  7 Dec 2019 09:56:53 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 509566FAB4
 for <spice-devel@lists.freedesktop.org>; Sat,  7 Dec 2019 00:08:47 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id f4so10864236wmj.1
 for <spice-devel@lists.freedesktop.org>; Fri, 06 Dec 2019 16:08:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:reply-to:from:subject:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=NejNSfXkG1aH2w9sLKteGWLEPdqdpeJXU5umPUnIjJg=;
 b=jHzWZmSUcCXmFcZ2nApLMYVwpmKH6R7YkmjzWl52teyTNifDTnKbP/1vvdZSKorVbi
 wJdHAQa1e6IjmQdu4YAvEHwqFBvHGsvYyXHh91wpffEKOEFjfaCNx40NPRe/w4aPNWdb
 1BjylLxjZ8FKjyFfFLjDJeXG3/+Itc8xrkbrUVdwVQi4MGwUPBq1ShmBwNdgRsHGLzi/
 Ljmr1yd35hW89+9QydD868sHgWdfOE4VnPHRxW4UGsKfIhEzdzRaAoCnvTITxia/M/cx
 Y5/RtIg2sfpTF2HHnDa3T+v/ceZBp3lkJxbT8F4Teicdt/xg34E9wjBbtyZvF0ZeKHzM
 6ejA==
X-Gm-Message-State: APjAAAVjMotE9/GdxnftiqN1W92PbWwCu3DoFDd1fRcMwrDdjM4bDuel
 q70T2i6NSuwnXaAcelaA/yWTUQPa
X-Google-Smtp-Source: APXvYqyEbg2LFhDziZj5OLfeVqUhbD/mHPV2ijupLDbFLYgUbukjGo/lLHzhWBQDqdQXS5DuVsjkGQ==
X-Received: by 2002:a1c:2745:: with SMTP id n66mr12986631wmn.171.1575677325437; 
 Fri, 06 Dec 2019 16:08:45 -0800 (PST)
Received: from [192.168.0.106] (ip-213-124-186-29.ip.prioritytelecom.net.
 [213.124.186.29])
 by smtp.gmail.com with ESMTPSA id g7sm17804783wrq.21.2019.12.06.16.08.44
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Dec 2019 16:08:44 -0800 (PST)
To: spice-devel@lists.freedesktop.org
From: Eduardo Hoefel <me@ehoefel.com>
Message-ID: <dcd6bbde-582e-8cbb-d416-4416d2d92380@ehoefel.com>
Date: Sat, 7 Dec 2019 01:08:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Sat, 07 Dec 2019 09:56:50 +0000
Subject: [Spice-devel] About Opus encoding on spice
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
Reply-To: me@ehoefel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SSdtIGRldmVsb3BpbmcgYSB0b29sIHRvIGNvbm5lY3QgVm9pcCBjYWxscyB0byBhIFNwaWNlIHNl
cnZlciB1c2luZyAKQXN0ZXJpc2sgUEJYLgoKSSdtIHJlY2VpdmluZyB0aGUgcGxheWJhY2sgcGFj
a2V0cywgYnV0IGNhbm5vdCBkZWNvZGUgdGhlbSBmcm9tIHRoZSBvcHVzIApjb2RlYy4KCkkgdHJp
ZWQgbWFueSBvcHRpb25zLCBidXQgdGhlIHRvb2wgYWx3YXlzIGNsYWltcyB0aGF0IHRoZSBkYXRh
IGlzIG5vdCAKZW5jb2RlZCB3aXRoIG9wdXMuCgoKSSByZWNlaXZlIHRoZSBkYXRhIHBhY2tldHMg
YW5kIHNhdmUgdGhlbSBpbiBmaWxlcy5vcHVzLiBUaGVuIEknbSB0cnlpbmcgCnRvIGRlY29kZSB1
c2luZyBvcHVzZGVjIHRvb2wuCgoKRG8geW91IGtub3cgaG93IGRvIEkgbmVlZCB0byBjb25maWd1
cmUgaXQ/CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwaWNlLWRldmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1k
ZXZlbA==
