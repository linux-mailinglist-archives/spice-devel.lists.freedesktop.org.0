Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 276BA214AF7
	for <lists+spice-devel@lfdr.de>; Sun,  5 Jul 2020 09:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC4186EBF5;
	Sun,  5 Jul 2020 07:37:57 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD9F16E02B
 for <spice-devel@lists.freedesktop.org>; Sat,  4 Jul 2020 09:13:18 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id s10so35154685wrw.12
 for <spice-devel@lists.freedesktop.org>; Sat, 04 Jul 2020 02:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=ZFhpc6hrK3PJs7Y1UVmPyYQACG2dVwN6vS4BW6poRe4=;
 b=oGmgHUQVDE4gfBT2qD0x7SiV7zHsiBAk04Pl775kTi5ZIFwaNyOT+OSyk2TisAh+vO
 wFgOi4x9dgLNPKjDM/Zi/jLHLQ+LZwgb5k5Dyxiw983f3gzFbquywmNIYh3CD/YZYytO
 ypyfV2MejVIaFpTnk0mzBlJp6iyQsLQXTWKOy/Iktq+zEHUfeUS1ms32VeZEajcLSvrY
 0aldqsGO91emvi+X721OeRfiSedd8SowJNShKozBYjB4hBsPzn+c0PwO9CPxCIEWs1XH
 rgDiecNRfe/qJhm/rBrkV/JdgVudAVvmAtwkr2iQ4gx40tu55E2RpiFYAI0SZtZgzV+b
 vTKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=ZFhpc6hrK3PJs7Y1UVmPyYQACG2dVwN6vS4BW6poRe4=;
 b=qAvfpusPsuI42GrE1Euss06J7q3qPEmjs6sF3PaQf2qQil6p2YNVtvGvx24LBtg5pb
 vTiUXzZ5QiQz6GEEMHLhITgDC9mX8VjsNO5z/frwN6kXqKSCCF63jMr2JDb3dFc/kidD
 OwpAzYMNBEs8fzckpgh4Ck9zV/8mQ3eUGV9NwQX3yLZrHeaUeN9OAXR51OZxUKAlRUvR
 GKXpZRZk8KUrSQN3yoYHLv2flnUvTWv0uBtHU7MLR8s/b2tNJCBiRCbTEJZCwPPxur8S
 DE+AuzO8AR0fgouqAzykMrNkMDrnT8Dt5WmMDoujkPr+520L7pT6GNHVyLHvZIeqdPEM
 nMgg==
X-Gm-Message-State: AOAM533c6/BVYjqX13BvDbi1lfeXGzD/3Bcs92w+o6N7AtG8CXHJiFsm
 cK77pGwvwc6D/uZMmpnn2irYpoTC
X-Google-Smtp-Source: ABdhPJwX3czhLDZ3SNROIA4zc1sinbLa7Ol5mFWDQXr+WIn+bNq4uiRahRbW9I969VflzXZjc8yxnA==
X-Received: by 2002:adf:c986:: with SMTP id f6mr40978700wrh.168.1593853997220; 
 Sat, 04 Jul 2020 02:13:17 -0700 (PDT)
Received: from [172.16.93.28] ([95.38.67.203])
 by smtp.gmail.com with ESMTPSA id g13sm16974728wro.84.2020.07.04.02.13.15
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 04 Jul 2020 02:13:16 -0700 (PDT)
To: spice-devel@lists.freedesktop.org
From: mnavahan <mnavahan@gmail.com>
Message-ID: <9de19746-307e-92e0-b016-88381b7b8b34@gmail.com>
Date: Sat, 4 Jul 2020 13:43:13 +0430
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Sun, 05 Jul 2020 07:37:56 +0000
Subject: [Spice-devel] spice & virt-viewver & dedicated mouse & keyboard
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

SGkKCkkgaGF2ZSBwcm9ibGVtIHdpdGggdmlydC12aWV3dmVyICYgZGVkaWNhdGVkIG1vdXNlICYg
a2V5Ym9hcmQKCkkgdXNlIHNwaWNlIHdpdGggVmlyR0wgaW4gVWJ1bnR1IDIwLjA0IHNlcnZlciB3
aXRoIGFsc28gVWJ1bnR1IGd1ZXN0IDIwLjA0CgpXZSBIYXZlIFRXTyBtb25pdG9yICYgYWxzbyBU
V08gbW91c2UgJiBrZXlib2FyZAoKdGhlbiBpIHBhc3MgMm5kIG1vdXNlICYga2V5Ym9hcmQgdG8g
Z3Vlc3QgLCBhbmQgYWxzbyB1c2UgdmlydC12aWV3ZXIKCmZvciB1c2Ugb2YgdHdvIGRpZmZlcmVu
dCB1c2VyIGkgbW92ZSB2aXJ0LXZpZXdlciB0byAybmQgbW9uaXRvciBidXQgCnNlZW1zIHdoZW4g
aG9zdCBtb3VzZSBvdXQgb2bCoCB2aXJ0LXZpZXdlciBzY3JlZW4gLCBndWVzdCBtb3VzZSB3b3Jr
IEJVVCAKY3Vyc29yIGhpZGUgOi0oCgpob3cgZGlzYWJsZSBndWVzdCBtb3VzZSBhbHdheXMgc2hv
dyBpbiB0aGlzIG1vZGUgPwoKCnRoeAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BpY2UtZGV2ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL3NwaWNlLWRldmVsCg==
