Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F1E536034
	for <lists+spice-devel@lfdr.de>; Fri, 27 May 2022 13:49:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4497E10E370;
	Fri, 27 May 2022 11:48:59 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5E510E118
 for <spice-devel@lists.freedesktop.org>; Fri, 27 May 2022 10:42:27 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id y13so7998806eje.2
 for <spice-devel@lists.freedesktop.org>; Fri, 27 May 2022 03:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:to:content-language:from
 :subject:content-transfer-encoding;
 bh=xIvy1csQRZ1D7pShLl8nBIoCCobC1MmrET5JHpjA+eY=;
 b=ldLHbUAVwu5KLwJY6sBaoJHFYUGH7SOfbccv/fwqEAVtN/5Gm+0AvZCCCFu4vJRmAU
 00Jx9olhCE0qwHXB2L40aCDeM+DuhZJNhPZz1B0ffF7RnIWekLSJXoLGfVSq0mdkmxj5
 eov1b+fWWhCmgXvdDNQOt2Tb7JdTso5c56/+t3OQ0eOWzYRXAiv0++eI9n6OfKpJ3OD7
 NBWeJ+lglQgz2qS662s8Vi46e7/lD/NY6vEMTkPQLqg+sDKBvJnPxKDzuLgWOaeMw+g2
 ZstCTYNuErNE47KUmqcQtyUi4zekp/J0+dkngMqothC9i6hxqyx7FdWRLkW2EB4bYUUX
 1T9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:to
 :content-language:from:subject:content-transfer-encoding;
 bh=xIvy1csQRZ1D7pShLl8nBIoCCobC1MmrET5JHpjA+eY=;
 b=YfFOqqvo4Ob0Vdo6Soko6ywbOCjOa6NxyrK1dylxhbvxlYhlscZQbKWr4g6DtUKLVV
 ITp55cdmSNt4iYmwYcRGM98cVifVzUsEldKahjskg6nydv/QdH1flPQAx0PdmHqYjyzj
 ylMiXugTarEzAQDBx3NMcNry8aZSg/7IuOA+ASvirASDLs1qs1dj0jKmQ/IxpwSN3YCH
 UFm1EUsFGYAKehhlx9Bw/Lc2NlttFWT6FQEsA5BowYj9yZnE+AsSXzsSeOqOaLh2Q1bl
 1xvEdvws8FCr58U2toz12FU4MfHBcR7Ps6HXaDH2939UfZFFK1Xkw10kfVfxU+K97i6X
 r37A==
X-Gm-Message-State: AOAM531PC3MVshSkWwCBzVKqMo3/mMCjowtepgVNg5Z1Dv3z0RR1rkNo
 P8GqbmWciLcM4tP8u8/mb+Dhnlq6owk=
X-Google-Smtp-Source: ABdhPJy6BGH6ivmnqJr+IyBOMMl562aLX/Gk4H621IilOMX/BtQvnA+9dsq24y7AaReaGvalUn9D7w==
X-Received: by 2002:a17:906:d552:b0:6f5:942e:bc5f with SMTP id
 cr18-20020a170906d55200b006f5942ebc5fmr37412955ejc.110.1653648145601; 
 Fri, 27 May 2022 03:42:25 -0700 (PDT)
Received: from ?IPV6:2001:a61:1021:7401:8dd8:4b94:62fc:ebe3?
 ([2001:a61:1021:7401:8dd8:4b94:62fc:ebe3])
 by smtp.gmail.com with ESMTPSA id
 g9-20020a170906394900b006febeb51cd5sm1353758eje.174.2022.05.27.03.42.24
 for <spice-devel@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 May 2022 03:42:24 -0700 (PDT)
Message-ID: <2f8dc8de-664e-eea0-cd46-2f73bd847fb9@googlemail.com>
Date: Fri, 27 May 2022 12:42:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
To: spice-devel@lists.freedesktop.org
Content-Language: de-DE
From: Meurer <kbmeurer@googlemail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 27 May 2022 11:48:58 +0000
Subject: [Spice-devel] Spice error
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Dear Spice Team


I am using QEMU in Opensuse Tumbleweed.

ALL WORKING FINE.

Since today I got the error message:

spice-server bug: guest stopped, ignoring
*** buffer overflow detected ***: terminated


Can you help?


Kind regards


Bernd Meurer

