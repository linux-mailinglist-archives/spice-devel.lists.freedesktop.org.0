Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E06BED512C
	for <lists+spice-devel@lfdr.de>; Sat, 12 Oct 2019 18:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FC96E043;
	Sat, 12 Oct 2019 16:56:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B34EF6ECA7
 for <spice-devel@lists.freedesktop.org>; Sat, 12 Oct 2019 00:52:45 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id r9so10149569edl.10
 for <spice-devel@lists.freedesktop.org>; Fri, 11 Oct 2019 17:52:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=qS2yEYjmVrGFe/zmLkP/iGQYsFI2psHTpgbmqRruLz8=;
 b=NK4DJRIuZZxyxznI/xm7Ik98jd97hJrsrtEDAPn5Q1felxzh1MT9WgSj7BgUFJ5FTE
 uJN+2zISNDBd2lCHJyqwQuXcRgSgp+iByuWv6XROaGbX1jj1fwfaR5JCbzmt6T27uU+k
 u5N+zCzAuN8g21IIkSsoVEfTVMAS6PoxpJ1mDZVK+FgqJY2qg48XO98+lXWaPizRzZLx
 iA0kkPBjhFBYivJG9Hd3Zuku+fZBRg/juIkt1T/r68vB11O8tUssxqj6jgbziO2X5mM/
 MmHaTMA4HkosoGc/UBBd4Hth4wTJDU13h42ZQMW47iED3t0nEXoyj88F9DDOIIkWe+rw
 TDCQ==
X-Gm-Message-State: APjAAAWOaYhH38SvVALyS+cZ1pot1FZ9Bpc723gAjD7tPl09NS1oLgZA
 ghA8d07LZgL8mfyzamjYuLdN7kYET8A=
X-Google-Smtp-Source: APXvYqyFhE3BKK1Qg8Ss+XJe15O6PzZF9aVsDQ5cOLj1rXtCLrEQY+n1+bVlZngESOx2rJBWYYjDcw==
X-Received: by 2002:aa7:dc47:: with SMTP id g7mr16466892edu.153.1570841564184; 
 Fri, 11 Oct 2019 17:52:44 -0700 (PDT)
Received: from [192.168.0.103] (ip-213-124-186-29.ip.prioritytelecom.net.
 [213.124.186.29])
 by smtp.gmail.com with ESMTPSA id i5sm1731399edv.29.2019.10.11.17.52.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 17:52:43 -0700 (PDT)
To: Frediano Ziglio <fziglio@redhat.com>
References: <efb5b7d3-99a5-a054-6a8d-250e90eae542@ehoefel.com>
 <1890026837.6264931.1570713772940.JavaMail.zimbra@redhat.com>
 <25c4399c-4ce7-2127-2427-69f6613520a3@ehoefel.com>
 <1085520636.6354016.1570791645574.JavaMail.zimbra@redhat.com>
From: Eduardo Hoefel <business@ehoefel.com>
Message-ID: <374df3e2-5a8e-fae1-66e7-0afbf948a842@ehoefel.com>
Date: Sat, 12 Oct 2019 02:52:43 +0200
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

QWN0dWFsbHksIEkgZm91bmQgYW5vdGhlciB3YXkgb2YgZG9pbmcgdGhpcy4KCkkgc2VlIHRoYXQg
dGhlIHNwaWNlLWh0bWw1IHByb2plY3QgaXMgZnVsbHkgZnVuY3Rpb25hbC4gSSBkb3dubG9hZGVk
IHRoZSAKY29kZSBhbmQgcG9ydGVkIHRvIG5vZGVKUy4gSSdsbCBkbyB0aGUgc3BpY2UgY29ubmVj
dGlvbiB3aXRoIGl0IGFuZCBzZW5kIAp0aGUgaW1wb3J0YW50IGRhdGEgdG8gbXkgb3RoZXIgc2Vy
dmljZXMgdGhyb3VnaCBzb2NrZXQuCgpUaGFuayB5b3UgdmVyeSBtdWNoCgpPbiAxMC8xMS8xOSAx
OjAwIFBNLCBGcmVkaWFubyBaaWdsaW8gd3JvdGU6CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vc3BpY2UtZGV2ZWw=
