Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7A988AD4B
	for <lists+spice-devel@lfdr.de>; Mon, 25 Mar 2024 19:13:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1D5410E362;
	Mon, 25 Mar 2024 18:13:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=iki.fi header.i=@iki.fi header.b="bPfKekjL";
	dkim-atps=neutral
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 471 seconds by postgrey-1.36 at gabe;
 Mon, 25 Mar 2024 18:13:01 UTC
Received: from lahtoruutu.iki.fi (lahtoruutu.iki.fi [185.185.170.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6792E10E362
 for <spice-devel@lists.freedesktop.org>; Mon, 25 Mar 2024 18:13:01 +0000 (UTC)
Received: from mail.home (82-181-196-180.bb.dnainternet.fi [82.181.196.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: timo.lindfors)
 by lahtoruutu.iki.fi (Postfix) with ESMTPSA id 4V3LSL5zV3z49PyQ;
 Mon, 25 Mar 2024 20:05:06 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu; 
 t=1711389907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2gYqttna5RYIWg1ctrXj/JcQYIJNixUHXL4FGMN7Ml0=;
 b=bPfKekjLPwuBte0CvSEosRdWySHg82tE/q4Hijf6oRCgRbMYEM8jdkobb75glhX4KwQ5pE
 XJvJ9h9yRgM2IQ/Q3/kaEJoNLzk7VxuDhM/i5oK3FIHdsePWx0USq3WAwify051oAK+Cx9
 JsdMhEENbpS6A1D/EiV2B2BoFQfKRPyw7pWv97ncds9PW9K3j9iFYzYK3FU3oA3J4CIWE/
 ygQCrL427qHULimatwsKT1yLOXdroqICX4LuZ360KsOdAYbBjqJkROeDy8QK2f8RLAQW+p
 YxlDaq3FFJRRyNAKVlTmWux4Q2FwPpV9cpAHg8iR0Aa74eYuX3Ebw8fNSryPNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=lahtoruutu; t=1711389907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2gYqttna5RYIWg1ctrXj/JcQYIJNixUHXL4FGMN7Ml0=;
 b=tqB46P7atTmX3v//GOhFJ7czBMr9iC3nP0UIYXdvMs8hTv3rj79WtCI9BkMddU5ONBm53V
 rk5uIbds7suk74ivUt0T3Lx3CtjlzFHZzvZcgvCNbcOze5gNlpLzTqGsV0FFLZn+nvLLaN
 K4PF7xQ5nu5k3vhkIsDw/5/8zGfTHA44HiOzSE+htgf+Ax620Omo+iBMmJepg7L86yK7H9
 Y3zwFvBPjP45oNO1RWls/gh+Qz+PshS5+p05fwjtVCLu26r1REQoc69C5QhSOGGDmyErm+
 afocttkv6dbzFR7as4ULb+7Oj/uyEtyQ49fNghywIupRwq/hY1XhwedFCwIpyA==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=timo.lindfors smtp.mailfrom=timo.lindfors@iki.fi
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1711389907; a=rsa-sha256; cv=none;
 b=g72dBHqLPIyg1poemFmZEv1Bz0T1VfpyEith5ZB4k2i1LoVOO4Sd+4QsUdWk4NkXBe7PZX
 hNibVgaehX7HQdDgxxDLn4pGjrFwbagFpYglcSmQADiHqSZskDldJhXvmkT+DRdxGcbIXv
 JJUOPrIoJW4hkJQG7AQgwCdqyXN7wglk89keW6uRR498PXpbJIFnPoYNvCFSqv2cIEI5f+
 YU5RGXF4Ckv11ISEw3oWa9iX0dRXHEId3Je63jd7zNoqoP3j7y5/2Tel6dNnaiyNM7lss3
 9/thyr5FNu0hNjwJcjcgYOYYzr1VwzUQmiOrwE0epFqm/hUlZAVyUaSipzJKeQ==
Received: from gateway2.home ([10.0.9.1] helo=dummy.faircode.eu)
 by mail.home with esmtp (Exim 4.89)
 (envelope-from <timo.lindfors@iki.fi>)
 id 1rooh0-0007j6-Bi; Mon, 25 Mar 2024 20:05:06 +0200
Date: Mon, 25 Mar 2024 20:05:02 +0200 (GMT+02:00)
From: Timo Lindfors <timo.lindfors@iki.fi>
To: presi300work <presi300work@proton.me>
Cc: spice-devel@lists.freedesktop.org
Message-ID: <5ef26de4-0c0a-45b8-8b1f-fa78eb39be5b@iki.fi>
In-Reply-To: <886Bd_iZ_IAFax3kBixdEnBZlHJ27EU9hxVi4MvWzxMUUyBwMuwSJbEuW3t32uXgpUUf0H_-VeBMQKnF2gSMN82kbA1-9Lkxqqv2n0HJuYc=@proton.me>
References: <886Bd_iZ_IAFax3kBixdEnBZlHJ27EU9hxVi4MvWzxMUUyBwMuwSJbEuW3t32uXgpUUf0H_-VeBMQKnF2gSMN82kbA1-9Lkxqqv2n0HJuYc=@proton.me>
Subject: Re: The OSX Spice client is in a horrible state.
MIME-Version: 1.0
Content-Type: multipart/alternative; 
 boundary="----=_Part_3_34659021.1711389903803"
X-Correlation-ID: <5ef26de4-0c0a-45b8-8b1f-fa78eb39be5b@iki.fi>
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

------=_Part_3_34659021.1711389903803
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

Do you mean the pre-built bundle? I think the os x users I know are using virt-manager from homebrew instead.

-Timo

Mar 25, 2024 11:31:38 presi300work <presi300work@proton.me>:

> I am sorry if this sounds a bit rude, but it really is in a horrible state. It's UI is old and slow, it doesn't use the global menu system and it leaks memory all over the place. I'm sending this e-mail with the hope of someone seeing it and either taking a closer look at the OSX spice client or getting back to me to ask for more details.
> 
> Alternatively, if it's no longer supported, I request that some sort of indication be put about it on the spice website.
> 
> 
> 
> - Kind regards, presi300.
> 

------=_Part_3_34659021.1711389903803
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
 <head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head>
 <body>
  <span dir="ltr" style="margin-top:0; margin-bottom:0;">Hi,</span>
  <br>
  <br><span dir="ltr" style="margin-top:0; margin-bottom:0;">Do you mean the pre-built bundle? I think the os x users I know are using virt-manager from homebrew instead.</span>
  <br>
  <br><span dir="ltr" style="margin-top:0; margin-bottom:0;">-Timo</span>
  <br>
  <div>
   <div dir="ltr">
    <p>Mar 25, 2024 11:31:38 presi300work &lt;presi300work@proton.me&gt;:</p>
   </div>
   <blockquote style="margin:0;border-left:3px solid #ccc; padding-left:10px">
    <div style=" background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 14px;font-family: Arial, sans-serif">
     I am sorry if this sounds a bit rude, but it really is in a horrible state. It's UI is old and slow, it doesn't use the global menu system and it leaks memory all over the place. I'm sending this e-mail with the hope of someone seeing it and either taking a closer look at the OSX spice client or getting back to me to ask for more details. 
     <br>
    </div>
    <div style=" background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 14px;font-family: Arial, sans-serif">
     <br>
    </div>
    <div style=" background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 14px;font-family: Arial, sans-serif">
     Alternatively, if it's no longer supported, I request that some sort of indication be put about it on the spice website. 
     <br>
    </div>
    <div style=" background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 14px;font-family: Arial, sans-serif">
     <span><br></span>
    </div>
    <div style=" background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 14px;font-family: Arial, sans-serif">
     <span><br></span>
    </div>
    <div style=" background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 14px;font-family: Arial, sans-serif">
     <span><br></span>
    </div>
    <div style=" background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 14px;font-family: Arial, sans-serif">
     <span>- Kind regards, presi300.<br></span>
    </div>
    <div style=" background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 14px;font-family: Arial, sans-serif">
     <br>
    </div>
   </blockquote>
  </div>
 </body>
</html>
------=_Part_3_34659021.1711389903803--
