Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E48AD2A06
	for <lists+spice-devel@lfdr.de>; Thu, 10 Oct 2019 14:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD806E23F;
	Thu, 10 Oct 2019 12:52:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597D46E223
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 11:36:42 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id y91so5130649ede.9
 for <spice-devel@lists.freedesktop.org>; Thu, 10 Oct 2019 04:36:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:reply-to:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=cqsFaawVmZPtHsL6ZYIYApFrI+QRwI6+15iXd5K8Kp0=;
 b=b9tVJy6/Mpzq9a41jezjs5IdCmHpRdHZVyuCOufDoMg1FmRsSm2ZHMorm0b08DuziW
 OIhAXlZqoEbRRRzlrSmjrSInythrrexE0yj6JyJxABlWswn+bJghn5obchU8SbjomW1t
 q76/WZGPHzNYmJT0LdFpCAyIBMSyhiE88qPXXoN2goMuoDDidvKOG67yjz2uxMqlCLqY
 g/1fqGjXBOYqSFZ9gmcU7JEs0/ZqiEwovqYVn048axk1imu6M5ZomtyjikfnyUkLlEwO
 UA1MGHgl6kao1tF/wG7WXjCzh1i6vfXnoQyGk1bbmxwS4ezpUxZpZiLMftm1iB6dcpfj
 4WnQ==
X-Gm-Message-State: APjAAAXnbOFUE2KJehmWClO0WCUfaQ9T5g97/4Z3zKedKkPY4+xruizn
 f6zT+bKoXme4dIpMD5gIDtvOvWLdW98=
X-Google-Smtp-Source: APXvYqx6zAbGLmdHKkAD5h6u9p4sycqhxqGqP9zrrRLNlqtA9kqknLFov+G3wYAVHYv+rZlgFUROlg==
X-Received: by 2002:aa7:cfcd:: with SMTP id r13mr7754907edy.146.1570707400808; 
 Thu, 10 Oct 2019 04:36:40 -0700 (PDT)
Received: from [192.168.0.103] (ip-213-124-186-29.ip.prioritytelecom.net.
 [213.124.186.29])
 by smtp.gmail.com with ESMTPSA id qn27sm677270ejb.84.2019.10.10.04.36.40
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 04:36:40 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
From: Eduardo Hoefel <business@ehoefel.com>
Message-ID: <efb5b7d3-99a5-a054-6a8d-250e90eae542@ehoefel.com>
Date: Thu, 10 Oct 2019 13:36:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Thu, 10 Oct 2019 12:52:02 +0000
Subject: [Spice-devel] Question about bidirectional audio
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SGVsbG8sCgpJJ20gYSBkZXZlbG9wZXIgZG9pbmcgYSBmcmVlbGFuY2Ugam9iIGZvciBhIGNvbXBh
bnkuIFRoZXkgd2FudCB0byAKY29ubmVjdCBBc3RlcmlzayBjYWxsIGNlbnRlciB0byBhIHZtIHJ1
bm5pbmcgU3BpY2UuIEkgc2VlIHRoYXQgaXQncyAKcG9zc2libGUgdG8gZG8gQmlkaXJlY3Rpb25h
bCBBdWRpbywgYWNjb3JkaW5nIHRvIHlvdXIgdXNlciBtYW51YWwuCkkgd2FudCB0byBzdHJlYW0g
YXVkaW8gZnJvbSBhIGNsaWVudCB0byB0aGUgc2VydmVyLCBhbmQgaGF2ZSB0aGF0IGF1ZGlvIApw
bGF5ZWQgdGhyb3VnaCB0aGUgb3V0cHV0IGRldmljZSBvZiB0aGUgc2VydmVyLiBJIG5lZWQgdG8g
bWFrZSB0aGlzIGNvZGUgCmluIEMuCgpMb29raW5nIGF0IHlvdXIgcHJvdG9jb2wgSSBzYXcgdGhh
dCBmb3IgYXVkaW8gbWVzc2FnZXMgdGhlIHNlcnZlciBhbHdheXMgCm5lZWRzIHRvIHN0YXJ0IHRo
ZSBjb21tdW5pY2F0aW9uLCBlaXRoZXIgd2l0aCBSRURfUExBWUJBQ0tfU1RBUlQgb3IgClJFRF9S
RUNPUkRfU1RBUlQuCgpNeSBjbGllbnQgd2FudHMgdG8gcmVjZWl2ZSB0aGUgY2FsbCBpbiB0aGUg
Y2FsbCBjZW50ZXIgYW5kIGhhdmUgaXQgCmF1dG9tYXRpY2FsbHkgc3RyZWFtZWQgdG8gdGhlIHNl
cnZlci4gQnV0IEkgY2Fubm90IHN0YXJ0IG1lc3NhZ2luZyAKdW5sZXNzIHRoZSBzZXJ2ZXIgcmVx
dWVzdHMgdGhlIGNvbm5lY3Rpb24uCgpIb3cgY2FuIEkgc29sdmUgdGhhdD8KClJlZ2FyZHMsCkVk
dWFyZG8gSG9lZmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGljZS1kZXZlbCBtYWlsaW5nIGxpc3QKU3BpY2UtZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vc3Bp
Y2UtZGV2ZWw=
