Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6363713A407
	for <lists+spice-devel@lfdr.de>; Tue, 14 Jan 2020 10:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F359B6E33E;
	Tue, 14 Jan 2020 09:43:23 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D106E33E
 for <spice-devel@lists.freedesktop.org>; Tue, 14 Jan 2020 09:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578995001;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o96R+53ztD2bQqhk5QUvZ7TvCppBFEyEv8lP1AmR8jI=;
 b=EnPyAFQJ0rDSx+lE4YuMIIgd8q3NpsXNy/nGZgvm3ix7qq2qGOpVen2DUdbEbnwqcTUQEY
 WfFl18ND4jVoqm9CCWENE81Qiob958ljwlhzXVFUVws5mgoymKVg3PuYgDXuqNoa3fukgX
 FYY2dfhWQelVmeCVgKp1EJU3NPvDruY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-242-GeHI9z9vO_6GbW6mBvYPtQ-1; Tue, 14 Jan 2020 04:43:17 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02E04DB23;
 Tue, 14 Jan 2020 09:43:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DDC9660BF1;
 Tue, 14 Jan 2020 09:43:15 +0000 (UTC)
Received: from zmail25.collab.prod.int.phx2.redhat.com
 (zmail25.collab.prod.int.phx2.redhat.com [10.5.83.31])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id D34228250B;
 Tue, 14 Jan 2020 09:43:15 +0000 (UTC)
Date: Tue, 14 Jan 2020 04:43:15 -0500 (EST)
From: Frediano Ziglio <fziglio@redhat.com>
To: franklin zhou <codeit@live.com>
Message-ID: <340504604.5713959.1578994995366.JavaMail.zimbra@redhat.com>
In-Reply-To: <MN2PR06MB5966B91D42D1F839645822D1B3340@MN2PR06MB5966.namprd06.prod.outlook.com>
References: <MN2PR06MB5966B91D42D1F839645822D1B3340@MN2PR06MB5966.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-Originating-IP: [10.33.32.19, 10.4.195.18]
Thread-Topic: =?iso-2022-jp?B?d2luZG93cyBzZXJ2ZXIgMjAxMhskQiEnGyhCIFdERE1JbnRlcmZhY2U6?=
 =?iso-2022-jp?B?OmVzY2FwZTo6dGhpcyBzaG91bGQgbmV2ZXIgaGFwcGVuLiBTdGF0dXMg?=
 =?iso-2022-jp?B?aXMgMHhjMDAwMDAwZA==?=
Thread-Index: AQHVyrmubJR+NUKw4kqg2EFFZYCGb/qWdQdK
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: GeHI9z9vO_6GbW6mBvYPtQ-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Spice-devel] 
 =?utf-8?q?windows_server_2012=EF=BC=9A_WDDMInterfa?=
 =?utf-8?q?ce=3A=3Aescape=3A=3Athis_should_never_happen=2E_Status_is_0xc00?=
 =?utf-8?q?0000d?=
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
Cc: spice-devel@lists.freedesktop.org, Yuri Benditovich <ybendito@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


> In windows server 2012, the follow line " status = _pfnEscape(&escapeData); "
> always cause error,
> status is: 0xc000000d, error message is: "INFO::2020-01-14
> 16:58:23,387::WDDMInterface::escape::this should never happen. Status is
> 0xc000000d"
> ==========================
> bool WDDMInterface::escape(LPCTSTR device_name, void* data, UINT size_data) {
> .......

> status = _pfnEscape(&escapeData);

> if (!NT_SUCCESS(status)) {
> vd_printf("this should never happen. Status is 0x%lx", status);
> };

> }
> ==============================
> is this a bug ?

Code is STATUS_INVALID_PARAMETER.
I don't see any reason (beside from device_name) for this result but
looks like a bug indeed.

Frediano

_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
