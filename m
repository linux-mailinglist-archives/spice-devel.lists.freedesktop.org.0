Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FBF21267D
	for <lists+spice-devel@lfdr.de>; Thu,  2 Jul 2020 16:40:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BFB76E99B;
	Thu,  2 Jul 2020 14:40:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma2.jpberlin.de (plasma2.jpberlin.de [91.198.250.140])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF6E66E247
 for <spice-devel@lists.freedesktop.org>; Thu,  2 Jul 2020 13:47:13 +0000 (UTC)
Received: from gerste.heinlein-support.de (gerste.heinlein-support.de
 [91.198.250.173])
 by plasma.jpberlin.de (Postfix) with ESMTP id BD1EABD5F7;
 Thu,  2 Jul 2020 15:47:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([91.198.250.140])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id q6sM-WGaF5cz; Thu,  2 Jul 2020 15:47:06 +0200 (CEST)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "Let's Encrypt Authority X3" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 3B615BE472;
 Thu,  2 Jul 2020 15:47:06 +0200 (CEST)
Received: from os-lin-dmo.localnet (10.25.255.1) by webmail.opensynergy.com
 (10.25.10.17) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 2 Jul 2020
 15:47:05 +0200
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Date: Thu, 2 Jul 2020 15:47:05 +0200
Message-ID: <3163123.i8GTTo9gJ5@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <CAD90VcbmrismAXW0t7K6M-=a2-P+OCOw8PvBr6r8S_3LNYu=pw@mail.gmail.com>
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <2850781.lI95146Gml@os-lin-dmo>
 <CAD90VcbmrismAXW0t7K6M-=a2-P+OCOw8PvBr6r8S_3LNYu=pw@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-MBO-SPAM-Probability: 0
X-Rspamd-Score: -5.60 / 15.00 / 200.00
X-Rspamd-Queue-Id: BD1EABD5F7
X-Rspamd-UID: 03c435
X-Mailman-Approved-At: Thu, 02 Jul 2020 14:40:39 +0000
Subject: Re: [Spice-devel] [PATCH RFC v4 0/1] Virtio Video Device
 Specification
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
 Pawel Osciak <posciak@chromium.org>, virtio-dev@lists.oasis-open.org,
 David Staessens <dstaessens@chromium.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Alex Lau <alexlau@chromium.org>, Saket Sinha <saket.sinha89@gmail.com>,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Enrico
 Granata <egranata@google.com>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Keiichi,

Thanks for the clarification. I believe we should explicitly describe this in 
the VIRTIO_VIDEO_CMD_RESOURCE_ATTACH section. And I also still see a problem 
there. If it is a guest allocated resource, we cannot consider it to be free 
until the device really releases it. And it won't happen until we issue the 
next ATTACH call. Also, as we discussed before, it might be not possible to 
free individual buffers, but the whole queue only.

Best regards,
Dmitry.

On Donnerstag, 2. Juli 2020 14:50:58 CEST Keiichi Watanabe wrote:
> Hi Dmitry,
> 
> On Thu, Jul 2, 2020 at 4:32 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> 
wrote:
> > Hi Keiichi,
> > 
> > Thank you very much for the hard work to update the spec and to summarize
> > all of the recent proposals!
> > 
> > I want to again raise a topic that was discussed earlier and unfortunately
> > the latest proposal cannot resolve the problem. I hope together with
> > upstream people we'll be able to find a neat solution.
> > 
> > Please consider the following case:
> > 1. Encoder case
> > 2. User app does reqbufs with DMABUF flag.
> > 3. User app submits frames to encode, each frame has a different fd, might
> > be a completely new buffer.
> > 4. Driver receives this buffer via queue() and does this check to verify
> > whether it is a known dmabuf:
> > https://elixir.bootlin.com/linux/v5.7.6/source/drivers/media/common/videob
> > uf2/ videobuf2-core.c#L1163
> > 5. When the check fails, it does cleanup.
> > 6. BUG: As we got rid of the flexible resource detach/destroy calls, host
> > side has no way to know the resource has a new memory region. The new sgt
> > is never propagated to the host.
> > 
> > The mentioned earlier
> > CMD_RESOURE_REASSIGN_ENTRIES/CMD_RESOURE_REASSIGN_OBJECT are not included
> > in the spec.
> 
> This shouldn't be a problem. Though we don't have a per-resource
> detach command, we can _replace_ attached sg-list or virtio-object by
> calling the attach command.
> In your scenario, if the driver notices a new dmabuf is given at 4 and
> 5, the driver should send RESOURCE_ATTACH command with the new dmabuf.
> Then, the old dmabuf was regarded as "detached". Please see the
> "Buffer life cycle" section.
> 
> I renamed RESOURCE_REASSIGN_* commands to RESOURCE_ATTACH as it's also
> used at the first time to attach a buffer.
> 
> Best regards,
> Keiichi
> 
> > Thanks in advance.
> > 
> > Best regards,
> > Dmitry.
> > 
> > On Dienstag, 23. Juni 2020 13:13:24 CEST Keiichi Watanabe wrote:
> > > This is the v4 RFC of virtio video device specification.
> > > PDF versions are available at [1, 2].
> > > 
> > > Note that this patch depends on a recent patchset "Cross-device resource
> > > sharing" [3].
> > > 
> > > Here is a list of major changes from v3:
> > > * Redesingned struct definitions for each command and request based on
> > > 
> > >   discussions at [4].
> > > 
> > > * Renamed commands/structs/enums to more descriptive names.
> > > * Had different structs and fields for image formats and bitstream
> > > formats.
> > > * Added more detailed specification for supported video codecs.
> > > * Made stream_id be allocated by the device.
> > > * Had a single parameter struct per-stream instead of per-queue
> > > parameters
> > > and controls.
> > > * Allowed the driver to specify the number of buffers to use via
> > > 
> > >   "cur_{image,bitstream}_buffers".
> > > 
> > > * Renamed RESOURCE_CREATE command to RESOURCE_ATTACH command and allow
> > > the
> > > 
> > >   driver to use this command when replacing backing memories as well.
> > > 
> > > [5] is the diff of the header file from v3. Note that it only contains
> > > changes in the header. We haven't updated the driver nor device
> > > implementation to focus on protocol design discussion first.
> > > 
> > > While it may appear that many parts have been changed since the previous
> > > revision, these changes are to address the issues raised in previous
> > > discussions or/and to make the protocol simpler and easier to prevent
> > > misuse.
> > > I'd appreciate any types of feedback.
> > > 
> > > Best regards,
> > > Keiichi
> > > 
> > > [1] (full):
> > > https://drive.google.com/file/d/1DiOJZfUJ5wvFtnNFQicxt0zkp4Ob1o9C/view?u
> > > sp=
> > > sharing [2] (only video section):
> > > https://drive.google.com/file/d/188uAkIWE0BsXETECez98y5fJKw8rslj3/view?u
> > > sp=
> > > sharing [3]
> > > https://lists.oasis-open.org/archives/virtio-comment/202003/msg00035.htm
> > > l
> > > [4] https://markmail.org/thread/c6h3e3zn647qli3w
> > > [5]
> > > https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel
> > > /+/
> > > 2164411
> > > 
> > > Keiichi Watanabe (1):
> > >   virtio-video: Add virtio video device specification
> > >  
> > >  .gitignore                        |    1 +
> > >  content.tex                       |    1 +
> > >  images/video-buffer-lifecycle.dot |   18 +
> > >  make-setup-generated.sh           |    8 +
> > >  virtio-video.tex                  | 1163 +++++++++++++++++++++++++++++
> > >  5 files changed, 1191 insertions(+)
> > >  create mode 100644 .gitignore
> > >  create mode 100644 images/video-buffer-lifecycle.dot
> > >  create mode 100644 virtio-video.tex
> > > 
> > > --
> > > 2.27.0.111.gc72c7da667-goog


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
