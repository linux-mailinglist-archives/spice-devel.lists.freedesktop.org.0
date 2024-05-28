Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E7C8D1522
	for <lists+spice-devel@lfdr.de>; Tue, 28 May 2024 09:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F74210E12E;
	Tue, 28 May 2024 07:15:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=zoho.com header.i=ToddAndMargo@zoho.com header.b="EH0U//6o";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from sender4-pp-o91.zoho.com (sender4-pp-o91.zoho.com
 [136.143.188.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E1710E12E
 for <spice-devel@lists.freedesktop.org>; Tue, 28 May 2024 07:15:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1716880546; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Y+1iGHOoJeUgTHS5AK1ouwddebNC8zmIYDhI9cWOqovETLXBRDEMO8FgaGUP9y13T6mrVKr4p9IJKd+/3sw8yCHKN26ZDsTZ/bVZI0lolZbGjk7SSEhbw6YgMjxpjXufNHnKdR4iss/p6WemQKs0q3rzsy5E6epnitLMRwdSaEc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1716880546;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=QZeBJE3OQucg4J6YukmsqVQwDtzzq8XsSBit2P+bJXc=; 
 b=l3WBFe5HbrmRsNpWYZswMl/0tCo5J4Y7QE9Z+G0+fc09w5gn53Q3T1MeaMG7qdr1zoXAlA8+w5yX3EkCyIOjUPui/8vzPqkCom9DLg+2fMCikwETNEtxvWS2NoOK/kfsld/3cgARJKBkPYtGPPprAEOLWH7Vp23hN2YL6+mkNnQ=
ARC-Authentication-Results: i=1; mx.zohomail.com; dkim=pass  header.i=zoho.com;
 spf=pass  smtp.mailfrom=ToddAndMargo@zoho.com;
 dmarc=pass header.from=<ToddAndMargo@zoho.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1716880546; 
 s=zm2022; d=zoho.com; i=ToddAndMargo@zoho.com;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
 bh=QZeBJE3OQucg4J6YukmsqVQwDtzzq8XsSBit2P+bJXc=;
 b=EH0U//6ojOsraeSqWKuMBkPEvo+kWgHVE+RdIOKrTKQi0wd0KOFTUbyiIOYu2LWX
 mRVtzB9Qf+figQDbKO8mzwh3WfwYV5gXzwp2KW/WV2kXvGN/9k2CSJVOa8pzDGX0pRV
 9du/8lZD4z2KCgG5xJbwkQ8L/y/R3ktxb1W9aXAM=
Received: by mx.zohomail.com with SMTPS id 1716880544854958.6698078564791;
 Tue, 28 May 2024 00:15:44 -0700 (PDT)
Message-ID: <4671c4c8-f6b0-49ba-8459-973054f0399b@zoho.com>
Date: Tue, 28 May 2024 00:15:43 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: vdagent drag and drop question
To: Victor Toso <victortoso@redhat.com>
Cc: Spice Devel <spice-devel@lists.freedesktop.org>
References: <e8572889-db80-43c3-aae2-40c2866c5201@zoho.com>
 <crqqaup72f7wwuig3w5rhjgwqdvwekkiy7mfkk3oyck4dimlq6@blcegm2qm4d2>
 <be5bc126-84c1-4223-9c5f-f35512f847e3@zoho.com>
 <geqsewyaswk233fgk4chhibmftm3h457kej6c7g6v35e3umy2a@2ynwa4tsi5nm>
Content-Language: en-US
From: ToddAndMargo <ToddAndMargo@zoho.com>
In-Reply-To: <geqsewyaswk233fgk4chhibmftm3h457kej6c7g6v35e3umy2a@2ynwa4tsi5nm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Feedback-ID: rr08011227dc4ac6490aadc0cdafc0fc6a00002bd7b60c2155b6aec7bd92b218fb2d07a7819084db541e3722:zu08011226e087245a5f4fcf663d325bf70000d49c813eb9b93bf219dc41f864bf2000790503d0f217256c:rf080112262e6857de6297d0e57f76507800007718b4de41e01b5cfc83376589529973625e7eb80dd2b125:ZohoMail
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

On 5/28/24 00:01, Victor Toso wrote:
> Hi,
> 
> On Mon, May 27, 2024 at 12:22:54PM GMT, ToddAndMargo wrote:
>> On 5/27/24 08:07, Victor Toso wrote:
>>> On Wed, May 22, 2024 at 12:58:41AM GMT, ToddAndMargo wrote:
>>>> Hi All,
>>>>
>>>> Host:
>>>>      Fedora 39
>>>>      spice-server-0.15.1-3.fc39.x86_64
>>>>      spice-glib-0.42-3.fc39.x86_64
>>>>      spice-gtk3-0.42-3.fc39.x86_64
>>>>      spice-vdagent-0.22.1-6.fc39.x86_64
>>>>      qemu-kvm-8.1.3-5.fc39.x86_64
>>>>
>>>> VM:
>>>>      Windows 11 23H2
>>>>      Virtio-win-driver-installer 0.1.240
>>>>      Virtio-win-guest-tools  0.1.240
>>>>
>>>> I can drag and drop a file from my Linux host to a
>>>> qemu-kvm Windows 11 virtual machine but I can not
>>>> do it in reverse
>>>>
>>>> What am I doing wrong?
>>>
>>>   From Guest to Client, drag-and-drop does not work.
>>>   From Client to Guest, it should. The data of the file is copied
>>> by the client (e.g: spice-gtk) and provided to the guest agent
>>> which creates the file with the contents.
>>
>> That explains it.  Thank you.
>>
>> Is there a file sharing option somewhere (other
>> that Samba)?
> 
> In SPICE? We have also webdav channel, it requires spice-webdavd
> daemon running in the guest plus the client being build with
> phodav option enabled.
> 
> Other than that, it depends on what you are using to manage the
> VM. QEMU has quite a few options, the most popular nowadays is
> virtiofs I think
> 
>      https://libvirt.org/kbase/virtiofs.html
> 
> Cheers,
> Victor

Thank you!
