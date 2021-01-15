Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D222F82AD
	for <lists+spice-devel@lfdr.de>; Fri, 15 Jan 2021 18:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E5D89D53;
	Fri, 15 Jan 2021 17:43:45 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 566 seconds by postgrey-1.36 at gabe;
 Fri, 15 Jan 2021 17:05:21 UTC
Received: from mx1.opensynergy.com (mx1.opensynergy.com [217.66.60.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5877989CB9
 for <spice-devel@lists.freedesktop.org>; Fri, 15 Jan 2021 17:05:21 +0000 (UTC)
Received: from SR-MAILGATE-02.opensynergy.com (localhost.localdomain
 [127.0.0.1])
 by mx1.opensynergy.com (Proxmox) with ESMTP id CC044A1374;
 Fri, 15 Jan 2021 17:55:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=opensynergy.com;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:from:from:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=srmailgate02; bh=e72g7Lb0jr1i
 a5HP4Dynq30r3UBdiBylZ0Y9FLP1CNs=; b=2kprhc4ym2KOCQsqLkXpyTlrGjuv
 4nhxGAxPSxJZJCLkCdFjz0MMl4KZnndxDym8E1OM2/hPlfd8cp6uqWNjh3f0yz7b
 6MljgQ8AmJ8Vf8JyJ1M+aFuf3/F2n0xexQhxLUgiCclOmeOXDa+3siAxOuiZNfNz
 YfPApokXE6mJ5EL+IJJZrsicqfq3JOZAIRULf03iX1AL5nksdT2HiL6CpzZaHKmz
 nN6+76GD3BAy36dVqsmoB1wqSdD/x1txPNOGy+UFWZtapR6zKfP8EGH3PEAApFqT
 XTo2PIYOHiuiilcgY+6na9lz0W97gGB+zTecPStV/07nN7SMzyf8KtBkJg==
To: Keiichi Watanabe <keiichiw@chromium.org>, =?UTF-8?Q?Alex_Benn=c3=a9e?=
 <alex.bennee@linaro.org>
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <87czy7l6uu.fsf@linaro.org>
 <CAD90Vca=VPVM7+Cj-2cK3SWaSR_Ciajt7oOr0OyB-34bL15ewg@mail.gmail.com>
From: Matti Moell <Matti.Moell@opensynergy.com>
Message-ID: <f3b177a7-1792-25ff-5bef-9e6b7fb4bde3@opensynergy.com>
Date: Fri, 15 Jan 2021 17:55:50 +0100
MIME-Version: 1.0
In-Reply-To: <CAD90Vca=VPVM7+Cj-2cK3SWaSR_Ciajt7oOr0OyB-34bL15ewg@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: SR-MAIL-01.open-synergy.com (10.26.10.21) To
 SR-MAIL-01.open-synergy.com (10.26.10.21)
X-Mailman-Approved-At: Fri, 15 Jan 2021 17:43:43 +0000
Subject: Re: [Spice-devel] [virtio-dev] [PATCH RFC v4 0/1] Virtio Video
 Device Specification
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Ruchika Gupta <ruchika.gupta@linaro.org>, Pawel Osciak <posciak@chromium.org>,
 virtio-dev@lists.oasis-open.org, David Staessens <dstaessens@chromium.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Peter Griffin <peter.griffin@linaro.org>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Alex Lau <alexlau@chromium.org>, Saket Sinha <saket.sinha89@gmail.com>,
 =?UTF-8?Q?St=c3=a9phane_Marchesin?= <marcheu@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>, dmitry.sepp@outlook.com,
 Tomasz Figa <tfiga@chromium.org>, Mike Holmes <mike.holmes@linaro.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Frediano Ziglio <fziglio@redhat.com>, Enrico Granata <egranata@google.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


On 15.01.21 15:25, Keiichi Watanabe wrote:
> I think the driver implementation is necessary for the spec to be
> merged, but it's not yet clear when we can spend time implementing
> drivers. It's likely to be after April or so.
> 
> IIRC, OpenSynergy folks, who implemented the v3 driver, also had some
> plan to implement the driver with the v5 spec.
> Matti, do you have any update on it? I'd really appreciate it if we
> could keep working for upstream together.

Hey Keiichi and Alex!

Yeah, I think for us it'll also be in the March/April timeline before we
can start looking at it again, there's quite a few loose ends when going
from v3 to v5 so it'll probably take a while to get it in shape and make
sure that all the comments from the drivers v2 are properly addressed.

I'm not 100% sure how to proceed but perhaps it makes sense to jointly
iterate on the driver sources together once the v5 is mostly agreed. Any
suggestions welcome.

Cheers,

		Matti

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
