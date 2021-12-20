Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B366747A80A
	for <lists+spice-devel@lfdr.de>; Mon, 20 Dec 2021 11:57:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0323610FBE3;
	Mon, 20 Dec 2021 10:57:44 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA6010FBD6
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Dec 2021 10:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639997861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7hQahW1sH+EEEd0sJ1uWZIo0Y4CjKv6Fcbc6OeGG/Kc=;
 b=XTLPl8JPIUSna+R7WwSYn+KgAaOC3kJJWa9ZVRjmcbctlS8wvpOjDdkVKB/h0P9olmQ1ng
 ERppCXPI/NjdCG7yE7+C7l/KseWjyeUX8G5qsE8fosunOjCBugDjIxJIOq4mDVgtm+8nrj
 E8fAHdYbUBBlV/D5eDhgWbE5qM4fhlY=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-426-mC6SSOgXPLKrgP9pkgjGHA-1; Mon, 20 Dec 2021 05:57:37 -0500
X-MC-Unique: mC6SSOgXPLKrgP9pkgjGHA-1
Received: by mail-lf1-f70.google.com with SMTP id
 g18-20020a05651222d200b0042612bda352so56416lfu.11
 for <spice-devel@lists.freedesktop.org>; Mon, 20 Dec 2021 02:57:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7hQahW1sH+EEEd0sJ1uWZIo0Y4CjKv6Fcbc6OeGG/Kc=;
 b=kfmtA/GwhuTiNUKucdfGNmQotm6l5DAtdegzCEK/QIbT2JBllABArrT7xVX/zwoLMh
 LxH20YlNH8RA2V99ahlcDfCUWATWBRApteEROBVyh1wikCf/qcTkvQsK+DN55KVEknon
 aAcKJVSOwAXSq7nnoVKWubI23S6bVkpwckLnvCDo5Xq6L4amCkgK5im0rRIlPYXCdQs/
 /Ap9AXejMoUIrS8YRwyBrbXc1G9lKGAcvtMGgx0Yh7C+hIumZlNxi6a0RBJszLnCt1Z/
 8+pcIAAdRBLMG7YrzHjjbYwywxVTNNeBdRNdTfpb/l9CZEVvwIseCySJNagltU5Fen3a
 Aw4Q==
X-Gm-Message-State: AOAM533rPBjnQgN0dzsoTf89bicMJxqPv5+pC9mJIK0dvyfsm18u/ye3
 dDrp77V3mHfKyro58n0BmLQziXeWwgsk81kH+8OannHG9CarTbKsWcZ3E5NXH5y8U1zgKZmDUUK
 5e6EKqzjbJiRB616yAfaRu+w0Mu+aTMjy6F2WfqBA5pGuabQ=
X-Received: by 2002:a05:6512:3f20:: with SMTP id
 y32mr15557522lfa.353.1639997856076; 
 Mon, 20 Dec 2021 02:57:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxZakH820pnTLlV3kJw3Si/v+Z+lZnv4H7n7Eap1JYmHVyJ3wYxy7O5WPpjEHesoADLFMF3VyIpFaW4VB/1QAo=
X-Received: by 2002:a05:6512:3f20:: with SMTP id
 y32mr15557508lfa.353.1639997855825; 
 Mon, 20 Dec 2021 02:57:35 -0800 (PST)
MIME-Version: 1.0
References: <CAMS0tn2RYzqoFQhYXaGRSnOXe9t_Lnz9t2kBah7VL+2H0R57hQ@mail.gmail.com>
In-Reply-To: <CAMS0tn2RYzqoFQhYXaGRSnOXe9t_Lnz9t2kBah7VL+2H0R57hQ@mail.gmail.com>
From: Uri Lublin <uril@redhat.com>
Date: Mon, 20 Dec 2021 12:57:24 +0200
Message-ID: <CAAg9qJ0DKP8Ki7352yp9-iXuRvY13fHfVi4bUuyy-3pGi4xEUg@mail.gmail.com>
To: i iordanov <iiordanov@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ulublin@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Spice-devel] attaching a USB device by libusb_device or
 libusb_device_handle on Android
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
Cc: spice-devel <spice-devel@lists.freedesktop.org>, support@morpheusly.com
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi iordan,

On Mon, Dec 20, 2021 at 9:46 AM i iordanov <iiordanov@gmail.com> wrote:
>
> Hi guys,
>
> I saw that the developers at libusb have done a bunch of work to
> support accessing USB devices on unrooted Android devices, and in
> response to a user request, I decided to look into the current state
> of the implementation.

Congrats to libusb developers.

>
> I am able to obtain permissions and get both:
>
> libusb_device *dev
>
> and
>
> libusb_device_handle *handle
>
> for an attached USB stick, but now do not have a good idea how to
> request libspice to attach the device to the remote.
>
> Is there an API exposed that would permit me to attach devices by
> either libusb_device or libusb_device_handle? In either case, any
> pointers on how to accomplish this are welcome!

On the client side, you need to build usbredir and rebuild spice-gtk
with usbredir enabled.

On the server side you need to build usbredir and rebuild Qemu with
usbredir enabled.
You also need to add to your VM configuration some USB devices and
attach them to SPICE.
See SPICE User Manual [1] "USB redirection" for details.

[1] https://www.spice-space.org/spice-user-manual.html

Regards,
    Uri.

>
> Sincerely,
> iordan
>
> --
> The conscious mind has only one thread of execution.
>

