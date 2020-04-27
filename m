Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6E21BA0DE
	for <lists+spice-devel@lfdr.de>; Mon, 27 Apr 2020 12:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4E916E204;
	Mon, 27 Apr 2020 10:14:03 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma33.jpberlin.de (plasma33.jpberlin.de [80.241.58.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1C7D6E195
 for <spice-devel@lists.freedesktop.org>; Mon, 27 Apr 2020 09:34:08 +0000 (UTC)
Received: from gerste.heinlein-support.de (unknown [80.241.56.124])
 by plasma.jpberlin.de (Postfix) with ESMTP id AD2571021E1;
 Mon, 27 Apr 2020 11:34:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.76])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id 0oLZMmHE_UCb; Mon, 27 Apr 2020 11:33:58 +0200 (CEST)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id CE3571007AE;
 Mon, 27 Apr 2020 11:33:57 +0200 (CEST)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 27 Apr
 2020 11:33:56 +0200
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: Keiichi Watanabe <keiichiw@chromium.org>
Date: Mon, 27 Apr 2020 11:33:56 +0200
Message-ID: <3353506.N7aMVyhfb1@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <CAD90Vcbrgf2dK2EYeQDJ=-AFA2NkFnyJhutLX3nfeD7ajNYw=A@mail.gmail.com>
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <17068786.sWSEgdgrri@os-lin-dmo>
 <CAD90Vcbrgf2dK2EYeQDJ=-AFA2NkFnyJhutLX3nfeD7ajNYw=A@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Rspamd-Queue-Id: AD2571021E1
X-Rspamd-Score: -1.29 / 15.00 / 200.00
X-Mailman-Approved-At: Mon, 27 Apr 2020 10:14:02 +0000
Subject: Re: [Spice-devel] [PATCH v3 1/2] virtio-video: Add virtio video
 device specification
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
Cc: Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 virtio-dev@lists.oasis-open.org, Alex Lau <alexlau@chromium.org>,
 Kiran Pawar <kiran.pawar@opensynergy.com>,
 Alexandre Courbot <acourbot@chromium.org>,
 David Staessens <dstaessens@chromium.org>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, David Stevens <stevensd@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 spice-devel@lists.freedesktop.org,
 =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, Enrico Granata <egranata@google.com>,
 Pawel Osciak <posciak@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Keiichi,

One more addition to the comments below. Currently spec does not define units 
for bitrate (are units needed for anything else except that?). Let's 
explicitly state that bitrate is provided in bits per sec, so whatever 
implementation can do proper conversion if needed.

Best regards,
Dmity.

On Freitag, 24. April 2020 13:45:38 CEST Keiichi Watanabe wrote:
> Hi Dmitry,
> 
> On Thu, Apr 9, 2020 at 10:23 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> 
wrote:
> > Hi Keiichi,
> > 
> > On Donnerstag, 9. April 2020 12:46:56 CEST Keiichi Watanabe wrote:
> > > Hi,
> > > 
> > > On Tue, Apr 7, 2020 at 11:49 PM Dmitry Sepp
> > > <dmitry.sepp@opensynergy.com>
> > 
> > wrote:
> > > > Hi,
> > > > 
> > > > > +\item[VIRTIO_VIDEO_CMD_STREAM_DESTROY] Destroy a video stream
> > > > > +  (context) within the device.
> > > > > +
> > > > > +\begin{lstlisting}
> > > > > +struct virtio_video_stream_destroy {
> > > > > +        struct virtio_video_cmd_hdr hdr;
> > > > > +};
> > > > > +\end{lstlisting}
> > > > 
> > > > Let's add more strict description to stream_destroy, like as follows:
> > > > Device MUST NOT generate any events for the stream in question after
> > > > receiving the command. Before completing the command, Device MUST
> > > > ensure
> > > > that all asynchronous commands that are related to the stream have
> > > > been
> > > > completed and all memory objects are unreferenced.
> > > 
> > > Sounds good. But, the device should probably be able to generate
> > > VIRTIO_VIDEO_EVENT_ERROR for a device-wide error?
> > > Or, should VIRTIO_VIDEO_EVENT_ERROR always be a per-stream error? (I
> > > haven't documented it in v3)
> > 
> > In the current version of the driver  I have we interpret it a stream
> > error. I think it makes sense as several stream formats might be backed
> > by different hardware devices on the host side. So it would be an
> > overkill to mark the whole virtio device as broken on the guest side.
> 
> It makes sense. I'll explicitly document that it's a per-stream error.
> 
> > BTW, I think we should add some hard limit to the max_cap_length and
> > max_resp_length in the spec, so buggy device does not make us allocate all
> > memory for a response on the host side by providing a garbage value. I
> > think 4k might be a good value.
> 
> Sounds good. Thank you for the suggestion.
> 
> Best regards,
> Keiichi
> 
> > Best regards,
> > Dmitry.
> > 
> > > Best regards,
> > > Keiichi
> > > 
> > > > Best regards,
> > > > Dmitry.


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
