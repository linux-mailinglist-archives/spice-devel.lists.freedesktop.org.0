Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B480D1E26A1
	for <lists+spice-devel@lfdr.de>; Tue, 26 May 2020 18:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5ED66E221;
	Tue, 26 May 2020 16:15:50 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1693C6E221
 for <spice-devel@lists.freedesktop.org>; Tue, 26 May 2020 16:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BW+yw4AYOVLq72Lo6jDyzhfHq2FPuXW31CSYEQWfD5E=; b=KaxZpE612Hf9lmDJ/yzkW7wvU0
 lH78jiwy/ej2aFmkJsk7inF6BMDEJhYmdPOsWcp7Bs+/29wIE1Lb2VcKN84RTBFVFQVsN0Iue1Axp
 S+wOTSrIK9MAHDuYiEO43vXujLSUH+AozZqOwRTvZ3Oo88B7pgqzoM32Ae4NYKp68f84=;
Received: from jwhite.vpn.codeweavers.com ([10.69.141.101] helo=[10.0.0.11])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1jdcF1-0004B0-RC; Tue, 26 May 2020 11:15:49 -0500
To: Frediano Ziglio <fziglio@redhat.com>
References: <9de80072-fffc-9155-d2dc-9aab7ad73745@codeweavers.com>
 <80043775.28156178.1590507849418.JavaMail.zimbra@redhat.com>
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <116c3c39-ac3c-6ae2-290d-93c38a6c75ae@codeweavers.com>
Date: Tue, 26 May 2020 11:15:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <80043775.28156178.1590507849418.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-Spam-Score: -26.3
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/26/20 10:44 AM, Frediano Ziglio wrote: > I suppose you
 are talking about the unix socket for vdagent, right? Right, but the same
 mechanism works well for adding audio for example (but you have pulseaudio
 write to a socket). 
 Content analysis details:   (-26.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -20 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
Subject: Re: [Spice-devel] Brainstorming help with x11spice on socket
 permissions across users
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 5/26/20 10:44 AM, Frediano Ziglio wrote:
> I suppose you are talking about the unix socket for vdagent, right?

Right, but the same mechanism works well for adding audio for example 
(but you have pulseaudio write to a socket).

> 
>>
>> Hi all,
>>
>> I'm trying to get x11spice and spice-html5, at least as packaged for
>> Fedora, into a pretty much 'turn key' state.
>>
>> I've got 3 use cases.  The first is user A sharing their current
>> desktop, either for themselves, or to get help.  That case is largely
>> done, imho, modulo some documentation and perhaps some streamlining.
>> The second is user A getting access to a new session for themselves.  I
>> don't feel blocked on this case; the work should be straight forward, if
>> fiddly (I may regret those words; doing a secure 'su' like function out
>> of apache may be harder than I think).
>>
> 
> I would check for the 2nd case if the session is maintained in case you
> are using SystemD. I suppose the user could want to launch a background
> X11 session and disconnect from the system.

Yeah, good point.  In fact, gdm had a cool bug in stock Fedora 32 that 
was fixed by a recent update.  (If you logged in via xdmcp to any user 
other than the console user, the console switched to the new user).

> 
>> The 3rd case, however, has me troubled.  This is the case that user A
>> (potentially apache) starts x11spice which then does an xdmcp request to
>> gdm, and eventually supports a log in by user B.  This makes it
>> challenging to provide a way for user B to launch a spice agent or a
>> pulseaudio daemon and have it securely connect back to the spice process
>> started by user A.  The approach I've used in the past is to have a
>> privileged binary use information from an X atom to adjust socket
>> permissions.  But that feels unsatisfying, and it seems to me that this
>> is an area with a lot of modern thinking that I've largely missed.
>>
> 
> As far as I know in the normal (physical) case in case of XDMCP two X11
> sessions are involved and X11 client have to reconnect to another session.
> So for symmetry you should reconnect the client and have separate socket
> for vdagent. Sockets are associated (permission) to different users and
> processes are associated to same user.
> 
>> As an added complexity, in the ideal case, you have a vdagent running as
>> user A during the login process, which knows to reap itself and give way
>> to a vdagent launched by user B.
>>
>> I was hoping that others would have modern instincts on how to more
>> correctly implement the third use case.  Clue bats or other ideas welcome.
>>
>> Cheers,
>>
>> Jeremy
> 
> To be honest I don't remember last time I used XDMCP.

Yeah, the option I'm leaning towards is discarding that use case.  (And, 
tbh, the point of this exercise it is mostly to increase the overall 
usability; I don't really have a specific problem I'm trying to solve).

Cheers,

Jeremy
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
