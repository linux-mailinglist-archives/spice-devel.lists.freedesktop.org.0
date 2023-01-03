Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EE265C63D
	for <lists+spice-devel@lfdr.de>; Tue,  3 Jan 2023 19:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1A510E403;
	Tue,  3 Jan 2023 18:28:10 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.tol.fr (mail.tol.fr [82.66.50.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 950E710E3FD
 for <spice-devel@lists.freedesktop.org>; Tue,  3 Jan 2023 18:28:06 +0000 (UTC)
Message-ID: <168a5f89-f3f6-d274-05b4-80d16e6802c7@couderc.eu>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=couderc.eu; s=2017;
 t=1672770484; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rf396dAIz28BLOupmVm0p5OkltgWsHK/hYpqL/yTAOg=;
 b=pRk6IhpsHYfhEY/qK30bIPBbCPsKgxbj/TLQvG9Yc7Q1DgjhODsw7CInw4xihEK114A3uw
 GRo7QLno36p38a32GAfAH4ohJnohJ0BKslOdoYWOMNgX2O+/EDu/baA4xufcUpDtaU/xZs
 fHIOiDk0VH4F9Pgyjb2r+RmJnpgHjHtnsvBt7OSUIape/x313gXYdsjK7CnKeOMEMmVPe/
 ye6d7SF8gWq8eAxVhscTnBa2Ujrrct5L3YAogxW/Da27qO4xyVUR86qskG4UeNqO1heaSW
 KIdmmDQUn1p5QVv+Zkk/UJ5g7R9TvFgVX1iTVWebBLnPENQtJSq2pq8Vun5m2w==
Date: Tue, 3 Jan 2023 19:28:03 +0100
MIME-Version: 1.0
To: Victor Toso <victortoso@redhat.com>
References: <a95fc8c4-6384-4b9a-7e09-878dab49c164@couderc.eu>
 <CAMVti-_3iqZqpu=qbq=z+pfSZAEQPmAStFFUMRRseqJn_=UFWg@mail.gmail.com>
 <d7532e7f-5845-34bf-7ceb-1e47d856be7e@couderc.eu>
 <20230103133705.jpzra4n63fj4velv@tapioca>
Content-Language: fr
From: Pierre Couderc <pierre@couderc.eu>
In-Reply-To: <20230103133705.jpzra4n63fj4velv@tapioca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=couderc.eu;
 s=2017; t=1672770484; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rf396dAIz28BLOupmVm0p5OkltgWsHK/hYpqL/yTAOg=;
 b=mf+nznMFo87Q94rbhy/OKwRc0j1zX1Z06qoLvcET1CPPFVbwTCnYzbsqLJFXqZVv/7xvoQ
 A4X5VRBpMuySIGOPdMezzp6BeNqmz0xbqSRbtX4pI1ySRGJO3+ovK1N03aTHOj/QWkR7Ct
 IK8z3GX7rL0nMa/vRQA3O1WmSQbzYhniPEnAOl5M+TE5Ea2gw46WVCDDXs4axyAy80QyBE
 Qyl9kBB9RsYJflY2p6KdXzKbu1FuQ2LWn/x7ZkRr7Z/JsrBF7GTIEhcE2pDvg46eKNhJpb
 d9TCZTR77ixJRXTWvgOnzONXS65GbtwSS30BeiaPezrjAFnyx0jDcKCkE6upUw==
ARC-Seal: i=1; s=2017; d=couderc.eu; t=1672770484; a=rsa-sha256; cv=none;
 b=mOqifjYo85mRYArJQIBIz+OYKGOzcC6oXYXOURkHVjWweThPB9cdRXuqs59xznrbO0HRzGkEMi+oJ8SoyBhf+VM54WI3IlSvfdlTUyKZQGOxfG7RHIoYys39xOZlr9MMVwjn7/GNxS5ms74n4rleMP46jAfN+jWR3LbqPWC0GAqeK9CAWn6szcf24/rj+RA0w6v8Oy/QbwcZkzK5YRmp+uzFbyPCEuqxvF9k/fvXZAe95MCiDpT69s0F/Fbb1l6TW0sBdtHZYEzfq+sw1hpA7H+z+8ffo7Gim7Y8GiNf14Rd5Mk6TMuXMhBXgcNyzzgZRk4QXvyt8X35+PL6KYxb9g==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=tol smtp.mailfrom=pierre@couderc.eu
Subject: Re: [Spice-devel] In spicy,
 how to change shft-F12 to ungrab the mouse ?
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
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


Le 1/3/23 à 14:37, Victor Toso a écrit :
> Hi,
>
> On Tue, Jan 03, 2023 at 09:51:42AM +0100, Pierre Couderc wrote:
>> Thank you very much.
>>
>> But it does not work I get :
>>
>> option parsing failed: Unknown option --hotkeys=release-cursor=ctrl+alt
>>
>> Moreover,I find nowhere a :
>>
>> man spicy
> Spicy is not really meant to be used by final users. It is a
> testing tool. It works but you should consider using
> virt-viewer/remote-viewer instead.
In fact, spicy is enough for me...
>
> spicy runs a restore_configuration() function that loads a
> settings file in $XDG_CONFIG_HOME/spicy/settings -- it might work
> to just add, under "general" the grab-sequence="ctrl+alt"
Thank you, see too my answer to Uri lublin
