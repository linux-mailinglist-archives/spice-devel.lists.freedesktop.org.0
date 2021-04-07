Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9CE357526
	for <lists+spice-devel@lfdr.de>; Wed,  7 Apr 2021 21:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E029C6E980;
	Wed,  7 Apr 2021 19:49:20 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 306 seconds by postgrey-1.36 at gabe;
 Wed, 07 Apr 2021 17:01:08 UTC
Received: from o1.3nn.shared.sendgrid.net (o1.3nn.shared.sendgrid.net
 [167.89.100.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619906E0EE
 for <spice-devel@lists.freedesktop.org>; Wed,  7 Apr 2021 17:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net;
 h=from:subject:mime-version:to:content-type:content-transfer-encoding;
 s=smtpapi; bh=flku4k7KKl3vMncirpp/683XvNasHYQkE2IYZ/J0L/M=;
 b=LnFoZlurFI/JMa/uqfwLuCRuQ14wNX58G+3PjK1+GBv+TZW/+9yDN+J/vUqC8nSBrfaj
 hJlpUUxynC/68/Of5+mMktcz1BtNmRnk08/zrBj2rWVes3DNNdWZ7SKds1SU8QAAyoMlXs
 bOimLjfoCHxjsmyqWDiVB7wBRN83aerjU=
Received: by filterdrecv-747b54644c-g7kx2 with SMTP id
 filterdrecv-747b54644c-g7kx2-14-606DE41F-13
 2021-04-07 16:55:59.298466285 +0000 UTC m=+1122719.237370794
Received: from [192.168.0.125] (unknown)
 by ismtpd0179p1mdw1.sendgrid.net (SG) with ESMTP id yitck2s7R8qxVNYD0b8VYA
 for <spice-devel@lists.freedesktop.org>;
 Wed, 07 Apr 2021 16:55:59.137 +0000 (UTC)
From: Bob Britton <bob@robertbritton.com>
Message-ID: <63dfcd57-5240-9400-b12d-3060da2048dd@robertbritton.com>
Date: Wed, 07 Apr 2021 16:55:59 +0000 (UTC)
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?jLMcMf1AkzjvdIafHXBz4mlG9tc1GXutMso97OfpGhp02L8vPdLWt+ZNE3R7lo?=
 =?us-ascii?Q?c4NT+TgFEHmESo40whH5PwrXkN+Fuyd4htrsWxh?=
 =?us-ascii?Q?kNg4E9X1uj20g7tAOsBpKf5RCktyEBzPF+bY0Ft?=
 =?us-ascii?Q?piGSuK24wacxXqyJaSA+8rZyDtSvpIdtcYAHjRK?=
 =?us-ascii?Q?GMEW0lTte2id75pLlHA6XHZIu4lDejXs6vnm0kd?=
 =?us-ascii?Q?SJXJo8tpT7+ss=2F+l3LMtNclUPNZ2+qIBNIEyKrm?=
 =?us-ascii?Q?P8X1mKp8YrP0KoQ6VRswA=3D=3D?=
To: spice-devel@lists.freedesktop.org
X-Entity-ID: vRnUm+PqaJPxRTq8n1yo1w==
Content-Language: en-US
X-Mailman-Approved-At: Wed, 07 Apr 2021 19:49:19 +0000
Subject: [Spice-devel] Helping with development...
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

Hi Spice team,

 =A0Thank you for all your hard work creating Spice.

 =A0I'm running a company where I provide virtual desktops to my =

customers. Most of my customers want their virtual desktops to have =

hardware GPU acceleration for smooth video playback, games, and such. So =

the experience would be much more like being on a native machine.

 =A0I've looked at many different options out there, and there really =

isn't one that fits the bill.

I have some questions for you all on how I can put my resources into =

helping spice add hardware encode/decode to it's streaming.

 From what I've read, it seems that it's possible to add a plugin such =

as virgil to allow for 3d acceleration. While that project is aiming at =

creating a full virtual 3d graphics device, is it possible or maybe even =

easier to create a plugin that does hardware encode/decode on the host =

gpu(s)?

And that leads me to my next question, would that be the best place to =

add hardware acceleration? Or should the focus be elsewhere?

I've played with Parsec quite a bit, and it's streaming abilities are =

amazing, allowing for 3d games to be played remotely with very little =

latency.

Obviously nothing here is simple, but I'd like to get my developer =

resources aimed in the right place, and any thoughts/feedback from your =

team would be greatly appreciated.

Thanks in advance, and I look forward to having my team help with the =

project.

Best,

- Bob


_______________________________________________
Spice-devel mailing list
Spice-devel@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/spice-devel
