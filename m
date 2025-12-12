Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3A2CB89B4
	for <lists+spice-devel@lfdr.de>; Fri, 12 Dec 2025 11:18:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DA110E65B;
	Fri, 12 Dec 2025 10:18:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nXnUTtn+";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75FC910E32A
 for <spice-devel@lists.freedesktop.org>; Fri, 12 Dec 2025 05:55:56 +0000 (UTC)
Received: by mail-qk1-f173.google.com with SMTP id
 af79cd13be357-8ba4197fbd4so96205785a.2
 for <spice-devel@lists.freedesktop.org>; Thu, 11 Dec 2025 21:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765518955; x=1766123755; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AVAJI2kkzM/feEua8G9GPGsmWwyF3zfJs+t3qk6rGGA=;
 b=nXnUTtn+B1OEA+/zXwACYAdkVyo6FKwpRpVOaX0nO5WqctrtUCqQ/7tqe/kh960kR5
 eFg8G9k5F49FT8B/nOPahCcbffCncuJDR0FddnqXYDWH70Rdo3buGCNn+9SeqZ09iwA8
 IA/n9HL3j05jB8GXw4x/a60hjf9HiI0PJpbN94NfU1HuR8OLgvofO1KZg6XS++p1LSgf
 20fSkH/PDu61FPJ+sdpfBZOkox/wggHMr/OAfaFvDN658n6zYr42sfooCDiAd5PYzxUl
 OI8QkbpIsgJSG98yUpG3WtL/K8oITgy5cHkMsg8xtcwgz3WeizFCrMIeh2YyailtEIbX
 +rCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765518955; x=1766123755;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AVAJI2kkzM/feEua8G9GPGsmWwyF3zfJs+t3qk6rGGA=;
 b=Rh/0zsNb354oSh/gV6Oxwhm4RfQrsizPd6f0tj3EEtaoGd9SIO5ovnjO1t3d9q8bQw
 QkiVFYa0/Yz76QP1TWGJZuEpGcbLb49ck4hs+7PRZCTNOgW9vasz5kNq+MWHCNgWlSXS
 FeC1Z/PaoSjbEA9xzYVfqJxrglGFYtdQXAmCU0SRBfn/0/10t7iyCFA8scsYC0zgEG3H
 As7BwIFy7xa+eq7Z8Tjezu7Ct/ImpuglE08Tiwg+VTVfCXzOleLgXwyUt4p8JiDqWWbu
 Mh38z/dWsX52yhfMnVGw9tQm+mqKi7sNOsR+9hhM7eaIzP1mXAHtssxoQEDVqgmocAaK
 Xjmg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWl22CL2zcOPeVal+ThA2BeI+ileGAifCv4BDdVxzyIl1eQoQNGRa+V+PZFDvQxbXE6Idwr7xnRqb6vFQ==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwGKRh+exZ0T9jv0YZUeUGLOgh7VPcyVETiDmv0mnk61OZ9jIbD
 c1PQo3DGKBNDXMWzSxDaje8/3nenaxYSxFULusYsg1bJzqBtmImQOuf8
X-Gm-Gg: AY/fxX6aw0WhXehRcpzSyjQUsfbbr1VMF2C6YXT9gMcZiRcgx8bloRThi5KD3rZGjI5
 8zLeiAn4BhuuqH/Qhss4PyihgIYxo9ONekUmqVs/VvY4j2QNUORZrHCpUr9PhedO0puRo51NfWj
 yi9yiDVJtJIlOjnVTMCq6D4u+fCaQXpPksdwHxotLEut8Wq1qwsk96vUjv1fe3qzk3XVtbRrhrt
 P6k8fyE1lFriRLQYmxYVJ7LEGFKhSUlQNdPWKCUKigjUMKfVKzFQlY0A0+1wc6EMyTp7+0lIdiN
 Snd9367wP0KSa4Dd6tDS+J1FfGwupZS9rN6SasthpzPlDflucMdBjQgslRjTcc/CFJRgL6pXiFN
 flI3EgVlbzdC9wzpC+8ed2HPx7MkzY1KNQDp1+MxjRCDJPSGhZY6OSLKezGz6RD5G/WJLyuEZDQ
 Q+U1kKpnr95WYjsirArOpIUYQP1lo++tdfKazYfR00prcXpyGm0UXiIcc=
X-Google-Smtp-Source: AGHT+IE27z+NgPzNb7IGDXm056Xd2d0ddRRzujdTi9aR0Cbke4DkIaPzn2+KKssX4GsjfLCjtgCyAA==
X-Received: by 2002:a05:620a:4111:b0:8b1:a49e:9b0e with SMTP id
 af79cd13be357-8bb399d93f4mr152778185a.5.1765518955281; 
 Thu, 11 Dec 2025 21:55:55 -0800 (PST)
Received: from ?IPV6:2602:47:d950:ab00:b44a:b5f4:fcea:d4b5?
 ([2602:47:d950:ab00:b44a:b5f4:fcea:d4b5])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8bab5665e02sm371713885a.19.2025.12.11.21.55.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Dec 2025 21:55:54 -0800 (PST)
Message-ID: <a37f58f3-4586-47b3-bba3-a7a1f7198c45@gmail.com>
Date: Fri, 12 Dec 2025 00:55:53 -0500
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
Content-Language: en-US
From: Nicholas Vinson <nvinson234@gmail.com>
In-Reply-To: <CAAg9qJ29KxThRT8ej9P8U9iou7Lt6UJDO3gk+rXjq5d=-DbUFA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 12 Dec 2025 10:18:03 +0000
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



On 12/11/25 13:48, Uri Lublin wrote:
> 
> 
> On Thu, Dec 11, 2025 at 2:38 PM Nicholas Vinson <nvinson234@gmail.com 
> <mailto:nvinson234@gmail.com>> wrote:
> 
>     On 12/11/25 06:55, Frediano Ziglio wrote:
>      > On Sun, 7 Dec 2025 at 12:20, Nicholas Vinson
>     <nvinson234@gmail.com <mailto:nvinson234@gmail.com>> wrote:
>      >>
>      >> When building with g++-16, the build fails with the following error:
>      >>
>      >>      server/tests/test-display-base.cpp:809:5: error: either all
>     initializer
>      >>      clauses should be designated or none of them should be
>      >>
>      >> This is because g++-16 defaults to c++20 and when using designated
>      >> initializers with c++20, you don't wrap anonymous union fields
>     with braces.
>      >>
>      >> Nicholas Vinson (2):
>      >>    m4/spice-compile-warnings.m4: disable -Wmissing-braces
>      >>    test-display-base.cpp: adjust designated init.
>      >>
>      >>   m4/spice-compile-warnings.m4       | 1 +
>      >>   server/tests/test-display-base.cpp | 2 +-
>      >>   2 files changed, 2 insertions(+), 1 deletion(-)
>      >>
>      >
>      > The CI is not that happy. I added some commit to make it pass:
>      > - missing AUTHORS for "make syntax-check"
>      > https://gitlab.freedesktop.org/fziglio/spice/-/commit/
>     fb018b3fbb26f38b2ffb0ee569d4aafc287fc738 <https://
>     gitlab.freedesktop.org/fziglio/spice/-/commit/
>     fb018b3fbb26f38b2ffb0ee569d4aafc287fc738>
>      > - too old Fedora (not related to these changes)
>      > https://gitlab.freedesktop.org/fziglio/spice/-/commit/
>     a4525e204ef8b7e3beb3709823029e27de633d7a <https://
>     gitlab.freedesktop.org/fziglio/spice/-/commit/
>     a4525e204ef8b7e3beb3709823029e27de633d7a>
>      > - compatibility with pretty old GCC
>      > https://gitlab.freedesktop.org/fziglio/spice/-/
>     commit/6a2c24fd5c088cb3b016a40965882e98f010b583 <https://
>     gitlab.freedesktop.org/fziglio/spice/-/
>     commit/6a2c24fd5c088cb3b016a40965882e98f010b583>
> 
> 
> Frediano, where did you take the 10 from ?
> Shouldn't it check if the gcc version is 16 (or even 20) ?
> 
> 
> 
>     I'm concerned about the old GCC compatibility commit. I think it would
>     be more robust if designated initializer feature checks were added to
>     configure.ac <http://configure.ac> and meson.build instead.
> 
>     That way you don't have to worry about how old or new the compiler
>     is or
>     if it implements the necessary GCC extensions, or implements them
>     correctly.
> 
> 
> Do you mean compiling a simple program with designated initializers in 
> meson/configure ?

That's exactly what I mean.

Regards,
Nicholas Vinson

> 
> Regards,
>      Uri.
> 
> 
>     Regards,
>     Nicholas Vinson
> 
>      >
>      > Do they sound good?
>      > I suppose the compatibility one could be merged.
>      >
>      > Regards,
>      >    Frediano
> 

