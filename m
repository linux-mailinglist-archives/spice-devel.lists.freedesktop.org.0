Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21309352EF6
	for <lists+spice-devel@lfdr.de>; Fri,  2 Apr 2021 20:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5A76EEA7;
	Fri,  2 Apr 2021 18:10:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 926 seconds by postgrey-1.36 at gabe;
 Fri, 02 Apr 2021 18:10:02 UTC
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 251176EEA7
 for <spice-devel@lists.freedesktop.org>; Fri,  2 Apr 2021 18:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=urwurAYbB8MSZfrahmAQtLee8xGqViCsPG9l9ZsEdZo=; b=mrUsh2OWgIMy+nqnr0dq9tvN2Q
 6JxkhLRTKq2dvcY6vQGcbd6cc5xcvsOAQaYVESLIbfpYSYiIntBirJ6Ieq7H3crOMkxdHySoZOLPP
 rPjiNcyhS53UOlpRgpZ/7DODB52VIUJDlpa4CsXDmNHsq51el6wmsjRq8I+bYOlr00HI=;
Received: from jwhite.mn.codeweavers.com ([10.69.137.101])
 by mail.codeweavers.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <jwhite@codeweavers.com>)
 id 1lSO0B-00066I-9b
 for spice-devel@lists.freedesktop.org; Fri, 02 Apr 2021 12:54:35 -0500
To: spice-devel@lists.freedesktop.org
References: <CH2PR03MB52379A6D5EB225218C5E6B6FD37C9@CH2PR03MB5237.namprd03.prod.outlook.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <d7326b3e-1847-24f1-6bf3-2ae4a713863d@codeweavers.com>
Date: Fri, 2 Apr 2021 12:54:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CH2PR03MB52379A6D5EB225218C5E6B6FD37C9@CH2PR03MB5237.namprd03.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Spice-devel] FIXME advice
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Peter,

Do you have any profiling or any evidence that suggests that this is a =

cause for a slow down?  When I wrote that FIXME, it was a theoretical, =

possible problem, not a certain one.  I don't know that it would be =

worth changing without evidence of a problem.

As far as understanding this specific code, your best bet is to spend =

some time with debugging on and watching messages flow.  It's likely a =

bit more than you need, but probably would be helpful to read the =

protocol documentation:
   https://www.spice-space.org/spice-protocol.html

Also, if you're not really comfortable with Javascript and network =

protocols, this may be a challenging bug to address.

Cheers,

Jeremy

On 3/30/21 10:11 PM, Browning, Peter wrote:
> Good evening,
> =

> I am attempting to address the FIXME in the spice-html5 wire.js class:
> =

>     /* =A0FIXME - it would be faster to revise the processing code to han=
dle
>      =A0 =A0 =A0 =A0 ** =A0 =A0 =A0 =A0 =A0multiple fragments directly. =
=A0Essentially, we
>     should be
>      =A0 =A0 =A0 =A0 ** =A0 =A0 =A0 =A0 =A0able to do this without any sl=
ice() or
>     combine_array_buffers() calls */
> =

> =

> I am having difficulties understanding the code surrounding this =

> however. I was hoping that I could get some advice or insight into the =

> way the buffer and callback structure works. Specifically, how the =

> process_message function processes data and how the requesting and =

> needed functions interact. I am working to make optimizations to improve =

> client side performance on low-end machines. Any insight or advice you =

> can offer me would be of great help.
> =

> Best regards,
> =

> Peter Browning
> =

> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel
> =


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
