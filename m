Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EA0182E0D
	for <lists+spice-devel@lfdr.de>; Thu, 12 Mar 2020 11:44:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 271F36E0E0;
	Thu, 12 Mar 2020 10:44:54 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net
 [194.109.24.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FE36E116
 for <spice-devel@lists.freedesktop.org>; Thu, 12 Mar 2020 10:18:31 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.234.233])
 by smtp-cloud8.xs4all.net with ESMTPA
 id CKv4jwQIThVf8CKv7jMB9L; Thu, 12 Mar 2020 11:18:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1584008310; bh=ca/p8/FPq1A958nJeonUAY2BkfYHfgvHESYSgFc+glc=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=rZDKw2t2w2p152T3t4H6DGVHgLB3OmmKhTtzd9LkJkTqP8pvGA1Kb+THEYcA1CKLU
 K33hzDsouk5f/QTZJIjFI/WBuA6yiEqMSVfo76hmyI7lOJ01yIGSBi6wT0dEfu+C7Y
 czh3mVQoW98rgxU7ie4lK8YH4ZJGzVBlvbbFReh6ii5cjMVaLl/Gk1vRhwXSrCocgw
 43H2XwB6w/m3c6cwEUSBBrvqTogR4g913TAundn0Ml6NKbfH7658/fcZq7DfyNQdgG
 yGrATos6TMbxTVDsWxLCm7ysXW2yK26gIc5VY8tEDa9E+DYeQs1WQzS30CWEJ7yawH
 N3qnEPhzftsqg==
To: Dmitry Sepp <dmitry.sepp@opensynergy.com>, linux-media@vger.kernel.org
References: <20200218202753.652093-1-dmitry.sepp@opensynergy.com>
 <20200218202753.652093-2-dmitry.sepp@opensynergy.com>
 <d79df162-5fcc-6ff9-8480-4cff3548bb4a@xs4all.nl>
 <20719772.EfDdHjke4D@os-lin-dmo>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <6f8c37b1-8dc4-e3bb-01ed-4ebedaf90915@xs4all.nl>
Date: Thu, 12 Mar 2020 11:18:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20719772.EfDdHjke4D@os-lin-dmo>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJELMJwMFtLIxL4rHSTgHSoLnkv9r/QALnHpK5wXSBDgy8N5cJvePKd34bEy1fjPYtPjFRs2k78JmPIS5Z1DIcFwVlFSvXWCQ8WfOYC9lNfMsZiqnztY
 qz54cIXRJdtDkvp6BOjmfwPlpgBWX8cqcaSaNXIQBs5KE52QPsRBK2N2NrsNUos5xPkqfXAnBJZJV0293USRFVvkhUlVmwumn11/9fXjMmr2S899KWquVsgc
 WArFmoKVt1zkJexPtuA3GUrp87VQB3Q7utaVhtlPypgm9Ke6HggSQwEVcbpF7LAUMjaWuVRPtttRw92k9+Ddl/vmJuZ5i8QbWNK/+Vvk/8dSWguAirOV+7IG
 iaHGJTqoFVzAToebuUmg/FDKoL6QoRA/ibgrRtm63WncjupQMTyb0lAmF6fiafQWpT+vActJlYk6RhYoSy1tT9gXWHSo1ahamdRR2V//Csx6AS+ftPala1i+
 FtRK0/cIR2Wrzq6pn7co2P/tjDium/RsPHNNzhrDIEBlygHkChK0U7Qoh1ZKV7E+OH0r4vzXxLgdkI4Y/u7rLDH4RBkatsWyiXyGAr2dbVQYKVRP3Q/Xwo/D
 5X1JlNj5XKjhcYLcCDMj2UJ9nvk1JcHNtUThsmyx7Nj3n4NtA+9IlpG33oNCzAmHfv7I4rbz95FvPkbmcXVNT66ABpjw3iXWYla0C0Tdtshaf7BLbvfxc2FF
 vgSne1YRWCnDOGzGRAzWKeWsDn0KJzgrPpItakkRA44AIP3nuaXjMoe3RisThbv5cCRWJVFALePBeay12MpoaqDDJUm4J69FO7HHSkNiSOp2k5RxlHhN7oZo
 sAgGLv1Pu+tbU/tlpE+8DjeMcqx6XEGmKlkC/r5S3A/whVIEAlagmglMudAyLg==
X-Mailman-Approved-At: Thu, 12 Mar 2020 10:44:53 +0000
Subject: Re: [Spice-devel] [PATCH v2 1/1] video_video: Add the Virtio Video
 V4L2 driver
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
Cc: samiullah.khawaja@opensynergy.com, virtio-dev@lists.oasis-open.org,
 alexlau@chromium.org, kiran.pawar@opensynergy.com, acourbot@chromium.org,
 dstaessens@chromium.org, tfiga@chromium.org, stevensd@chromium.org,
 kraxel@redhat.com, daniel@ffwll.ch, spice-devel@lists.freedesktop.org,
 marcheu@chromium.org, dgreid@chromium.org,
 Nikolay Martyanov <Nikolay.Martyanov@opensynergy.com>, egranata@google.com,
 posciak@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On 3/12/20 11:15 AM, Dmitry Sepp wrote:
> Hi Hans,
> 
> Thank you for your great detailed review!
> 
> I won't provide inline answers as your comments totally make sense. There is 
> only one thing I want to mention:
> 
>>> +	struct video_plane_format plane_format[VIRTIO_VIDEO_MAX_PLANES];
>>
>> Why is this virtio specific? Any reason for not using VIDEO_MAX_PLANES?
> 
> I'd say this is because VIDEO_MAX_PLANES does not exist outside of the Linux 
> OS, so for whatever other system we need a virtio specific definition.

OK, good reason :-)

It's probably a good thing to add a comment where VIRTIO_VIDEO_MAX_PLANES is
defined that explains this.

Regards,

	Hans
_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
