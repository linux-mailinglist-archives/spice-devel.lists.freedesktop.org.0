Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 528338D0CCD
	for <lists+spice-devel@lfdr.de>; Mon, 27 May 2024 21:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8A010E4B7;
	Mon, 27 May 2024 19:23:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=zoho.com header.i=ToddAndMargo@zoho.com header.b="TKadh0Dg";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sender4-pp-o91.zoho.com (sender4-pp-o91.zoho.com
 [136.143.188.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A27310E4B7
 for <spice-devel@lists.freedesktop.org>; Mon, 27 May 2024 19:23:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1716837776; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=mgo3qT9scNMNnyM+TZ5Y+vrf60+YCxuVHU5uP+3XihmATtVyo2KVn4pkXh2mBoyNVmfsnnWkQu4p05L0KBoqNvW6UHluS9usXVr6ADOEATQanGVRqMmX+LHNzZVrMLzVlJtJ+hJMcIsdNfSVJokqfdFLTwgJl8fEcRHFDik09MQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1716837776;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=R8So1ZHB2v3I062ABKdFuhwAc/89KtbxLsTkhNtLHb0=; 
 b=CzlJPDnYzC8k1MgXk15/LZce62hTThLCs7wBUSXfA5coU/OWJwZi9bBei5WQKnO++3jlMux/DXsplP1gS5Xw3qM77nBKAjvzdEwJMdurAS7qwvTqOv1S4mW1fXIVxIzs877PI3DXPug1haPss7hjMtFPRN7fc3LKeQ1XTQbsAos=
ARC-Authentication-Results: i=1; mx.zohomail.com; dkim=pass  header.i=zoho.com;
 spf=pass  smtp.mailfrom=ToddAndMargo@zoho.com;
 dmarc=pass header.from=<ToddAndMargo@zoho.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1716837776; 
 s=zm2022; d=zoho.com; i=ToddAndMargo@zoho.com;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
 bh=R8So1ZHB2v3I062ABKdFuhwAc/89KtbxLsTkhNtLHb0=;
 b=TKadh0DgOIlHF+oStYerdR53uRD0y5sSY14SYAQdzuEHThFhpfe9v9/wVHLefIIo
 RHbc5P1lWLMTPfRxLXNi5g5T56rff+DsK2QCEvlvdGLyeZspxty6VGrkxIf+U2Nuhaa
 UQQn5xUCcAkDY9uA6ETcXK20sQpOExkeRedhhF2g=
Received: by mx.zohomail.com with SMTPS id 1716837775275513.6043683883016;
 Mon, 27 May 2024 12:22:55 -0700 (PDT)
Message-ID: <be5bc126-84c1-4223-9c5f-f35512f847e3@zoho.com>
Date: Mon, 27 May 2024 12:22:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: vdagent drag and drop question
To: Victor Toso <victortoso@redhat.com>
Cc: Spice Devel <spice-devel@lists.freedesktop.org>
References: <e8572889-db80-43c3-aae2-40c2866c5201@zoho.com>
 <crqqaup72f7wwuig3w5rhjgwqdvwekkiy7mfkk3oyck4dimlq6@blcegm2qm4d2>
Content-Language: en-US
From: ToddAndMargo <ToddAndMargo@zoho.com>
In-Reply-To: <crqqaup72f7wwuig3w5rhjgwqdvwekkiy7mfkk3oyck4dimlq6@blcegm2qm4d2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Feedback-ID: rr080112278f379e7517953292420faf2c00001166edf3e5360e7d980ff1a869492b358166d596e55ead54d2:zu080112262646a1af7a3f6957eb0f7b9000005875d524694ea19391462a7736ec08b7620c271aa9739ecf:rf08011226ac8dfe3186df49e92c64582c0000efabfee042a330328287c3b12347a53f170b42be2ad0378d:ZohoMail
X-ZohoMailClient: External
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

On 5/27/24 08:07, Victor Toso wrote:
> On Wed, May 22, 2024 at 12:58:41AM GMT, ToddAndMargo wrote:
>> Hi All,
>>
>> Host:
>>     Fedora 39
>>     spice-server-0.15.1-3.fc39.x86_64
>>     spice-glib-0.42-3.fc39.x86_64
>>     spice-gtk3-0.42-3.fc39.x86_64
>>     spice-vdagent-0.22.1-6.fc39.x86_64
>>     qemu-kvm-8.1.3-5.fc39.x86_64
>>
>> VM:
>>     Windows 11 23H2
>>     Virtio-win-driver-installer 0.1.240
>>     Virtio-win-guest-tools  0.1.240
>>
>> I can drag and drop a file from my Linux host to a
>> qemu-kvm Windows 11 virtual machine but I can not
>> do it in reverse
>>
>> What am I doing wrong?
> 
>  From Guest to Client, drag-and-drop does not work.
>  From Client to Guest, it should. The data of the file is copied
> by the client (e.g: spice-gtk) and provided to the guest agent
> which creates the file with the contents.

That explains it.  Thank you.

Is there a file sharing option somewhere (other
that Samba)?
