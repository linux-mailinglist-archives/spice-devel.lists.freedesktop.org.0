Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC16CD6182
	for <lists+spice-devel@lfdr.de>; Mon, 22 Dec 2025 14:08:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0845E10E540;
	Mon, 22 Dec 2025 13:08:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lZP+wi9t";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB69910E046
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Dec 2025 19:23:00 +0000 (UTC)
Received: by mail-qt1-f169.google.com with SMTP id
 d75a77b69052e-4ed9c19248bso29463021cf.1
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Dec 2025 11:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766344980; x=1766949780; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=CU3d1yGWQEeEWk7uPdY9HFzLa5qFyArUKKR630Dlzek=;
 b=lZP+wi9tok3BLDuS3CC2Zdq00HcyNSZJ6nzTTYZKocxN/owR2+kPVD3I87jM76htPm
 nGMdMagIQZoUTqMqxhHHj/jRSlCujMSHgtuZoe4JEOnFi0mxAzusuuVS5+Zr7CAyFykF
 CBCTgZiadHxMTUR9W0yycqDiIlYBl2ld1HoG0lFFjVcr4cHxQ/p3IRf8KX32qAaKV8jI
 KDinlYa3H51xEnzhomENRAD3/WYs8I9bavRAH7SVB+au68D8o7S14b94c9GZZgnHAaeX
 aGGlrrZq3McVdVoKmhfKlusEhz+0/WERbRFwaZ52ViheQ2V3jvv/XSnhs31LV+Jtr0PS
 MPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766344980; x=1766949780;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CU3d1yGWQEeEWk7uPdY9HFzLa5qFyArUKKR630Dlzek=;
 b=Z1XVnVM4igsN9EDfglwVuhiBo/RbzowNXX9tT41boQuyR6is85bFExnfkxna3fytvl
 5yFACNFLgt4eEOrXS9XXpPWJQbVbRUbhF5+l9Jvy9naQujHkIwh+RPFZTET0Bs/P9yj5
 rf+iTTRc9E3zgUae0FIM7TkZ6e1Kf1SCdWPliXpx6IauqbayhCf9N6REaSxjiGMzkvp1
 hq7zeCDLKtkWNMciuivqaTQoeU2cvbbjRRepbQonGNYeL19J7cE0lTc1aED8VEcJK88M
 i0/UEqoV9quTSS/c2TkyDBuJRELyL+DkYvmB0aTksUm2WJj2aic2R1XM3fhjom555dx+
 JhlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVTzM1PAzx9hizvwQKGsgf0L1DEmJsNnJUVFQQ4ND0SKT3xK1F7gWZ3PbB84L3BL1xdCz9gCVMR2NYGJw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzmFuC3NwHfunq6c6TyV8Y/hPf+tfI35mykInMK7V0eCZv/uYSc
 BOqg10BNqGae9DwHXObHp27JX97vNQm8koBIPg4LfeHoLFWCjNxRgVrF
X-Gm-Gg: AY/fxX4NeyHc96iOmbxwX9iFgQX5fN7W3CK2yjoUZJ/LmitGkW4vXiI0/pRuDHbyYxg
 H+tGfknTFyDwny5PFiFamthug4yFs/9IALbacoXP8oIq7PeYUFTs2CpRSYi31pB5Fq2+Mc7NRU/
 hgFWGgSzA+XXkm6/xG4HF4GvKI1NxqGYIFK/nhdK/TmgdSX+yrarx2cHTl4zCUnZJDqFrMssLRP
 NSc2JdNFIWm+9hgjqs164jvLEIqbpjF+IpC5NkjNim+fMQXuRms5rsBBtitcaEgjkB1GvSe+6UF
 cJs2JUpRrJ+F3+Qbak3N4Dgm+i9bWpuiUevdPhJnh/bbUcZHrbRcDBkukF19T3v69fyyOJsJsVP
 95Elhfnz9poCD2MdY4M0+0fN9luJFE+gOkSu3Bomc2O09Dwwnxv6NfXMM5BnlyPNFJkGQDG/YYn
 zyKevuo276UOt7TSZcYkgMPLzmHXE+5mIURIilKtUsSAu8oKVUFFwoB/3R4/mj66pe2g==
X-Google-Smtp-Source: AGHT+IFLX81xK/AOwQ3E+98ilJbv09zXg4KnkKvMj4UXTpVPuN4Pdk6hIURONGqOkpw+gaACmx5rWg==
X-Received: by 2002:ac8:5d0d:0:b0:4ee:4a3a:bd0f with SMTP id
 d75a77b69052e-4f4abdd2f29mr146231041cf.69.1766344979850; 
 Sun, 21 Dec 2025 11:22:59 -0800 (PST)
Received: from ?IPV6:2602:47:d950:ab00:95cb:3d53:301b:983b?
 ([2602:47:d950:ab00:95cb:3d53:301b:983b])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-4f4ac563f66sm60242911cf.15.2025.12.21.11.22.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 21 Dec 2025 11:22:59 -0800 (PST)
Message-ID: <f7fb7055-f844-4356-a047-189c8f4520eb@gmail.com>
Date: Sun, 21 Dec 2025 14:22:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Adjust dsignated initializer to be C++20 compliant
To: Uri Lublin <uril@redhat.com>
Cc: Frediano Ziglio <freddy77@gmail.com>, Victor Toso
 <victortoso@redhat.com>, spice-devel@lists.freedesktop.org
References: <cover.1765109578.git.nvinson234@gmail.com>
 <CAHt6W4dfEwtJWV0cPL4MA4ZrbQ-Quxy7cPPPG+oSJLcrVm87aQ@mail.gmail.com>
 <b0d290d2-2db8-4d68-a700-724d1d6ac431@gmail.com>
 <CAAg9qJ29KxThRT8ej9P8U9iou7Lt6UJDO3gk+rXjq5d=-DbUFA@mail.gmail.com>
 <a37f58f3-4586-47b3-bba3-a7a1f7198c45@gmail.com>
 <CAAg9qJ2ps=Cq+y4ihCsBHPBEpk33NVguJR2+s+K5H-D=8XmaQg@mail.gmail.com>
Content-Language: en-US
From: Nicholas Vinson <nvinson234@gmail.com>
In-Reply-To: <CAAg9qJ2ps=Cq+y4ihCsBHPBEpk33NVguJR2+s+K5H-D=8XmaQg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 22 Dec 2025 13:08:38 +0000
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

On 12/16/25 05:19, Uri Lublin wrote:
> On Fri, Dec 12, 2025 at 7:56 AM Nicholas Vinson <nvinson234@gmail.com 
> <mailto:nvinson234@gmail.com>> wrote:
> 
> 
> 
>     On 12/11/25 13:48, Uri Lublin wrote:
>      >
>      >
>      > On Thu, Dec 11, 2025 at 2:38 PM Nicholas Vinson
>     <nvinson234@gmail.com <mailto:nvinson234@gmail.com>
>      > <mailto:nvinson234@gmail.com <mailto:nvinson234@gmail.com>>> wrote:
>      >
>      >     On 12/11/25 06:55, Frediano Ziglio wrote:
>      >      > On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson
>      >     <nvinson234@gmail.com <mailto:nvinson234@gmail.com>
>     <mailto:nvinson234@gmail.com <mailto:nvinson234@gmail.com>>> wrote:
>      >      >>
>      >      >> When building with g++-16, the build fails with the
>     following error:
>      >      >>
>      >      >>      server/tests/test-display-base.cpp:809:5: error:
>     either all
>      >     initializer
>      >      >>      clauses should be designated or none of them should be
>      >      >>
>      >      >> This is because g++-16 defaults to c++20 and when using
>     designated
>      >      >> initializers with c++20, you don't wrap anonymous union
>     fields
>      >     with braces.
>      >      >>
>      >      >> Nicholas Vinson (2):
>      >      >>    m4/spice-compile-warnings.m4: disable -Wmissing-braces
>      >      >>    test-display-base.cpp: adjust designated init.
>      >      >>
>      >      >>   m4/spice-compile-warnings.m4       | 1 +
>      >      >>   server/tests/test-display-base.cpp | 2 +-
>      >      >>   2 files changed, 2 insertions(+), 1 deletion(-)
>      >      >>
>      >      >
>      >      > The CI is not that happy. I added some commit to make it pass:
>      >      > - missing AUTHORS for "make syntax-check"
>      >      > https://gitlab.freedesktop.org/fziglio/spice/-/commit/
>     <https://gitlab.freedesktop.org/fziglio/spice/-/commit/>
>      >     fb018b3fbb26f38b2ffb0ee569d4aafc287fc738 <https://
>      > gitlab.freedesktop.org/fziglio/spice/-/commit/ <http://
>     gitlab.freedesktop.org/fziglio/spice/-/commit/>
>      >     fb018b3fbb26f38b2ffb0ee569d4aafc287fc738>
>      >      > - too old Fedora (not related to these changes)
>      >      > https://gitlab.freedesktop.org/fziglio/spice/-/commit/
>     <https://gitlab.freedesktop.org/fziglio/spice/-/commit/>
>      >     a4525e204ef8b7e3beb3709823029e27de633d7a <https://
>      > gitlab.freedesktop.org/fziglio/spice/-/commit/ <http://
>     gitlab.freedesktop.org/fziglio/spice/-/commit/>
>      >     a4525e204ef8b7e3beb3709823029e27de633d7a>
>      >      > - compatibility with pretty old GCC
>      >      > https://gitlab.freedesktop.org/fziglio/spice/-/ <https://
>     gitlab.freedesktop.org/fziglio/spice/-/>
>      >     commit/6a2c24fd5c088cb3b016a40965882e98f010b583 <https://
>      > gitlab.freedesktop.org/fziglio/spice/-/ <http://
>     gitlab.freedesktop.org/fziglio/spice/-/>
>      >     commit/6a2c24fd5c088cb3b016a40965882e98f010b583>
>      >
>      >
>      > Frediano, where did you take the 10 from ?
>      > Shouldn't it check if the gcc version is 16 (or even 20) ?
>      >
>      >
>      >
>      >     I'm concerned about the old GCC compatibility commit. I think
>     it would
>      >     be more robust if designated initializer feature checks were
>     added to
>      > configure.ac <http://configure.ac> <http://configure.ac <http://
>     configure.ac>> and meson.build instead.
>      >
>      >     That way you don't have to worry about how old or new the
>     compiler
>      >     is or
>      >     if it implements the necessary GCC extensions, or implements them
>      >     correctly.
>      >
>      >
>      > Do you mean compiling a simple program with designated
>     initializers in
>      > meson/configure ?
> 
>     That's exactly what I mean.
> 
> 
> It is a bit safer, but I think we can trust gcc in this case, like 
> Frediano's patch does.

How about "#if defined __clang__ || defined _MSC_VER || __GNUC__ > 7".

It's a bit more relaxed than Frediano's check and supports MSC 16.1 or 
newer, gcc-7 or newer, and every version of clang > 3 (might support 
some < 3, but godbolt doesn't have anything that old).

Thanks,
Nicholas Vinson


> 
> Thanks,
>      Uri.
> 
> 
>     Regards,
>     Nicholas Vinson
> 
>      >
>      > Regards,
>      >      Uri.
>      >
>      >
>      >     Regards,
>      >     Nicholas Vinson
>      >
>      >      >
>      >      > Do they sound good?
>      >      > I suppose the compatibility one could be merged.
>      >      >
>      >      > Regards,
>      >      >    Frediano
>      >
> 

