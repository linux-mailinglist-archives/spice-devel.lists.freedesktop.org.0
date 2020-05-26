Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7101E2371
	for <lists+spice-devel@lfdr.de>; Tue, 26 May 2020 15:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E3EA6E1D7;
	Tue, 26 May 2020 13:55:51 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mail.codeweavers.com (mail.codeweavers.com [50.203.203.244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CBB6E1D7
 for <spice-devel@lists.freedesktop.org>; Tue, 26 May 2020 13:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=codeweavers.com; s=6377696661; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qYqqUrnrTxydlMOZWIdHIT7iNYOMsZxB17ohM6Lve8s=; b=Dq4bv3p0KYJ+almadJVwqbjfRw
 kVRkz0+T9H8HaiZ6yeA0UKEP0JqM7/oSSQE+S+lzpCw4PGyiWQuGmAZqPqX+1TOCSh2FYGCAM5Mws
 dxn4BNjVCWC/LWCXGhWNKm5DyQW0qAfW4UzRGxBP2iaumBR86AzhNSaJP7QE2lWCBmnw=;
Received: from jwhite.vpn.codeweavers.com ([10.69.141.101] helo=[10.0.0.11])
 by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <jwhite@codeweavers.com>)
 id 1jda3X-0001kL-P4
 for spice-devel@lists.freedesktop.org; Tue, 26 May 2020 08:55:49 -0500
To: spice-devel@lists.freedesktop.org
From: Jeremy White <jwhite@codeweavers.com>
Message-ID: <9de80072-fffc-9155-d2dc-9aab7ad73745@codeweavers.com>
Date: Tue, 26 May 2020 08:55:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -26.2
X-Spam-Report: Spam detection software,
 running on the system "mail.codeweavers.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, I'm trying to get x11spice and spice-html5, at least
 as packaged for Fedora, into a pretty much 'turn key' state. I've got 3 use
 cases. The first is user A sharing their current desktop, either for themselves,
 or to get help. That case is largely done, imho, modulo some documentation
 and perhaps some streamlining [...] 
 Content analysis details:   (-26.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -20 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
Subject: [Spice-devel] Brainstorming help with x11spice on socket
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi all,

I'm trying to get x11spice and spice-html5, at least as packaged for 
Fedora, into a pretty much 'turn key' state.

I've got 3 use cases.  The first is user A sharing their current 
desktop, either for themselves, or to get help.  That case is largely 
done, imho, modulo some documentation and perhaps some streamlining. 
The second is user A getting access to a new session for themselves.  I 
don't feel blocked on this case; the work should be straight forward, if 
fiddly (I may regret those words; doing a secure 'su' like function out 
of apache may be harder than I think).

The 3rd case, however, has me troubled.  This is the case that user A 
(potentially apache) starts x11spice which then does an xdmcp request to 
gdm, and eventually supports a log in by user B.  This makes it 
challenging to provide a way for user B to launch a spice agent or a 
pulseaudio daemon and have it securely connect back to the spice process 
started by user A.  The approach I've used in the past is to have a 
privileged binary use information from an X atom to adjust socket 
permissions.  But that feels unsatisfying, and it seems to me that this 
is an area with a lot of modern thinking that I've largely missed.

As an added complexity, in the ideal case, you have a vdagent running as 
user A during the login process, which knows to reap itself and give way 
to a vdagent launched by user B.

I was hoping that others would have modern instincts on how to more 
correctly implement the third use case.  Clue bats or other ideas welcome.

Cheers,

Jeremy
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
