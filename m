Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5519E592
	for <lists+spice-devel@lfdr.de>; Tue, 27 Aug 2019 12:22:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15123899D5;
	Tue, 27 Aug 2019 10:22:21 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F5D1899D5
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:22:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4A1CB30832C0
 for <spice-devel@lists.freedesktop.org>; Tue, 27 Aug 2019 10:22:19 +0000 (UTC)
Received: from localhost (unknown [10.32.181.212])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 45A6A5C1D6;
 Tue, 27 Aug 2019 10:22:18 +0000 (UTC)
Date: Tue, 27 Aug 2019 12:22:17 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20190827102217.l6stdj5ch27x2vk6@wingsuit>
References: <20190827092246.10276-1-fziglio@redhat.com>
 <20190827092246.10276-10-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190827092246.10276-10-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 27 Aug 2019 10:22:19 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-gtk v4 09/29] usb-redir: add files
 for SCSI and USB MSC implementation
X-BeenThere: spice-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: <spice-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/spice-devel>
List-Post: <mailto:spice-devel@lists.freedesktop.org>
List-Help: <mailto:spice-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/spice-devel>, 
 <mailto:spice-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: spice-devel@lists.freedesktop.org,
 Alexander Nezhinsky <anezhins@redhat.com>
Content-Type: multipart/mixed; boundary="===============1318747851=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============1318747851==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d7y6yzfjqnkr72yu"
Content-Disposition: inline


--d7y6yzfjqnkr72yu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Aug 27, 2019 at 10:22:26AM +0100, Frediano Ziglio wrote:
> From: Yuri Benditovich <yuri.benditovich@daynix.com>
>=20
> Files added without including them in compilation.
> They contain implementation of SCSI commands for logical
> units of mass-storage device class and USB bulk-only
> mass-storage device protocol.
>=20
> Signed-off-by: Alexander Nezhinsky<anezhins@redhat.com>
> Signed-off-by: Yuri Benditovich <yuri.benditovich@daynix.com>
> ---
>  src/cd-scsi-dev-params.h |   49 +
>  src/cd-scsi.c            | 2740 ++++++++++++++++++++++++++++++++++++++
>  src/cd-scsi.h            |  120 ++
>  src/cd-usb-bulk-msd.c    |  544 ++++++++
>  src/cd-usb-bulk-msd.h    |  134 ++
>  src/scsi-constants.h     |  324 +++++
>  6 files changed, 3911 insertions(+)
>  create mode 100644 src/cd-scsi-dev-params.h
>  create mode 100644 src/cd-scsi.c
>  create mode 100644 src/cd-scsi.h
>  create mode 100644 src/cd-usb-bulk-msd.c
>  create mode 100644 src/cd-usb-bulk-msd.h
>  create mode 100644 src/scsi-constants.h

A bit upsetting that near 4k insertions comes with commit log of
two sentences. Not familiar at all with scsi but the idea of how
that will be used, interfaces, limitations, etc. could come handy
in the commit log.

Same goes for the user of this, on patch "usb-redir: add
implementation of emulated CD device" which only says "This
module contains implementation of emulated device interface for
shared CD."

> diff --git a/src/cd-scsi-dev-params.h b/src/cd-scsi-dev-params.h
> new file mode 100644
> index 00000000..b480bcdc
> --- /dev/null
> +++ b/src/cd-scsi-dev-params.h
> @@ -0,0 +1,49 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +   CD SCSI device parameters
> +
> +   Copyright (C) 2018 Red Hat, Inc.
> +
> +   Red Hat Authors:
> +   Alexander Nezhinsky<anezhins@redhat.com>
> +
> +   This library is free software; you can redistribute it and/or
> +   modify it under the terms of the GNU Lesser General Public
> +   License as published by the Free Software Foundation; either
> +   version 2.1 of the License, or (at your option) any later version.
> +
> +   This library is distributed in the hope that it will be useful,
> +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +   Lesser General Public License for more details.
> +
> +   You should have received a copy of the GNU Lesser General Public
> +   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> +*/
> +
> +#ifndef SPICE_GTK_CD_SCSI_DEV_PARAMS_H_
> +#define SPICE_GTK_CD_SCSI_DEV_PARAMS_H_
> +
> +#include <gio/gio.h>
> +
> +typedef struct CdScsiDeviceParameters {
> +    const char *vendor;
> +    const char *product;
> +    const char *version;
> +    const char *serial;
> +} CdScsiDeviceParameters;
> +
> +typedef struct CdScsiDeviceInfo {
> +    CdScsiDeviceParameters parameters;
> +    uint32_t started    : 1;
> +    uint32_t locked     : 1;
> +    uint32_t loaded     : 1;
> +} CdScsiDeviceInfo;
> +
> +typedef struct CdScsiMediaParameters {
> +    GFileInputStream *stream;
> +    uint64_t size;
> +    uint32_t block_size;
> +} CdScsiMediaParameters;
> +
> +#endif /* SPICE_GTK_CD_SCSI_DEV_PARAMS_H_ */
> diff --git a/src/cd-scsi.c b/src/cd-scsi.c
> new file mode 100644
> index 00000000..25842b3b
> --- /dev/null
> +++ b/src/cd-scsi.c
> @@ -0,0 +1,2740 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +   CD device emulation - SCSI engine
> +
> +   Copyright (C) 2018 Red Hat, Inc.
> +
> +   Red Hat Authors:
> +   Alexander Nezhinsky<anezhins@redhat.com>
> +
> +   This library is free software; you can redistribute it and/or
> +   modify it under the terms of the GNU Lesser General Public
> +   License as published by the Free Software Foundation; either
> +   version 2.1 of the License, or (at your option) any later version.
> +
> +   This library is distributed in the hope that it will be useful,
> +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +   Lesser General Public License for more details.
> +
> +   You should have received a copy of the GNU Lesser General Public
> +   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> +*/
> +
> +#include "config.h"
> +#include "spice/types.h"
> +#include "spice-common.h"
> +#include "spice-util.h"
> +#include "cd-scsi.h"
> +
> +#ifdef USE_USBREDIR
> +
> +#define SPICE_ERROR(fmt, ...) \
> +    do { SPICE_DEBUG("dev-scsi error: " fmt , ## __VA_ARGS__); } while (=
0)
> +
> +#define FIXED_SENSE_CURRENT 0x70
> +#define FIXED_SENSE_LEN 18
> +
> +#define MAX_LUNS   32
> +
> +typedef enum CdScsiPowerCondition {
> +    CD_SCSI_POWER_STOPPED,
> +    CD_SCSI_POWER_ACTIVE,
> +    CD_SCSI_POWER_IDLE,
> +    CD_SCSI_POWER_STANDBY
> +} CdScsiPowerCondition;
> +
> +typedef struct ScsiShortSense {
> +    uint8_t key;
> +    uint8_t asc;
> +    uint8_t ascq;
> +    const char *descr;
> +} ScsiShortSense;
> +
> +#define CD_MEDIA_EVENT_NO_CHANGE            0x0
> +#define CD_MEDIA_EVENT_EJECT_REQ            0x1 /* user request (mechani=
cal switch) to
> +                                                 * eject the media */
> +#define CD_MEDIA_EVENT_NEW_MEDIA            0x2 /* new media received */
> +#define CD_MEDIA_EVENT_MEDIA_REMOVAL        0x3 /* media removed */
> +#define CD_MEDIA_EVENT_MEDIA_CHANGED        0x4 /* user request to load =
new media */
> +#define CD_MEDIA_EVENT_BG_FORMAT_COMPLETE   0x5
> +#define CD_MEDIA_EVENT_BG_FORMAT_RESTART    0x6
> +
> +#define CD_POWER_EVENT_NO_CHANGE            0x0
> +#define CD_POWER_EVENT_CHANGE_SUCCESS       0x1
> +#define CD_POWER_EVENT_CHANGE_FALED         0x2
> +
> +typedef struct CdScsiLU {
> +    CdScsiTarget *tgt;
> +    uint32_t lun;
> +
> +    gboolean realized;
> +    gboolean removable;
> +    gboolean loaded;
> +    gboolean prevent_media_removal;
> +    gboolean cd_rom;
> +
> +    CdScsiPowerCondition power_cond;
> +    uint32_t power_event;
> +    uint32_t media_event;
> +
> +    uint32_t claim_version;
> +
> +    uint64_t size;
> +    uint32_t block_size;
> +    uint32_t num_blocks;
> +
> +    char *vendor;
> +    char *product;
> +    char *version;
> +    char *serial;
> +
> +    GFileInputStream *stream;
> +
> +    ScsiShortSense short_sense; /* currently held sense of the scsi devi=
ce */
> +    uint8_t fixed_sense[FIXED_SENSE_LEN];
> +} CdScsiLU;
> +
> +typedef enum CdScsiTargetState {
> +    CD_SCSI_TGT_STATE_RUNNING,
> +    CD_SCSI_TGT_STATE_RESET,
> +} CdScsiTargetState;
> +
> +struct CdScsiTarget {
> +    void *user_data;
> +
> +    CdScsiTargetState state;
> +    CdScsiRequest *cur_req;
> +    GCancellable *cancellable;
> +
> +    uint32_t max_luns;
> +    CdScsiLU units[MAX_LUNS];
> +};
> +
> +static const char* scsi_cmd_name[256];
> +
> +/* Predefined sense codes */
> +
> +const ScsiShortSense sense_code_NO_SENSE =3D {
> +    .key =3D NO_SENSE , .asc =3D 0x00 , .ascq =3D 0x00,
> +    .descr =3D ""
> +};
> +
> +const ScsiShortSense sense_code_NOT_READY_CAUSE_NOT_REPORTABLE =3D {
> +    .key =3D NOT_READY, .asc =3D 0x04, .ascq =3D 0x00,
> +    .descr =3D "CAUSE NOT REPORTABLE"
> +};
> +
> +const ScsiShortSense sense_code_BECOMING_READY =3D {
> +    .key =3D NOT_READY, .asc =3D 0x04, .ascq =3D 0x01,
> +    .descr =3D "IN PROCESS OF BECOMING READY"
> +};
> +
> +const ScsiShortSense sense_code_INIT_CMD_REQUIRED =3D {
> +    .key =3D NOT_READY, .asc =3D 0x04, .ascq =3D 0x02,
> +    .descr =3D "INITIALIZING COMMAND REQUIRED"
> +};
> +
> +const ScsiShortSense sense_code_INTERVENTION_REQUIRED =3D {
> +    .key =3D NOT_READY, .asc =3D 0x04, .ascq =3D 0x03,
> +    .descr =3D "MANUAL INTERVENTION REQUIRED"
> +};
> +
> +const ScsiShortSense sense_code_NOT_READY_NO_MEDIUM =3D {
> +    .key =3D NOT_READY, .asc =3D 0x3a, .ascq =3D 0x00,
> +    .descr =3D "MEDIUM NOT PRESENT"
> +};
> +
> +const ScsiShortSense sense_code_NOT_READY_NO_MEDIUM_TRAY_CLOSED =3D {
> +    .key =3D NOT_READY, .asc =3D 0x3a, .ascq =3D 0x01,
> +    .descr =3D "MEDIUM NOT PRESENT - TRAY CLOSED"
> +};
> +
> +const ScsiShortSense sense_code_NOT_READY_NO_MEDIUM_TRAY_OPEN =3D {
> +    .key =3D NOT_READY, .asc =3D 0x3a, .ascq =3D 0x02,
> +    .descr =3D "MEDIUM NOT PRESENT - TRAY OPEN"
> +};
> +
> +const ScsiShortSense sense_code_TARGET_FAILURE =3D {
> +    .key =3D HARDWARE_ERROR, .asc =3D 0x44, .ascq =3D 0x00,
> +    .descr =3D "INTERNAL TARGET FAILURE"
> +};
> +
> +const ScsiShortSense sense_code_INVALID_OPCODE =3D {
> +    .key =3D ILLEGAL_REQUEST, .asc =3D 0x20, .ascq =3D 0x00,
> +    .descr =3D "INVALID COMMAND OPERATION CODE"
> +};
> +
> +const ScsiShortSense sense_code_LBA_OUT_OF_RANGE =3D {
> +    .key =3D ILLEGAL_REQUEST, .asc =3D 0x21, .ascq =3D 0x00,
> +    .descr =3D "LOGICAL BLOCK ADDRESS OUT OF RANGE"
> +};
> +
> +const ScsiShortSense sense_code_INVALID_CDB_FIELD =3D {
> +    .key =3D ILLEGAL_REQUEST, .asc =3D 0x24, .ascq =3D 0x00,
> +    .descr =3D "INVALID FIELD IN CDB"
> +};
> +
> +const ScsiShortSense sense_code_INVALID_PARAM_FIELD =3D {
> +    .key =3D ILLEGAL_REQUEST, .asc =3D 0x26, .ascq =3D 0x00,
> +    .descr =3D "INVALID FIELD IN PARAMETER LIST"
> +};
> +
> +const ScsiShortSense sense_code_INVALID_PARAM_LEN =3D {
> +    .key =3D ILLEGAL_REQUEST, .asc =3D 0x1a, .ascq =3D 0x00,
> +    .descr =3D "PARAMETER LIST LENGTH ERROR"
> +};
> +
> +const ScsiShortSense sense_code_LUN_NOT_SUPPORTED =3D {
> +    .key =3D ILLEGAL_REQUEST, .asc =3D 0x25, .ascq =3D 0x00,
> +    .descr =3D "LOGICAL UNIT NOT SUPPORTED"
> +};
> +
> +const ScsiShortSense sense_code_SAVING_PARAMS_NOT_SUPPORTED =3D {
> +    .key =3D ILLEGAL_REQUEST, .asc =3D 0x39, .ascq =3D 0x00,
> +    .descr =3D "SAVING PARAMETERS NOT SUPPORTED"
> +};
> +
> +const ScsiShortSense sense_code_INCOMPATIBLE_MEDIUM =3D {
> +    .key =3D ILLEGAL_REQUEST, .asc =3D 0x30, .ascq =3D 0x00,
> +    .descr =3D "INCOMPATIBLE MEDIUM INSTALLED"
> +};
> +
> +const ScsiShortSense sense_code_MEDIUM_REMOVAL_PREVENTED =3D {
> +    .key =3D ILLEGAL_REQUEST, .asc =3D 0x53, .ascq =3D 0x02,
> +    .descr =3D "MEDIUM REMOVAL PREVENTED"
> +};
> +
> +const ScsiShortSense sense_code_PARAMETERS_CHANGED =3D {
> +    .key =3D UNIT_ATTENTION, .asc =3D 0x2a, .ascq =3D 0x00,
> +    .descr =3D "PARAMETERS CHANGED"
> +};
> +
> +const ScsiShortSense sense_code_POWER_ON_RESET =3D {
> +    .key =3D UNIT_ATTENTION, .asc =3D 0x29, .ascq =3D 0x00,
> +    .descr =3D "POWER ON, RESET, OR BUS DEVICE RESET"
> +};
> +
> +const ScsiShortSense sense_code_SCSI_BUS_RESET =3D {
> +    .key =3D UNIT_ATTENTION, .asc =3D 0x29, .ascq =3D 0x02,
> +    .descr =3D "SCSI BUS RESET"
> +};
> +
> +const ScsiShortSense sense_code_UA_NO_MEDIUM =3D {
> +    .key =3D UNIT_ATTENTION, .asc =3D 0x3a, .ascq =3D 0x00,
> +    .descr =3D "MEDIUM NOT PRESENT"
> +};
> +
> +const ScsiShortSense sense_code_MEDIUM_CHANGED =3D {
> +    .key =3D UNIT_ATTENTION, .asc =3D 0x28, .ascq =3D 0x00,
> +    .descr =3D "MEDIUM CHANGED"
> +};
> +
> +const ScsiShortSense sense_code_REPORTED_LUNS_CHANGED =3D {
> +    .key =3D UNIT_ATTENTION, .asc =3D 0x3f, .ascq =3D 0x0e,
> +    .descr =3D "REPORTED LUNS CHANGED"
> +};
> +
> +const ScsiShortSense sense_code_DEVICE_INTERNAL_RESET =3D {
> +    .key =3D UNIT_ATTENTION, .asc =3D 0x29, .ascq =3D 0x04,
> +    .descr =3D "DEVICE INTERNAL RESET"
> +};
> +
> +const ScsiShortSense sense_code_UNIT_ATTENTION_MEDIUM_REMOVAL_REQUEST =
=3D {
> +    .key =3D UNIT_ATTENTION, .asc =3D 0x5a, .ascq =3D 0x01,
> +    .descr =3D "OPERATOR MEDIUM REMOVAL REQUEST"
> +};
> +
> +static inline gboolean cd_scsi_opcode_ua_supress(uint32_t opcode)
> +{
> +    switch (opcode) {
> +    case INQUIRY:
> +    case REPORT_LUNS:
> +    case GET_CONFIGURATION:
> +    case GET_EVENT_STATUS_NOTIFICATION:
> +    case REQUEST_SENSE:
> +        return TRUE;
> +    default:
> +        return FALSE;
> +    }
> +}
> +
> +static inline const char *CdScsiReqState_str(CdScsiReqState state)
> +{
> +    switch(state) {
> +    case SCSI_REQ_IDLE:
> +        return "IDLE";
> +    case SCSI_REQ_RUNNING:
> +        return "RUNNING";
> +    case SCSI_REQ_COMPLETE:
> +        return "COMPLETE";
> +    case SCSI_REQ_CANCELED:
> +        return "CANCELED";
> +    default:
> +        return "ILLEGAL";
> +    }
> +}
> +
> +static const char *cd_scsi_sense_key_descr(uint8_t sense_key)
> +{
> +    switch(sense_key) {
> +    case NO_SENSE:
> +        return "NO SENSE";
> +    case RECOVERED_ERROR:
> +        return "RECOVERED ERROR";
> +    case NOT_READY:
> +        return "LUN NOT READY";
> +    case MEDIUM_ERROR:
> +        return "MEDIUM ERROR";
> +    case HARDWARE_ERROR:
> +        return "HARDWARE ERROR";
> +    case ILLEGAL_REQUEST:
> +        return "ILLEGAL REQUEST";
> +    case UNIT_ATTENTION:
> +        return "UNIT ATTENTION";
> +    case BLANK_CHECK:
> +        return "BLANK CHECK";
> +    case ABORTED_COMMAND:
> +        return "ABORTED COMMAND";
> +    default:
> +        return "???";
> +    }
> +}
> +static uint32_t cd_scsi_build_fixed_sense(uint8_t *buf, const ScsiShortS=
ense *short_sense)
> +{
> +    memset(buf, 0, FIXED_SENSE_LEN);
> +
> +    buf[0] =3D FIXED_SENSE_CURRENT;
> +    buf[2] =3D short_sense->key;
> +    buf[7] =3D 10;
> +    buf[12] =3D short_sense->asc;
> +    buf[13] =3D short_sense->ascq;
> +
> +    return FIXED_SENSE_LEN;
> +}
> +
> +static inline void cd_scsi_req_init(CdScsiRequest *req)
> +{
> +    req->req_state =3D SCSI_REQ_IDLE;
> +    req->xfer_dir =3D SCSI_XFER_NONE;
> +    req->priv_data =3D NULL;
> +    req->in_len =3D 0;
> +    req->status =3D GOOD;
> +}
> +
> +static inline void cd_scsi_dev_sense_reset(CdScsiLU *dev)
> +{
> +    memset(&dev->short_sense, 0, sizeof(dev->short_sense));
> +    cd_scsi_build_fixed_sense(dev->fixed_sense, &dev->short_sense);
> +}
> +
> +static inline void cd_scsi_dev_sense_set(CdScsiLU *dev, const ScsiShortS=
ense *short_sense)
> +{
> +    if (short_sense !=3D NULL) {
> +        /* copy short sense and generate full sense in fixed format */
> +        dev->short_sense =3D *short_sense;
> +        cd_scsi_build_fixed_sense(dev->fixed_sense, short_sense);
> +    }
> +}
> +
> +static inline void cd_scsi_dev_sense_set_power_on(CdScsiLU *dev)
> +{
> +    cd_scsi_dev_sense_set(dev, &sense_code_POWER_ON_RESET);
> +}
> +
> +static void cd_scsi_cmd_complete_check_cond(CdScsiLU *dev, CdScsiRequest=
 *req,
> +                                            const ScsiShortSense *short_=
sense)
> +{
> +    req->req_state =3D SCSI_REQ_COMPLETE;
> +    req->status =3D CHECK_CONDITION;
> +    req->in_len =3D 0;
> +
> +    cd_scsi_dev_sense_set(dev, short_sense);
> +
> +    SPICE_DEBUG("CHECK_COND, request lun:%u"
> +                " op: 0x%02x, pending sense: 0x%02x %02x %02x - %s, %s",
> +                dev->lun, (uint32_t)req->cdb[0],
> +                (uint32_t)dev->short_sense.key,
> +                (uint32_t)dev->short_sense.asc,
> +                (uint32_t)dev->short_sense.ascq,
> +                cd_scsi_sense_key_descr(dev->short_sense.key),
> +                dev->short_sense.descr);
> +}
> +
> +static void cd_scsi_cmd_complete_good(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    req->req_state =3D SCSI_REQ_COMPLETE;
> +    req->status =3D GOOD;
> +}
> +
> +/* SCSI Target */
> +
> +SPICE_CONSTRUCTOR_FUNC(cd_scsi_cmd_names_init)
> +{
> +    uint32_t opcode;
> +
> +    for (opcode =3D 0; opcode < 256; opcode++) {
> +        scsi_cmd_name[opcode] =3D "UNSUPPORTED";
> +    }
> +
> +    scsi_cmd_name[REPORT_LUNS] =3D "REPORT LUNS";
> +    scsi_cmd_name[TEST_UNIT_READY] =3D "TEST UNIT READY";
> +    scsi_cmd_name[INQUIRY] =3D "INQUIRY";
> +    scsi_cmd_name[REQUEST_SENSE] =3D "REQUEST SENSE";
> +    scsi_cmd_name[READ_6] =3D "READ(6)";
> +    scsi_cmd_name[READ_10] =3D "READ(10)";
> +    scsi_cmd_name[READ_12] =3D "READ(12)";
> +    scsi_cmd_name[READ_16] =3D "READ(16)";
> +    scsi_cmd_name[READ_CAPACITY_10] =3D "READ CAPACITY(10)";
> +    scsi_cmd_name[READ_TOC] =3D "READ TOC";
> +    scsi_cmd_name[GET_EVENT_STATUS_NOTIFICATION] =3D "GET EVENT/STATUS N=
OTIFICATION";
> +    scsi_cmd_name[READ_DISC_INFORMATION] =3D "READ DISC INFO";
> +    scsi_cmd_name[READ_TRACK_INFORMATION] =3D "READ TRACK INFO";
> +    scsi_cmd_name[MODE_SENSE_10] =3D "MODE SENSE(10)";
> +    scsi_cmd_name[MODE_SELECT] =3D "MODE SELECT(6)";
> +    scsi_cmd_name[MODE_SELECT_10] =3D "MODE SELECT(10)";
> +    scsi_cmd_name[GET_CONFIGURATION] =3D "GET CONFIGURATION";
> +    scsi_cmd_name[ALLOW_MEDIUM_REMOVAL] =3D "PREVENT ALLOW MEDIUM REMOVA=
L";
> +    scsi_cmd_name[MMC_SEND_EVENT] =3D "SEND EVENT";
> +    scsi_cmd_name[MMC_REPORT_KEY] =3D "REPORT KEY";
> +    scsi_cmd_name[MMC_SEND_KEY] =3D "SEND_KEY";
> +    scsi_cmd_name[START_STOP] =3D "START STOP UNIT";
> +    scsi_cmd_name[MMC_GET_PERFORMANCE] =3D "GET PERFORMANCE";
> +    scsi_cmd_name[MMC_MECHANISM_STATUS] =3D "MECHANISM STATUS";
> +}
> +
> +CdScsiTarget *cd_scsi_target_alloc(void *target_user_data, uint32_t max_=
luns)
> +{
> +    CdScsiTarget *st;
> +
> +    if (max_luns =3D=3D 0 || max_luns > MAX_LUNS) {
> +        SPICE_ERROR("Alloc, illegal max_luns:%u", max_luns);
> +        return NULL;
> +    }
> +
> +    st =3D g_malloc0(sizeof(*st));
> +
> +    st->user_data =3D target_user_data;
> +    st->state =3D CD_SCSI_TGT_STATE_RUNNING;
> +    st->cur_req =3D NULL;
> +    st->cancellable =3D g_cancellable_new();
> +    st->max_luns =3D max_luns;
> +
> +    return st;
> +}
> +
> +void cd_scsi_target_free(CdScsiTarget *st)
> +{
> +    uint32_t lun;
> +
> +    cd_scsi_target_reset(st);
> +    for (lun =3D 0; lun < st->max_luns; lun++) {
> +        CdScsiLU *unit =3D &st->units[lun];
> +        if (unit->realized) {
> +            cd_scsi_dev_unrealize(st, lun);
> +        }
> +        g_clear_object(&unit->stream);
> +    }
> +    g_clear_object(&st->cancellable);
> +    g_free(st);
> +}
> +
> +/* SCSI Device */
> +
> +static inline gboolean cd_scsi_target_lun_legal(const CdScsiTarget *st, =
uint32_t lun)
> +{
> +    return (lun < st->max_luns) ? TRUE : FALSE;
> +}
> +
> +static inline gboolean cd_scsi_target_lun_realized(const CdScsiTarget *s=
t, uint32_t lun)
> +{
> +    return st->units[lun].realized;
> +}
> +
> +int cd_scsi_dev_realize(CdScsiTarget *st, uint32_t lun,
> +                        const CdScsiDeviceParameters *dev_params)
> +{
> +    CdScsiLU *dev;
> +
> +    if (!cd_scsi_target_lun_legal(st, lun)) {
> +        SPICE_ERROR("Realize, illegal lun:%u", lun);
> +        return -1;
> +    }
> +    if (cd_scsi_target_lun_realized(st, lun)) {
> +        SPICE_ERROR("Realize, already realized lun:%u", lun);
> +        return -1;
> +    }
> +    dev =3D &st->units[lun];
> +
> +    memset(dev, 0, sizeof(*dev));
> +    dev->tgt =3D st;
> +    dev->lun =3D lun;
> +
> +    dev->realized =3D TRUE;
> +    dev->removable =3D TRUE;
> +    dev->loaded =3D FALSE;
> +    dev->prevent_media_removal =3D FALSE;
> +    dev->cd_rom =3D FALSE;
> +
> +    dev->power_cond =3D CD_SCSI_POWER_ACTIVE;
> +    dev->power_event =3D CD_POWER_EVENT_NO_CHANGE;
> +    dev->media_event =3D CD_MEDIA_EVENT_NO_CHANGE;
> +
> +    dev->claim_version =3D 3; /* 0 : none; 2,3,5 : SPC/MMC-x */
> +
> +    dev->vendor =3D g_strdup(dev_params->vendor);
> +    dev->product =3D g_strdup(dev_params->product);
> +    dev->version =3D g_strdup(dev_params->version);
> +    dev->serial =3D g_strdup(dev_params->serial);
> +
> +    cd_scsi_dev_sense_set_power_on(dev);
> +
> +    SPICE_DEBUG("Realize lun:%u bs:%u VR:[%s] PT:[%s] ver:[%s] SN[%s]",
> +                lun, dev->block_size, dev->vendor,
> +                dev->product, dev->version, dev->serial);
> +    return 0;
> +}
> +
> +static void cd_scsi_lu_media_reset(CdScsiLU *dev)
> +{
> +    /* media_event is not set here, as it depends on the context */
> +    g_clear_object(&dev->stream);
> +    dev->size =3D 0;
> +    dev->block_size =3D 0;
> +    dev->num_blocks =3D 0;
> +}
> +
> +int cd_scsi_dev_lock(CdScsiTarget *st, uint32_t lun, gboolean lock)
> +{
> +    CdScsiLU *dev;
> +
> +    if (!cd_scsi_target_lun_legal(st, lun)) {
> +        SPICE_ERROR("Lock, illegal lun:%u", lun);
> +        return -1;
> +    }
> +    if (!cd_scsi_target_lun_realized(st, lun)) {
> +        SPICE_ERROR("Lock, unrealized lun:%u", lun);
> +        return -1;
> +    }
> +    dev =3D &st->units[lun];
> +    dev->prevent_media_removal =3D lock;
> +    SPICE_DEBUG("lun:%u %slock", lun, lock ? "un" :"");
> +    return 0;
> +}
> +
> +static void cd_scsi_lu_load(CdScsiLU *dev,
> +                            const CdScsiMediaParameters *media_params)
> +{
> +    if (media_params !=3D NULL) {
> +        dev->media_event =3D CD_MEDIA_EVENT_NEW_MEDIA;
> +        dev->stream =3D g_object_ref(media_params->stream);
> +        dev->size =3D media_params->size;
> +        dev->block_size =3D media_params->block_size;
> +        dev->num_blocks =3D media_params->size / media_params->block_siz=
e;
> +        dev->loaded =3D TRUE;
> +    } else {
> +        dev->media_event =3D CD_MEDIA_EVENT_MEDIA_REMOVAL;
> +        cd_scsi_lu_media_reset(dev);
> +        dev->loaded =3D FALSE;
> +    }
> +}
> +
> +static void cd_scsi_lu_unload(CdScsiLU *dev)
> +{
> +    dev->media_event =3D CD_MEDIA_EVENT_MEDIA_REMOVAL;
> +    cd_scsi_lu_media_reset(dev);
> +    dev->loaded =3D FALSE;
> +}
> +
> +int cd_scsi_dev_load(CdScsiTarget *st, uint32_t lun,
> +                     const CdScsiMediaParameters *media_params)
> +{
> +    CdScsiLU *dev;
> +
> +    if (!cd_scsi_target_lun_legal(st, lun)) {
> +        SPICE_ERROR("Load, illegal lun:%u", lun);
> +        return -1;
> +    }
> +    if (!cd_scsi_target_lun_realized(st, lun)) {
> +        SPICE_ERROR("Load, unrealized lun:%u", lun);
> +        return -1;
> +    }
> +    dev =3D &st->units[lun];
> +
> +    cd_scsi_lu_load(dev, media_params);
> +    dev->power_cond =3D CD_SCSI_POWER_ACTIVE;
> +    dev->power_event =3D CD_POWER_EVENT_CHANGE_SUCCESS;
> +
> +    cd_scsi_dev_sense_set(dev, &sense_code_MEDIUM_CHANGED);
> +
> +    SPICE_DEBUG("Load lun:%u size:%" G_GUINT64_FORMAT
> +                " blk_sz:%u num_blocks:%u",
> +                lun, dev->size, dev->block_size, dev->num_blocks);
> +    return 0;
> +}
> +
> +int cd_scsi_dev_get_info(CdScsiTarget *st, uint32_t lun, CdScsiDeviceInf=
o *lun_info)
> +{
> +    CdScsiLU *dev;
> +
> +    if (!cd_scsi_target_lun_legal(st, lun)) {
> +        SPICE_ERROR("Load, illegal lun:%u", lun);
> +        return -1;
> +    }
> +    if (!cd_scsi_target_lun_realized(st, lun)) {
> +        SPICE_ERROR("Load, unrealized lun:%u", lun);
> +        return -1;
> +    }
> +    dev =3D &st->units[lun];
> +
> +    lun_info->started =3D dev->power_cond =3D=3D CD_SCSI_POWER_ACTIVE;
> +    lun_info->locked =3D dev->prevent_media_removal;
> +    lun_info->loaded =3D dev->loaded;
> +
> +    lun_info->parameters.vendor =3D dev->vendor;
> +    lun_info->parameters.product =3D dev->product;
> +    lun_info->parameters.version =3D dev->version;
> +    lun_info->parameters.serial =3D dev->serial;
> +
> +    return 0;
> +}
> +
> +int cd_scsi_dev_unload(CdScsiTarget *st, uint32_t lun)
> +{
> +    CdScsiLU *dev;
> +
> +    if (!cd_scsi_target_lun_legal(st, lun)) {
> +        SPICE_ERROR("Unload, illegal lun:%u", lun);
> +        return -1;
> +    }
> +    if (!cd_scsi_target_lun_realized(st, lun)) {
> +        SPICE_ERROR("Unload, unrealized lun:%u", lun);
> +        return -1;
> +    }
> +    dev =3D &st->units[lun];
> +    if (!dev->loaded) {
> +        SPICE_ERROR("Unload, lun:%u not loaded yet", lun);
> +        return 0;
> +    }
> +    if (dev->prevent_media_removal) {
> +        SPICE_ERROR("Unload, lun:%u prevent_media_removal set", lun);
> +        return -1;
> +    }
> +
> +    cd_scsi_lu_unload(dev);
> +    dev->power_cond =3D CD_SCSI_POWER_STOPPED;
> +    dev->power_event =3D CD_POWER_EVENT_CHANGE_SUCCESS;
> +
> +    cd_scsi_dev_sense_set(dev, &sense_code_UA_NO_MEDIUM);
> +
> +    SPICE_DEBUG("Unload lun:%u", lun);
> +    return 0;
> +}
> +
> +int cd_scsi_dev_unrealize(CdScsiTarget *st, uint32_t lun)
> +{
> +    CdScsiLU *dev;
> +
> +    if (!cd_scsi_target_lun_legal(st, lun)) {
> +        SPICE_ERROR("Unrealize, illegal lun:%u", lun);
> +        return -1;
> +    }
> +    if (!cd_scsi_target_lun_realized(st, lun)) {
> +        SPICE_ERROR("Unrealize, absent lun:%u", lun);
> +        return -1;
> +    }
> +    dev =3D &st->units[lun];
> +
> +    g_clear_pointer(&dev->vendor, g_free);
> +    g_clear_pointer(&dev->product, g_free);
> +    g_clear_pointer(&dev->version, g_free);
> +    g_clear_pointer(&dev->serial, g_free);
> +
> +    g_clear_object(&dev->stream);
> +
> +    dev->loaded =3D FALSE;
> +    dev->realized =3D FALSE;
> +    dev->power_cond =3D CD_SCSI_POWER_STOPPED;
> +
> +    SPICE_DEBUG("Unrealize lun:%u", lun);
> +    return 0;
> +}
> +
> +int cd_scsi_dev_reset(CdScsiTarget *st, uint32_t lun)
> +{
> +    CdScsiLU *dev;
> +
> +    if (!cd_scsi_target_lun_legal(st, lun)) {
> +        SPICE_ERROR("Device reset, illegal lun:%u", lun);
> +        return -1;
> +    }
> +    if (!cd_scsi_target_lun_realized(st, lun)) {
> +        SPICE_ERROR("Device reset, absent lun:%u", lun);
> +        return -1;
> +    }
> +    dev =3D &st->units[lun];
> +
> +    /* if we reset the 'prevent' flag we can't create
> +     * the unit that is locked from the beginning, so
> +     * we keep this flag as persistent over resets
> +     */
> +    /* dev->prevent_media_removal =3D FALSE; */
> +    dev->power_cond =3D CD_SCSI_POWER_ACTIVE;
> +    dev->power_event =3D CD_POWER_EVENT_CHANGE_SUCCESS;
> +    cd_scsi_dev_sense_set_power_on(dev);
> +
> +    SPICE_DEBUG("Device reset lun:%u", lun);
> +    return 0;
> +}
> +
> +static void cd_scsi_target_do_reset(CdScsiTarget *st)
> +{
> +    uint32_t lun;
> +
> +    for (lun =3D 0; lun < st->max_luns; lun++) {
> +        if (st->units[lun].realized) {
> +            cd_scsi_dev_reset(st, lun);
> +        }
> +    }
> +
> +    SPICE_DEBUG("Target reset complete");
> +    st->state =3D CD_SCSI_TGT_STATE_RUNNING;
> +    cd_scsi_target_reset_complete(st->user_data);
> +}
> +
> +int cd_scsi_target_reset(CdScsiTarget *st)
> +{
> +    if (st->state =3D=3D CD_SCSI_TGT_STATE_RESET) {
> +        SPICE_DEBUG("Target already in reset");
> +        return -1;
> +    }
> +
> +    st->state =3D CD_SCSI_TGT_STATE_RESET;
> +
> +    if (st->cur_req !=3D NULL) {
> +        cd_scsi_dev_request_cancel(st, st->cur_req);
> +        if (st->cur_req !=3D NULL) {
> +            SPICE_DEBUG("Target reset in progress...");
> +            return 0;
> +        }
> +    }
> +
> +    cd_scsi_target_do_reset(st);
> +    return 0;
> +}
> +
> +CdScsiReqState cd_scsi_get_req_state(CdScsiRequest *req)
> +{
> +    return req->req_state;
> +}
> +
> +static void strpadcpy(char *buf, int buf_size, const char *str, char pad)
> +{
> +    int len =3D strnlen(str, buf_size);
> +    memcpy(buf, str, len);
> +    memset(buf + len, pad, buf_size - len);
> +}
> +
> +/* SCSI CDB */
> +
> +static unsigned int scsi_cdb_length(const uint8_t *cdb)
> +{
> +    unsigned int cdb_len;
> +
> +    switch (cdb[0] >> 5) {
> +    case 0:
> +        cdb_len =3D 6;
> +        break;
> +    case 1:
> +    case 2:
> +        cdb_len =3D 10;
> +        break;
> +    case 4:
> +        cdb_len =3D 16;
> +        break;
> +    case 5:
> +        cdb_len =3D 12;
> +        break;
> +    default:
> +        cdb_len =3D 0;
> +    }
> +    return cdb_len;
> +}
> +
> +static uint64_t scsi_cdb_lba(const uint8_t *cdb, int cdb_len)
> +{
> +    uint64_t lba;
> +
> +    switch (cdb_len) {
> +    case 6:
> +        lba =3D (((uint64_t)(cdb[1] & 0x1f)) << 16) |
> +              (((uint64_t)cdb[2]) << 8) |
> +               ((uint64_t)cdb[3]);
> +        break;
> +    case 10:
> +    case 12:
> +        lba =3D (((uint64_t)cdb[2]) << 24) |
> +              (((uint64_t)cdb[3]) << 16) |
> +              (((uint64_t)cdb[4]) << 8)  |
> +               ((uint64_t)cdb[5]);
> +        break;
> +    case 16:
> +        lba =3D (((uint64_t)cdb[2]) << 56) |
> +              (((uint64_t)cdb[3]) << 48) |
> +              (((uint64_t)cdb[4]) << 40) |
> +              (((uint64_t)cdb[5]) << 32) |
> +              (((uint64_t)cdb[6]) << 24) |
> +              (((uint64_t)cdb[7]) << 16) |
> +              (((uint64_t)cdb[8]) << 8)  |
> +               ((uint64_t)cdb[9]);
> +        break;
> +    default:
> +        lba =3D 0;
> +    }
> +    return lba;
> +}
> +
> +static uint32_t scsi_cdb_xfer_length(const uint8_t *cdb, int cdb_len)
> +{
> +    uint32_t len;
> +
> +    switch (cdb_len) {
> +    case 6:
> +        len =3D (uint32_t)cdb[4];
> +        if (len =3D=3D 0)
> +            len =3D 256;
> +        break;
> +    case 10:
> +        len =3D (((uint32_t)cdb[7]) << 8) |
> +               ((uint32_t)cdb[8]);
> +        break;
> +    case 12:
> +        len =3D (((uint32_t)cdb[6]) << 24) |
> +              (((uint32_t)cdb[7]) << 16) |
> +              (((uint32_t)cdb[8]) << 8)  |
> +               ((uint32_t)cdb[9]);
> +        break;
> +    case 16:
> +        len =3D (((uint32_t)cdb[10]) << 24) |
> +              (((uint32_t)cdb[11]) << 16) |
> +              (((uint32_t)cdb[12]) << 8)  |
> +               ((uint32_t)cdb[13]);
> +        break;
> +    default:
> +        len =3D 0;
> +        break;
> +    }
> +    return len;
> +}
> +
> +/* SCSI commands */
> +
> +static void cd_scsi_cmd_test_unit_ready(CdScsiLU *dev, CdScsiRequest *re=
q)
> +{
> +    req->xfer_dir =3D SCSI_XFER_NONE;
> +    req->in_len =3D 0;
> +
> +    if (dev->loaded) {
> +        if (dev->power_cond !=3D CD_SCSI_POWER_STOPPED) {
> +            cd_scsi_cmd_complete_good(dev, req);
> +        } else {
> +            cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INIT_C=
MD_REQUIRED);
> +        }
> +    } else {
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_NOT_READY_=
NO_MEDIUM);
> +    }
> +}
> +
> +static void cd_scsi_cmd_request_sense(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    req->req_len =3D req->cdb[4];
> +    req->in_len =3D MIN(req->req_len, sizeof(dev->fixed_sense));
> +
> +    if (dev->short_sense.key !=3D NO_SENSE) {
> +        SPICE_DEBUG("%s, lun:%u reported sense: 0x%02x %02x %02x - %s, %=
s",
> +                    __FUNCTION__, req->lun,
> +                    dev->short_sense.key, dev->short_sense.asc, dev->sho=
rt_sense.ascq,
> +                    cd_scsi_sense_key_descr(dev->short_sense.key),
> +                    dev->short_sense.descr);
> +    }
> +    memcpy(req->buf, dev->fixed_sense, sizeof(dev->fixed_sense));
> +    cd_scsi_dev_sense_reset(dev); /* clear reported sense */
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +static void cd_scsi_cmd_report_luns(CdScsiTarget *st, CdScsiLU *dev,
> +                                    CdScsiRequest *req)
> +{
> +    uint8_t *out_buf =3D req->buf;
> +    uint32_t max_luns =3D st->max_luns;
> +    uint32_t buflen =3D 8; /* header length */
> +    uint32_t lun;
> +
> +    req->req_len =3D scsi_cdb_xfer_length(req->cdb, 12);
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    /* check SELECT REPORT field */
> +    if (req->cdb[2] =3D=3D 0x01) {
> +        /* only well known logical units */
> +        max_luns =3D 0;
> +    }
> +
> +    memset(out_buf, 0, 8);
> +
> +    for (lun =3D 0; lun < max_luns; lun++) {
> +        if (st->units[lun].realized) {
> +            out_buf[buflen++] =3D 0;
> +            out_buf[buflen++] =3D (uint8_t)(lun);
> +            memset(&out_buf[buflen], 0, 6);
> +            buflen +=3D 6;
> +        }
> +    }
> +
> +    /* fill LUN LIST LENGTH */
> +    out_buf[0] =3D (uint8_t)((buflen-8) >> 24);
> +    out_buf[1] =3D (uint8_t)((buflen-8) >> 16);
> +    out_buf[2] =3D (uint8_t)((buflen-8) >> 8);
> +    out_buf[3] =3D (uint8_t)((buflen-8));
> +
> +    req->in_len =3D buflen;
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define SCSI_MAX_INQUIRY_LEN        256
> +#define SCSI_MAX_MODE_LEN           256
> +
> +static void cd_scsi_cmd_inquiry_vpd_no_lun(CdScsiLU *dev, CdScsiRequest =
*req,
> +                                           uint32_t perif_qual)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint8_t page_code =3D req->cdb[2];
> +    uint32_t resp_len =3D 4;
> +
> +    outbuf[0] =3D (perif_qual << 5) | TYPE_ROM;
> +    outbuf[1] =3D page_code ; /* this page */
> +    outbuf[2] =3D 0x00; /* page length MSB */
> +    outbuf[3] =3D 0x00; /* page length LSB - no more data */
> +
> +    req->in_len =3D MIN(req->req_len, resp_len);
> +
> +    SPICE_DEBUG("inquiry_vpd, unsupported lun:%u"
> +                " perif_qual:0x%x resp_len: %" G_GUINT64_FORMAT,
> +                req->lun, perif_qual, req->in_len);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +static void cd_scsi_cmd_inquiry_vpd(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint8_t page_code =3D req->cdb[2];
> +    int buflen =3D 4;
> +    int start =3D 4;
> +
> +    outbuf[0] =3D TYPE_ROM;
> +    outbuf[1] =3D page_code ; /* this page */
> +    outbuf[2] =3D 0x00; /* page length MSB */
> +    outbuf[3] =3D 0x00; /* page length LSB, to write later */
> +
> +    switch (page_code) {
> +    case 0x00: /* Supported page codes, mandatory */
> +    {
> +        outbuf[buflen++] =3D 0x00; // list of supported pages (this page)
> +        if (dev->serial) {
> +            outbuf[buflen++] =3D 0x80; // unit serial number
> +        }
> +        outbuf[buflen++] =3D 0x83; // device identification
> +
> +        SPICE_DEBUG("Inquiry EVPD[Supported pages] lun:%u"
> +                    " req_len: %" G_GUINT64_FORMAT " resp_len: %d",
> +                    req->lun, req->req_len, buflen);
> +        break;
> +    }
> +    case 0x80: /* Device serial number, optional */
> +    {
> +        int serial_len;
> +
> +        serial_len =3D strlen(dev->serial);
> +        if (serial_len > 36) {
> +            serial_len =3D 36;
> +        }
> +        memcpy(outbuf+buflen, dev->serial, serial_len);
> +        buflen +=3D serial_len;
> +
> +        SPICE_DEBUG("Inquiry EVPD[Serial num] lun:%u"
> +                    " req_len: %" G_GUINT64_FORMAT " resp_len: %d",
> +                    req->lun, req->req_len, buflen);
> +        break;
> +    }
> +    case 0x83: /* Device identification page, mandatory */
> +    {
> +        int serial_len =3D strlen(dev->serial);
> +        int max_len =3D 20;
> +
> +        if (serial_len > max_len) {
> +            serial_len =3D max_len;
> +        }
> +
> +        outbuf[buflen++] =3D 0x2; // ASCII
> +        outbuf[buflen++] =3D 0;   // not officially assigned
> +        outbuf[buflen++] =3D 0;   // reserved
> +        outbuf[buflen++] =3D serial_len; // length of data following
> +
> +        memcpy(outbuf+buflen, dev->serial, serial_len);
> +        buflen +=3D serial_len;
> +
> +        SPICE_DEBUG("Inquiry EVPD[Device id] lun:%u"
> +                    " req_len: %" G_GUINT64_FORMAT " resp_len: %d",
> +                    req->lun, req->req_len, buflen);
> +        break;
> +    }
> +
> +    default:
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        SPICE_DEBUG("inquiry_standard, lun:%u invalid page_code: %02x",
> +                    req->lun, (int)page_code);
> +        return;
> +    }
> +
> +    /* done with EVPD */
> +    g_assert(buflen - start <=3D 255);
> +    outbuf[3] =3D buflen - start; /* page length LSB */
> +
> +    req->in_len =3D buflen;
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define INQUIRY_STANDARD_LEN_MIN            36
> +#define INQUIRY_STANDARD_LEN                96
> +#define INQUIRY_STANDARD_LEN_NO_VER         57
> +
> +#define PERIF_QUALIFIER_CONNECTED           0x00
> +#define PERIF_QUALIFIER_NOT_CONNECTED       0x01
> +#define PERIF_QUALIFIER_UNSUPPORTED         0x03
> +
> +#define INQUIRY_REMOVABLE_MEDIUM            0x80
> +
> +#define INQUIRY_VERSION_NONE                0x00
> +#define INQUIRY_VERSION_SPC3                0x05
> +
> +/* byte 3 */
> +#define INQUIRY_RESP_HISUP                  (0x01 << 4)
> +#define INQUIRY_RESP_NORM_ACA               (0x01 << 5)
> +#define INQUIRY_RESP_DATA_FORMAT_SPC3       0x02
> +
> +#define INQUIRY_VERSION_DESC_SAM2           0x040
> +#define INQUIRY_VERSION_DESC_SPC3           0x300
> +#define INQUIRY_VERSION_DESC_MMC3           0x2A0
> +#define INQUIRY_VERSION_DESC_SBC2           0x320
> +
> +static void cd_scsi_cmd_inquiry_standard_no_lun(CdScsiLU *dev, CdScsiReq=
uest *req,
> +                                                uint32_t perif_qual)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint32_t resp_len =3D INQUIRY_STANDARD_LEN_MIN;
> +
> +    memset(req->buf, 0, INQUIRY_STANDARD_LEN_MIN);
> +
> +    outbuf[0] =3D (perif_qual << 5) | TYPE_ROM;
> +    outbuf[2] =3D INQUIRY_VERSION_NONE;
> +    outbuf[3] =3D INQUIRY_RESP_DATA_FORMAT_SPC3;
> +
> +    outbuf[4] =3D resp_len - 4; /* additional length, after header */
> +
> +    req->in_len =3D MIN(req->req_len, resp_len);
> +
> +    SPICE_DEBUG("inquiry_standard, unsupported lun:%u perif_qual:0x%x "
> +                "inquiry_len: %u resp_len: %" G_GUINT64_FORMAT,
> +                req->lun, perif_qual, resp_len, req->in_len);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +static void cd_scsi_cmd_inquiry_standard(CdScsiLU *dev, CdScsiRequest *r=
eq)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint32_t resp_len =3D
> +        (dev->claim_version =3D=3D 0) ? INQUIRY_STANDARD_LEN_NO_VER : IN=
QUIRY_STANDARD_LEN;
> +
> +    outbuf[0] =3D (PERIF_QUALIFIER_CONNECTED << 5) | TYPE_ROM;
> +    outbuf[1] =3D (dev->removable) ? INQUIRY_REMOVABLE_MEDIUM : 0;
> +    outbuf[2] =3D (dev->claim_version =3D=3D 0) ? INQUIRY_VERSION_NONE :=
 INQUIRY_VERSION_SPC3;
> +    outbuf[3] =3D INQUIRY_RESP_NORM_ACA | INQUIRY_RESP_HISUP | INQUIRY_R=
ESP_DATA_FORMAT_SPC3;
> +
> +    outbuf[4] =3D resp_len - 4; /* additional length, after header */
> +
> +    /* (outbuf[6,7] =3D 0) means also {BQue=3D0,CmdQue=3D0} - no queuein=
g at all */
> +
> +    strpadcpy((char *) &outbuf[8], 8, dev->vendor, ' ');
> +    strpadcpy((char *) &outbuf[16], 16, dev->product, ' ');
> +    memcpy(&outbuf[32], dev->version, MIN(4, strlen(dev->version)));
> +
> +    if (dev->claim_version > 0) {
> +        /* now supporting only 3 */
> +        outbuf[58] =3D (INQUIRY_VERSION_DESC_SAM2 >> 8) & 0xff;
> +        outbuf[59] =3D INQUIRY_VERSION_DESC_SAM2 & 0xff;
> +
> +        outbuf[60] =3D (INQUIRY_VERSION_DESC_SPC3 >> 8) & 0xff;
> +        outbuf[61] =3D INQUIRY_VERSION_DESC_SPC3 & 0xff;
> +
> +        outbuf[62] =3D (INQUIRY_VERSION_DESC_MMC3 >> 8) & 0xff;
> +        outbuf[63] =3D INQUIRY_VERSION_DESC_MMC3 & 0xff;
> +
> +        outbuf[64] =3D (INQUIRY_VERSION_DESC_SBC2 >> 8) & 0xff;
> +        outbuf[65] =3D INQUIRY_VERSION_DESC_SBC2 & 0xff;
> +    }
> +
> +    req->in_len =3D MIN(req->req_len, resp_len);
> +
> +    SPICE_DEBUG("inquiry_standard, lun:%u"
> +                " inquiry_len: %u resp_len: %" G_GUINT64_FORMAT,
> +                req->lun, resp_len, req->in_len);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define CD_INQUIRY_FLAG_EVPD                0x01
> +#define CD_INQUIRY_FLAG_CMD_DT              0x02
> +
> +static void cd_scsi_cmd_inquiry(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    gboolean evpd, cmd_data;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    evpd =3D (req->cdb[1] & CD_INQUIRY_FLAG_EVPD) ? TRUE : FALSE;
> +    cmd_data =3D (req->cdb[1] & CD_INQUIRY_FLAG_CMD_DT) ? TRUE : FALSE;
> +
> +    if (cmd_data) {
> +        SPICE_DEBUG("inquiry, lun:%u CmdDT bit set - unsupported, "
> +                    "cdb[1]:0x%02x cdb[1]:0x%02x",
> +                    req->lun, (int)req->cdb[1], (int)req->cdb[2]);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        return;
> +    }
> +
> +    req->req_len =3D req->cdb[4] | (req->cdb[3] << 8);
> +    memset(req->buf, 0, req->req_len);
> +
> +    if (evpd) { /* enable vital product data */
> +        cd_scsi_cmd_inquiry_vpd(dev, req);
> +    } else { /* standard inquiry data */
> +        if (req->cdb[2] !=3D 0) {
> +            SPICE_DEBUG("inquiry_standard, lun:%u non-zero page code: %0=
2x",
> +                        req->lun, (int)req->cdb[2]);
> +            cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALI=
D_CDB_FIELD);
> +            return;
> +        }
> +        cd_scsi_cmd_inquiry_standard(dev, req);
> +    }
> +}
> +
> +static void cd_scsi_cmd_read_capacity(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    uint32_t last_blk =3D dev->num_blocks - 1;
> +    uint32_t blk_size =3D dev->block_size;
> +    uint32_t *last_blk_out =3D (uint32_t *)req->buf;
> +    uint32_t *blk_size_out =3D (uint32_t *)(req->buf + 4);
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +    req->req_len =3D 8;
> +
> +    *last_blk_out =3D htobe32(last_blk);
> +    *blk_size_out =3D htobe32(blk_size);
> +
> +    SPICE_DEBUG("Read capacity, lun:%u last_blk: %u blk_sz: %u",
> +                req->lun, last_blk, blk_size);
> +
> +    req->in_len =3D 8;
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define RDI_TYPE_STANDARD           0 /* Standard Disc Information */
> +#define RDI_TYPE_TRACK_RESOURCES    1 /* Track Resources Information */
> +#define RDI_TYPE_POW_RESOURCES      2 /* POW Resources Information */
> +
> +#define RDI_STANDARD_LEN            34
> +
> +#define RDI_ERAZABLE                (0x01 << 4)
> +#define RDI_NON_ERAZABLE            (0x00 << 4)
> +
> +#define RDI_SESSION_EMPTY           (0x00 << 2)
> +#define RDI_SESSION_INCOMPLETE      (0x01 << 2)
> +#define RDI_SESSION_DAMAGED         (0x02 << 2)
> +#define RDI_SESSION_COMPLETE        (0x03 << 2)
> +
> +#define RDI_DISC_EMPTY              0x00
> +#define RDI_DISC_INCOMPLETE         0x01
> +#define RDI_DISC_COMPLETE           0x02
> +#define RDI_DISC_RANDOM_WR          0x03
> +
> +#define RDI_DISC_PMA_TYPE_CD_ROM    0x00
> +#define RDI_DISC_PMA_TYPE_CDI       0x10
> +#define RDI_DISC_PMA_TYPE_DDCD      0x20
> +#define RDI_DISC_PMA_TYPE_UNDEFINED 0xFF
> +
> +static void cd_scsi_cmd_get_read_disc_information(CdScsiLU *dev, CdScsiR=
equest *req)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint32_t data_type;
> +    uint32_t first_track =3D 1;
> +    uint32_t last_track =3D 1;
> +    uint32_t num_sessions =3D 1;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    data_type =3D req->cdb[1] & 0x7;
> +    if (data_type !=3D RDI_TYPE_STANDARD) {
> +        SPICE_DEBUG("read_disc_information, lun:%u"
> +                    " unsupported data type: %02x",
> +                    req->lun, data_type);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        return;
> +    }
> +
> +    req->req_len =3D (req->cdb[7] << 8) | req->cdb[8];
> +    req->in_len =3D MIN(req->req_len, RDI_STANDARD_LEN);
> +
> +    memset(outbuf, 0, RDI_STANDARD_LEN);
> +    outbuf[1] =3D RDI_STANDARD_LEN - 2; /* length excluding the counter =
itself */
> +    outbuf[2] =3D RDI_NON_ERAZABLE | RDI_SESSION_COMPLETE | RDI_DISC_COM=
PLETE;
> +    outbuf[3] =3D first_track; /* on disk */
> +    outbuf[4] =3D num_sessions & 0xff; /* lsb */
> +    outbuf[5] =3D first_track & 0xff; /* in last sesson, lsb */
> +    outbuf[6] =3D last_track & 0xff; /* in last sesson, lsb */
> +    outbuf[8] =3D RDI_DISC_PMA_TYPE_CD_ROM;
> +    outbuf[9] =3D (num_sessions >> 8) & 0xff; /* msb */
> +    outbuf[10] =3D (first_track >> 8) & 0xff; /* in last sesson, lsb */
> +    outbuf[11] =3D (last_track >> 8) & 0xff; /* in last sesson, lsb */
> +
> +    SPICE_DEBUG("read_disc_information, lun:%u len: %" G_GUINT64_FORMAT,
> +                req->lun, req->in_len);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define RTI_ADDR_TYPE_LBA           0x00
> +#define RTI_ADDR_TYPE_TRACK_NUM     0x01
> +#define RTI_ADDR_TYPE_SESSION_NUM   0x02
> +
> +#define RTI_TRACK_NUM_LEAD_IN       0x00
> +#define RTI_TRACK_NUM_INVISIBLE     0xff
> +
> +#define TIB_LEN                     0x36
> +
> +#define TIB_TRACK_MODE_CD           0x04
> +#define TIB_DATA_MODE_ISO_10149     0x01
> +
> +#define TIB_LRA_VALID               (0x01 << 1)
> +
> +static void cd_scsi_cmd_get_read_track_information(CdScsiLU *dev, CdScsi=
Request *req)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint32_t track_size =3D dev->num_blocks;
> +    uint32_t last_addr =3D track_size - 1;
> +    uint32_t track_num =3D 1;
> +    uint32_t session_num =3D 1;
> +    uint32_t addr_type;
> +    uint32_t addr_num;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    addr_type =3D req->cdb[1] & 0x3;
> +    addr_num =3D (req->cdb[2] << 24) | (req->cdb[3] << 16) |
> +               (req->cdb[4] << 8) | req->cdb[5];
> +
> +    switch (addr_type) {
> +    case RTI_ADDR_TYPE_LBA:
> +        if (addr_num > last_addr) {
> +            SPICE_DEBUG("read_track_information, lun:%u"
> +                        " addr_type LBA: %u"
> +                        " invalid LBA: %u",
> +                        req->lun, addr_type, addr_num);
> +            cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALI=
D_CDB_FIELD);
> +            return;
> +        }
> +        break;
> +    case RTI_ADDR_TYPE_TRACK_NUM:
> +        if (addr_num !=3D track_num) {
> +            SPICE_DEBUG("read_track_information, lun:%u"
> +                        " addr_type track: %u"
> +                        " invalid track: %u",
> +                        req->lun, addr_type, addr_num);
> +            cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALI=
D_CDB_FIELD);
> +            return;
> +        }
> +        break;
> +    case RTI_ADDR_TYPE_SESSION_NUM:
> +        if (addr_num !=3D session_num) {
> +            SPICE_DEBUG("read_track_information, lun:%u"
> +                        " addr_type session: %u"
> +                        " invalid session: %u",
> +                        req->lun, addr_type, addr_num);
> +            cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALI=
D_CDB_FIELD);
> +            return;
> +        }
> +        break;
> +    default:
> +        SPICE_DEBUG("read_track_information, lun:%u"
> +                    " invalid addr_type: %u"
> +                    " addr_num: %u",
> +                    req->lun, addr_type, addr_num);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        return;
> +    }
> +
> +    req->req_len =3D (req->cdb[7] << 8) | req->cdb[8];
> +    req->in_len =3D MIN(req->req_len, TIB_LEN);
> +
> +    memset(outbuf, 0, TIB_LEN);
> +    outbuf[1] =3D TIB_LEN - 2;
> +    outbuf[2] =3D session_num;
> +    outbuf[3] =3D track_num;
> +    outbuf[5] =3D TIB_TRACK_MODE_CD & 0x0f;
> +    outbuf[6] =3D TIB_DATA_MODE_ISO_10149 & 0x0f;
> +    outbuf[7] =3D TIB_LRA_VALID;
> +
> +    /* Track size */
> +    outbuf[24] =3D (track_size >> 24) & 0xff;
> +    outbuf[25] =3D (track_size >> 16) & 0xff;
> +    outbuf[26] =3D (track_size >> 8) & 0xff;
> +    outbuf[27] =3D (track_size) & 0xff;
> +
> +    /* Last recorded address */
> +    outbuf[28] =3D (last_addr >> 24) & 0xff;
> +    outbuf[29] =3D (last_addr >> 16) & 0xff;
> +    outbuf[30] =3D (last_addr >> 8) & 0xff;
> +    outbuf[31] =3D (last_addr) & 0xff;
> +
> +    SPICE_DEBUG("read_track_information, lun:%u"
> +                "addr_type: %u addr_num: %u",
> +                req->lun, addr_type, addr_num);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define READ_TOC_TRACK_DESC_LEN     8
> +#define READ_TOC_RESP_LEN           (4 + 2*READ_TOC_TRACK_DESC_LEN)
> +
> +static void cd_scsi_cmd_read_toc(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint32_t msf, format, track_num;
> +    uint32_t last_blk =3D dev->num_blocks - 1;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    msf =3D (req->cdb[1] >> 1) & 0x1;
> +    format =3D req->cdb[2] & 0xf;
> +    track_num =3D req->cdb[6];
> +
> +    req->req_len =3D (req->cdb[7] << 8) | req->cdb[8];
> +    req->in_len =3D MIN(req->req_len, READ_TOC_RESP_LEN);
> +
> +    memset(outbuf, 0, READ_TOC_RESP_LEN);
> +    outbuf[1] =3D READ_TOC_RESP_LEN - 2; /* length excluding the counter=
 itself */
> +    outbuf[2] =3D 1; /* first track/session */
> +    outbuf[3] =3D 1; /* last track/session */
> +
> +    outbuf[5] =3D 0x04; /* Data CD, no Q-subchannel */
> +    outbuf[6] =3D 0x01; /* Track number */
> +    outbuf[10] =3D msf ? 0x02 : 0x0;
> +
> +    outbuf[13] =3D 0x04; /* Data CD, no Q-subchannel */
> +    outbuf[14] =3D 0xaa; /* Track number */
> +    if (msf) {
> +        last_blk =3D 0xff300000;
> +    }
> +    outbuf[16] =3D last_blk >> 24;
> +    outbuf[17] =3D last_blk >> 16;
> +    outbuf[18] =3D last_blk >> 8;
> +    outbuf[19] =3D last_blk;
> +
> +    SPICE_DEBUG("read_toc, lun:%u len: %" G_GUINT64_FORMAT
> +                " msf: %x format: 0x%02x track/session: 0x%02x",
> +                req->lun, req->in_len, msf, format, track_num);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define CD_MODE_PARAM_6_LEN_HEADER              4
> +#define CD_MODE_PARAM_10_LEN_HEADER             8
> +
> +#define CD_MODE_PAGE_LEN_RW_ERROR               12
> +
> +static uint32_t cd_scsi_add_mode_page_rw_error_recovery(CdScsiLU *dev, u=
int8_t *outbuf)
> +{
> +    uint32_t page_len =3D CD_MODE_PAGE_LEN_RW_ERROR;
> +
> +    outbuf[0] =3D MODE_PAGE_R_W_ERROR;
> +    outbuf[1] =3D CD_MODE_PAGE_LEN_RW_ERROR - 2;
> +    outbuf[3] =3D 1; /* read retry count */
> +
> +    return page_len;
> +}
> +
> +#define CD_MODE_PAGE_LEN_POWER                  12
> +
> +static uint32_t cd_scsi_add_mode_page_power_condition(CdScsiLU *dev, uin=
t8_t *outbuf)
> +{
> +    uint32_t page_len =3D CD_MODE_PAGE_LEN_POWER;
> +
> +    outbuf[0] =3D MODE_PAGE_POWER;
> +    outbuf[1] =3D CD_MODE_PAGE_LEN_POWER - 2;
> +
> +    return page_len;
> +}
> +
> +#define CD_MODE_PAGE_LEN_FAULT_FAIL             12
> +#define CD_MODE_PAGE_FAULT_FAIL_FLAG_PERF       0x80
> +
> +static uint32_t cd_scsi_add_mode_page_fault_reporting(CdScsiLU *dev, uin=
t8_t *outbuf)
> +{
> +    uint32_t page_len =3D CD_MODE_PAGE_LEN_FAULT_FAIL;
> +
> +    outbuf[0] =3D MODE_PAGE_FAULT_FAIL;
> +    outbuf[1] =3D CD_MODE_PAGE_LEN_FAULT_FAIL - 2;
> +    outbuf[2] |=3D CD_MODE_PAGE_FAULT_FAIL_FLAG_PERF;
> +
> +    return page_len;
> +}
> +
> +#define CD_MODE_PAGE_LEN_CAPS_MECH_STATUS_RO    26
> +/* byte 2 */
> +#define CD_MODE_PAGE_CAPS_CD_R_READ             0x01
> +#define CD_MODE_PAGE_CAPS_CD_RW_READ            (0x01 << 1)
> +#define CD_MODE_PAGE_CAPS_DVD_ROM_READ          (0x01 << 3)
> +#define CD_MODE_PAGE_CAPS_DVD_R_READ            (0x01 << 4)
> +#define CD_MODE_PAGE_CAPS_DVD_RAM_READ          (0x01 << 5)
> +/* byte 6 */
> +#define CD_MODE_PAGE_CAPS_LOCK_SUPPORT          (0x01)
> +#define CD_MODE_PAGE_CAPS_LOCK_STATE            (0x01 << 1)
> +#define CD_MODE_PAGE_CAPS_PREVENT_JUMPER        (0x01 << 2)
> +#define CD_MODE_PAGE_CAPS_EJECT                 (0x01 << 3)
> +#define CD_MODE_PAGE_CAPS_LOADING_TRAY          (0x01 << 5)
> +
> +static uint32_t cd_scsi_add_mode_page_caps_mech_status(CdScsiLU *dev, ui=
nt8_t *outbuf)
> +{
> +    uint32_t page_len =3D CD_MODE_PAGE_LEN_CAPS_MECH_STATUS_RO; /* no wr=
ite */
> +
> +    outbuf[0] =3D MODE_PAGE_CAPS_MECH_STATUS;
> +    outbuf[1] =3D page_len;
> +    outbuf[2] =3D CD_MODE_PAGE_CAPS_CD_R_READ | CD_MODE_PAGE_CAPS_CD_RW_=
READ |
> +                CD_MODE_PAGE_CAPS_DVD_ROM_READ | CD_MODE_PAGE_CAPS_DVD_R=
_READ |
> +                CD_MODE_PAGE_CAPS_DVD_RAM_READ;
> +    outbuf[6] =3D CD_MODE_PAGE_CAPS_LOADING_TRAY | CD_MODE_PAGE_CAPS_EJE=
CT |
> +                CD_MODE_PAGE_CAPS_LOCK_SUPPORT;
> +    if (dev->prevent_media_removal) {
> +        outbuf[6] |=3D CD_MODE_PAGE_CAPS_LOCK_STATE;
> +    }
> +
> +    return page_len;
> +}
> +
> +static void cd_scsi_cmd_mode_sense_10(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    int long_lba, dbd, page, sub_page, pc;
> +    uint32_t resp_len =3D CD_MODE_PARAM_10_LEN_HEADER;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    long_lba =3D (req->cdb[1] >> 4) & 0x1;
> +    dbd =3D (req->cdb[1] >> 3) & 0x1;
> +    page =3D req->cdb[2] & 0x3f;
> +    pc =3D req->cdb[2] >> 6;
> +    sub_page =3D req->cdb[3];
> +
> +    req->req_len =3D (req->cdb[7] << 8) | req->cdb[8];
> +
> +    memset(outbuf, 0, req->req_len);
> +    outbuf[2] =3D  0; /* medium type */
> +
> +    switch (page) {
> +    case MODE_PAGE_R_W_ERROR:
> +        /* Read/Write Error Recovery */
> +        resp_len +=3D cd_scsi_add_mode_page_rw_error_recovery(dev, outbu=
f + resp_len);
> +        break;
> +    case MODE_PAGE_POWER:
> +        /* Power Condistions */
> +        resp_len +=3D cd_scsi_add_mode_page_power_condition(dev, outbuf =
+ resp_len);
> +        break;
> +    case MODE_PAGE_FAULT_FAIL:
> +        /* Fault / Failure Reporting Control */
> +        resp_len +=3D cd_scsi_add_mode_page_fault_reporting(dev, outbuf =
+ resp_len);
> +        break;
> +    case MODE_PAGE_CAPS_MECH_STATUS:
> +        resp_len +=3D cd_scsi_add_mode_page_caps_mech_status(dev, outbuf=
 + resp_len);
> +        break;
> +
> +    /* not implemented */
> +    case MODE_PAGE_WRITE_PARAMETER: /* Writer Parameters */
> +    case MODE_PAGE_MRW:
> +    case MODE_PAGE_MRW_VENDOR: /* MRW (Mount Rainier Re-writable Disks */
> +    case MODE_PAGE_CD_DEVICE: /* CD Device parameters */
> +    case MODE_PAGE_TO_PROTECT: /* Time-out and Protect */
> +    default:
> +        SPICE_DEBUG("mode_sense_10, lun:%u"
> +                    " page 0x%x not implemented",
> +                    req->lun, (unsigned)page);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        return;
> +    }
> +
> +    outbuf[0] =3D ((resp_len - 2) >> 8) & 0xff;
> +    outbuf[1] =3D (resp_len - 2) & 0xff;
> +
> +    req->in_len =3D MIN(req->req_len, resp_len);
> +
> +    SPICE_DEBUG("mode_sense_10, lun:%u"
> +                " long_lba %d, dbd %d, page %d, sub_page %d, pc %d; "
> +                "resp_len %u",
> +                req->lun, long_lba, dbd, page, sub_page, pc, resp_len);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +static void cd_scsi_cmd_mode_select_6(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    uint8_t *block_desc_data, *mode_data;
> +    uint32_t page_format, save_pages, list_len; /* cdb */
> +    uint32_t num_blocks =3D 0, block_len =3D 0; /* block descriptor */
> +    uint32_t mode_len, medium_type, dev_param, block_desc_len; /* mode p=
aram header */
> +    uint32_t page_num =3D 0, page_len =3D 0; /* mode page */
> +
> +    page_format =3D (req->cdb[1] >> 4) & 0x1;
> +    save_pages =3D req->cdb[1] & 0x1;
> +    list_len =3D req->cdb[4];
> +
> +    if (list_len > req->buf_len) {
> +        SPICE_DEBUG("mode_select_6, lun:%u"
> +                    " pf:%u sp:%u"
> +                    " list_len:%u exceeds data_len:%u",
> +                    req->lun, page_format, save_pages, list_len, req->bu=
f_len);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_PA=
RAM_LEN);
> +        return;
> +    }
> +
> +    mode_len =3D req->buf[0];
> +    medium_type =3D req->buf[1];
> +    dev_param =3D req->buf[2];
> +    block_desc_len =3D req->buf[3];
> +
> +    if (block_desc_len) {
> +        block_desc_data =3D &req->buf[CD_MODE_PARAM_6_LEN_HEADER];
> +        num_blocks =3D (block_desc_data[3] << 16) | (block_desc_data[2] =
<< 8) | block_desc_data[3];
> +        block_len =3D (block_desc_data[5] << 16) | (block_desc_data[6] <=
< 8) | block_desc_data[7];
> +    }
> +
> +    if (mode_len) {
> +        mode_data =3D &req->buf[CD_MODE_PARAM_6_LEN_HEADER];
> +        if (block_desc_len) {
> +            mode_data +=3D block_desc_len;
> +        }
> +        page_num =3D mode_data[0] & 0x3f;
> +        page_len =3D mode_data[1];
> +    }
> +
> +    SPICE_DEBUG("mode_select_6, lun:%u"
> +                " pf:%u sp:%u list_len:%u data_len:%u"
> +                " mode_len:%u medium:%u dev_param:%u blk_desc_len:%u"
> +                " num_blocks:%u block_len:%u"
> +                " page_num:%u page_len:%u",
> +                req->lun, page_format, save_pages, list_len, req->buf_le=
n,
> +                mode_len, medium_type, dev_param, block_desc_len,
> +                num_blocks, block_len,
> +                page_num, page_len);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +static void cd_scsi_cmd_mode_select_10(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    uint32_t page_format, save_pages, list_len;
> +
> +    page_format =3D (req->cdb[1] >> 4) & 0x1;
> +    save_pages =3D req->cdb[1] & 0x1;
> +    list_len =3D (req->cdb[7] << 8) | req->cdb[8];
> +
> +    if (list_len > req->buf_len) {
> +        SPICE_DEBUG("mode_select_10, lun:%u pf:%u sp:%u"
> +                    " list_len:%u exceeds data_len:%u",
> +                    req->lun, page_format, save_pages, list_len, req->bu=
f_len);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_PA=
RAM_LEN);
> +        return;
> +    }
> +
> +    SPICE_DEBUG("mode_select_10, lun:%u pf:%u sp:%u"
> +                " list_len:%u data_len:%u",
> +                req->lun, page_format, save_pages, list_len, req->buf_le=
n);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define CD_FEATURE_HEADER_LEN               8
> +#define CD_FEATURE_DESC_LEN                 4
> +
> +#define CD_PROFILE_DESC_LEN                 4
> +#define CD_PROFILE_CURRENT                  0x01
> +
> +/* Profiles List */
> +#define CD_FEATURE_NUM_PROFILES_LIST        0x00
> +/* Core - Basic Functionality */
> +#define CD_FEATURE_NUM_CORE                 0x01
> +/* Morphing - The device changes its behavior due to external events */
> +#define CD_FEATURE_NUM_MORPH                0x02
> +/* Removable Medium - The medium may be removed from the device */
> +#define CD_FEATURE_NUM_REMOVABLE            0x03
> +/* Random Readable - PP=3D1 Read ability for storage devices with random=
 addressing */
> +#define CD_FEATURE_NUM_RANDOM_READ          0x10
> +/* CD Read - The ability to read CD specific structures */
> +#define CD_FEATURE_NUM_CD_READ              0x1E
> +/* DVD Read - The ability to read DVD specific structures */
> +#define CD_FEATURE_NUM_DVD_READ             0x1F
> +/* Power Management - Initiator and device directed power management */
> +#define CD_FEATURE_NUM_POWER_MNGT           0x100
> +/* Timeout */
> +#define CD_FEATURE_NUM_TIMEOUT              0x105
> +
> +#define CD_FEATURE_REQ_ALL                  0
> +#define CD_FEATURE_REQ_CURRENT              1
> +#define CD_FEATURE_REQ_SINGLE               2
> +
> +#define CD_FEATURE_CURRENT                  0x01
> +#define CD_FEATURE_PERSISTENT               0x02
> +
> +#define CD_FEATURE_VERSION_1                (0x01 << 2)
> +
> +#define CD_FEATURE_PHYS_IF_SCSI             0x01
> +
> +#define CD_FEATURE_REMOVABLE_LOADING_TRAY   (0x01 << 5)
> +#define CD_FEATURE_REMOVABLE_EJECT          (0x01 << 3)
> +#define CD_FEATURE_REMOVABLE_NO_PRVNT_JMPR  (0x01 << 2)
> +#define CD_FEATURE_REMOVABLE_LOCK           (0x01)
> +
> +static gboolean cd_scsi_feature_reportable(uint32_t feature, uint32_t st=
art_feature,
> +                                           uint32_t req_type)
> +{
> +    return (req_type =3D=3D CD_FEATURE_REQ_SINGLE && start_feature =3D=
=3D feature) ||
> +           (feature >=3D start_feature);
> +}
> +
> +static uint32_t cd_scsi_add_feature_profiles_list(CdScsiLU *dev, uint8_t=
 *outbuf,
> +                                                  uint32_t start_feature=
, uint32_t req_type)
> +{
> +    uint8_t *profile =3D outbuf + CD_FEATURE_DESC_LEN;
> +    uint32_t feature_len =3D CD_FEATURE_DESC_LEN;
> +    uint32_t add_len, profile_num;
> +
> +    if (!cd_scsi_feature_reportable(CD_FEATURE_NUM_PROFILES_LIST, start_=
feature, req_type)) {
> +        return 0;
> +    }
> +    /* feature descriptor header */
> +    outbuf[0] =3D (CD_FEATURE_NUM_PROFILES_LIST >> 8) & 0xff;
> +    outbuf[1] =3D CD_FEATURE_NUM_PROFILES_LIST & 0xff;
> +    outbuf[2] =3D CD_FEATURE_PERSISTENT | CD_FEATURE_CURRENT;
> +
> +    /* DVD-ROM profile descriptor */
> +    add_len =3D CD_PROFILE_DESC_LEN; /* start with single profile, add l=
ater */
> +    profile_num =3D MMC_PROFILE_DVD_ROM;
> +
> +    profile[0] =3D (profile_num >> 8) & 0xff; /* feature code */
> +    profile[1] =3D profile_num & 0xff;
> +    profile[2] =3D (!dev->cd_rom) ? CD_PROFILE_CURRENT : 0;
> +
> +    /* next profile */
> +    add_len +=3D CD_PROFILE_DESC_LEN;
> +    profile +=3D CD_PROFILE_DESC_LEN;
> +
> +    /* CD-ROM profile descriptor */
> +    profile_num =3D MMC_PROFILE_CD_ROM;
> +    profile[0] =3D (profile_num >> 8) & 0xff;
> +    profile[1] =3D profile_num & 0xff;
> +    profile[2] =3D dev->cd_rom ? CD_PROFILE_CURRENT : 0;
> +
> +    outbuf[3] =3D add_len;
> +    feature_len +=3D add_len;
> +
> +    return feature_len;
> +}
> +
> +#define CD_FEATURE_CORE_PHYS_PROFILE_LEN    4
> +
> +static uint32_t cd_scsi_add_feature_core(CdScsiLU *dev, uint8_t *outbuf,
> +                                         uint32_t start_feature, uint32_=
t req_type)
> +{
> +    uint8_t *profile =3D outbuf + CD_FEATURE_DESC_LEN;
> +    uint32_t feature_len =3D CD_FEATURE_DESC_LEN + CD_FEATURE_CORE_PHYS_=
PROFILE_LEN;
> +
> +    if (!cd_scsi_feature_reportable(CD_FEATURE_NUM_CORE, start_feature, =
req_type)) {
> +        return 0;
> +    }
> +    outbuf[0] =3D (CD_FEATURE_NUM_CORE >> 8) & 0xff;
> +    outbuf[1] =3D CD_FEATURE_NUM_CORE & 0xff;
> +    outbuf[2] =3D CD_FEATURE_PERSISTENT | CD_FEATURE_CURRENT;
> +    outbuf[3] =3D CD_FEATURE_CORE_PHYS_PROFILE_LEN;
> +
> +    profile[3] =3D CD_FEATURE_PHYS_IF_SCSI;
> +
> +    return feature_len;
> +}
> +
> +#define CD_FEATURE_MORPH_PROGILE_LEN    4
> +#define CD_FEATURE_MORPH_ASYNC_EVENTS   0x01
> +
> +static uint32_t cd_scsi_add_feature_morph(CdScsiLU *dev, uint8_t *outbuf,
> +                                          uint32_t start_feature, uint32=
_t req_type)
> +{
> +    uint8_t *profile =3D outbuf + CD_FEATURE_DESC_LEN;
> +    uint32_t feature_len =3D CD_FEATURE_DESC_LEN + CD_FEATURE_MORPH_PROG=
ILE_LEN;
> +
> +    if (!cd_scsi_feature_reportable(CD_FEATURE_NUM_MORPH, start_feature,=
 req_type)) {
> +        return 0;
> +    }
> +    outbuf[1] =3D CD_FEATURE_NUM_MORPH;
> +    outbuf[2] =3D CD_FEATURE_PERSISTENT | CD_FEATURE_CURRENT;
> +    outbuf[3] =3D CD_FEATURE_MORPH_PROGILE_LEN;
> +
> +    profile[0] =3D CD_FEATURE_MORPH_ASYNC_EVENTS;
> +
> +    return feature_len;
> +}
> +
> +#define CD_FEATURE_REMOVABLE_PROFILE_LEN    4
> +
> +static uint32_t cd_scsi_add_feature_removable(CdScsiLU *dev, uint8_t *ou=
tbuf,
> +                                              uint32_t start_feature, ui=
nt32_t req_type)
> +{
> +    uint8_t *profile =3D outbuf + CD_FEATURE_DESC_LEN;
> +    uint32_t feature_len =3D CD_FEATURE_DESC_LEN + CD_FEATURE_REMOVABLE_=
PROFILE_LEN;
> +
> +    if (!cd_scsi_feature_reportable(CD_FEATURE_NUM_REMOVABLE, start_feat=
ure, req_type)) {
> +        return 0;
> +    }
> +    outbuf[1] =3D CD_FEATURE_NUM_REMOVABLE;
> +    outbuf[2] =3D CD_FEATURE_PERSISTENT | CD_FEATURE_CURRENT;
> +    outbuf[3] =3D CD_FEATURE_REMOVABLE_PROFILE_LEN;
> +
> +    profile[0] =3D CD_FEATURE_REMOVABLE_NO_PRVNT_JMPR;
> +    if (dev->removable) {
> +        profile[0] |=3D (CD_FEATURE_REMOVABLE_LOADING_TRAY | CD_FEATURE_=
REMOVABLE_EJECT);
> +    }
> +
> +    return feature_len;
> +}
> +
> +#define CD_FEATURE_RANDOM_READ_PROFILE_LEN    8
> +
> +static uint32_t cd_scsi_add_feature_random_read(CdScsiLU *dev, uint8_t *=
outbuf,
> +                                                uint32_t start_feature, =
uint32_t req_type)
> +{
> +    uint8_t *profile =3D outbuf + CD_FEATURE_DESC_LEN;
> +    uint32_t feature_len =3D CD_FEATURE_DESC_LEN + CD_FEATURE_RANDOM_REA=
D_PROFILE_LEN;
> +
> +    if (!cd_scsi_feature_reportable(CD_FEATURE_NUM_RANDOM_READ, start_fe=
ature, req_type)) {
> +        return 0;
> +    }
> +    outbuf[0] =3D (CD_FEATURE_NUM_RANDOM_READ >> 8) & 0xff;
> +    outbuf[1] =3D CD_FEATURE_NUM_RANDOM_READ & 0xff;
> +    outbuf[2] =3D CD_FEATURE_PERSISTENT | CD_FEATURE_CURRENT;
> +    outbuf[3] =3D CD_FEATURE_RANDOM_READ_PROFILE_LEN;
> +
> +    profile[0] =3D (dev->block_size >> 24) & 0xff;
> +    profile[1] =3D (dev->block_size >> 16) & 0xff;
> +    profile[2] =3D (dev->block_size >> 8) & 0xff;
> +    profile[3] =3D (dev->block_size) & 0xff;
> +    profile[5] =3D (dev->cd_rom) ? 0x01 : 0x10; /* logical blocks per re=
adable unit */
> +
> +    return feature_len;
> +}
> +
> +#define CD_FEATURE_CD_READ_PROFILE_LEN    4
> +
> +static uint32_t cd_scsi_add_feature_cd_read(CdScsiLU *dev, uint8_t *outb=
uf,
> +                                            uint32_t start_feature, uint=
32_t req_type)
> +{
> +    uint8_t *profile =3D outbuf + CD_FEATURE_DESC_LEN;
> +    uint32_t feature_len =3D CD_FEATURE_DESC_LEN + CD_FEATURE_CD_READ_PR=
OFILE_LEN;
> +
> +    if (!cd_scsi_feature_reportable(CD_FEATURE_NUM_CD_READ, start_featur=
e, req_type)) {
> +        return 0;
> +    }
> +    outbuf[0] =3D (CD_FEATURE_NUM_CD_READ >> 8) & 0xff;
> +    outbuf[1] =3D (CD_FEATURE_NUM_CD_READ) & 0xff;
> +    outbuf[2] =3D CD_FEATURE_VERSION_1 | CD_FEATURE_PERSISTENT | CD_FEAT=
URE_CURRENT;
> +    outbuf[3] =3D CD_FEATURE_CD_READ_PROFILE_LEN;
> +
> +    profile[0] =3D 0; /* C2 Errors, CD-Text not supporte */
> +
> +    return feature_len;
> +}
> +
> +#define CD_FEATURE_DVD_READ_PROFILE_LEN    0
> +
> +static uint32_t cd_scsi_add_feature_dvd_read(CdScsiLU *dev, uint8_t *out=
buf,
> +                                             uint32_t start_feature, uin=
t32_t req_type)
> +{
> +    uint32_t feature_len =3D CD_FEATURE_DESC_LEN + CD_FEATURE_DVD_READ_P=
ROFILE_LEN;
> +
> +    if (!cd_scsi_feature_reportable(CD_FEATURE_NUM_CD_READ, start_featur=
e, req_type)) {
> +        return 0;
> +    }
> +    outbuf[0] =3D (CD_FEATURE_NUM_DVD_READ >> 8) & 0xff;
> +    outbuf[1] =3D (CD_FEATURE_NUM_DVD_READ) & 0xff;
> +    outbuf[2] =3D CD_FEATURE_VERSION_1 | CD_FEATURE_PERSISTENT | CD_FEAT=
URE_CURRENT;
> +    outbuf[3] =3D CD_FEATURE_DVD_READ_PROFILE_LEN;
> +
> +    return feature_len;
> +}
> +
> +#define CD_FEATURE_POWER_MNGT_PROFILE_LEN    0
> +
> +static uint32_t cd_scsi_add_feature_power_mgmt(CdScsiLU *dev, uint8_t *o=
utbuf,
> +                                               uint32_t start_feature, u=
int32_t req_type)
> +{
> +    uint32_t feature_len =3D CD_FEATURE_DESC_LEN + CD_FEATURE_POWER_MNGT=
_PROFILE_LEN;
> +
> +    if (!cd_scsi_feature_reportable(CD_FEATURE_NUM_POWER_MNGT, start_fea=
ture, req_type)) {
> +        return 0;
> +    }
> +    outbuf[0] =3D (CD_FEATURE_NUM_POWER_MNGT >> 8) & 0xff;
> +    outbuf[1] =3D (CD_FEATURE_NUM_POWER_MNGT) & 0xff;
> +    outbuf[2] =3D CD_FEATURE_PERSISTENT | CD_FEATURE_CURRENT;
> +    outbuf[3] =3D CD_FEATURE_POWER_MNGT_PROFILE_LEN;
> +
> +    return feature_len;
> +}
> +
> +#define CD_FEATURE_TIMEOUT_PROFILE_LEN    0
> +
> +static uint32_t cd_scsi_add_feature_timeout(CdScsiLU *dev, uint8_t *outb=
uf,
> +                                            uint32_t start_feature, uint=
32_t req_type)
> +{
> +    uint32_t feature_len =3D CD_FEATURE_DESC_LEN + CD_FEATURE_TIMEOUT_PR=
OFILE_LEN;
> +
> +    if (!cd_scsi_feature_reportable(CD_FEATURE_NUM_TIMEOUT, start_featur=
e, req_type)) {
> +        return 0;
> +    }
> +    outbuf[0] =3D (CD_FEATURE_NUM_TIMEOUT >> 8) & 0xff;
> +    outbuf[1] =3D CD_FEATURE_NUM_TIMEOUT & 0xff;
> +    outbuf[2] =3D CD_FEATURE_PERSISTENT | CD_FEATURE_CURRENT;
> +    outbuf[3] =3D CD_FEATURE_TIMEOUT_PROFILE_LEN;
> +
> +    return feature_len;
> +}
> +
> +static void cd_scsi_cmd_get_configuration(CdScsiLU *dev, CdScsiRequest *=
req)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint32_t profile_num =3D (!dev->cd_rom) ? MMC_PROFILE_DVD_ROM : MMC_=
PROFILE_CD_ROM;
> +    uint32_t req_type, start_feature, resp_len;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    req_type =3D req->cdb[1] & 0x3;
> +    start_feature =3D (req->cdb[2] << 8) | req->cdb[3];
> +    req->req_len =3D (req->cdb[7] << 8) | req->cdb[8];
> +
> +    memset(outbuf, 0, req->req_len);
> +
> +    /* at least Feature Header should be present, to be filled later */
> +    resp_len =3D CD_FEATURE_HEADER_LEN;
> +
> +    switch (req_type) {
> +    case CD_FEATURE_REQ_ALL:
> +    case CD_FEATURE_REQ_CURRENT:
> +        resp_len +=3D cd_scsi_add_feature_profiles_list(dev, outbuf + re=
sp_len, start_feature,
> +                                                      req_type);
> +        resp_len +=3D cd_scsi_add_feature_core(dev, outbuf + resp_len, s=
tart_feature, req_type);
> +        resp_len +=3D cd_scsi_add_feature_morph(dev, outbuf + resp_len, =
start_feature, req_type);
> +        resp_len +=3D cd_scsi_add_feature_removable(dev, outbuf + resp_l=
en, start_feature, req_type);
> +        resp_len +=3D cd_scsi_add_feature_random_read(dev, outbuf + resp=
_len, start_feature,
> +                                                    req_type);
> +        resp_len +=3D cd_scsi_add_feature_cd_read(dev, outbuf + resp_len=
, start_feature, req_type);
> +        resp_len +=3D cd_scsi_add_feature_dvd_read(dev, outbuf + resp_le=
n, start_feature, req_type);
> +        resp_len +=3D cd_scsi_add_feature_power_mgmt(dev, outbuf + resp_=
len, start_feature, req_type);
> +        resp_len +=3D cd_scsi_add_feature_timeout(dev, outbuf + resp_len=
, start_feature, req_type);
> +        break;
> +    case CD_FEATURE_REQ_SINGLE:
> +        switch (start_feature) {
> +        case CD_FEATURE_NUM_CORE:
> +            resp_len +=3D cd_scsi_add_feature_core(dev, outbuf + resp_le=
n, start_feature, req_type);
> +            break;
> +        case CD_FEATURE_NUM_MORPH:
> +            resp_len +=3D cd_scsi_add_feature_morph(dev, outbuf + resp_l=
en, start_feature, req_type);
> +            break;
> +        case CD_FEATURE_NUM_REMOVABLE:
> +            resp_len +=3D cd_scsi_add_feature_removable(dev, outbuf + re=
sp_len, start_feature,
> +                                                      req_type);
> +            break;
> +        case CD_FEATURE_NUM_RANDOM_READ:
> +            resp_len +=3D cd_scsi_add_feature_random_read(dev, outbuf + =
resp_len, start_feature,
> +                                                        req_type);
> +            break;
> +        case CD_FEATURE_NUM_CD_READ:
> +            resp_len +=3D cd_scsi_add_feature_cd_read(dev, outbuf + resp=
_len, start_feature,
> +                                                    req_type);
> +            break;
> +        case CD_FEATURE_NUM_DVD_READ:
> +            resp_len +=3D cd_scsi_add_feature_dvd_read(dev, outbuf + res=
p_len, start_feature,
> +                                                     req_type);
> +            break;
> +        case CD_FEATURE_NUM_POWER_MNGT:
> +            resp_len +=3D cd_scsi_add_feature_power_mgmt(dev, outbuf + r=
esp_len, start_feature,
> +                                                       req_type);
> +            break;
> +        case CD_FEATURE_NUM_TIMEOUT:
> +            resp_len +=3D cd_scsi_add_feature_timeout(dev, outbuf + resp=
_len, start_feature,
> +                                                    req_type);
> +            break;
> +        default:
> +            break;
> +        }
> +        break;
> +
> +    default:
> +        SPICE_DEBUG("get_configuration, lun:%u invalid rt:%u start_f:%u",
> +                    req->lun, req_type, start_feature);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        return;
> +    }
> +
> +    /* set total data len */
> +    outbuf[0] =3D (resp_len >> 24) & 0xff;
> +    outbuf[1] =3D (resp_len >> 16) & 0xff;
> +    outbuf[2] =3D (resp_len >> 8) & 0xff;
> +    outbuf[3] =3D resp_len & 0xff;
> +
> +    /* report current profile num */
> +    outbuf[6] =3D (profile_num >> 8) & 0xff;
> +    outbuf[7] =3D profile_num & 0xff;
> +
> +    req->in_len =3D MIN(req->req_len, resp_len);
> +
> +    SPICE_DEBUG("get_configuration, lun:%u rt:%u start_f:%u resp_len:%u",
> +                req->lun, req_type, start_feature, resp_len);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define CD_GET_EVENT_STATUS_IMMED            0x01
> +
> +#define CD_GET_EVENT_HEADER_NO_EVENT_AVAIL  (0x01 << 7)
> +#define CD_GET_EVENT_HEADER_LEN             4
> +
> +#define CD_GET_EVENT_CLASS_NONE             (0x00)
> +#define CD_GET_EVENT_CLASS_OPER_CHANGE      (0x01)
> +#define CD_GET_EVENT_CLASS_POWER_MGMT       (0x02)
> +#define CD_GET_EVENT_CLASS_EXTERNAL_REQ     (0x03)
> +#define CD_GET_EVENT_CLASS_MEDIA            (0x04)
> +#define CD_GET_EVENT_CLASS_MULTI_INITIATOR  (0x05)
> +#define CD_GET_EVENT_CLASS_DEV_BUSY         (0x06)
> +
> +#define CD_GET_EVENT_LEN_MEDIA              4
> +
> +#define CD_MEDIA_STATUS_MEDIA_PRESENT       0x1
> +#define CD_MEDIA_STATUS_TRAY_OPEN           0x2
> +
> +static uint32_t cd_scsi_cmd_get_event_resp_add_media(CdScsiLU *dev, uint=
8_t *outbuf)
> +{
> +    outbuf[0] =3D (uint8_t)dev->media_event & 0x0f;
> +    outbuf[1] =3D (uint8_t)((dev->loaded ? 0 : CD_MEDIA_STATUS_TRAY_OPEN=
) |
> +                          (dev->stream !=3D NULL ? CD_MEDIA_STATUS_MEDIA=
_PRESENT : 0));
> +
> +    dev->media_event =3D CD_MEDIA_EVENT_NO_CHANGE; /* reset the event */
> +    return CD_GET_EVENT_LEN_MEDIA;
> +}
> +
> +#define CD_GET_EVENT_LEN_POWER              4
> +
> +#define CD_POWER_STATUS_ACTIVE              0x1
> +#define CD_POWER_STATUS_IDLE                0x2
> +
> +static uint32_t cd_scsi_cmd_get_event_resp_add_power(CdScsiLU *dev, uint=
8_t *outbuf)
> +{
> +    outbuf[0] =3D (uint8_t)dev->power_event & 0x0f;
> +    outbuf[1] =3D (uint8_t)((dev->power_cond =3D=3D CD_SCSI_POWER_ACTIVE=
) ?
> +                           CD_POWER_STATUS_ACTIVE : CD_POWER_STATUS_IDLE=
);
> +
> +    dev->power_event =3D CD_POWER_EVENT_NO_CHANGE; /* reset the event */
> +    return CD_GET_EVENT_LEN_POWER;
> +}
> +
> +static void cd_scsi_cmd_get_event_status_notification(CdScsiLU *dev, CdS=
csiRequest *req)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint32_t resp_len =3D CD_GET_EVENT_HEADER_LEN;
> +    const uint32_t power_class_mask =3D (0x01 << CD_GET_EVENT_CLASS_POWE=
R_MGMT);
> +    const uint32_t media_class_mask =3D (0x01 << CD_GET_EVENT_CLASS_MEDI=
A);
> +    uint32_t classes_supported =3D  power_class_mask | media_class_mask;
> +    uint32_t immed, classes_requested;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    immed =3D req->cdb[1] & CD_GET_EVENT_STATUS_IMMED;
> +    classes_requested =3D req->cdb[4];
> +    req->req_len =3D (req->cdb[7] << 8) | req->cdb[8];
> +
> +    if (!immed) {
> +        SPICE_DEBUG("get_event_status_notification, lun:%u"
> +                " imm:0 class_req:%02x, Non-immediate (async) mode unsup=
ported",
> +                req->lun, classes_requested);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        return;
> +    }
> +
> +    memset(outbuf, 0, req->req_len);
> +    if ((classes_supported & classes_requested) !=3D 0) {
> +        if (classes_requested & power_class_mask) {
> +            outbuf[2] =3D CD_GET_EVENT_CLASS_POWER_MGMT;
> +            outbuf[3] =3D (uint8_t)power_class_mask;
> +
> +            SPICE_DEBUG("get_event_status_notification, lun:%u"
> +                        " imm:%u class_req:0x%02x class_sup:0x%02x"
> +                        " power_event:0x%02x power_cond:0x%02x",
> +                        req->lun, immed, classes_requested, classes_supp=
orted,
> +                        dev->power_event, dev->power_cond);
> +
> +            resp_len +=3D cd_scsi_cmd_get_event_resp_add_power(dev, outb=
uf + resp_len);
> +        } else if (classes_requested & media_class_mask) {
> +            outbuf[2] =3D CD_GET_EVENT_CLASS_MEDIA;
> +            outbuf[3] =3D (uint8_t)media_class_mask;
> +
> +            SPICE_DEBUG("get_event_status_notification, lun:%u"
> +                        " imm:%u class_req:0x%02x class_sup:0x%02x"
> +                        " media_event:0x%02x loaded: %d",
> +                        req->lun, immed, classes_requested, classes_supp=
orted,
> +                        dev->media_event, dev->loaded);
> +
> +            resp_len +=3D cd_scsi_cmd_get_event_resp_add_media(dev, outb=
uf + resp_len);
> +        }
> +    } else {
> +        outbuf[2] =3D CD_GET_EVENT_HEADER_NO_EVENT_AVAIL | CD_GET_EVENT_=
CLASS_NONE;
> +
> +        SPICE_DEBUG("get_event_status_notification, lun:%u"
> +                    " imm:%u class_req:0x%02x class_sup:0x%02x"
> +                    " none of requested events supported",
> +                    req->lun, immed, classes_requested, classes_supporte=
d);
> +    }
> +    outbuf[1] =3D (uint8_t)(resp_len - 2); /* Event Data Length LSB, len=
gth excluding the
> +                                          * field itself */
> +    outbuf[3] =3D (uint8_t)classes_supported;
> +
> +    req->in_len =3D MIN(req->req_len, resp_len);
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define CD_EXT_REQ_EVENT_FORMAT_NO_CHG          0x00
> +#define CD_EXT_REQ_EVENT_FORMAT_LU_KEY_DOWN     0x01
> +#define CD_EXT_REQ_EVENT_FORMAT_LU_KEY_UP       0x02
> +#define CD_EXT_REQ_EVENT_FORMAT_REQ_NOTIFY      0x03
> +
> +#define CD_EXT_REQ_STATUS_READY                 0x00
> +#define CD_EXT_REQ_STATUS_OTHER_PREVENT         0x01
> +
> +#define CD_EXT_REQ_CODE_NO_REQUEST              0x00
> +#define CD_EXT_REQ_CODE_OVERRUN                 0x01
> +#define CD_EXT_REQ_CODE_PLAY                    0x101
> +#define CD_EXT_REQ_CODE_REWIND                  0x102
> +#define CD_EXT_REQ_CODE_FAST_FW                 0x103
> +#define CD_EXT_REQ_CODE_PAUSE                   0x104
> +#define CD_EXT_REQ_CODE_STOP                    0x106
> +#define CD_EXT_REQ_CODE_ASCII_BASE              0x200 /* SCSII value is =
LSB */
> +
> +static void cd_scsi_cmd_send_event(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    uint8_t *param, *event;
> +    uint32_t immed, param_list_len;
> +    uint32_t event_param_len, notification_class;
> +    uint32_t ext_req_event, ext_req_status, pers_prevent, ext_req_code;
> +
> +    req->xfer_dir =3D SCSI_XFER_TO_DEV;
> +
> +    immed =3D req->cdb[1] & 0x01;
> +    param_list_len =3D (req->cdb[8] << 8) | req->cdb[9];
> +
> +    if (req->buf_len < param_list_len) {
> +        SPICE_DEBUG("send_event, lun:%u invalid param list len:0x%x, buf=
_len:0x%x",
> +                    req->lun, param_list_len, req->buf_len);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_PA=
RAM_LEN);
> +        return;
> +    }
> +    param =3D req->buf;
> +    event_param_len =3D (param[0] << 8) | param[1];
> +
> +    notification_class =3D param[2] & 0x07;
> +    if (notification_class !=3D CD_GET_EVENT_CLASS_EXTERNAL_REQ) {
> +        SPICE_DEBUG("send_event, lun:%u invalid notification class:0x%x",
> +                    req->lun, notification_class);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        return;
> +    }
> +
> +    event =3D param + CD_GET_EVENT_HEADER_LEN;
> +    ext_req_event =3D event[0] & 0xff;
> +    ext_req_status =3D event[1] & 0x0f;
> +    pers_prevent =3D event[1] & 0x80;
> +    ext_req_code =3D (event[2] << 8) | event[3];
> +
> +    SPICE_DEBUG("send_event, lun:0x%u immed:%u param_len:%u"
> +                " ext_req_event:0x%x ext_req_status:0x%x"
> +                " pers_prevent:0x%x ext_req_code:0x%x",
> +                req->lun, immed, event_param_len, ext_req_event,
> +                ext_req_status, pers_prevent, ext_req_code);
> +
> +    /* ToDo: process the event */
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define CD_MEDIUM_REMOVAL_REQ_ALLOW                 0x00
> +#define CD_MEDIUM_REMOVAL_REQ_PREVENT               0x01
> +#define CD_MEDIUM_REMOVAL_REQ_ALLOW_CHANGER         0x02
> +#define CD_MEDIUM_REMOVAL_REQ_PREVENT_CHANGER       0x03
> +
> +static void cd_scsi_cmd_allow_medium_removal(CdScsiLU *dev, CdScsiReques=
t *req)
> +{
> +    uint32_t prevent;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    prevent =3D req->cdb[4] & 0x03;
> +    dev->prevent_media_removal =3D (prevent =3D=3D CD_MEDIUM_REMOVAL_REQ=
_PREVENT ||
> +                                  prevent =3D=3D CD_MEDIUM_REMOVAL_REQ_P=
REVENT_CHANGER);
> +    req->in_len =3D 0;
> +
> +    SPICE_DEBUG("allow_medium_removal, lun:%u prevent field::0x%02x flag=
:%d",
> +                req->lun, prevent, dev->prevent_media_removal);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +static void cd_scsi_cmd_report_key(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    SPICE_DEBUG("report_key - content protection unsupported, lun:%u", r=
eq->lun);
> +    req->xfer_dir =3D SCSI_XFER_NONE;
> +    cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_OPCODE=
);
> +}
> +
> +static void cd_scsi_cmd_send_key(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    SPICE_DEBUG("send_key - content protection unsupported, lun:%u", req=
->lun);
> +    req->xfer_dir =3D SCSI_XFER_NONE;
> +    cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_OPCODE=
);
> +}
> +
> +/* byte 1 */
> +#define CD_START_STOP_FLAG_IMMED                    0x01
> +
> +/* byte 4 */
> +#define CD_START_STOP_FLAG_START                    0x01
> +#define CD_START_STOP_FLAG_LOEJ                     0x02
> +
> +/* POWER CONDITION field values */
> +#define CD_START_STOP_POWER_COND_START_VALID        0x00
> +#define CD_START_STOP_POWER_COND_ACTIVE             0x01
> +#define CD_START_STOP_POWER_COND_IDLE               0x02
> +#define CD_START_STOP_POWER_COND_STANDBY            0x03
> +#define CD_START_STOP_POWER_COND_LU_CONTROL         0x07
> +#define CD_START_STOP_POWER_COND_FORCE_IDLE_0       0x0a
> +#define CD_START_STOP_POWER_COND_FORCE_STANDBY_0    0x0b
> +
> +static inline const char *cd_scsi_start_stop_power_cond_name(uint32_t po=
wer_cond)
> +{
> +    switch (power_cond) {
> +    case CD_START_STOP_POWER_COND_START_VALID:
> +        return "START_VALID";
> +    case CD_START_STOP_POWER_COND_ACTIVE:
> +        return "ACTIVE";
> +    case CD_START_STOP_POWER_COND_IDLE:
> +        return "IDLE";
> +    case CD_START_STOP_POWER_COND_STANDBY:
> +        return "STANDBY";
> +    case CD_START_STOP_POWER_COND_LU_CONTROL:
> +        return "LU_CONTROL";
> +    case CD_START_STOP_POWER_COND_FORCE_IDLE_0:
> +        return "FORCE_IDLE_0";
> +    case CD_START_STOP_POWER_COND_FORCE_STANDBY_0:
> +        return "FORCE_STANDBY_0";
> +    default:
> +        return "RESERVED";
> +    }
> +}
> +
> +static void cd_scsi_cmd_start_stop_unit(CdScsiLU *dev, CdScsiRequest *re=
q)
> +{
> +    gboolean immed, start, load_eject;
> +    uint32_t power_cond;
> +
> +    req->xfer_dir =3D SCSI_XFER_NONE;
> +    req->in_len =3D 0;
> +
> +    immed =3D (req->cdb[1] & CD_START_STOP_FLAG_IMMED) ? TRUE : FALSE;
> +    start =3D (req->cdb[4] & CD_START_STOP_FLAG_START) ? TRUE : FALSE;
> +    load_eject =3D (req->cdb[4] & CD_START_STOP_FLAG_LOEJ) ? TRUE : FALS=
E;
> +    power_cond =3D req->cdb[4] >> 4;
> +
> +    SPICE_DEBUG("start_stop_unit, lun:0x%u"
> +                " immed:%d start:%d load_eject:%d power_cond:0x%x(%s)",
> +                req->lun, immed, start, load_eject, power_cond,
> +                cd_scsi_start_stop_power_cond_name(power_cond));
> +
> +    switch (power_cond) {
> +    case CD_START_STOP_POWER_COND_START_VALID:
> +        if (!start) { /* stop the unit */
> +            if (load_eject) { /* eject medium */
> +                if (dev->prevent_media_removal) {
> +                    SPICE_DEBUG("start_stop_unit, lun:0x%u"
> +                                " prevent_media_removal set, eject faile=
d", req->lun);
> +                    cd_scsi_cmd_complete_check_cond(dev, req, &sense_cod=
e_MEDIUM_REMOVAL_PREVENTED);
> +                    return;
> +                }
> +                SPICE_DEBUG("start_stop_unit, lun:0x%u eject", req->lun);
> +                cd_scsi_lu_unload(dev);
> +                cd_scsi_dev_changed(dev->tgt->user_data, req->lun);
> +            }
> +            dev->power_cond =3D CD_SCSI_POWER_STOPPED;
> +            SPICE_DEBUG("start_stop_unit, lun:0x%u stopped", req->lun);
> +        } else { /* start the unit */
> +            dev->power_cond =3D CD_SCSI_POWER_ACTIVE;
> +            SPICE_DEBUG("start_stop_unit, lun:0x%u started", req->lun);
> +
> +            if (load_eject) { /* load medium */
> +                SPICE_DEBUG("start_stop_unit, lun:0x%u load with no medi=
a",
> +                            req->lun);
> +                cd_scsi_lu_load(dev, NULL);
> +                cd_scsi_dev_changed(dev->tgt->user_data, req->lun);
> +            }
> +        }
> +        break;
> +    case CD_START_STOP_POWER_COND_ACTIVE:
> +        /* not error to specify transition to the current power conditio=
n */
> +        dev->power_cond =3D CD_SCSI_POWER_ACTIVE;
> +        SPICE_DEBUG("start_stop_unit, lun:0x%u active", req->lun);
> +        break;
> +    case CD_START_STOP_POWER_COND_IDLE:
> +    case CD_START_STOP_POWER_COND_FORCE_IDLE_0:
> +        dev->power_cond =3D CD_SCSI_POWER_IDLE;
> +        SPICE_DEBUG("start_stop_unit, lun:0x%u idle", req->lun);
> +        break;
> +    case CD_START_STOP_POWER_COND_STANDBY:
> +    case CD_START_STOP_POWER_COND_FORCE_STANDBY_0:
> +        dev->power_cond =3D CD_SCSI_POWER_STANDBY;
> +        SPICE_DEBUG("start_stop_unit, lun:0x%u standby", req->lun);
> +        break;
> +    case CD_START_STOP_POWER_COND_LU_CONTROL:
> +        break;
> +    default:
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        return;
> +    }
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +#define CD_PERF_TYPE_PERFORMANCE                0x00
> +#define CD_PERF_TYPE_UNUSABLE_AREA              0x01
> +#define CD_PERF_TYPE_DEFECT_STATUS              0x02
> +#define CD_PERF_TYPE_WRITE_SPEED                0x03
> +
> +#define CD_PERF_HEADER_LEN                      8
> +
> +#define CD_PERF_TYPE_PERFORMANCE_DESCR_LEN      16
> +
> +#define CD_PERF_TYPE_PERFORMANCE_REPORT_NOMINAL 0x00
> +#define CD_PERF_TYPE_PERFORMANCE_REPORT_ALL     0x01
> +#define CD_PERF_TYPE_PERFORMANCE_REPORT_EXCEPT  0x10
> +
> +
> +static void cd_scsi_get_performance_resp_empty(CdScsiLU *dev, CdScsiRequ=
est *req,
> +                                               uint32_t type, uint32_t d=
ata_type,
> +                                               uint32_t max_num_descr)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint32_t write =3D (data_type >> 2) & 0x01;
> +
> +    memset(outbuf, 0, CD_PERF_HEADER_LEN);
> +    if (write) {
> +        outbuf[4] =3D 0x02;
> +    }
> +    req->in_len =3D CD_PERF_HEADER_LEN;
> +
> +    SPICE_DEBUG("get_performance, lun:%u"
> +                " type:0x%x data_type:0x%x - sending empty response",
> +                req->lun, type, data_type);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +static void cd_scsi_get_performance_resp_performance(CdScsiLU *dev, CdSc=
siRequest *req,
> +                                                     uint32_t start_lba,
> +                                                     uint32_t data_type,
> +                                                     uint32_t max_num_de=
scr)
> +{
> +    uint8_t *outbuf =3D req->buf, *perf_desc;
> +    uint32_t resp_len =3D CD_PERF_HEADER_LEN +
> +                        CD_PERF_TYPE_PERFORMANCE_DESCR_LEN;
> +    uint32_t perf_data_len =3D resp_len - 4; /* not incl. Perf Data Leng=
th */
> +    uint32_t perf_kb =3D 10000;
> +    uint32_t end_lba =3D dev->num_blocks - 1;
> +    uint32_t except, write, tolerance;
> +
> +    except =3D data_type & 0x03;
> +    if (except !=3D CD_PERF_TYPE_PERFORMANCE_REPORT_ALL) {
> +        start_lba =3D 0;
> +    }
> +    write =3D (data_type >> 2) & 0x01;
> +    tolerance =3D (data_type >> 3) & 0x03;
> +
> +    SPICE_DEBUG("get_performance, lun:%u"
> +                " performance type:0x00 data_type:0x%x"
> +                " except:0x%x write:0x%x tolerance:0x%x"
> +                " max_num:%u",
> +                req->lun, data_type, except, write,
> +                tolerance, max_num_descr);
> +
> +    if (write) {
> +        SPICE_DEBUG("get_performance, lun:%u"
> +                    " performance type:0x00 data_type:0x%x - write unsup=
ported",
> +                    req->lun, data_type);
> +        cd_scsi_get_performance_resp_empty(dev, req, CD_PERF_TYPE_PERFOR=
MANCE,
> +                                           data_type, max_num_descr);
> +        return;
> +    }
> +
> +    memset(outbuf, 0, resp_len);
> +
> +    outbuf[0] =3D (perf_data_len >> 24) & 0xff;
> +    outbuf[1] =3D (perf_data_len >> 16) & 0xff;
> +    outbuf[2] =3D (perf_data_len >> 8) & 0xff;
> +    outbuf[3] =3D perf_data_len & 0xff;
> +
> +    perf_desc =3D outbuf + CD_PERF_HEADER_LEN;
> +
> +    perf_desc[0] =3D (start_lba >> 24) & 0xff;
> +    perf_desc[1] =3D (start_lba >> 16) & 0xff;
> +    perf_desc[2] =3D (start_lba >> 8) & 0xff;
> +    perf_desc[3] =3D start_lba & 0xff;
> +
> +    perf_desc[4] =3D (perf_kb >> 24) & 0xff;
> +    perf_desc[5] =3D (perf_kb >> 16) & 0xff;
> +    perf_desc[6] =3D (perf_kb >> 8) & 0xff;
> +    perf_desc[7] =3D perf_kb & 0xff;
> +
> +    perf_desc[8] =3D (end_lba >> 24) & 0xff;
> +    perf_desc[9] =3D (end_lba >> 16) & 0xff;
> +    perf_desc[10] =3D (end_lba >> 8) & 0xff;
> +    perf_desc[11] =3D end_lba & 0xff;
> +
> +    perf_desc[12] =3D (perf_kb >> 24) & 0xff;
> +    perf_desc[13] =3D (perf_kb >> 16) & 0xff;
> +    perf_desc[14] =3D (perf_kb >> 8) & 0xff;
> +    perf_desc[15] =3D perf_kb & 0xff;
> +
> +    req->req_len =3D CD_PERF_HEADER_LEN +
> +                   (max_num_descr * CD_PERF_TYPE_PERFORMANCE_DESCR_LEN);
> +
> +    req->in_len =3D MIN(req->req_len, resp_len);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +static void cd_scsi_cmd_get_performance(CdScsiLU *dev, CdScsiRequest *re=
q)
> +{
> +    uint32_t data_type, max_num_descr, start_lba, type;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    data_type =3D req->cdb[1] & 0x0f;
> +    start_lba =3D (req->cdb[2] << 24) |
> +                (req->cdb[3] << 16) |
> +                (req->cdb[4] << 8) |
> +                 req->cdb[5];
> +    max_num_descr =3D (req->cdb[8] << 8) | req->cdb[9];
> +    type =3D req->cdb[10];
> +
> +    switch (type) {
> +    case CD_PERF_TYPE_PERFORMANCE:
> +        cd_scsi_get_performance_resp_performance(dev, req, start_lba,
> +                                                 data_type, max_num_desc=
r);
> +        break;
> +    case CD_PERF_TYPE_UNUSABLE_AREA: /* not writable */
> +    case CD_PERF_TYPE_DEFECT_STATUS: /* not restricted overwrite media */
> +    case CD_PERF_TYPE_WRITE_SPEED: /* unsupported, irrelevant */
> +    default:
> +        SPICE_DEBUG("get_performance, lun:%u"
> +                    " unsupported type:0x%x"
> +                    " data_type:0x%x max_num:%u",
> +                    req->lun, type, data_type, max_num_descr);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        return;
> +    }
> +}
> +
> +#define CD_MECHANISM_STATUS_HDR_LEN     8
> +
> +/* byte 0 */
> +#define CD_CHANGER_FAULT_FLAG           0x80
> +
> +#define CD_CHANGER_READY                0x00
> +#define CD_CHANGER_LOADING              0x01
> +#define CD_CHANGER_UNLOADING            0x02
> +#define CD_CHANGER_INITIALIZING         0x03
> +
> +/* byte 1 */
> +#define CD_CHANGER_DOOR_OPEN_FLAG       0x10
> +
> +#define CD_MECHANISM_STATE_IDLE         0x00
> +#define CD_MECHANISM_STATE_PLAYING      0x01
> +#define CD_MECHANISM_STATE_SCANNING     0x02
> +/* ACTIVE: with Initiator, Composite or Other ports
> +  (i.e. READ, PLAY CD, SCAN during PLAY CD) */
> +#define CD_MECHANISM_STATE_ACTIVE       0x03
> +#define CD_MECHANISM_STATE_NO_INFO      0x07
> +
> +/* slots */
> +#define CD_MECHANISM_STATUS_SLOT_LEN    4
> +
> +#define CD_MECHANISM_SLOT_DISK_CHANGED  0x01
> +#define CD_MECHANISM_SLOT_DISK_PRESENT  0x80
> +#define CD_MECHANISM_SLOT_DISK_CWP_V    0x02
> +#define CD_MECHANISM_SLOT_DISK_CWP      0x01
> +
> +static void cd_scsi_cmd_mechanism_status(CdScsiLU *dev, CdScsiRequest *r=
eq)
> +{
> +    uint8_t *outbuf =3D req->buf;
> +    uint32_t resp_len =3D CD_MECHANISM_STATUS_HDR_LEN;
> +
> +    req->xfer_dir =3D SCSI_XFER_FROM_DEV;
> +
> +    req->req_len =3D (req->cdb[8] << 8) | req->cdb[9];
> +    memset(outbuf, 0, req->req_len);
> +
> +    /* For non-changer devices the curent slot number field is reserved,=
 set only status */
> +    outbuf[0] |=3D (CD_CHANGER_READY << 5);
> +
> +    outbuf[1] |=3D (!dev->loaded) ? CD_CHANGER_DOOR_OPEN_FLAG : 0;
> +    outbuf[1] |=3D (dev->power_cond =3D=3D CD_POWER_STATUS_ACTIVE) ?
> +                 (CD_MECHANISM_STATE_ACTIVE << 5) : (CD_MECHANISM_STATE_=
IDLE << 5);
> +
> +    /* For non-changer devices the number of slot tables returned shall =
be zero, so we leave
> +       both 'Number of Slots Available' and 'Length of Slot Table' field=
s as zeros */
> +
> +    req->in_len =3D MIN(req->req_len, resp_len);
> +
> +    SPICE_DEBUG("mechanism_status, lun:%u", req->lun);
> +
> +    cd_scsi_cmd_complete_good(dev, req);
> +}
> +
> +static void cd_scsi_read_async_complete(GObject *src_object,
> +                                        GAsyncResult *result,
> +                                        gpointer user_data)
> +{
> +    GFileInputStream *stream =3D G_FILE_INPUT_STREAM(src_object);
> +    CdScsiRequest *req =3D (CdScsiRequest *)user_data;
> +    CdScsiTarget *st =3D (CdScsiTarget *)req->priv_data;
> +    CdScsiLU *dev =3D &st->units[req->lun];
> +    GError *error =3D NULL;
> +    gsize bytes_read;
> +    gboolean finished;
> +
> +    req->req_state =3D SCSI_REQ_COMPLETE;
> +    req->cancel_id =3D 0;
> +
> +//    g_assert(stream =3D=3D dev->stream);
> +    if (stream !=3D dev->stream) {
> +        uint32_t opcode =3D (uint32_t)req->cdb[0];
> +        SPICE_DEBUG("read_async_complete BAD STREAM, lun: %u"
> +                    " req: %" G_GUINT64_FORMAT " op: 0x%02x",
> +                    req->lun, req->req_len, opcode);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_TARGET_FAI=
LURE);
> +        cd_scsi_dev_request_complete(st->user_data, req);
> +        return;
> +    }
> +
> +    bytes_read =3D g_input_stream_read_finish(G_INPUT_STREAM(stream), re=
sult, &error);
> +    finished =3D bytes_read > 0;
> +    if (finished) {
> +        SPICE_DEBUG("read_async_complete, lun: %u"
> +                    " finished: %d bytes_read: %" G_GUINT64_FORMAT
> +                    " req: %"  G_GUINT64_FORMAT,
> +                    req->lun, finished, (uint64_t)bytes_read, req->req_l=
en);
> +
> +        req->in_len =3D MIN(bytes_read, req->req_len);
> +        req->status =3D GOOD;
> +    } else {
> +        if (error !=3D NULL) {
> +            SPICE_ERROR("g_input_stream_read_finish failed: %s", error->=
message);
> +            g_clear_error (&error);
> +        } else {
> +            SPICE_ERROR("g_input_stream_read_finish failed (no err provi=
ded)");
> +        }
> +        req->in_len =3D 0;
> +        req->status =3D GOOD;
> +    }
> +    cd_scsi_dev_request_complete(st->user_data, req);
> +}
> +
> +static void cd_scsi_read_async_canceled(GCancellable *cancellable, gpoin=
ter user_data)
> +{
> +    CdScsiRequest *req =3D (CdScsiRequest *)user_data;
> +    CdScsiTarget *st =3D (CdScsiTarget *)req->priv_data;
> +
> +    g_assert(cancellable =3D=3D st->cancellable);
> +    g_cancellable_disconnect(cancellable, req->cancel_id);
> +    req->cancel_id =3D 0;
> +
> +    req->req_state =3D
> +        (st->state =3D=3D CD_SCSI_TGT_STATE_RUNNING) ? SCSI_REQ_CANCELED=
 : SCSI_REQ_DISPOSED;
> +    req->in_len =3D 0;
> +    req->status =3D GOOD;
> +
> +    cd_scsi_dev_request_complete(st->user_data, req);
> +}
> +
> +static int cd_scsi_read_async_start(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    CdScsiTarget *st =3D dev->tgt;
> +    GFileInputStream *stream =3D dev->stream;
> +
> +    SPICE_DEBUG("read_async_start, lun:%u"
> +                " lba: %" G_GUINT64_FORMAT " offset: %" G_GUINT64_FORMAT
> +                " cnt: %" G_GUINT64_FORMAT " len: %" G_GUINT64_FORMAT,
> +                req->lun, req->lba, req->offset, req->count, req->req_le=
n);
> +
> +    req->cancel_id =3D g_cancellable_connect(st->cancellable,
> +                                           G_CALLBACK(cd_scsi_read_async=
_canceled),
> +                                           req, /* data */
> +                                           NULL); /* data destroy cb */
> +    if (req->cancel_id =3D=3D 0) {
> +        /* already canceled */
> +        return -1;
> +    }
> +
> +    g_seekable_seek(G_SEEKABLE(stream),
> +                    req->offset,
> +                    G_SEEK_SET,
> +                    NULL, /* cancellable */
> +                    NULL); /* error */
> +
> +    g_input_stream_read_async(G_INPUT_STREAM(stream),
> +                              req->buf, /* buffer to fill */
> +                              req->req_len,
> +                              G_PRIORITY_DEFAULT,
> +                              st->cancellable,
> +                              cd_scsi_read_async_complete,
> +                              (gpointer)req); /* callback argument */
> +    return 0;
> +}
> +
> +static void cd_scsi_cmd_read(CdScsiLU *dev, CdScsiRequest *req)
> +{
> +    if (dev->power_cond =3D=3D CD_SCSI_POWER_STOPPED) {
> +        SPICE_DEBUG("read, lun: %u is stopped", req->lun);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INIT_CMD_R=
EQUIRED);
> +        return;
> +    } else if (!dev->loaded || dev->stream =3D=3D NULL) {
> +        SPICE_DEBUG("read, lun: %u is not loaded", req->lun);
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_NOT_READY_=
NO_MEDIUM);
> +        return;
> +    }
> +
> +    req->cdb_len =3D scsi_cdb_length(req->cdb);
> +
> +    req->lba =3D scsi_cdb_lba(req->cdb, req->cdb_len);
> +    req->offset =3D req->lba * dev->block_size;
> +
> +    req->count =3D scsi_cdb_xfer_length(req->cdb, req->cdb_len); /* xfer=
 in blocks */
> +    req->req_len =3D (uint64_t) req->count * dev->block_size;
> +
> +    cd_scsi_read_async_start(dev, req);
> +}
> +
> +void cd_scsi_dev_request_submit(CdScsiTarget *st, CdScsiRequest *req)
> +{
> +    uint32_t lun =3D req->lun;
> +    uint32_t opcode =3D (uint32_t)req->cdb[0];
> +    const char *cmd_name =3D scsi_cmd_name[opcode];
> +    CdScsiLU *dev =3D &st->units[lun];
> +
> +    SPICE_DEBUG("request_submit, lun: %u op: 0x%02x %s", lun, opcode, cm=
d_name);
> +
> +    if (st->cur_req !=3D NULL) {
> +        SPICE_ERROR("request_submit, request not idle");
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_TARGET_FAI=
LURE);
> +        goto done;
> +    }
> +    if (req->req_state !=3D SCSI_REQ_IDLE) {
> +        SPICE_ERROR("request_submit, prev request outstanding");
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_TARGET_FAI=
LURE);
> +        goto done;
> +    }
> +    req->req_state =3D SCSI_REQ_RUNNING;
> +    st->cur_req =3D req;
> +
> +    /* INQUIRY should send response even for non-existing LUNs */
> +    if (!cd_scsi_target_lun_legal(st, lun)) {
> +        SPICE_ERROR("request_submit, illegal lun:%u", lun);
> +        if (opcode =3D=3D INQUIRY) {
> +            if (req->cdb[1] & 0x1) {
> +                cd_scsi_cmd_inquiry_vpd_no_lun(dev, req, PERIF_QUALIFIER=
_UNSUPPORTED);
> +            } else {
> +                cd_scsi_cmd_inquiry_standard_no_lun(dev, req, PERIF_QUAL=
IFIER_UNSUPPORTED);
> +            }
> +        } else {
> +            cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_LUN_NO=
T_SUPPORTED);
> +        }
> +        goto done;
> +    }
> +    if (!cd_scsi_target_lun_realized(st, lun)) {
> +        SPICE_ERROR("request_submit, absent lun:%u", lun);
> +        if (opcode =3D=3D INQUIRY) {
> +            if (req->cdb[1] & 0x1) {
> +                cd_scsi_cmd_inquiry_vpd_no_lun(dev, req, PERIF_QUALIFIER=
_NOT_CONNECTED);
> +            } else {
> +                cd_scsi_cmd_inquiry_standard_no_lun(dev, req, PERIF_QUAL=
IFIER_NOT_CONNECTED);
> +            }
> +        } else {
> +            cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_LUN_NO=
T_SUPPORTED);
> +        }
> +        goto done;
> +    }
> +
> +    if (dev->short_sense.key !=3D NO_SENSE) {
> +        gboolean pending_sense =3D TRUE;
> +        if (dev->short_sense.key =3D=3D UNIT_ATTENTION) {
> +            if (cd_scsi_opcode_ua_supress(opcode)) {
> +                pending_sense =3D FALSE; /* UA supressed */
> +            }
> +        } else if (opcode =3D=3D REQUEST_SENSE) {
> +            pending_sense =3D FALSE; /* sense returned as data */
> +        }
> +        if (pending_sense) {
> +            cd_scsi_cmd_complete_check_cond(dev, req, NULL); /* sense al=
ready set */
> +            goto done;
> +        }
> +    }
> +
> +    /* save the target to be used in callbacks where only req is passed =
*/
> +    req->priv_data =3D (void *)st;
> +
> +    req->req_len =3D 0;
> +
> +    switch (opcode) {
> +    case REPORT_LUNS:
> +        cd_scsi_cmd_report_luns(st, dev, req);
> +        break;
> +    case TEST_UNIT_READY:
> +        cd_scsi_cmd_test_unit_ready(dev, req);
> +        break;
> +    case INQUIRY:
> +        cd_scsi_cmd_inquiry(dev, req);
> +        break;
> +    case REQUEST_SENSE:
> +        cd_scsi_cmd_request_sense(dev, req);
> +        break;
> +    case READ_6:
> +    case READ_10:
> +    case READ_12:
> +    case READ_16:
> +        cd_scsi_cmd_read(dev, req);
> +        break;
> +    case READ_CAPACITY_10:
> +        cd_scsi_cmd_read_capacity(dev, req);
> +        break;
> +    case READ_TOC:
> +        cd_scsi_cmd_read_toc(dev, req);
> +        break;
> +    case GET_EVENT_STATUS_NOTIFICATION:
> +        cd_scsi_cmd_get_event_status_notification(dev, req);
> +        break;
> +    case READ_DISC_INFORMATION:
> +        cd_scsi_cmd_get_read_disc_information(dev, req);
> +        break;
> +    case READ_TRACK_INFORMATION:
> +        cd_scsi_cmd_get_read_track_information(dev, req);
> +        break;
> +    case MODE_SENSE_10:
> +        cd_scsi_cmd_mode_sense_10(dev, req);
> +        break;
> +    case MODE_SELECT:
> +        cd_scsi_cmd_mode_select_6(dev, req);
> +        break;
> +    case MODE_SELECT_10:
> +        cd_scsi_cmd_mode_select_10(dev, req);
> +        break;
> +    case GET_CONFIGURATION:
> +        cd_scsi_cmd_get_configuration(dev, req);
> +        break;
> +    case ALLOW_MEDIUM_REMOVAL:
> +        cd_scsi_cmd_allow_medium_removal(dev, req);
> +        break;
> +    case MMC_SEND_EVENT:
> +        cd_scsi_cmd_send_event(dev, req);
> +        break;
> +    case MMC_REPORT_KEY:
> +        cd_scsi_cmd_report_key(dev, req);
> +        break;
> +    case MMC_SEND_KEY:
> +        cd_scsi_cmd_send_key(dev, req);
> +        break;
> +    case START_STOP:
> +        cd_scsi_cmd_start_stop_unit(dev, req);
> +        break;
> +    case MMC_GET_PERFORMANCE:
> +        cd_scsi_cmd_get_performance(dev, req);
> +        break;
> +    case MMC_MECHANISM_STATUS:
> +        cd_scsi_cmd_mechanism_status(dev, req);
> +        break;
> +    default:
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_OP=
CODE);
> +        break;
> +    }
> +
> +    if (req->req_len > INT32_MAX) {
> +        cd_scsi_cmd_complete_check_cond(dev, req, &sense_code_INVALID_CD=
B_FIELD);
> +        goto done;
> +    }
> +
> +done:
> +    SPICE_DEBUG("request_submit done, lun: %u"
> +                " op: 0x%02x %s, state: %s status: %u len: %" G_GUINT64_=
FORMAT,
> +                lun, opcode, cmd_name, CdScsiReqState_str(req->req_state=
), req->status,
> +                req->in_len);
> +
> +    if (req->req_state =3D=3D SCSI_REQ_COMPLETE) {
> +        cd_scsi_dev_request_complete(st->user_data, req);
> +    }
> +}
> +
> +void cd_scsi_dev_request_cancel(CdScsiTarget *st, CdScsiRequest *req)
> +{
> +    if (st->cur_req =3D=3D req) {
> +        if (req->req_state =3D=3D SCSI_REQ_RUNNING) {
> +            SPICE_DEBUG("request_cancel: lun: %u"
> +                         " op: 0x%02x len: %" G_GUINT64_FORMAT,
> +                        req->lun, (unsigned int)req->cdb[0], req->req_le=
n);
> +            g_cancellable_cancel(st->cancellable);
> +        } else {
> +            SPICE_DEBUG("request_cancel: request is not running");
> +        }
> +    } else {
> +        SPICE_DEBUG("request_cancel: other request is outstanding");
> +    }
> +}
> +
> +void cd_scsi_dev_request_release(CdScsiTarget *st, CdScsiRequest *req)
> +{
> +    st->cur_req =3D NULL;
> +    cd_scsi_req_init(req);
> +
> +    if (st->state =3D=3D CD_SCSI_TGT_STATE_RESET) {
> +        cd_scsi_target_do_reset(st);
> +    }
> +}
> +
> +#endif /* USE_USBREDIR */
> diff --git a/src/cd-scsi.h b/src/cd-scsi.h
> new file mode 100644
> index 00000000..c058a66e
> --- /dev/null
> +++ b/src/cd-scsi.h
> @@ -0,0 +1,120 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +   CD device emulation - SCSI engine
> +
> +   Copyright (C) 2018 Red Hat, Inc.
> +
> +   Red Hat Authors:
> +   Alexander Nezhinsky<anezhins@redhat.com>
> +
> +   This library is free software; you can redistribute it and/or
> +   modify it under the terms of the GNU Lesser General Public
> +   License as published by the Free Software Foundation; either
> +   version 2.1 of the License, or (at your option) any later version.
> +
> +   This library is distributed in the hope that it will be useful,
> +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +   Lesser General Public License for more details.
> +
> +   You should have received a copy of the GNU Lesser General Public
> +   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> +*/
> +
> +#ifndef SPICE_GTK_CD_SCSI_H__
> +#define SPICE_GTK_CD_SCSI_H__
> +
> +#include "cd-scsi-dev-params.h"
> +#include "cd-usb-bulk-msd.h"
> +#include "scsi-constants.h"
> +
> +#if defined(G_OS_WIN32)
> +#include <winsock2.h>
> +#include <windows.h>
> +/* Windows is always LE at the moment */
> +#define le32toh(x)          (x)
> +#define htole32(x)          (x)
> +#define htobe32(x)          htonl(x)
> +#endif
> +
> +typedef enum ScsiXferDir {
> +    SCSI_XFER_NONE =3D 0,  /* TEST_UNIT_READY, ...           */
> +    SCSI_XFER_FROM_DEV,  /* READ, INQUIRY, MODE_SENSE, ... */
> +    SCSI_XFER_TO_DEV,    /* WRITE, MODE_SELECT, ...        */
> +} ScsiXferDir;
> +
> +#define SCSI_CDB_BUF_SIZE   16
> +
> +typedef enum CdScsiReqState {
> +    SCSI_REQ_IDLE =3D 0,
> +    SCSI_REQ_RUNNING,
> +    SCSI_REQ_COMPLETE,
> +    SCSI_REQ_CANCELED,
> +    SCSI_REQ_DISPOSED,
> +} CdScsiReqState;
> +
> +typedef struct CdScsiRequest {
> +    /* request */
> +    uint8_t cdb[SCSI_CDB_BUF_SIZE];
> +    uint32_t cdb_len;
> +
> +    uint32_t lun;
> +
> +    uint8_t *buf;
> +    uint32_t buf_len;
> +
> +    /* internal */
> +    CdScsiReqState req_state;
> +    ScsiXferDir xfer_dir;
> +    uint64_t cancel_id;
> +    void *priv_data;
> +
> +    uint64_t lba; /* offset in logical blocks if relevant */
> +    uint64_t count; /* count in logical blocks */
> +
> +    uint64_t offset; /* scsi cdb offset, normalized to bytes */
> +    uint64_t req_len; /* scsi cdb request length, normalized to bytes */
> +
> +    /* result */
> +    uint64_t in_len; /* length of data actually available after read */
> +    uint32_t status; /* SCSI status code */
> +
> +} CdScsiRequest;
> +
> +CdScsiReqState cd_scsi_get_req_state(CdScsiRequest *req);
> +
> +/* SCSI target/device API */
> +typedef struct CdScsiTarget CdScsiTarget;
> +
> +/* to be used in callbacks */
> +CdScsiTarget *cd_scsi_target_alloc(void *target_user_data, uint32_t max_=
luns);
> +void cd_scsi_target_free(CdScsiTarget *scsi_target);
> +
> +int cd_scsi_dev_realize(CdScsiTarget *scsi_target, uint32_t lun,
> +                        const CdScsiDeviceParameters *dev_params);
> +int cd_scsi_dev_unrealize(CdScsiTarget *scsi_target, uint32_t lun);
> +
> +int cd_scsi_dev_lock(CdScsiTarget *scsi_target, uint32_t lun, gboolean l=
ock);
> +int cd_scsi_dev_load(CdScsiTarget *scsi_target, uint32_t lun,
> +                     const CdScsiMediaParameters *media_params);
> +int cd_scsi_dev_get_info(CdScsiTarget *scsi_target, uint32_t lun, CdScsi=
DeviceInfo *lun_info);
> +int cd_scsi_dev_unload(CdScsiTarget *scsi_target, uint32_t lun);
> +
> +void cd_scsi_dev_request_submit(CdScsiTarget *scsi_target, CdScsiRequest=
 *request);
> +void cd_scsi_dev_request_cancel(CdScsiTarget *scsi_target, CdScsiRequest=
 *request);
> +void cd_scsi_dev_request_release(CdScsiTarget *scsi_target, CdScsiReques=
t *request);
> +
> +int cd_scsi_dev_reset(CdScsiTarget *scsi_target, uint32_t lun);
> +
> +int cd_scsi_target_reset(CdScsiTarget *scsi_target);
> +
> +/* Callbacks
> + * These callbacks are used by upper layer to implement specific SCSI
> + * target devices.
> + */
> +void cd_scsi_dev_request_complete(void *target_user_data, CdScsiRequest =
*request);
> +void cd_scsi_dev_changed(void *target_user_data, uint32_t lun);
> +void cd_scsi_dev_reset_complete(void *target_user_data, uint32_t lun);
> +void cd_scsi_target_reset_complete(void *target_user_data);
> +
> +#endif /* SPICE_GTK_CD_SCSI_H__ */
> diff --git a/src/cd-usb-bulk-msd.c b/src/cd-usb-bulk-msd.c
> new file mode 100644
> index 00000000..49e01eb6
> --- /dev/null
> +++ b/src/cd-usb-bulk-msd.c
> @@ -0,0 +1,544 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +    USB CD Device emulation - Data Bulk transfers - Mass Storage Device
> +
> +    Copyright (C) 2018 Red Hat, Inc.
> +
> +    Red Hat Authors:
> +    Alexander Nezhinsky<anezhins@redhat.com>
> +
> +    This library is free software; you can redistribute it and/or
> +    modify it under the terms of the GNU Lesser General Public
> +    License as published by the Free Software Foundation; either
> +    version 2.1 of the License, or (at your option) any later version.
> +
> +    This library is distributed in the hope that it will be useful,
> +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +    Lesser General Public License for more details.
> +
> +    You should have received a copy of the GNU Lesser General Public
> +    License along with this library; if not, see <http://www.gnu.org/lic=
enses/>.
> +*/
> +
> +#include "config.h"
> +#include "spice/types.h"
> +#include "spice-common.h"
> +#include "spice-util.h"
> +#include "cd-usb-bulk-msd.h"
> +#include "cd-scsi.h"
> +
> +#ifdef USE_USBREDIR
> +
> +#define SPICE_ERROR(fmt, ...) \
> +    do { SPICE_DEBUG("usb-msd error: " fmt , ## __VA_ARGS__); } while (0)
> +
> +typedef enum UsbCdState {
> +    USB_CD_STATE_INIT, /* Not ready */
> +    USB_CD_STATE_CBW, /* Waiting for Command Block */
> +    USB_CD_STATE_DATAOUT, /* Transfer data to device */
> +    USB_CD_STATE_DATAIN, /* Transfer data from device */
> +    USB_CD_STATE_ZERO_DATAIN, /* Need to send zero bulk-in before status=
 */
> +    USB_CD_STATE_CSW, /* Send Command Status */
> +    USB_CD_STATE_DEVICE_RESET, /* reset of a single device */
> +    USB_CD_STATE_TARGET_RESET /* reset of entire target */
> +} UsbCdState;
> +
> +/* USB MSD Command Block Wrapper */
> +struct __attribute__((__packed__)) UsbCdCBW {
> +    uint32_t sig;
> +    uint32_t tag;
> +    uint32_t exp_data_len; /* expected data xfer length for the request =
*/
> +    uint8_t flags;
> +    uint8_t lun;
> +    uint8_t cmd_len; /* actual length of the scsi command that follows */
> +    uint8_t cmd[16]; /* scsi command to perform */
> +};
> +
> +/* USB MSD Command Status Wrapper */
> +struct __attribute__((__packed__)) UsbCdCSW {
> +    uint32_t sig;
> +    uint32_t tag;
> +    uint32_t residue;
> +    uint8_t status;
> +};
> +
> +/* UsbCdCSW::status */
> +typedef enum UsbMsdStatus {
> +    USB_MSD_STATUS_GOOD =3D 0,
> +    USB_MSD_STATUS_FAILED =3D 1,
> +    USB_MSD_STATUS_PHASE_ERR =3D 2,
> +} UsbMsdStatus;
> +
> +typedef struct UsbCdBulkMsdRequest {
> +    CdScsiRequest scsi_req;
> +
> +    uint32_t lun;
> +    uint32_t usb_req_len; /* length of data requested by usb */
> +    uint32_t scsi_in_len; /* length of data returned by scsi limited by =
usb request */
> +
> +    uint32_t xfer_len; /* length of data transfered until now */
> +    uint32_t bulk_in_len; /* length of the last postponed bulk-in reques=
t */
> +
> +    struct UsbCdCSW csw; /* usb status header */
> +} UsbCdBulkMsdRequest;
> +
> +typedef struct UsbCdBulkMsdDevice {
> +    UsbCdState state;
> +    CdScsiTarget *scsi_target; /* scsi handle */
> +    void *usb_user_data; /* used in callbacks to usb */
> +    UsbCdBulkMsdRequest usb_req; /* now supporting a single cmd */
> +    uint8_t *data_buf;
> +    uint32_t data_buf_len;
> +} UsbCdBulkMsdDevice;
> +
> +static inline const char *usb_cd_state_str(UsbCdState state)
> +{
> +    switch (state) {
> +    case USB_CD_STATE_INIT:
> +        return "INIT";
> +    case USB_CD_STATE_CBW:
> +        return "CBW";
> +    case USB_CD_STATE_DATAOUT:
> +        return "DATAOUT";
> +    case USB_CD_STATE_DATAIN:
> +        return "DATAIN";
> +    case USB_CD_STATE_ZERO_DATAIN:
> +        return "ZERO_DATAIN";
> +    case USB_CD_STATE_CSW:
> +        return "CSW";
> +    case USB_CD_STATE_DEVICE_RESET:
> +        return "DEV_RESET";
> +    case USB_CD_STATE_TARGET_RESET:
> +        return "TGT_RESET";
> +    default:
> +        return "ILLEGAL";
> +    }
> +}
> +
> +static void cd_usb_bulk_msd_set_state(UsbCdBulkMsdDevice *cd, UsbCdState=
 state)
> +{
> +    SPICE_DEBUG("State %s -> %s", usb_cd_state_str(cd->state), usb_cd_st=
ate_str(state));
> +    cd->state =3D state;
> +}
> +
> +UsbCdBulkMsdDevice *cd_usb_bulk_msd_alloc(void *usb_user_data, uint32_t =
max_luns)
> +{
> +    UsbCdBulkMsdDevice *cd =3D g_new0(UsbCdBulkMsdDevice, 1);
> +
> +    cd->data_buf_len =3D 256 * 1024;
> +    cd->data_buf =3D g_malloc(cd->data_buf_len);
> +
> +    cd->scsi_target =3D cd_scsi_target_alloc(cd, max_luns);
> +    if (cd->scsi_target =3D=3D NULL) {
> +        g_free(cd->data_buf);
> +        g_free(cd);
> +        return NULL;
> +    }
> +    cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_INIT);
> +    cd->usb_user_data =3D usb_user_data;
> +
> +    SPICE_DEBUG("Alloc, max_luns:%" G_GUINT32_FORMAT, max_luns);
> +    return cd;
> +}
> +
> +int cd_usb_bulk_msd_realize(UsbCdBulkMsdDevice *cd, uint32_t lun,
> +                            const CdScsiDeviceParameters *dev_params)
> +{
> +    CdScsiDeviceParameters scsi_dev_params;
> +    int rc;
> +
> +    scsi_dev_params.vendor =3D dev_params->vendor ? : "SPICE";
> +    scsi_dev_params.product =3D dev_params->product ? : "USB-CD";
> +    scsi_dev_params.version =3D dev_params->version ? : "0.1";
> +    scsi_dev_params.serial =3D dev_params->serial ? : "123456";
> +
> +    rc =3D cd_scsi_dev_realize(cd->scsi_target, lun, &scsi_dev_params);
> +    if (rc !=3D 0) {
> +        SPICE_ERROR("Failed to realize lun:%" G_GUINT32_FORMAT, lun);
> +        return rc;
> +    }
> +
> +    if (cd->state =3D=3D USB_CD_STATE_INIT) {
> +        /* wait next request */
> +        cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CBW);
> +        cd_scsi_dev_request_release(cd->scsi_target, &cd->usb_req.scsi_r=
eq);
> +    }
> +
> +    SPICE_DEBUG("Realize OK lun:%" G_GUINT32_FORMAT, lun);
> +    return 0;
> +}
> +
> +int cd_usb_bulk_msd_lock(UsbCdBulkMsdDevice *cd, uint32_t lun, gboolean =
lock)
> +{
> +    int rc;
> +
> +    rc =3D cd_scsi_dev_lock(cd->scsi_target, lun, lock);
> +    if (rc !=3D 0) {
> +        SPICE_ERROR("Failed to lock lun:%" G_GUINT32_FORMAT, lun);
> +        return rc;
> +    }
> +
> +    SPICE_DEBUG("Lock OK lun:%" G_GUINT32_FORMAT, lun);
> +    return 0;
> +}
> +
> +int cd_usb_bulk_msd_load(UsbCdBulkMsdDevice *cd, uint32_t lun,
> +                         const CdScsiMediaParameters *media_params)
> +{
> +    int rc;
> +
> +    rc =3D cd_scsi_dev_load(cd->scsi_target, lun, media_params);
> +    if (rc !=3D 0) {
> +        SPICE_ERROR("Failed to load lun:%" G_GUINT32_FORMAT, lun);
> +        return rc;
> +    }
> +
> +    SPICE_DEBUG("Load OK lun:%" G_GUINT32_FORMAT, lun);
> +    return 0;
> +}
> +
> +int cd_usb_bulk_msd_get_info(UsbCdBulkMsdDevice *cd, uint32_t lun, CdScs=
iDeviceInfo *lun_info)
> +{
> +    int rc;
> +
> +    rc =3D cd_scsi_dev_get_info(cd->scsi_target, lun, lun_info);
> +    if (rc !=3D 0) {
> +        SPICE_ERROR("Failed to get info lun:%" G_GUINT32_FORMAT, lun);
> +        return rc;
> +    }
> +
> +    return 0;
> +}
> +
> +int cd_usb_bulk_msd_unload(UsbCdBulkMsdDevice *cd, uint32_t lun)
> +{
> +    int rc;
> +
> +    rc =3D cd_scsi_dev_unload(cd->scsi_target, lun);
> +    if (rc !=3D 0) {
> +        SPICE_ERROR("Failed to unload lun:%" G_GUINT32_FORMAT, lun);
> +        return rc;
> +    }
> +
> +    SPICE_DEBUG("Unload OK lun:%" G_GUINT32_FORMAT, lun);
> +    return 0;
> +}
> +
> +int cd_usb_bulk_msd_unrealize(UsbCdBulkMsdDevice *cd, uint32_t lun)
> +{
> +    int rc;
> +
> +    rc =3D cd_scsi_dev_unrealize(cd->scsi_target, lun);
> +    if (rc !=3D 0) {
> +        SPICE_ERROR("Unrealize lun:%" G_GUINT32_FORMAT, lun);
> +        return rc;
> +    }
> +
> +    SPICE_DEBUG("Unrealize lun:%" G_GUINT32_FORMAT, lun);
> +    return 0;
> +}
> +
> +void cd_usb_bulk_msd_free(UsbCdBulkMsdDevice *cd)
> +{
> +    cd_scsi_target_free(cd->scsi_target);
> +    g_free(cd->data_buf);
> +    g_free(cd);
> +
> +    SPICE_DEBUG("Free");
> +}
> +
> +int cd_usb_bulk_msd_reset(UsbCdBulkMsdDevice *cd)
> +{
> +    cd_scsi_target_reset(cd->scsi_target);
> +    cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CBW);
> +
> +    SPICE_DEBUG("Reset");
> +    return 0;
> +}
> +
> +static int parse_usb_msd_cmd(UsbCdBulkMsdDevice *cd, uint8_t *buf, uint3=
2_t cbw_len)
> +{
> +    struct UsbCdCBW *cbw =3D (struct UsbCdCBW *)buf;
> +    UsbCdBulkMsdRequest *usb_req =3D &cd->usb_req;
> +    CdScsiRequest *scsi_req =3D &usb_req->scsi_req;
> +
> +    if (cbw_len !=3D sizeof(*cbw)) {
> +        SPICE_ERROR("CMD: Bad CBW size:%" G_GUINT32_FORMAT, cbw_len);
> +        return -1;
> +    }
> +    if (le32toh(cbw->sig) !=3D 0x43425355) { /* MSD command signature */
> +        SPICE_ERROR("CMD: Bad CBW signature:%08x", le32toh(cbw->sig));
> +        return -1;
> +    }
> +    const uint8_t cmd_len =3D cbw->cmd_len & 0x1F;
> +    if (cmd_len < 1 || cmd_len > 16) {
> +        SPICE_ERROR("CMD: Bad CBW command len:%08x", cmd_len);
> +        return -1;
> +    }
> +
> +    usb_req->lun =3D cbw->lun;
> +    usb_req->usb_req_len =3D le32toh(cbw->exp_data_len);
> +
> +    usb_req->scsi_in_len =3D 0; /* no data from scsi yet */
> +    usb_req->xfer_len =3D 0; /* no bulks transfered yet */
> +    usb_req->bulk_in_len =3D 0; /* no bulk-in requests yet */
> +
> +    if (usb_req->usb_req_len =3D=3D 0) {
> +        cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CSW); /* no data - re=
turn status */
> +        scsi_req->buf =3D NULL;
> +        scsi_req->buf_len =3D 0;
> +    } else if (cbw->flags & 0x80) {
> +        cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_DATAIN); /* read comm=
and */
> +        scsi_req->buf =3D cd->data_buf;
> +        scsi_req->buf_len =3D cd->data_buf_len;
> +    } else {
> +        cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_DATAOUT); /* write co=
mmand */
> +        scsi_req->buf =3D NULL;
> +        scsi_req->buf_len =3D 0;
> +    }
> +
> +    scsi_req->cdb_len =3D cmd_len;
> +    g_assert(scsi_req->cdb_len <=3D sizeof(scsi_req->cdb));
> +    memcpy(scsi_req->cdb, cbw->cmd, scsi_req->cdb_len);
> +
> +    scsi_req->lun =3D usb_req->lun;
> +
> +    SPICE_DEBUG("CMD lun:%" G_GUINT32_FORMAT " tag:%#x flags:%08x "
> +        "cdb_len:%" G_GUINT32_FORMAT " req_len:%" G_GUINT32_FORMAT,
> +        usb_req->lun, le32toh(cbw->tag), cbw->flags,
> +        scsi_req->cdb_len, usb_req->usb_req_len);
> +
> +    /* prepare status - CSW */
> +    usb_req->csw.sig =3D htole32(0x53425355);
> +    usb_req->csw.tag =3D cbw->tag;
> +    usb_req->csw.residue =3D 0;
> +    usb_req->csw.status =3D (uint8_t)USB_MSD_STATUS_GOOD;
> +
> +    return 0;
> +}
> +
> +static void usb_cd_cmd_done(UsbCdBulkMsdDevice *cd)
> +{
> +    UsbCdBulkMsdRequest *usb_req =3D &cd->usb_req;
> +    CdScsiRequest *scsi_req =3D &usb_req->scsi_req;
> +
> +    cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CBW); /* Command next */
> +    cd_scsi_dev_request_release(cd->scsi_target, scsi_req);
> +}
> +
> +static void usb_cd_send_status(UsbCdBulkMsdDevice *cd)
> +{
> +    UsbCdBulkMsdRequest *usb_req =3D &cd->usb_req;
> +
> +    SPICE_DEBUG("Command CSW tag:0x%x msd_status:%d len:%" G_GUINT64_FOR=
MAT,
> +                le32toh(usb_req->csw.tag), (int)usb_req->csw.status, siz=
eof(usb_req->csw));
> +
> +    usb_cd_cmd_done(cd);
> +
> +    g_assert(usb_req->csw.sig =3D=3D htole32(0x53425355));
> +    cd_usb_bulk_msd_read_complete(cd->usb_user_data,
> +                                  (uint8_t *)&usb_req->csw, sizeof(usb_r=
eq->csw),
> +                                  BULK_STATUS_GOOD);
> +}
> +
> +static void usb_cd_send_canceled(UsbCdBulkMsdDevice *cd)
> +{
> +    UsbCdBulkMsdRequest *usb_req =3D &cd->usb_req;
> +
> +    SPICE_DEBUG("Canceled cmd tag:0x%x, len:%" G_GUINT64_FORMAT,
> +                le32toh(usb_req->csw.tag), sizeof(usb_req->csw));
> +
> +    usb_cd_cmd_done(cd);
> +
> +    cd_usb_bulk_msd_read_complete(cd->usb_user_data,
> +                                  NULL, 0,
> +                                  BULK_STATUS_CANCELED);
> +}
> +
> +static void usb_cd_send_data_in(UsbCdBulkMsdDevice *cd, uint32_t max_len)
> +{
> +    UsbCdBulkMsdRequest *usb_req =3D &cd->usb_req;
> +    CdScsiRequest *scsi_req =3D &usb_req->scsi_req;
> +    uint8_t *buf =3D ((uint8_t *)scsi_req->buf) + usb_req->xfer_len;
> +    uint32_t avail_len =3D usb_req->scsi_in_len - usb_req->xfer_len;
> +    uint32_t send_len =3D MIN(avail_len, max_len);
> +
> +    SPICE_DEBUG("Data-in cmd tag 0x%x, remains %" G_GUINT32_FORMAT
> +                ", requested %" G_GUINT32_FORMAT ", send %" G_GUINT32_FO=
RMAT,
> +                usb_req->csw.tag, avail_len, max_len, send_len);
> +
> +    g_assert(max_len <=3D usb_req->usb_req_len);
> +
> +    cd_usb_bulk_msd_read_complete(cd->usb_user_data,
> +                                  buf, send_len,
> +                                  BULK_STATUS_GOOD);
> +
> +    if (scsi_req->status =3D=3D GOOD) {
> +        usb_req->xfer_len +=3D send_len;
> +        if (usb_req->xfer_len =3D=3D usb_req->scsi_in_len) {
> +            /* all data for this bulk has been transferred */
> +            if (usb_req->scsi_in_len =3D=3D usb_req->usb_req_len || /* r=
eq fully satisfied */
> +                send_len < max_len) { /* partial bulk - no more data */
> +                cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CSW);
> +            } else {
> +                /* partial cmd data fullfilled entire vulk-in request */
> +                cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_ZERO_DATAIN);
> +            }
> +        }
> +    } else { /* cmd failed - no more data */
> +        cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CSW);
> +    }
> +}
> +
> +int cd_usb_bulk_msd_read(UsbCdBulkMsdDevice *cd, uint32_t max_len)
> +{
> +    UsbCdBulkMsdRequest *usb_req =3D &cd->usb_req;
> +    CdScsiRequest *scsi_req =3D &usb_req->scsi_req;
> +
> +    SPICE_DEBUG("msd_read, state: %s, len %" G_GUINT32_FORMAT,
> +                usb_cd_state_str(cd->state), max_len);
> +
> +    switch (cd->state) {
> +    case USB_CD_STATE_CSW: /* Command Status */
> +        if (max_len < 13) {
> +            goto fail;
> +        }
> +        if (cd_scsi_get_req_state(scsi_req) =3D=3D SCSI_REQ_COMPLETE) {
> +            usb_cd_send_status(cd);
> +        } else {
> +            usb_req->bulk_in_len +=3D max_len;
> +            SPICE_DEBUG("msd_read CSW, req incomplete, added len %" G_GU=
INT32_FORMAT
> +                        " saved len %" G_GUINT32_FORMAT,
> +                        max_len, usb_req->bulk_in_len);
> +        }
> +        break;
> +
> +    case USB_CD_STATE_DATAIN: /* Bulk Data-IN */
> +        if (cd_scsi_get_req_state(scsi_req) =3D=3D SCSI_REQ_COMPLETE) {
> +            usb_cd_send_data_in(cd, max_len);
> +        } else {
> +            usb_req->bulk_in_len +=3D max_len;
> +            SPICE_DEBUG("msd_read DATAIN, req incomplete, added len %" G=
_GUINT32_FORMAT
> +                        " saved len %" G_GUINT32_FORMAT,
> +                        max_len, usb_req->bulk_in_len);
> +        }
> +        break;
> +
> +    case USB_CD_STATE_ZERO_DATAIN:
> +        cd_usb_bulk_msd_read_complete(cd->usb_user_data,
> +                                      NULL, 0,
> +                                      BULK_STATUS_GOOD);
> +        cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CSW); /* Status next =
*/
> +        break;
> +
> +    default:
> +        SPICE_ERROR("Unexpected read state: %s, len %" G_GUINT32_FORMAT,
> +                    usb_cd_state_str(cd->state), max_len);
> +        goto fail;
> +    }
> +    return 0;
> +
> +fail:
> +    return -1;
> +}
> +
> +void cd_scsi_dev_request_complete(void *target_user_data, CdScsiRequest =
*scsi_req)
> +{
> +    UsbCdBulkMsdDevice *cd =3D (UsbCdBulkMsdDevice *)target_user_data;
> +    UsbCdBulkMsdRequest *usb_req =3D &cd->usb_req;
> +
> +    g_assert(scsi_req =3D=3D &usb_req->scsi_req);
> +
> +    if (scsi_req->req_state =3D=3D SCSI_REQ_COMPLETE) {
> +
> +        usb_req->scsi_in_len =3D (scsi_req->in_len <=3D usb_req->usb_req=
_len) ?
> +                                scsi_req->in_len : usb_req->usb_req_len;
> +
> +        /* prepare CSW */
> +        if (usb_req->usb_req_len > usb_req->scsi_in_len) {
> +            usb_req->csw.residue =3D htole32(usb_req->usb_req_len - usb_=
req->scsi_in_len);
> +        }
> +        if (scsi_req->status !=3D GOOD) {
> +            usb_req->csw.status =3D (uint8_t)USB_MSD_STATUS_FAILED;
> +        }
> +
> +        if (usb_req->bulk_in_len) {
> +            /* bulk-in request arrived while scsi was still running */
> +            if (cd->state =3D=3D USB_CD_STATE_DATAIN) {
> +                usb_cd_send_data_in(cd, usb_req->bulk_in_len);
> +            } else if (cd->state =3D=3D USB_CD_STATE_CSW) {
> +                usb_cd_send_status(cd);
> +            }
> +            usb_req->bulk_in_len =3D 0;
> +        }
> +    } else if (scsi_req->req_state =3D=3D SCSI_REQ_CANCELED) {
> +        usb_cd_send_canceled(cd);
> +    } else {
> +        g_assert(scsi_req->req_state =3D=3D SCSI_REQ_DISPOSED);
> +        SPICE_DEBUG("Disposed cmd tag:0x%x, len:%" G_GUINT64_FORMAT,
> +                le32toh(usb_req->csw.tag), sizeof(usb_req->csw));
> +        usb_cd_cmd_done(cd);
> +    }
> +}
> +
> +int cd_usb_bulk_msd_cancel_read(UsbCdBulkMsdDevice *cd)
> +{
> +    UsbCdBulkMsdRequest *usb_req =3D &cd->usb_req;
> +    CdScsiRequest *scsi_req =3D &usb_req->scsi_req;
> +
> +    cd_scsi_dev_request_cancel(cd->scsi_target, scsi_req);
> +    return 0;
> +}
> +
> +int cd_usb_bulk_msd_write(UsbCdBulkMsdDevice *cd, uint8_t *buf_out, uint=
32_t buf_out_len)
> +{
> +    switch (cd->state) {
> +    case USB_CD_STATE_CBW: /* Command Block */
> +        parse_usb_msd_cmd(cd, buf_out, buf_out_len);
> +        if (cd->state =3D=3D USB_CD_STATE_DATAIN || cd->state =3D=3D USB=
_CD_STATE_CSW) {
> +            cd_scsi_dev_request_submit(cd->scsi_target, &cd->usb_req.scs=
i_req);
> +        }
> +        break;
> +    case USB_CD_STATE_DATAOUT: /* Data-Out for a Write cmd */
> +        cd->usb_req.scsi_req.buf =3D buf_out;
> +        cd->usb_req.scsi_req.buf_len =3D buf_out_len;
> +        cd_scsi_dev_request_submit(cd->scsi_target, &cd->usb_req.scsi_re=
q);
> +        cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CSW); /* Status next =
*/
> +        break;
> +    default:
> +        SPICE_DEBUG("Unexpected write state: %s, len %" G_GUINT32_FORMAT,
> +                    usb_cd_state_str(cd->state), buf_out_len);
> +        goto fail;
> +    }
> +    return 0;
> +
> +fail:
> +    return -1;
> +}
> +
> +void cd_scsi_dev_reset_complete(void *target_user_data, uint32_t lun)
> +{
> +    UsbCdBulkMsdDevice *cd =3D (UsbCdBulkMsdDevice *)target_user_data;
> +
> +    if (cd->state =3D=3D USB_CD_STATE_DEVICE_RESET) {
> +        cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_CBW);
> +        cd_usb_bulk_msd_reset_complete(cd->usb_user_data, 0);
> +    }
> +}
> +
> +void cd_scsi_target_reset_complete(void *target_user_data)
> +{
> +    UsbCdBulkMsdDevice *cd =3D (UsbCdBulkMsdDevice *)target_user_data;
> +    cd_usb_bulk_msd_set_state(cd, USB_CD_STATE_INIT);
> +}
> +
> +void cd_scsi_dev_changed(void *target_user_data, uint32_t lun)
> +{
> +    UsbCdBulkMsdDevice *cd =3D (UsbCdBulkMsdDevice *)target_user_data;
> +    SPICE_DEBUG("Device changed, state: %s lun: %" G_GUINT32_FORMAT,
> +                usb_cd_state_str(cd->state), lun);
> +    cd_usb_bulk_msd_lun_changed(cd->usb_user_data, lun);
> +}
> +
> +#endif /* USE_USBREDIR */
> diff --git a/src/cd-usb-bulk-msd.h b/src/cd-usb-bulk-msd.h
> new file mode 100644
> index 00000000..492a49b8
> --- /dev/null
> +++ b/src/cd-usb-bulk-msd.h
> @@ -0,0 +1,134 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +    Copyright (C) 2018 Red Hat, Inc.
> +
> +    Red Hat Authors:
> +    Alexander Nezhinsky<anezhins@redhat.com>
> +
> +    This library is free software; you can redistribute it and/or
> +    modify it under the terms of the GNU Lesser General Public
> +    License as published by the Free Software Foundation; either
> +    version 2.1 of the License, or (at your option) any later version.
> +
> +    This library is distributed in the hope that it will be useful,
> +    but WITHOUT ANY WARRANTY; without even the implied warranty of
> +    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +    Lesser General Public License for more details.
> +
> +    You should have received a copy of the GNU Lesser General Public
> +    License along with this library; if not, see <http://www.gnu.org/lic=
enses/>.
> +*/
> +
> +#ifndef SPICE_GTK_CD_USB_BULK_MSD_H__
> +#define SPICE_GTK_CD_USB_BULK_MSD_H__
> +
> +G_BEGIN_DECLS
> +
> +#include <gio/gio.h>
> +
> +#include "cd-scsi-dev-params.h"
> +
> +typedef enum CdUsbBulkStatus {
> +    BULK_STATUS_GOOD =3D 0,
> +    BULK_STATUS_ERROR,
> +    BULK_STATUS_CANCELED,
> +    BULK_STATUS_STALL,
> +} CdUsbBulkStatus;
> +
> +typedef struct UsbCdBulkMsdDevice UsbCdBulkMsdDevice;
> +
> +/* USB backend callbacks */
> +
> +/* called on completed read data bulk transfer
> + * user_data - user_data in unit parameters structure
> + * status - bulk status code
> + */
> +void cd_usb_bulk_msd_read_complete(void *user_data,
> +                                   uint8_t *data, uint32_t length,
> +                                   CdUsbBulkStatus status);
> +
> +/* called when state of device's unit changed to signal GUI component
> + *  user_data - user_data in unit parameters structure
> + */
> +void cd_usb_bulk_msd_lun_changed(void *user_data, uint32_t lun);
> +
> +/* called on completed device reset
> + * user_data - user_data in unit parameters structure
> + * status - error code
> + */
> +void cd_usb_bulk_msd_reset_complete(void *user_data,
> +                                    int status);
> +
> +/* MSD backend api */
> +
> +/* allocate new device descriptor */
> +UsbCdBulkMsdDevice *cd_usb_bulk_msd_alloc(void *user_data, uint32_t max_=
lun);
> +
> +/* free device descriptor */
> +void cd_usb_bulk_msd_free(UsbCdBulkMsdDevice *device);
> +
> +/* configure a new Logical Unit to be represen ted by the device
> + *  returns: error code
> + */
> +int cd_usb_bulk_msd_realize(UsbCdBulkMsdDevice *device, uint32_t lun,
> +                            const CdScsiDeviceParameters *dev_params);
> +
> +/* lock the device, prevent unloading
> + * returns: error code
> + */
> +int cd_usb_bulk_msd_lock(UsbCdBulkMsdDevice *device, uint32_t lun, gbool=
ean lock);
> +
> +/* load new media, if already loaded, simulate media change
> + * returns: error code
> + */
> +int cd_usb_bulk_msd_load(UsbCdBulkMsdDevice *device, uint32_t lun,
> +                         const CdScsiMediaParameters *media_params);
> +
> +/* query unit parameters and status
> + * returns: error code
> + */
> +int cd_usb_bulk_msd_get_info(UsbCdBulkMsdDevice *device, uint32_t lun,
> +                             CdScsiDeviceInfo *lun_info);
> +
> +/* unload the media
> + * returns: error code
> + */
> +int cd_usb_bulk_msd_unload(UsbCdBulkMsdDevice *device, uint32_t lun);
> +
> +/* detach a Logical Unit
> + * returns: error code
> + */
> +int cd_usb_bulk_msd_unrealize(UsbCdBulkMsdDevice *device, uint32_t lun);
> +
> +/* reset the device instance; cancel all IO ops, reset state
> + * returns: error code
> + */
> +int cd_usb_bulk_msd_reset(UsbCdBulkMsdDevice *device);
> +
> +
> +/* perform a write data bulk transfer
> + * data_len - length of available data to write
> + * returns: error code
> + */
> +int cd_usb_bulk_msd_write(UsbCdBulkMsdDevice*device, uint8_t *buf, uint3=
2_t data_len);
> +
> +
> +/* perform a read data bulk transfer
> + * max_len - length of available buffer to fill
> + * If data available immediately, should call cd_usb_bulk_msd_read_compl=
ete()
> + *   and return success
> + * If fatal error detected immediately, should call cd_usb_bulk_msd_read=
_complete()
> + *   with error code and return success
> + *
> + * returns: 0 - success, -1 - error
> + */
> +int cd_usb_bulk_msd_read(UsbCdBulkMsdDevice *device, uint32_t max_len);
> +
> +/* cancels pending read data bulk transfer
> + * returns: error code
> + */
> +int cd_usb_bulk_msd_cancel_read(UsbCdBulkMsdDevice *device);
> +
> +G_END_DECLS
> +
> +#endif /* SPICE_GTK_CD_USB_BULK_MSD_H__ */
> diff --git a/src/scsi-constants.h b/src/scsi-constants.h
> new file mode 100644
> index 00000000..cf8a8825
> --- /dev/null
> +++ b/src/scsi-constants.h
> @@ -0,0 +1,324 @@
> +/* -*- Mode: C; c-basic-offset: 4; indent-tabs-mode: nil -*- */
> +/*
> +   Copyright (C) 2018 Red Hat, Inc.
> +   Based on the GLib header
> +
> +   This library is free software; you can redistribute it and/or
> +   modify it under the terms of the GNU Lesser General Public
> +   License as published by the Free Software Foundation; either
> +   version 2.1 of the License, or (at your option) any later version.
> +
> +   This library is distributed in the hope that it will be useful,
> +   but WITHOUT ANY WARRANTY; without even the implied warranty of
> +   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> +   Lesser General Public License for more details.
> +
> +   You should have received a copy of the GNU Lesser General Public
> +   License along with this library; if not, see <http://www.gnu.org/lice=
nses/>.
> +*/
> +
> +#ifndef SPICE_GTK_SCSI_CONSTANTS_H__
> +#define SPICE_GTK_SCSI_CONSTANTS_H__
> +
> +/*
> + *      SCSI opcodes
> + */
> +
> +#define TEST_UNIT_READY       0x00
> +#define REWIND                0x01
> +#define REQUEST_SENSE         0x03
> +#define FORMAT_UNIT           0x04
> +#define READ_BLOCK_LIMITS     0x05
> +#define INITIALIZE_ELEMENT_STATUS 0x07
> +#define REASSIGN_BLOCKS_      0x07
> +#define READ_6                0x08
> +#define WRITE_6               0x0a
> +#define SET_CAPACITY          0x0b
> +#define READ_REVERSE          0x0f
> +#define WRITE_FILEMARKS       0x10
> +#define SPACE                 0x11
> +#define INQUIRY               0x12
> +#define RECOVER_BUFFERED_DATA 0x14
> +#define MODE_SELECT           0x15
> +#define RESERVE               0x16
> +#define RELEASE               0x17
> +#define COPY                  0x18
> +#define ERASE                 0x19
> +#define MODE_SENSE            0x1a
> +#define LOAD_UNLOAD           0x1b
> +#define SCAN                  0x1b
> +#define START_STOP            0x1b
> +#define RECEIVE_DIAGNOSTIC    0x1c
> +#define SEND_DIAGNOSTIC       0x1d
> +#define ALLOW_MEDIUM_REMOVAL  0x1e
> +#define SET_WINDOW            0x24
> +#define READ_CAPACITY_10      0x25
> +#define GET_WINDOW            0x25
> +#define READ_10               0x28
> +#define WRITE_10              0x2a
> +#define SEND                  0x2a
> +#define SEEK_10               0x2b
> +#define LOCATE_10             0x2b
> +#define POSITION_TO_ELEMENT   0x2b
> +#define WRITE_VERIFY_10       0x2e
> +#define VERIFY_10             0x2f
> +#define SEARCH_HIGH           0x30
> +#define SEARCH_EQUAL          0x31
> +#define OBJECT_POSITION       0x31
> +#define SEARCH_LOW            0x32
> +#define SET_LIMITS            0x33
> +#define PRE_FETCH             0x34
> +#define READ_POSITION         0x34
> +#define GET_DATA_BUFFER_STATUS 0x34
> +#define SYNCHRONIZE_CACHE     0x35
> +#define LOCK_UNLOCK_CACHE     0x36
> +#define INITIALIZE_ELEMENT_STATUS_WITH_RANGE 0x37
> +#define READ_DEFECT_DATA      0x37
> +#define MEDIUM_SCAN           0x38
> +#define COMPARE               0x39
> +#define COPY_VERIFY           0x3a
> +#define WRITE_BUFFER          0x3b
> +#define READ_BUFFER           0x3c
> +#define UPDATE_BLOCK          0x3d
> +#define READ_LONG_10          0x3e
> +#define WRITE_LONG_10         0x3f
> +#define CHANGE_DEFINITION     0x40
> +#define WRITE_SAME_10         0x41
> +#define UNMAP                 0x42
> +#define READ_TOC              0x43
> +#define REPORT_DENSITY_SUPPORT 0x44
> +#define GET_CONFIGURATION     0x46
> +#define SANITIZE              0x48
> +#define GET_EVENT_STATUS_NOTIFICATION 0x4a
> +#define LOG_SELECT            0x4c
> +#define LOG_SENSE             0x4d
> +#define READ_DISC_INFORMATION 0x51
> +#define READ_TRACK_INFORMATION 0x52
> +#define RESERVE_TRACK         0x53
> +#define MODE_SELECT_10        0x55
> +#define RESERVE_10            0x56
> +#define RELEASE_10            0x57
> +#define MODE_SENSE_10         0x5a
> +#define SEND_CUE_SHEET        0x5d
> +#define PERSISTENT_RESERVE_IN 0x5e
> +#define PERSISTENT_RESERVE_OUT 0x5f
> +#define VARLENGTH_CDB         0x7f
> +#define WRITE_FILEMARKS_16    0x80
> +#define READ_REVERSE_16       0x81
> +#define ALLOW_OVERWRITE       0x82
> +#define EXTENDED_COPY         0x83
> +#define ATA_PASSTHROUGH_16    0x85
> +#define ACCESS_CONTROL_IN     0x86
> +#define ACCESS_CONTROL_OUT    0x87
> +#define READ_16               0x88
> +#define COMPARE_AND_WRITE     0x89
> +#define WRITE_16              0x8a
> +#define WRITE_VERIFY_16       0x8e
> +#define VERIFY_16             0x8f
> +#define PRE_FETCH_16          0x90
> +#define SPACE_16              0x91
> +#define SYNCHRONIZE_CACHE_16  0x91
> +#define LOCATE_16             0x92
> +#define WRITE_SAME_16         0x93
> +#define ERASE_16              0x93
> +#define SERVICE_ACTION_IN_16  0x9e
> +#define WRITE_LONG_16         0x9f
> +#define REPORT_LUNS           0xa0
> +#define ATA_PASSTHROUGH_12    0xa1
> +#define MAINTENANCE_IN        0xa3
> +#define MAINTENANCE_OUT       0xa4
> +#define MOVE_MEDIUM           0xa5
> +#define EXCHANGE_MEDIUM       0xa6
> +#define SET_READ_AHEAD        0xa7
> +#define READ_12               0xa8
> +#define WRITE_12              0xaa
> +#define SERVICE_ACTION_IN_12  0xab
> +#define ERASE_12              0xac
> +#define WRITE_VERIFY_12       0xae
> +#define VERIFY_12             0xaf
> +#define SEARCH_HIGH_12        0xb0
> +#define SEARCH_EQUAL_12       0xb1
> +#define SEARCH_LOW_12         0xb2
> +#define READ_ELEMENT_STATUS   0xb8
> +#define SEND_VOLUME_TAG       0xb6
> +
> +/* MMC-specific opcode assignment */
> +#define MMC_SEND_EVENT          0xa2
> +#define MMC_SEND_KEY            0xa3
> +#define MMC_REPORT_KEY          0xa4
> +#define MMC_GET_PERFORMANCE     0xac
> +#define MMC_READ_DVD_STRUCTURE  0xad
> +#define MMC_READ_DEFECT_DATA_12 0xb7
> +#define MMC_SET_CD_SPEED        0xbb
> +#define MMC_MECHANISM_STATUS    0xbd
> +#define MMC_READ_CD             0xbe
> +#define MMC_SEND_DVD_STRUCTURE  0xbf
> +
> +/*
> + * SERVICE ACTION IN subcodes
> + */
> +#define SAI_READ_CAPACITY_16  0x10
> +
> +/*
> + * READ POSITION service action codes
> + */
> +#define SHORT_FORM_BLOCK_ID  0x00
> +#define SHORT_FORM_VENDOR_SPECIFIC 0x01
> +#define LONG_FORM            0x06
> +#define EXTENDED_FORM        0x08
> +
> +/*
> + *  SAM Status codes
> + */
> +
> +#define GOOD                 0x00
> +#define CHECK_CONDITION      0x02
> +#define CONDITION_GOOD       0x04
> +#define BUSY                 0x08
> +#define INTERMEDIATE_GOOD    0x10
> +#define INTERMEDIATE_C_GOOD  0x14
> +#define RESERVATION_CONFLICT 0x18
> +#define COMMAND_TERMINATED   0x22
> +#define TASK_SET_FULL        0x28
> +#define ACA_ACTIVE           0x30
> +#define TASK_ABORTED         0x40
> +
> +#define STATUS_MASK          0x3e
> +
> +/*
> + *  SENSE KEYS
> + */
> +
> +#define NO_SENSE            0x00
> +#define RECOVERED_ERROR     0x01
> +#define NOT_READY           0x02
> +#define MEDIUM_ERROR        0x03
> +#define HARDWARE_ERROR      0x04
> +#define ILLEGAL_REQUEST     0x05
> +#define UNIT_ATTENTION      0x06
> +#define DATA_PROTECT        0x07
> +#define BLANK_CHECK         0x08
> +#define COPY_ABORTED        0x0a
> +#define ABORTED_COMMAND     0x0b
> +#define VOLUME_OVERFLOW     0x0d
> +#define MISCOMPARE          0x0e
> +
> +
> +/*
> + *  DEVICE TYPES
> + */
> +
> +#define TYPE_DISK           0x00
> +#define TYPE_TAPE           0x01
> +#define TYPE_PRINTER        0x02
> +#define TYPE_PROCESSOR      0x03    /* HP scanners use this */
> +#define TYPE_WORM           0x04    /* Treated as ROM by our system */
> +#define TYPE_ROM            0x05
> +#define TYPE_SCANNER        0x06
> +#define TYPE_MOD            0x07    /* Magneto-optical disk -
> +				     * - treated as TYPE_DISK */
> +#define TYPE_MEDIUM_CHANGER 0x08
> +#define TYPE_STORAGE_ARRAY  0x0c    /* Storage array device */
> +#define TYPE_ENCLOSURE      0x0d    /* Enclosure Services Device */
> +#define TYPE_RBC            0x0e    /* Simplified Direct-Access Device */
> +#define TYPE_OSD            0x11    /* Object-storage Device */
> +#define TYPE_WLUN           0x1e    /* Well known LUN */
> +#define TYPE_NOT_PRESENT    0x1f
> +#define TYPE_INACTIVE       0x20
> +#define TYPE_NO_LUN         0x7f
> +
> +/* Mode page codes for mode sense/set */
> +#define MODE_PAGE_R_W_ERROR                   0x01
> +#define MODE_PAGE_MRW                         0x03
> +#define MODE_PAGE_HD_GEOMETRY                 0x04
> +#define MODE_PAGE_FLEXIBLE_DISK_GEOMETRY      0x05 /* SBC */
> +#define MODE_PAGE_WRITE_PARAMETER             0x05 /* MMC */
> +#define MODE_PAGE_CACHING                     0x08
> +#define MODE_PAGE_CD_DEVICE                   0x0d
> +#define MODE_PAGE_AUDIO_CTL                   0x0e
> +#define MODE_PAGE_POWER                       0x1a
> +#define MODE_PAGE_FAULT_FAIL                  0x1c
> +#define MODE_PAGE_TO_PROTECT                  0x1d
> +#define MODE_PAGE_CAPS_MECH_STATUS            0x2a
> +#define MODE_PAGE_MRW_VENDOR                  0x2C
> +#define MODE_PAGE_ALLS                        0x3f
> +/* Not in Mt. Fuji, but in ATAPI 2.6 -- deprecated now in favor
> + * of MODE_PAGE_SENSE_POWER */
> +#define MODE_PAGE_CDROM                       0x0d
> +
> +#define MODE_PAGE_CDROM                       0x0d
> +
> +/* Event notification classes for GET EVENT STATUS NOTIFICATION */
> +#define GESN_NO_EVENTS                0
> +#define GESN_OPERATIONAL_CHANGE       1
> +#define GESN_POWER_MANAGEMENT         2
> +#define GESN_EXTERNAL_REQUEST         3
> +#define GESN_MEDIA                    4
> +#define GESN_MULTIPLE_HOSTS           5
> +#define GESN_DEVICE_BUSY              6
> +
> +/* Event codes for MEDIA event status notification */
> +#define MEC_NO_CHANGE                 0
> +#define MEC_EJECT_REQUESTED           1
> +#define MEC_NEW_MEDIA                 2
> +#define MEC_MEDIA_REMOVAL             3 /* only for media changers */
> +#define MEC_MEDIA_CHANGED             4 /* only for media changers */
> +#define MEC_BG_FORMAT_COMPLETED       5 /* MRW or DVD+RW b/g format comp=
leted */
> +#define MEC_BG_FORMAT_RESTARTED       6 /* MRW or DVD+RW b/g format rest=
arted */
> +
> +#define MS_TRAY_OPEN                  1
> +#define MS_MEDIA_PRESENT              2
> +
> +/*
> + * Based on values from <linux/cdrom.h> but extending CD_MINS
> + * to the maximum common size allowed by the Orange's Book ATIP
> + *
> + * 90 and 99 min CDs are also available but using them as the
> + * upper limit reduces the effectiveness of the heuristic to
> + * detect DVDs burned to less than 25% of their maximum capacity
> + */
> +
> +/* Some generally useful CD-ROM information */
> +#define CD_MINS                       80 /* max. minutes per CD */
> +#define CD_SECS                       60 /* seconds per minute */
> +#define CD_FRAMES                     75 /* frames per second */
> +#define CD_FRAMESIZE                2048 /* bytes per frame, "cooked" mo=
de */
> +#define CD_MAX_BYTES       (CD_MINS * CD_SECS * CD_FRAMES * CD_FRAMESIZE)
> +#define CD_MAX_SECTORS     (CD_MAX_BYTES / 512)
> +
> +/*
> + * The MMC values are not IDE specific and might need to be moved
> + * to a common header if they are also needed for the SCSI emulation
> + */
> +
> +/* Profile list from MMC-6 revision 1 table 91 */
> +#define MMC_PROFILE_NONE                0x0000
> +#define MMC_PROFILE_CD_ROM              0x0008
> +#define MMC_PROFILE_CD_R                0x0009
> +#define MMC_PROFILE_CD_RW               0x000A
> +#define MMC_PROFILE_DVD_ROM             0x0010
> +#define MMC_PROFILE_DVD_R_SR            0x0011
> +#define MMC_PROFILE_DVD_RAM             0x0012
> +#define MMC_PROFILE_DVD_RW_RO           0x0013
> +#define MMC_PROFILE_DVD_RW_SR           0x0014
> +#define MMC_PROFILE_DVD_R_DL_SR         0x0015
> +#define MMC_PROFILE_DVD_R_DL_JR         0x0016
> +#define MMC_PROFILE_DVD_RW_DL           0x0017
> +#define MMC_PROFILE_DVD_DDR             0x0018
> +#define MMC_PROFILE_DVD_PLUS_RW         0x001A
> +#define MMC_PROFILE_DVD_PLUS_R          0x001B
> +#define MMC_PROFILE_DVD_PLUS_RW_DL      0x002A
> +#define MMC_PROFILE_DVD_PLUS_R_DL       0x002B
> +#define MMC_PROFILE_BD_ROM              0x0040
> +#define MMC_PROFILE_BD_R_SRM            0x0041
> +#define MMC_PROFILE_BD_R_RRM            0x0042
> +#define MMC_PROFILE_BD_RE               0x0043
> +#define MMC_PROFILE_HDDVD_ROM           0x0050
> +#define MMC_PROFILE_HDDVD_R             0x0051
> +#define MMC_PROFILE_HDDVD_RAM           0x0052
> +#define MMC_PROFILE_HDDVD_RW            0x0053
> +#define MMC_PROFILE_HDDVD_R_DL          0x0058
> +#define MMC_PROFILE_HDDVD_RW_DL         0x005A
> +#define MMC_PROFILE_INVALID             0xFFFF
> +
> +#endif
> --=20
> 2.20.1
>=20
> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel

--d7y6yzfjqnkr72yu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl1lBFkACgkQl9kSPeN6
SE8oDw/+MJ907NqgDdCCi4ikdBnzWiKF3F4LgiKqhi459apsf0VzvW/xReAiVOvj
3MOhJHtnRR1F3mROpLpsxWBF8ngtKZApzo8TO3cMYO1fI1krRqwehLom1zKh55rD
oafN2A+2BRsUOTz7Ku99Q2jgG5/YJQUR097v7pE+MK6c3QvUR7HaDRGY0pH7AzHk
O5x9sDgobqPpJDNz4Dwb+BcDJ/Qsa7QmMb9+pNqeA8y2m7RNci7UEbS+2LT2aX4X
XqYi7nYyMeCuE6PWgduiBAIG0cAVOAF6xv0DWzLYZ2UCUIP2k/SumC0yJ9EJNyYQ
pFDxBOqh2pAN/Re3P83+fYRl4m11jyGY+7GgCv+vhEtYQV6tTX0fNgte51WjZfPi
lqiB90kdCj925bqul2jIutQ1G8AZkrPjBw9JQbzCnylONNc0luOe/9U7RnJ9Y4Jm
DXKmrOOErv3bxcFodkZPSPQonXaBBjMz813Aqm/TRaTaT5UOfLXQ7UC8IAaOsiMd
1NKnK6lHBBeQRBoC5pXKiZDz4E+edDKZuLesVB3ldG1f/cfk8gFQ54QZ0Cv7Ce7o
j83sgLsU7URKF+5KeswNUIsUbfuuyD/Yc44tZFjXkS8T4tfHBiEokjA8BHi5b+M2
L0Zxf6nbYsdDoeOh97MKzmOrRt7TcdufLaS0OrJ9ZW+xQV4AgWY=
=coZZ
-----END PGP SIGNATURE-----

--d7y6yzfjqnkr72yu--

--===============1318747851==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============1318747851==--
