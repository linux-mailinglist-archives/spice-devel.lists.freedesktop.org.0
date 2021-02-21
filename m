Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C309320BD6
	for <lists+spice-devel@lfdr.de>; Sun, 21 Feb 2021 17:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23C46E084;
	Sun, 21 Feb 2021 16:52:11 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999A56E084
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Feb 2021 16:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613926329;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2E+SEK1cH2p5rv4gZjZwIqCzJiyeG4rORkBpmm3F3nk=;
 b=VvTGJoCq9ICvPYnKPJE/JLtmG4ODmIs8oTVqFZxE/NjtdiMOJCZf6Hx6mdqORVA8dLn5o7
 KYlL7flNHrO5vsXPvwQQo+/LG/oCKVp1WGXpwQSOLA3Kb0nfhd6fqMWytvXx+pBhz9TzWT
 4ANh6FWNpUIz7TswROi9SuTVIUo0nlA=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-o1de-ivHO7SjIuCOwReYvA-1; Sun, 21 Feb 2021 11:52:04 -0500
X-MC-Unique: o1de-ivHO7SjIuCOwReYvA-1
Received: by mail-qv1-f71.google.com with SMTP id cn7so3711750qvb.18
 for <spice-devel@lists.freedesktop.org>; Sun, 21 Feb 2021 08:52:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2E+SEK1cH2p5rv4gZjZwIqCzJiyeG4rORkBpmm3F3nk=;
 b=UFP/uF774NJqC0IKRCw+sw7TO/vUFI6pilUIxMD2rgMa30tOLfM55TZVBmCLvHRYqV
 W3vvX74VOLXz5UKOB3RiTbQmUUmeexdkSN38nBrxa8yeL/AhIOkkiCsMQMVdypzgHLIJ
 sUElyCzWJxPSRzXcBgT8S44b2I+xOltfGUbuy7JoU2WHetJ/fNhSKYnlPVDQBSMQcJbx
 5LbshWw3mYeK9IvWT9y5qz8SjMn7DXGmEXfrEMh01rM6qMd2bxxLXkIeDOUnIioC7A5M
 1ttDQu8mwUCxJfPLfSmo9gFW8Tr8cRO6jpcG7UYnJwbc3VEFRTdRdJ+OrVEZ6okhxf2T
 G+eg==
X-Gm-Message-State: AOAM533xxs3UfE0dL95NcjKp9BmmJ7Y5LoHkSiRKPCQkjFVAvyGe4WiZ
 3x4ZD/zIQXcRv9Ver1OMTQBn4KcgEgRrGbqLyVkdYxEMrMhhF0HzolY4a/3/TbqUOV2UVnp2sQA
 /xmFo+O9PPQnwjpb3meFv3SsrvV6A34em2iOMWVg6JmXc2zw=
X-Received: by 2002:a0c:fd63:: with SMTP id k3mr17346397qvs.30.1613926324215; 
 Sun, 21 Feb 2021 08:52:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx2zl/X33hDwnt2ubl/rUzZQsq/VGFKmfGtqeaCjIg8mGHySWuQgHUZyJoKfH6ju8QkH8nwPCKU096nRjDW9kA=
X-Received: by 2002:a0c:fd63:: with SMTP id k3mr17346386qvs.30.1613926324034; 
 Sun, 21 Feb 2021 08:52:04 -0800 (PST)
MIME-Version: 1.0
References: <924666743.685487.1613867448052.ref@mail.yahoo.com>
 <924666743.685487.1613867448052@mail.yahoo.com>
In-Reply-To: <924666743.685487.1613867448052@mail.yahoo.com>
From: Jakub Janku <jjanku@redhat.com>
Date: Sun, 21 Feb 2021 17:51:53 +0100
Message-ID: <CAH=CeiBFYoYVjiEjBKF1D1NgZ7o3RrakLS_HXP-5QeCrTp9vDQ@mail.gmail.com>
To: Matthew Sienko <matt_sienko@yahoo.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jjanku@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Spice-devel] No Sound with RemoteViewer on OSX Client
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
Cc: "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi,

On Sun, Feb 21, 2021 at 9:37 AM Matthew Sienko <matt_sienko@yahoo.com> wrote:
>
> Hello,
>
> When connecting to a VM running on a Linux server from a client on OSX, the connection works but without sound. I am using the RemoteViewer bundle version 0.5.7 on OS X 11.2.1. When the guest OS sends audio, I get the following errors in verbose mode:
>
>
> (RemoteViewer-bin:6323): GStreamer-CRITICAL **: gst_element_query: assertion `GST_IS_ELEMENT (element)' failed
>
> ** (RemoteViewer-bin:6323): CRITICAL **: gst_app_src_push_buffer_full: assertion `GST_IS_APP_SRC (appsrc)' failed
>
> ** (RemoteViewer-bin:6323): CRITICAL **: gst_app_src_push_buffer_full: assertion `GST_IS_APP_SRC (appsrc)' failed


This looks very similar to the following issue:
https://gitlab.freedesktop.org/spice/spice-gtk/-/merge_requests/7
So I'd guess that you don't have the gst-plugins-good package installed.

Apart from these errors, I think that you should also see a warning
starting with "Failed to create a pipeline...", correct?

If installing the mentioned package doesn't help, please run remote
viewer with the --spice-debug option and send the log here.

Thanks,
Jakub
>
>
> Does anybody have any tips as to what could be going wrong and how to fix it?
>
> Thanks,
>  -Matt
>
>
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
