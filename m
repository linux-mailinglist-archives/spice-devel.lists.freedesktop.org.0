Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DD5365A9D
	for <lists+spice-devel@lfdr.de>; Tue, 20 Apr 2021 15:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B586E508;
	Tue, 20 Apr 2021 13:56:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D92B46E508
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 13:56:49 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id k17so5691488edr.7
 for <spice-devel@lists.freedesktop.org>; Tue, 20 Apr 2021 06:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=mQJViqF0g9lZL+gCCddYIf9lcJpV0DB4lZ3rEVjNwms=;
 b=p+NMMeT+XMVxKbXSyk4K7k0uYK/2lqu7761X6cGSwuG7U8JPBvzf6sZjLzJsHJOsLa
 MExyiOpSrhbzCFY4FZBDtimCPr6v0yrbvfJ0uCPnZEmcNKZruLqpLabFxinQLxH7RMJ7
 suHg+13q72UuWGZWzURNJJkZg0I3UVC2AE9bGy/wJOcegHrSTCcAkCk+4gCBVRnCHVxh
 xzGNuSVyOvjIXi8GyjtLyOcUlVWt4VBtWri/LiS11W+DGqq6J0a4E80xqUkE/BNXk5eD
 Tt/7ciJDFzSFlAULH9Oho5v+GLh7fQXGw6U+ZAJbn0oThYkPcgG0pxIPSGm1slWA+ctE
 dhTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=mQJViqF0g9lZL+gCCddYIf9lcJpV0DB4lZ3rEVjNwms=;
 b=gPF1J4jIuKJJSJdTbQXAO2bgUv+KQe5dyAHRe6tAJpg22c2Bw7c5BdqccUQB9jAMhK
 O+sZb2/RyUoGeBKPJbND2fvtcFbSo/mwE1YhmN/C20/2hV7mu46CarzD1cLnXz4ppiij
 4MeGWumSqQGuLqh1hv1+QeTd9IJQIpsU1iGABTehqYvOgwLMoo7YJ2Ot6B8QtnJuJTvy
 mjyxKgbQCuAU+pLvKmrC0QURKSopHka7uv/T1KB8QvGYxSiV++2yE7K7iF7YWlr3OUOp
 OepldH9KER9P/Czwvk4ZP/T538OO79MoNMYJ4VlzhnsIMwnALk6MCnvdt+vtjmyT3k+G
 oCMg==
X-Gm-Message-State: AOAM532gdtjq2+QXr/bH2fELt12yJTemc2dylrW7L9IXaKU5TrB/1Kx6
 F1IAnUrnqiKJUfnt3lFOKDb21e2m2rM=
X-Google-Smtp-Source: ABdhPJy5Hi6JFborx4MA1EFFjjg8znCOR5xHYelSm2mXIMlGc4KQwDwk3Q1145aAWBU2tQO43Y1rKw==
X-Received: by 2002:aa7:cc15:: with SMTP id q21mr33343354edt.140.1618927008486; 
 Tue, 20 Apr 2021 06:56:48 -0700 (PDT)
Received: from [192.168.1.3] (93-48-172-72.ip258.fastwebnet.it. [93.48.172.72])
 by smtp.googlemail.com with ESMTPSA id u23sm2147841eds.8.2021.04.20.06.56.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Apr 2021 06:56:47 -0700 (PDT)
To: =?UTF-8?Q?Daniel_P=2e_Berrang=c3=a9?= <berrange@redhat.com>
References: <5861b1c3-a4f5-2faf-4dc7-dd8167ec3ea5@gmail.com>
 <YH68grWhEqF4lINL@redhat.com>
 <ec4c7b10-28dd-cfc8-3f68-96248352ae00@gmail.com>
 <YH7PBECpLUGLiOFN@redhat.com>
 <c1961ee5-6177-4358-f790-b05fcc12e299@gmail.com>
 <YH7bhgSp1+wZWX5e@redhat.com>
From: Germano Massullo <germano.massullo@gmail.com>
Message-ID: <b7a4522c-0b50-1e9e-784e-a048229f6c95@gmail.com>
Date: Tue, 20 Apr 2021 15:56:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YH7bhgSp1+wZWX5e@redhat.com>
Content-Language: en-US
Subject: Re: [Spice-devel] Fedora 34 guests can no longer paste from host
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

SWwgMjAvMDQvMjEgMTU6NDcsIERhbmllbCBQLiBCZXJyYW5nw6kgaGEgc2NyaXR0bzoKPiBJJ2Qg
c3VnZ2VzdCBmaWxpbmcgYSBCWiBhZ2FpbnN0IHNwaWNlLXZkYWdlbnQgcGFja2FnZQoKaHR0cHM6
Ly9idWd6aWxsYS5yZWRoYXQuY29tL3Nob3dfYnVnLmNnaT9pZD0xOTUxNTgwCgpUaGFuayB5b3Uh
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwaWNlLWRl
dmVsIG1haWxpbmcgbGlzdApTcGljZS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9zcGljZS1kZXZlbAo=
