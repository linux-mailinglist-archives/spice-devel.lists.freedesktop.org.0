Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A50A5154CD
	for <lists+spice-devel@lfdr.de>; Fri, 29 Apr 2022 21:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E4FB10EA98;
	Fri, 29 Apr 2022 19:39:41 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87E6B10E840;
 Fri, 29 Apr 2022 14:48:09 +0000 (UTC)
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 23TDsB3t015963;
 Fri, 29 Apr 2022 14:48:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 mime-version : content-transfer-encoding; s=pp1;
 bh=acJw+jTmkXlJ7TijNkue+Y/F8Vb2HEsXPTO2OkEgx1I=;
 b=kMKr5EnO4IxGhL5eiFEeDpyWocoNN5dhAXPDloHenI4gOCv5E8eOzW2OkhWOX4HslAYy
 Lu7u1LR9twwOB0wtq1/EQgYBXUDHV2Ezw7RuByvEdmspz3T39hJlmjRIvzf0U3dDb9yH
 jaf1AQoSvbTnDDkSWL8ANpNY/VnyqPZ9WSUVJm8gsd8ZKOecRLjfSgCBqjJyYL4Sm5xm
 QxnhLLkRvD8tRWAIcHExGz8ekzq2+JIcSf/zpm2sUS3PjcKYOP5dfUhwavSEkt2xkaCI
 3xqh7UFw6ocpCbNzF+BQeaJFxNDkEco/1hTIWkW/fceWyNNirbcGGQgDXb/3RujWwlie JA== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3fque1dvqp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Apr 2022 14:48:02 +0000
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 23TDscg8017335;
 Fri, 29 Apr 2022 14:48:02 GMT
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.108])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3fque1dvq2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Apr 2022 14:48:01 +0000
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
 by ppma05fra.de.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 23TEi4Jl030787;
 Fri, 29 Apr 2022 14:48:00 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma05fra.de.ibm.com with ESMTP id 3fm938yc8k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Apr 2022 14:47:59 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 23TEYmwq46530994
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 29 Apr 2022 14:34:49 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 90765A4040;
 Fri, 29 Apr 2022 14:47:57 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D23E6A4055;
 Fri, 29 Apr 2022 14:47:56 +0000 (GMT)
Received: from sig-9-145-61-57.uk.ibm.com (unknown [9.145.61.57])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 29 Apr 2022 14:47:56 +0000 (GMT)
Message-ID: <54ef79ae38db24f83739580445a8ed97a8d86044.camel@linux.ibm.com>
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 Apr 2022 16:47:56 +0200
In-Reply-To: <20220429135108.2781579-56-schnelle@linux.ibm.com>
References: <20220429135108.2781579-1-schnelle@linux.ibm.com>
 <20220429135108.2781579-56-schnelle@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-18.el8) 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 4teH_up-4FiWVolEbn5OktAi1vMa_FnT
X-Proofpoint-GUID: uq8m0B00Ao2dPu906Ks02-BCnp_pkimc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-29_07,2022-04-28_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxlogscore=412 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2202240000 definitions=main-2204290080
X-Mailman-Approved-At: Fri, 29 Apr 2022 19:39:38 +0000
Subject: Re: [Spice-devel] [PATCH 31/37] drm: handle HAS_IOPORT dependencies
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 "open list:DRM DRIVER
 FOR QXL VIRTUAL GPU" <virtualization@lists.linux-foundation.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-pci@vger.kernel.org, Dave Airlie <airlied@redhat.com>, "open
 list:DRM DRIVER FOR QXL VIRTUAL GPU" <spice-devel@lists.freedesktop.org>
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

On Fri, 2022-04-29 at 15:50 +0200, Niklas Schnelle wrote:
> In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> not being declared. We thus need to add HAS_IOPORT as dependency for
> those drivers using them. There is also a direct and hard coded use in
> cirrus.c which according to the comment is only necessary during resume.
> Let's just skip this as for example s390 which doesn't have I/O port
> support also doesen't support suspend/resume.
> 
> Co-developed-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> ---

Sorry everyone. I sent this as PATCH in error while preparing to sent
the same series as RFC. Since e-mail has no remote delete and I lack a
time machine let's just all pretend you only got the RFC.

