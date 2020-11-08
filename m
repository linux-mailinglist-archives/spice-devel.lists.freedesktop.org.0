Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 026EC2AB3BB
	for <lists+spice-devel@lfdr.de>; Mon,  9 Nov 2020 10:39:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CFA894A7;
	Mon,  9 Nov 2020 09:39:56 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3119C89590;
 Sun,  8 Nov 2020 17:59:50 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 39F3B80538;
 Sun,  8 Nov 2020 18:59:47 +0100 (CET)
Date: Sun, 8 Nov 2020 18:59:45 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: trix@redhat.com
Message-ID: <20201108175945.GA1508644@ravnborg.org>
References: <20201019163115.25814-1-trix@redhat.com>
 <20201019170641.GA963808@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019170641.GA963808@ravnborg.org>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=20KFwNOVAAAA:8 a=7gkXJVJtAAAA:8
 a=fi46lLvuFyj7XQ7yi5sA:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-Mailman-Approved-At: Mon, 09 Nov 2020 09:39:55 +0000
Subject: Re: [Spice-devel] [PATCH] drm: remove unneeded break
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
Cc: airlied@linux.ie, nouveau@lists.freedesktop.org, gustavoars@kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kraxel@redhat.com, tzimmermann@suse.de, airlied@redhat.com,
 spice-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 bskeggs@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Tom
On Mon, Oct 19, 2020 at 07:06:41PM +0200, Sam Ravnborg wrote:
> Hi Tom
> On Mon, Oct 19, 2020 at 09:31:15AM -0700, trix@redhat.com wrote:
> > From: Tom Rix <trix@redhat.com>
> > 
> > A break is not needed if it is preceded by a return or break
> > 
> > Signed-off-by: Tom Rix <trix@redhat.com>
> 
> Looks good and builds with no warnings.
> 
> One of the diffs made me - "oh this looks wrong". But after I looked again
> it was right and the resulting code is more readable - so good.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> 
> Was tempted to just apply to drm-misc-next but will give others the
> opportunity to chime in.

Thanks.
Now applied to drm-misc-next - will show up in -next in a week or so.

	Sam
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
