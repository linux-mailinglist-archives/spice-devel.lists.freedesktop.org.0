Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 698511A0FDB
	for <lists+spice-devel@lfdr.de>; Tue,  7 Apr 2020 17:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737D66E88C;
	Tue,  7 Apr 2020 15:05:40 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from plasma4.jpberlin.de (plasma4.jpberlin.de [80.241.57.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B616E88C
 for <spice-devel@lists.freedesktop.org>; Tue,  7 Apr 2020 14:49:20 +0000 (UTC)
Received: from spamfilter04.heinlein-hosting.de
 (spamfilter04.heinlein-hosting.de [80.241.56.122])
 by plasma.jpberlin.de (Postfix) with ESMTP id 74FF2BCCAF;
 Tue,  7 Apr 2020 16:49:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id BlfSjxN4GkYL; Tue,  7 Apr 2020 16:49:03 +0200 (CEST)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 0EC60B9CD1;
 Tue,  7 Apr 2020 16:49:03 +0200 (CEST)
Received: from os-lin-dmo.localnet (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 7 Apr 2020
 16:49:02 +0200
From: Dmitry Sepp <dmitry.sepp@opensynergy.com>
To: <virtio-dev@lists.oasis-open.org>, Keiichi Watanabe <keiichiw@chromium.org>
Date: Tue, 7 Apr 2020 16:49:02 +0200
Message-ID: <4320831.CvnuH1ECHv@os-lin-dmo>
Organization: OpenSynergy
In-Reply-To: <20200206102058.247258-2-keiichiw@chromium.org>
References: <20200206102058.247258-1-keiichiw@chromium.org>
 <20200206102058.247258-2-keiichiw@chromium.org>
MIME-Version: 1.0
X-Originating-IP: [10.25.255.1]
X-Rspamd-Queue-Id: 74FF2BCCAF
X-Rspamd-Score: -0.13 / 15.00 / 200.00
X-Mailman-Approved-At: Tue, 07 Apr 2020 15:05:38 +0000
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
Cc: samiullah.khawaja@opensynergy.com, alexlau@chromium.org,
 kiran.pawar@opensynergy.com, acourbot@chromium.org, dstaessens@chromium.org,
 tfiga@chromium.org, hverkuil@xs4all.nl, stevensd@chromium.org,
 kraxel@redhat.com, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 marcheu@chromium.org, dgreid@chromium.org, egranata@google.com,
 posciak@chromium.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

> +\item[VIRTIO_VIDEO_CMD_STREAM_DESTROY] Destroy a video stream
> +  (context) within the device.
> +
> +\begin{lstlisting}
> +struct virtio_video_stream_destroy {
> +        struct virtio_video_cmd_hdr hdr;
> +};
> +\end{lstlisting}

Let's add more strict description to stream_destroy, like as follows:
Device MUST NOT generate any events for the stream in question after receiving 
the command. Before completing the command, Device MUST ensure that all 
asynchronous commands that are related to the stream have been completed and 
all memory objects are unreferenced.

Best regards,
Dmitry.



_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
