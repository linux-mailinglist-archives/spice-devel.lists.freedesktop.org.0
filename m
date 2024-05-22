Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C16A8CBCB9
	for <lists+spice-devel@lfdr.de>; Wed, 22 May 2024 10:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9454910E08B;
	Wed, 22 May 2024 08:13:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=zoho.com header.i=ToddAndMargo@zoho.com header.b="TGKrPHGK";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 903 seconds by postgrey-1.36 at gabe;
 Wed, 22 May 2024 08:13:49 UTC
Received: from sender4-pp-o91.zoho.com (sender4-pp-o91.zoho.com
 [136.143.188.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85CE10E08B
 for <spice-devel@lists.freedesktop.org>; Wed, 22 May 2024 08:13:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1716364724; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=V0NWSdK6oMruhv2GTNPBgT6uNGzPsH13WPsiJsZv2LitvHp0TYpurDENhwPjy9ue9qo9fiGlCEAGitwEpJt0zrdXsQIuL0hI6CrgRomlKOBc/aWHhKIpdWoVLdb9KQbAxnvoNaLGtvS6HbfJs90TIHw9JKV065BIsD6TXI0IjSE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1716364724;
 h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc;
 bh=o8s8dT8qjuotEsKO0fTHh+6nlC+vCKIqoXJdLmUmy1k=; 
 b=Eq0NAYiO28q5mS/bw3ze27v2gElx9V68x0W2P/yNij5caamYsMUeGdPYgG0m8FRByKfCBGXYkaDruwp3eExXJyMODzwY8CLHwWeNw7hsSMrc0E2GFBMFlhmP3CD2NUBn20eAZPm6JoUo2+u7rQJCs/6NSHCw0SdWkibo1ZSAE04=
ARC-Authentication-Results: i=1; mx.zohomail.com; dkim=pass  header.i=zoho.com;
 spf=pass  smtp.mailfrom=ToddAndMargo@zoho.com;
 dmarc=pass header.from=<ToddAndMargo@zoho.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1716364724; 
 s=zm2022; d=zoho.com; i=ToddAndMargo@zoho.com;
 h=Message-ID:Date:Date:MIME-Version:From:From:Subject:Subject:To:To:Content-Type:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To:Cc;
 bh=o8s8dT8qjuotEsKO0fTHh+6nlC+vCKIqoXJdLmUmy1k=;
 b=TGKrPHGKqft7Lp63iDzRuvRjcgVWGDfAJg08d7RHH4/pcHVw6ET/z56R1zrQ4Vtw
 60tfOtUWJufHdO88Nb2nUkbEC3ACyt2Q46HRTJBk2HqJRqoJc7MwzLH9UyspA9wP2NR
 NDCtFLfIxatFvE+GD99w+1EO82/3AR0AIQOnUBow=
Received: by mx.zohomail.com with SMTPS id 1716364722659797.9991047192203;
 Wed, 22 May 2024 00:58:42 -0700 (PDT)
Message-ID: <e8572889-db80-43c3-aae2-40c2866c5201@zoho.com>
Date: Wed, 22 May 2024 00:58:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: ToddAndMargo <ToddAndMargo@zoho.com>
Subject: vdagent drag and drop question
To: Spice Devel <spice-devel@lists.freedesktop.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Feedback-ID: rr08011227af7fe45f941493b4141d8d9a0000d6d006d0f01266bf9d3e8c7fda9dbc91e89003ba8646e33e22:zu08011226b353a2b8a58e5d60cf1ca0660000670185dacf7d821e1c6eb23e07610261a081d52fe177b12d:rf08011226bf598ac7f171ba2cc4ab7117000037df2e2be13fd1908f4fcfbd164497aaddee6938aaa83790:ZohoMail
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

Hi All,

Host:
    Fedora 39
    spice-server-0.15.1-3.fc39.x86_64
    spice-glib-0.42-3.fc39.x86_64
    spice-gtk3-0.42-3.fc39.x86_64
    spice-vdagent-0.22.1-6.fc39.x86_64
    qemu-kvm-8.1.3-5.fc39.x86_64

VM:
    Windows 11 23H2
    Virtio-win-driver-installer 0.1.240
    Virtio-win-guest-tools  0.1.240

I can drag and drop a file from my Linux host to a
qemu-kvm Windows 11 virtual machine but I can not
do it in reverse

What am I doing wrong?

-T

-- 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Computers are like air conditioners.
They malfunction when you open windows
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
