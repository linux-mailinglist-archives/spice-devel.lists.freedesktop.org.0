Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C66213855
	for <lists+spice-devel@lfdr.de>; Fri,  3 Jul 2020 12:02:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5F86E8DA;
	Fri,  3 Jul 2020 10:02:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7797B6E1ED
 for <spice-devel@lists.freedesktop.org>; Fri,  3 Jul 2020 09:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593767908;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ss0IDIZEfKfA9xET1I+Is11l2/LEfuqsr911eEHBfhM=;
 b=EXyFX4GMUwbRFBkJUVEteeqCg5UY/DEY3r/SE/CL6gBUJNsWJ/PSIsfjWes/NM4G3F6A67
 kcTBx0K00L97vilOH1jALXAy0AUFGete20e4RV+UMCCT7kGkHSHlDX7BI9yAPU3qBC9nnt
 ohIs2MBISTEwKMk7kIA6t6CpzqolOaA=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-SWEtW6NlPWeQR9wcNJZ4Rg-1; Fri, 03 Jul 2020 05:18:27 -0400
X-MC-Unique: SWEtW6NlPWeQR9wcNJZ4Rg-1
Received: by mail-wm1-f69.google.com with SMTP id f68so16201568wmf.1
 for <spice-devel@lists.freedesktop.org>; Fri, 03 Jul 2020 02:18:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ss0IDIZEfKfA9xET1I+Is11l2/LEfuqsr911eEHBfhM=;
 b=EWs2ZkoyW1jHAcAuuRGhs3t2Vu41sVh7VeLxTI7qhf3h6PQBesGDSHg5cF8FolNNv6
 mZ37eWT5TCpsn1sCga9GBW9Xvwbq6hjMkTVRWSzz8q8HejQ3OFz3FE21AvpFjIzTSdK9
 0no5IjolWFchxQ4ga88KqK6N0FxWGDjjTH8+o9za10ZC/2x35kvCTI4SyCh9uKmal8xN
 oR20oK772rjIn/iNw2uZkUtnBXBg+6Vmt1KXID7ge69tJMJdITwS9lZe8BqKpO0nW684
 M5SMSNqS1iH7y9j2eDZ6yOQqvRuMCs2hg46Wqxwi5ebqwF1CN2DOuI7RXSR2DP5S4u5N
 HMzw==
X-Gm-Message-State: AOAM530Ufwd9wOZHynJx2C8PSL0sPS6dN0xGblJFxcxPAMSF+hI7uUSb
 P4gsN/dLXNQehnDADginyfj8hwdRPJk5wRe4bjvmSZbnTAkFO20Ary9tJS0/lI3JzmcFiWI41tV
 WqHjTwRBBAb2Y0s/X1qCQqgulBFBQHlI=
X-Received: by 2002:a1c:9cd0:: with SMTP id f199mr34398503wme.94.1593767905624; 
 Fri, 03 Jul 2020 02:18:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxNmkdFx2ksJ/o9oyOfDqxnW9PNTk+eGqm/xE6RJZmwyDXRckt1MRm5dgxLitM69dR+ZzOxng==
X-Received: by 2002:a1c:9cd0:: with SMTP id f199mr34398469wme.94.1593767905320; 
 Fri, 03 Jul 2020 02:18:25 -0700 (PDT)
Received: from redhat.com (bzq-79-182-31-92.red.bezeqint.net. [79.182.31.92])
 by smtp.gmail.com with ESMTPSA id
 92sm14260770wrr.96.2020.07.03.02.18.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jul 2020 02:18:24 -0700 (PDT)
Date: Fri, 3 Jul 2020 05:18:20 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alexandre Courbot <acourbot@chromium.org>
Message-ID: <20200703051756-mutt-send-email-mst@kernel.org>
References: <20200623111325.237158-1-keiichiw@chromium.org>
 <2850781.lI95146Gml@os-lin-dmo>
 <CAD90VcbmrismAXW0t7K6M-=a2-P+OCOw8PvBr6r8S_3LNYu=pw@mail.gmail.com>
 <3163123.i8GTTo9gJ5@os-lin-dmo>
 <CAPBb6MWqYHidfaaTKq43yDtjOmKEi=AMC3O9vLdWpPBd_vFrUA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPBb6MWqYHidfaaTKq43yDtjOmKEi=AMC3O9vLdWpPBd_vFrUA@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Fri, 03 Jul 2020 10:02:10 +0000
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pawel Osciak <posciak@chromium.org>, virtio-dev@lists.oasis-open.org,
 David Staessens <dstaessens@chromium.org>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, spice-devel@lists.freedesktop.org,
 Dylan Reid <dgreid@chromium.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Alex Lau <alexlau@chromium.org>, Saket Sinha <saket.sinha89@gmail.com>,
 =?iso-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Samiullah Khawaja <samiullah.khawaja@opensynergy.com>,
 Kiran Pawar <kiran.pawar@opensynergy.com>, Tomasz Figa <tfiga@chromium.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Dmitry Sepp <dmitry.sepp@opensynergy.com>,
 Enrico Granata <egranata@google.com>, Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, Jul 03, 2020 at 02:45:15PM +0900, Alexandre Courbot wrote:
> Hi Dmitry,
> 
> On Thu, Jul 2, 2020 at 10:47 PM Dmitry Sepp <dmitry.sepp@opensynergy.com> wrote:
> >
> > Hi Keiichi,
> >
> > Thanks for the clarification. I believe we should explicitly describe this in
> > the VIRTIO_VIDEO_CMD_RESOURCE_ATTACH section. And I also still see a problem
> > there. If it is a guest allocated resource, we cannot consider it to be free
> > until the device really releases it. And it won't happen until we issue the
> > next ATTACH call. Also, as we discussed before, it might be not possible to
> > free individual buffers, but the whole queue only.
> 
> In the case of the encoder, a V4L2 driver is not supposed to let
> user-space dequeue an input frame while it is used as reference for
> the encoding process. So if we add a similar rule in the virtio-video
> specification, I suppose this would solve the problem?
> 
> For the decoder case, we have a bigger problem though. Since DMABUFs
> can be arbitrarily attached to any V4L2 buffer ID, we may end up
> re-queueing the DMABUF of a decoded frame that is still used as
> reference under a different V4L2 buffer ID. In this case I don't think
> the driver has a way to know that the memory resource should not be
> overwritten, and it will thus happily use it as a decode target. The
> easiest fix is probably to update the V4L2 stateful specification to
> require that reused DMABUFs must always be assigned to the same V4L2
> buffer ID, and must be kept alive as long as decoding is in progress,
> or until a resolution change event is received. We can then apply a
> similar rule to the virtio device.


Sounds like a generic kind of problem - how do other devices solve it?

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
