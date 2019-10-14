Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E7ED604C
	for <lists+spice-devel@lfdr.de>; Mon, 14 Oct 2019 12:36:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A397F894D7;
	Mon, 14 Oct 2019 10:36:28 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE07894D7
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 10:36:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6162210DCC81
 for <spice-devel@lists.freedesktop.org>; Mon, 14 Oct 2019 10:36:26 +0000 (UTC)
Received: from localhost (unknown [10.32.181.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4320F600CD;
 Mon, 14 Oct 2019 10:36:25 +0000 (UTC)
Date: Mon, 14 Oct 2019 12:36:24 +0200
From: Victor Toso <victortoso@redhat.com>
To: Frediano Ziglio <fziglio@redhat.com>
Message-ID: <20191014103624.jknw2x4b4volp6jv@wingsuit>
References: <20191010145630.23553-1-fziglio@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191010145630.23553-1-fziglio@redhat.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Mon, 14 Oct 2019 10:36:26 +0000 (UTC)
Subject: Re: [Spice-devel] [PATCH spice-server] spice_protocol: Update many
 names
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
Cc: spice-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0613597029=="
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>


--===============0613597029==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nswrrypfayfkju6f"
Content-Disposition: inline


--nswrrypfayfkju6f
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Oct 10, 2019 at 03:56:30PM +0100, Frediano Ziglio wrote:
> Using an old "renames" file found in spice-protocol repository
> I update some old names in the documentation protocol.
> Also updated some other names manually.
> I processed the file and fixed some code indentation.
> File looks much more up to date.
>=20
> Signed-off-by: Frediano Ziglio <fziglio@redhat.com>

I'd add doc: as prefix of shortlog to be clear that commit
purpose is on docs. I had a quick look and built and checked the
html, looks okay. I've also sent a patch to add this and others
in meson.build

Acked-by: Victor Toso <victortoso@redhat.com>

> ---
>  docs/spice_protocol.txt | 808 ++++++++++++++++++++--------------------
>  1 file changed, 404 insertions(+), 404 deletions(-)
>=20
> diff --git a/docs/spice_protocol.txt b/docs/spice_protocol.txt
> index 58bc01664..d191462d1 100644
> --- a/docs/spice_protocol.txt
> +++ b/docs/spice_protocol.txt
> @@ -51,10 +51,10 @@ is in little endian format.
>  .. UINT32 =E2=80=93 32 bits unsigned  integer
>  .. INT32 - 32 bits signed integer
>  .. UINT64 =E2=80=93 64 bits unsigned  integer
> -.. ADDRESS - 64 bits unsigned integer, value is the offset of the addres=
sed
> +.. SPICE_ADDRESS - 64 bits unsigned integer, value is the offset of the =
addressed
>  data from the beginning of spice protocol message body (i.e., data follo=
wing
> -RedDataHeader or RedSubMessage).
> -.. FIXED28_4 =E2=80=93 32 bits fixed point number. 28 high bits are sign=
ed integer. Low
> +SpiceDataHeader or SpicedSubMessage).
> +.. SPICE_FIXED28_4 =E2=80=93 32 bits fixed point number. 28 high bits ar=
e signed integer. Low
>  4 bits is unsigned integer numerator of a fraction with denominator 16.
>  .. POINT
>  +
> @@ -75,12 +75,12 @@ INT32 right +
>  +
>  .. POINTFIX
>  +
> -FIXED28_4 x +
> -FIXED28_4 y +
> +SPICE_FIXED28_4 x +
> +SPICE_FIXED28_4 y +
>  +
>  . Protocol Magic number UINT8[4]
>  +
> -RED_MAGIC =3D { 0x52, 0x45, 0x44,  0x51}
> +SPICE_MAGIC =3D { 0x52, 0x45, 0x44,  0x51}
>  +
>  . Protocol version
>  +
> @@ -97,8 +97,8 @@ compatibility. It is  set to zero on  major protocol ve=
rsion increment.
>  +
>  [source,c]
>  ----
> -RED_VERSION_MAJOR =3D 1
> -RED_VERSION_MINOR =3D 0
> +SPICE_VERSION_MAJOR =3D 1
> +SPICE_VERSION_MINOR =3D 0
>  ----
>  +
>  . Compatibility =E2=80=93 UINT32[]
> @@ -117,49 +117,49 @@ expressed using one or more bits in the compatibili=
ties vector.
>  +
>  [source,c]
>  ----
> -RED_CHANNEL_MAIN 	=3D 1
> -RED_CHANNEL_DISPLAY 	=3D 2
> -RED_CHANNEL_INPUTS 	=3D 3
> -RED_CHANNEL_CURSOR 	=3D 4
> -RED_CHANNEL_PLAYBACK 	=3D 5
> -RED_CHANNEL_RECORD 	=3D 6
> +SPICE_CHANNEL_MAIN 	=3D 1
> +SPICE_CHANNEL_DISPLAY 	=3D 2
> +SPICE_CHANNEL_INPUTS 	=3D 3
> +SPICE_CHANNEL_CURSOR 	=3D 4
> +SPICE_CHANNEL_PLAYBACK 	=3D 5
> +SPICE_CHANNEL_RECORD 	=3D 6
>  ----
>  +
>  . Error codes UINT32
>  +
>  [source,c]
>  ----
> -RED_ERROR_OK 				=3D 0
> -RED_ERROR_ERROR				=3D 1
> -RED_ERROR_INVALID_MAGIC			=3D 2
> -RED_ERROR_INVALID_DATA			=3D 3
> -RED_ERROR_VERSION_MISMATCH		=3D 4
> -RED_ERROR_NEED_SECURED			=3D 5
> -RED_ERROR_NEED_UNSECURED		=3D 6
> -RED_ERROR_PERMISSION_DENIED		=3D 7
> -RED_ERROR_BAD_CONNECTION_ID		=3D 8
> -RED_ERROR_CHANNEL_NOT_AVAILABLE		=3D 9
> +SPICE_LINK_ERR_OK 			=3D 0
> +SPICE_LINK_ERR_ERROR			=3D 1
> +SPICE_LINK_ERR_INVALID_MAGIC		=3D 2
> +SPICE_LINK_ERR_INVALID_DATA		=3D 3
> +SPICE_LINK_ERR_VERSION_MISMATCH		=3D 4
> +SPICE_LINK_ERR_NEED_SECURED		=3D 5
> +SPICE_LINK_ERR_NEED_UNSECURED		=3D 6
> +SPICE_LINK_ERR_PERMISSION_DENIED	=3D 7
> +SPICE_LINK_ERR_BAD_CONNECTION_ID	=3D 8
> +SPICE_LINK_ERR_CHANNEL_NOT_AVAILABLE	=3D 9
>  ----
>  +
>  . Warning codes
>  +
>  [source,c]
>  ----
> -RED_WARN_GENERAL 				=3D 0
> +SPICE_WARN_GENERAL 				=3D 0
>  ----
>  +
>  . Information codes
>  +
>  [source,c]
>  ----
> -RED_INFO_GENERAL				=3D 0
> +SPICE_INFO_GENERAL				=3D 0
>  ----
>  +
>  . public key buffer size.
>  +
>  [source,c]
>  ----
> -RED_TICKET_PUBKEY_BYTES =3D 162 /* size needed for holding 1024 bit RSA =
public
> +SPICE_TICKET_PUBKEY_BYTES =3D 162 /* size needed for holding 1024 bit RS=
A public
>  key in X.509 SubjectPublicKeyInfo format. */
>  ----
>  +
> @@ -168,16 +168,16 @@ key in X.509 SubjectPublicKeyInfo format. */
>  .. Connection process
>  +
>  The channel connection process is initiated by the client. The client se=
nds
> -RedLinkMess. In response, the server sends RedLinkReply. When the client
> -receives  RedLinkReply, it examines the error code and in case there is =
no
> -error it encrypts its password with public key received in RedLinkReply =
and
> +SpiceLinkMess. In response, the server sends SpiceLinkReply. When the cl=
ient
> +receives  SpiceLinkReply, it examines the error code and in case there i=
s no
> +error it encrypts its password with public key received in SpiceLinkRepl=
y and
>  sends it to the server. The server receive the password and sends the li=
nk
>  result to the client. The client examines the link result, and in case t=
he
> -result equals to RED_ERROR_OK, a valid connection is established.
> +result equals to SPICE_LINK_ERR_OK, a valid connection is established.
>  +
> -Channel connection for channel types other then RED_CHANNEL_MAIN is allo=
wed
> -only after the client has active RED_CHANNEL_MAIN channel connection.  O=
nly one
> -RED_CHANNEL_MAIN connection is allowed, and this channel connection esta=
blishes
> +Channel connection for channel types other then SPICE_CHANNEL_MAIN is al=
lowed
> +only after the client has active SPICE_CHANNEL_MAIN channel connection. =
 Only one
> +SPICE_CHANNEL_MAIN connection is allowed, and this channel connection es=
tablishes
>  spice session with the remote server.
>  +
>  .. Ticketing
> @@ -188,33 +188,33 @@ server consisting of a password and time validity. =
After time validity passes,
>  the whole ticket is expired. The ticket is encrypted. To encrypt, server
>  generates a 1024 bit RSA key and send the public part to the client (via
>  RedLinkInfo). Client uses this key to encrypt the password and send it b=
ack to
> -server (after RedLinkMess). Server decrypt the password, compare it to t=
icket
> +server (after SpiceLinkMess). Server decrypt the password, compare it to=
 ticket
>  and ensure it was received within the allowed time-frame.
>  +
> -.. RedLinkMess definition.
> +.. SpiceLinkMess definition.
>  +
>  [source,c]
>  ----
>  UINT32 magic
>  ----
>  +
> -value of this fields must be equal to RED_MAGIC
> +value of this fields must be equal to SPICE_MAGIC
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32 major_version
> -| value of this fields must be equal to RED_VERSION_MAJOR
> +| value of this fields must be equal to SPICE_VERSION_MAJOR
> =20
>  |UINT32 minor_version
> -|value of this fields must be equal to RED_VERSION_MINOR
> +|value of this fields must be equal to SPICE_VERSION_MINOR
> =20
>  |UINT32 size
>  |number of bytes following this field to the end of this message.
> =20
>  |UINT32 connection_id
> -|In case of a new session (i.e., channel type is RED_CHANNEL_MAIN) this =
field
> +|In case of a new session (i.e., channel type is SPICE_CHANNEL_MAIN) thi=
s field
>  is set to zero, and in response the server will allocate session id and =
will
> -send it via the RedLinkReply message. In case of all other channel types=
, this
> +send it via the SpiceLinkReply message. In case of all other channel typ=
es, this
>  field will be equal to the allocated session id.
> =20
>  |UINT8 channel_type
> @@ -235,12 +235,12 @@ type.
>  from the =E2=80=9C size=E2=80=9D member (i.e., from the address of the =
=E2=80=9Cconnection_id=E2=80=9D member).
>  |=3D=3D=3D
>  +
> -.. RedLinkReply  definition
> +.. SpiceLinkReply  definition
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32 magic
> -|value of this field must be equal to RED_MAGIC
> +|value of this field must be equal to SPICE_MAGIC
> =20
>  |UINT32 major_version
>  |server major protocol version.
> @@ -252,9 +252,9 @@ from the =E2=80=9C size=E2=80=9D member (i.e., from t=
he address of the =E2=80=9Cconnection_id=E2=80=9D m
>  |number of bytes following this field to the end of this message.
> =20
>  |UINT32  error
> -|Error codes (i.e., RED_ERROR_?)
> +|Error codes (i.e., SPICE_LINK_ERR_?)
> =20
> -|UINT8[RED_TICKET_PUBKEY_BYTES]  pub_key
> +|UINT8[SPICE_TICKET_PUBKEY_BYTES]  pub_key
>  |1024 bit RSA public key in X.509 SubjectPublicKeyInfo format.
> =20
>  |UINT32 num_common_caps
> @@ -272,20 +272,20 @@ the =E2=80=9Cconnection_id=E2=80=9D member)
>  .. Encrypted Password
>  +
>  Client sends RSA encrypted password, with public key received from serve=
r (in
> -RedLinkReply). Format is EME-OAEP as described in PKCS#1 v2.0 with SHA-1=
, MGF1
> +SpiceLinkReply). Format is EME-OAEP as described in PKCS#1 v2.0 with SHA=
-1, MGF1
>  and an empty encoding parameter.
>  +
>  .. Link Result UINT32
>  +
> -The server sends link result error code (i.e., RED_ERROR_?)
> +The server sends link result error code (i.e., SPICE_LINK_ERR_?)
>  +
>  . Protocol message definition
>  +
>  All messages transmitted after the link stage have a common message layo=
ut. It
> -begins with RedDataHeader which describes one main message and an option=
al sub
> +begins with SpiceDataHeader which describes one main message and an opti=
onal sub
>  messages list.
>  +
> -.. RedDataHeader
> +.. SpiceDataHeader
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -294,22 +294,22 @@ messages list.
>  value of 1 and are incremented on every message transmitted.
> =20
>  |UINT16 type
> -|message type can be one that is  accepted by all channel (e.g., RED_MIG=
RATE),
> -or specific to a channel type (e.g., RED_DISPLAY_MODE for display channe=
l).
> +|message type can be one that is  accepted by all channel (e.g., SPICE_M=
SG_MIGRATE),
> +or specific to a channel type (e.g., SPICE_MSG_DISPLAY_MODE for display =
channel).
> =20
>  |UINT32 size
>  |size of the message body in bytes. In case sub_list (see below) is not =
zero
>  then the actual main message size is sub_list. The message body follows
> -RedDataHeader
> +SpiceDataHeader
> =20
>  |UINT32  sub_list
>  |optional sub-messages list. If this field is not zero then sub_list is =
the
> -offset in bytes to RedSubMessageList from the end of RedDataHeader.  All
> +offset in bytes to SpiceSubMessageList from the end of SpiceDataHeader. =
 All
>  sub-messages need to be executed before the main message, and in the ord=
er they
>  appear in the sub-messageslist.
>  |=3D=3D=3D
>  +
> -.. RedSubMessageList
> +.. SpiceSubMessageList
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -318,19 +318,19 @@ appear in the sub-messageslist.
> =20
>  |UINT32[]  sub_messages
>  |array of offsets to sub message, offset is number of bytes from the end=
 of
> -RedDataHeader to start of RedSubMessage.
> +SpiceDataHeader to start of SpicedSubMessage.
>  |=3D=3D=3D
>  +
> -.. RedSubMessage
> +.. SpicedSubMessage
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT16  type
> -|message type can be one that is  accepted by all channel (e.g., RED_MIG=
RATE),
> -or specific to a channel type (e.g., RED_DISPLAY_MODE for display channe=
l).
> +|message type can be one that is  accepted by all channel (e.g., SPICE_M=
SG_MIGRATE),
> +or specific to a channel type (e.g., SPICE_MSG_DISPLAY_MODE for display =
channel).
> =20
>  |UINT32 size
> -|size of the message body in bytes.  The message body follows RedSubMess=
age.
> +|size of the message body in bytes.  The message body follows SpicedSubM=
essage.
>  |=3D=3D=3D
>  +
>  . Common messages and messaging naming convention
> @@ -344,83 +344,83 @@ client the prefixes are REDC and Redc.
>  +
>  [source,c]
>  ----
> -RED_MIGRATE 			=3D 1
> -RED_MIGRATE_DATA		=3D 2
> -RED_SET_ACK			=3D 3
> -RED_PING			=3D 4
> -RED_WAIT_FOR_CHANNELS		=3D 5
> -RED_DISCONNECTING		=3D 6
> -RED_NOTIFY			=3D 7
> +SPICE_MSG_MIGRATE 		=3D 1
> +SPICE_MSG_MIGRATE_DATA		=3D 2
> +SPICE_MSG_SET_ACK		=3D 3
> +SPICE_MSG_PING			=3D 4
> +SPICE_MSG_WAIT_FOR_CHANNELS	=3D 5
> +SPICE_MSG_DISCONNECTING		=3D 6
> +SPICE_MSG_NOTIFY		=3D 7
> =20
> -RED_FIRST_AVAIL_MESSAGE 	=3D 101
> +SPICE_MSG_FIRST_AVAIL 	=3D 101
>  ----
>  +
> -Specific channel server messages start from RED_FIRST_AVAIL_MESSAGE. All
> -message types from RED_NOTIFY + 1 to RED_FIRST_AVAIL_MESSAGE =E2=80=93 1=
 are reserved
> +Specific channel server messages start from SPICE_MSG_FIRST_AVAIL. All
> +message types from SPICE_MSG_NOTIFY + 1 to SPICE_MSG_FIRST_AVAIL =E2=80=
=93 1 are reserved
>  for further use.
>  +
>  . Client messages that are common to all channels
>  +
>  [source,c]
>  ----
> -REDC_ACK_SYNC				=3D 1
> -REDC_ACK				=3D 2
> -REDC_PONG				=3D 3
> -REDC_MIGRATE_FLUSH_MARK			=3D 4
> -REDC_MIGRATE_DATA			=3D 5
> -REDC_DISCONNECTING			=3D 6
> +SPICE_MSGC_ACK_SYNC			=3D 1
> +SPICE_MSGC_ACK				=3D 2
> +SPICE_MSGC_PONG				=3D 3
> +SPICE_MSGC_MIGRATE_FLUSH_MARK		=3D 4
> +SPICE_MSGC_MIGRATE_DATA			=3D 5
> +SPICE_MSGC_DISCONNECTING		=3D 6
> =20
> -REDC_FIRST_AVAIL_MESSAGE		=3D 101
> +SPICE_MSGC_FIRST_AVAIL		=3D 101
>  ----
>  +
> -Specific channel client messages start from REDC_FIRST_AVAIL_MESSAGE. All
> -message types from REDC_ACK_SYNC+ 1 to REDC_FIRST_AVAIL_MESSAGE =E2=80=
=93 1 are
> +Specific channel client messages start from SPICE_MSGC_FIRST_AVAIL. All
> +message types from SPICE_MSGC_ACK_SYNC+ 1 to SPICE_MSGC_FIRST_AVAIL =E2=
=80=93 1 are
>  reserved for further use.
>  +
>  . Messages acknowledgment.
>  +
>  Spice provides a set of messages for requesting an acknowledgment on eve=
ry one
>  or more messages that the client consumes. In order to request acknowled=
gment
> -messages, the server sends  RED_SET_ACK with the requested acknowledgment
> +messages, the server sends  SPICE_MSG_SET_ACK with the requested acknowl=
edgment
>  frequency =E2=80=93 after how many received messages the client sends ac=
knowledgment. .
> -In response, the client sends  REDC_ACK_SYNC. From this point, for every
> -requested number of messages that the client receive, it will send  a RE=
DC_ACK
> +In response, the client sends  SPICE_MSGC_ACK_SYNC. From this point, for=
 every
> +requested number of messages that the client receive, it will send  a SP=
ICE_MSGC_ACK
>  message.
>  +
> -.. RED_SET_ACK, RedSetAck
> +.. SPICE_MSG_SET_ACK, SpiceMsgSetAck
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32 generation
>  |the generation of the acknowledgment sequence. This value will be sent =
back by
> -REDC_ACK_SYNC. It is used for acknowledgment accounting synchronization.
> +SPICE_MSGC_ACK_SYNC. It is used for acknowledgment accounting synchroniz=
ation.
> =20
>  |UINT32 window
>  |the window size. Spice client will send acknowledgment for every =E2=80=
=9Cwindow=E2=80=9D
>  messages.  Zero window size will disable  messages acknowledgment.
>  |=3D=3D=3D
>  +
> -.. REDC_ACK_SYNC, UINT32
> +.. SPICE_MSGC_ACK_SYNC, UINT32
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32
> -|Spice client sends  RedSetAck.generation in response to RED_SET_ACK
> +|Spice client sends  SpiceMsgSetAck.generation in response to SPICE_MSG_=
SET_ACK
>  |=3D=3D=3D
>  +
> -.. REDC_ACK, VOID
> +.. SPICE_MSGC_ACK, VOID
>  +
> -Spice client sends  REDC_ACK message for every RedSetAck.window messages=
 it
> +Spice client sends  SPICE_MSGC_ACK message for every SpiceMsgSetAck.wind=
ow messages it
>  consumes.
>  +
>  . Ping
>  +
>  Spice protocol provides ping messages for debugging purpose. Spice serve=
r sends
> -RED_PING and the client responses with REDC_PONG. The server can measure=
 round
> +SPICE_MSG_PING and the client responses with SPICE_MSGC_PONG. The server=
 can measure round
>  trip time by subtracting current time with the time that is returned in
> -REDC_PONG message.
> +SPICE_MSGC_PONG message.
>  +
> -.. RED_PING, RedPing
> +.. SPICE_MSG_PING, SpiceMsgPing
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -431,15 +431,15 @@ REDC_PONG message.
>  |time stamp of this message
>  |=3D=3D=3D
>  +
> -.. REDC_PONG, RedPong
> +.. SPICE_MSGC_PONG, RedPong
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32 id
> -|Spice client copies it from RedPing.id
> +|Spice client copies it from SpiceMsgPing.id
> =20
>  |UINT64 time
> -|Spice client copies it from RedPing.time
> +|Spice client copies it from SpiceMsgPing.time
>  |=3D=3D=3D
>  +
>  . Channel migration
> @@ -450,33 +450,33 @@ connections between spice servers. We will refer th=
ese servers as source and
>  destination. Main channel is used for initiating and controlling the mig=
ration
>  process. The following describes the actual channel migration process.
>  +
> -Channel migration process starts with sending RED_MIGRATE message from t=
he
> +Channel migration process starts with sending SPICE_MSG_MIGRATE message =
=66rom the
>  server. The client receives the message, examine the attached flags and:=
 if the
> -server requests messages flush (i.e., RED_MIGRATE_NEED_FLUSH flag is on)=
, the
> -client sends REDC_MIGRATE_FLUSH_MARK message to the server. This procedu=
re can
> +server requests messages flush (i.e., SPICE_MIGRATE_NEED_FLUSH flag is o=
n), the
> +client sends SPICE_MSGC_MIGRATE_FLUSH_MARK message to the server. This p=
rocedure can
>  be used to ensure safe delivery of all mid air messages before performin=
g the
>  migration action.  if the server requests data transfer (i.e.,
> -RED_MIGRATE_NEED_DATA_TRANSFER flag is on), the client expects to receiv=
e one
> +SPICE_MIGRATE_NEED_DATA_TRANSFER flag is on), the client expects to rece=
ive one
>  last message from the server before migrating to destination. This messa=
ge type
> -must be RED_MIGRATE_DATA type. The content of the received message will =
be
> +must be SPICE_MSG_MIGRATE_DATA type. The content of the received message=
 will be
>  transmitted to the destination on connection swap.
>  +
>  Afterward, the client swaps communication channels (i.e., starts using t=
he
>  connection with the destination server). The client can close connection=
 with
>  the source server only after all other channels also have finished the
>  migration process. If the server side has requested data transfer, the c=
lient
> -first transmits REDC_MIGRATE_DATA message containing the data received on
> -RED_MIGRATE_DATA.
> +first transmits SPICE_MSGC_MIGRATE_DATA message containing the data rece=
ived on
> +SPICE_MSG_MIGRATE_DATA.
>  +
>  .. Migration flags
>  +
>  [source,c]
>  ----
> -RED_MIGRATE_NEED_FLUSH 			=3D 1
> -RED_MIGRATE_NEED_DATA_TRANSFER 		=3D 2
> +SPICE_MIGRATE_NEED_FLUSH 			=3D 1
> +SPICE_MIGRATE_NEED_DATA_TRANSFER 		=3D 2
>  ----
>  +
> -.. RED_MIGRATE, RedMigrate
> +.. SPICE_MSG_MIGRATE, SpiceMsgMigrate
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -484,51 +484,51 @@ RED_MIGRATE_NEED_DATA_TRANSFER 		=3D 2
>  |combination of red migration flags.
>  |=3D=3D=3D
>  +
> -... RED_MIGRATE_DATA, UINT8[]
> +... SPICE_MSG_MIGRATE_DATA, UINT8[]
>  +
>  Server migrate data, body of this message is variable length raw data th=
at is
>  determined by each channel type independently
>  +
> -... REDC_MIGRATE_FLUSH_MARK, VOID
> +... SPICE_MSGC_MIGRATE_FLUSH_MARK, VOID
>  +
>  This messages mark completion of client communication channel flushing.
>  +
> -.. REDC_MIGRATE_DATA, UINT8[]
> +.. SPICE_MSGC_MIGRATE_DATA, UINT8[]
>  +
>  Post migration data, sent by client to the destination, containing the d=
ata
> -sent by the source using the RED_MIGRATE_DATA message.
> +sent by the source using the SPICE_MSG_MIGRATE_DATA message.
>  +
>  [[channel_sync]]
>  . Channel synchronization
>  +
>  Spice provides mechanism for synchronizing channels message execution on=
 the
> -client side. The server sends RED_WAIT_FOR_CHANNELS message which contai=
ns a
> -list of channels messages to wait for (i.e., RedWaitForChannels). The Sp=
ice
> +client side. The server sends SPICE_MSG_WAIT_FOR_CHANNELS message which =
contains a
> +list of channels messages to wait for (i.e., SpiceMsgWaitForChannels). T=
he Spice
>  client will wait for completion of all the messages that are in that list
>  before executing any more messages.
>  +
> -.. RedWaitForChannel
> +.. SpiceWaitForChannel
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT8 type
> -|channel type (e.g., RED_CHANNEL_INPUTS)
> +|channel type (e.g., SPICE_CHANNEL_INPUTS)
> =20
>  |UINT8 id
>  |channel id.
> =20
>  |UIN64 serial
> -|message serial id (i.e, RedDataHeader.serial) to wait for
> +|message serial id (i.e, SpiceDataHeader.serial) to wait for
>  |=3D=3D=3D
>  +
> -... RED_WAIT_FOR_CHANNELS, RedWaitForChannels
> +... SPICE_MSG_WAIT_FOR_CHANNELS, SpiceMsgWaitForChannels
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT8 wait_count
>  |number of items in wait_list
> =20
> -|RedWaitForChannel[] wait_list
> +|SpiceWaitForChannel[] wait_list
>  |list of channels to wait for.
>  |=3D=3D=3D
>  +
> @@ -537,7 +537,7 @@ before executing any more messages.
>  The following messages are used for notification about orderly disconnec=
tion
>  of the server or client.
>  +
> -.. RED_DISCONNECTING, RedDisconnect
> +.. SPICE_MSG_DISCONNECTING, SpiceMsgDisconnect
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -545,10 +545,10 @@ of the server or client.
>  |time stamp of disconnect action on the server.
> =20
>  |UINT32 reason
> -|disconnect reason, RED_ERROR_?
> +|disconnect reason, SPICE_LINK_ERR_?
>  |=3D=3D=3D
>  +
> -.. REDC_DISCONNECTING, RedcDisconnect
> +.. SPICE_MSGC_DISCONNECTING, RedcDisconnect
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -556,18 +556,18 @@ of the server or client.
>  |time stamp of disconnect action on the client.
> =20
>  |UINT32 reason
> -|disconnect reason, RED_ERROR_?
> +|disconnect reason, SPICE_LINK_ERR_?
>  |=3D=3D=3D
>  +
>  . Server notification
>  +
>  Spice protocol defines message for delivering notifications to the clien=
t using
> -RED_NOTIFY message. Messages are categorized by severity and visibility.=
 The
> +SPICE_MSG_NOTIFY message. Messages are categorized by severity and visib=
ility. The
>  later can be used as hint for the way the message is displayed to the us=
er. For
>  example high visibility notifications will trigger message box and low
>  visibility notifications will be directed to the log.
>  +
> -.. RED_NOTIFY, RedNotify
> +.. SPICE_MSG_NOTIFY, SpiceMsgNotify
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -581,7 +581,7 @@ visibility notifications will be directed to the log.
>  |one of  RED_NOTIFY_VISIBILITY_?
> =20
>  |UINT32 what
> -|one of RED_ERROR_?, RED_WARN_? Or RED_INFO_?, depending on severity.
> +|one of SPICE_LINK_ERR_?, RED_WARN_? Or RED_INFO_?, depending on severit=
y.
> =20
>  |UINT32 message_len
>  |size of message
> @@ -638,7 +638,7 @@ receives REDC_MAIN_MIGRATE_READY he can commence the =
migration process. The
>  server can send RED_MAIN_MIGRATE_CANCEL in order to instruct the client =
to
>  cancel the migration process.
>  +
> -.. RED_MAIN_MIGRATE_BEGIN, RedMigrationBegin
> +.. RED_MAIN_MIGRATE_BEGIN, SpiceMsgMainMigrationBegin
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -677,11 +677,11 @@ position and shape commands. Spice main channel is =
used for mouse mode control.
>  +
>  [source,c]
>  ----
> -RED_MOUSE_MODE_SERVER =3D 1
> -RED_MOUSE_MODE_CLIENT =3D 2
> +SPICE_MOUSE_MODE_SERVER =3D 1
> +SPICE_MOUSE_MODE_CLIENT =3D 2
>  ----
>  +
> -.. RED_MAIN_MOUSE_MODE, RedMouseMode
> +.. RED_MAIN_MOUSE_MODE, SpiceMsgMainMouseMode
>  +
>  Spice server sends this message on every mouse mode change
>  +
> @@ -698,7 +698,7 @@ Spice server sends this message on every mouse mode c=
hange
>  +
>  Spice client sends this message to request specific mouse mode. It is not
>  guarantied that the server will accept the request. Only on receiving
> -RED_MOUSE_MODE message, the client can know of actual mouse mode change.
> +SPICE_MSG_MAIN_MOUSE_MODE message, the client can know of actual mouse m=
ode change.
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -708,16 +708,16 @@ RED_MOUSE_MODE message, the client can know of actu=
al mouse mode change.
>  +
>  . Main channel init message
>  +
> -Spice server must send RedInit as the first transmitted message t and is
> +Spice server must send SpiceMsgMainInit as the first transmitted message=
 t and is
>  disallowed to send it at any other point.
>  +
> -.. RED_MAIN_INIT, RedInit
> +.. RED_MAIN_INIT, SpiceMsgMainInit
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32 session_id
>  |session id is generated by the server. This id will be send on every new
> -channel connection within this session (i.e., in RedLinkMess.connection_=
id).
> +channel connection within this session (i.e., in SpiceLinkMess.connectio=
n_id).
> =20
>  |UINT32 display_channels_hint
>  |optional hint of expected number of display channels. Zero is defined a=
s an
> @@ -755,7 +755,7 @@ message the client can decide to link with the new av=
ailable channel(s). The
>  server must receive REDC_MAIN_ATTACH_CHANNELS before sending any
>  RED_MAIN_CHANNELS_LIST message.
>  +
> -.. RED_MAIN_CHANNELS_LIST, RedChannels
> +.. RED_MAIN_CHANNELS_LIST, SpiceMsgChannels
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -771,7 +771,7 @@ RED_MAIN_CHANNELS_LIST message.
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT8 type
> -|channel type, one of RED_CHANNEL_? channel types, except for RED_CHANNE=
L_MAIN
> +|channel type, one of RED_CHANNEL_? channel types, except for SPICE_CHAN=
NEL_MAIN
> =20
>  |UINT8 id
>  |channel id
> @@ -853,14 +853,14 @@ messages having unknown type (i.e., receive and dum=
p).
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32
> -|disconnect error code RED_ERROR_?
> +|disconnect error code SPICE_LINK_ERR_?
>  |=3D=3D=3D
>  +
> -.. RED_AGENT_MAX_DATA_SIZE =3D 2048
> +.. SPICE_AGENT_MAX_DATA_SIZE =3D 2048
>  .. RED_MAIN_AGENT_DATA, UINT8[]
>  +
> -Agent packet is the entire message body (i.e. RedDataHeader.size). The m=
aximum
> -packet size is RED_AGENT_MAX_DATA_SIZE.
> +Agent packet is the entire message body (i.e. SpiceDataHeader.size). The=
 maximum
> +packet size is SPICE_AGENT_MAX_DATA_SIZE.
>  +
>  .. RED_MAIN_AGENT_TOKEN, UINT32
>  +
> @@ -880,8 +880,8 @@ packet size is RED_AGENT_MAX_DATA_SIZE.
>  +
>  .. REDC_MAIN_AGENT_DATA, UINT8[]
>  +
> -Agent packet is the entire message body (i.e. RedDataHeader.size). The m=
aximum
> -packet size is RED_AGENT_MAX_DATA_SIZE.
> +Agent packet is the entire message body (i.e. SpiceDataHeader.size). The=
 maximum
> +packet size is SPICE_AGENT_MAX_DATA_SIZE.
>  +
>  .. REDC_MAIN_AGENT_TOKEN, UINT32
>  +
> @@ -899,35 +899,35 @@ Spice Inputs channel controls the server mouse and =
the keyboard.
>  +
>  [source,c]
>  ----
> -REDC_INPUTS_KEY_DOWN 		=3D 101
> -REDC_INPUTS_KEY_UP 		=3D 102
> -REDC_INPUTS_KEY_MODIFAIERS 	=3D 103
> +SPICE_MSGC_INPUTS_KEY_DOWN 		=3D 101
> +SPICE_MSGC_INPUTS_KEY_UP 		=3D 102
> +SPICE_MSGC_INPUTS_KEY_MODIFIERS 	=3D 103
> =20
> -REDC_INPUTS_MOUSE_MOTION 	=3D 111
> -REDC_INPUTS_MOUSE_POSITION	=3D 112
> -REDC_INPUTS_MOUSE_PRESS		=3D 113
> -REDC_INPUTS_MOUSE_RELEASE	=3D 114
> +SPICE_MSGC_INPUTS_MOUSE_MOTION 		=3D 111
> +SPICE_MSGC_INPUTS_MOUSE_POSITION	=3D 112
> +SPICE_MSGC_INPUTS_MOUSE_PRESS		=3D 113
> +SPICE_MSGC_INPUTS_MOUSE_RELEASE		=3D 114
>  ----
>  +
>  . Server Messages
>  +
>  [source,c]
>  ----
> -RED_INPUTS_INIT 		=3D 101
> -RED_INPUTS_KEY_MODIFAIERS 	=3D 102
> +SPICE_MSG_INPUTS_INIT 			=3D 101
> +SPICE_MSG_INPUTS_KEY_MODIFIERS 		=3D 102
> =20
> -RED_INPUTS_MOUSE_MOTION_ACK 	=3D 111
> +SPICE_MSG_INPUTS_MOUSE_MOTION_ACK 	=3D 111
>  ----
>  +
>  . Keyboard messages
>  +
>  Spice supports sending keyboard key events and keyboard leds synchroniza=
tion.
> -The client sends  key event using REDC_INPUTS_KEY_DOWN and REDC_INPUTS_K=
EY_UP
> +The client sends  key event using SPICE_MSGC_INPUTS_KEY_DOWN and SPICE_M=
SGC_INPUTS_KEY_UP
>  messages. Key value is expressed using PC AT scan code (see
>  <<key_code,KeyCode>>).   Keyboard leds synchronization is done by sending
> -RED_INPUTS_KEY_MODIFAIERS message by the server or by sending
> -REDC_INPUTS_KEY_MODIFAIERS by the client, these messages contain keyboar=
d leds
> -state. Keyboard modifiers is also sent by the server using RED_INPUTS_IN=
IT,
> +SPICE_MSG_INPUTS_KEY_MODIFIERS message by the server or by sending
> +SPICE_MSGC_INPUTS_KEY_MODIFIERS by the client, these messages contain ke=
yboard leds
> +state. Keyboard modifiers is also sent by the server using SPICE_MSG_INP=
UTS_INIT,
>  this message must be sent as the first server message and the server mus=
tn't
>  send it  at any other point.
>  +
> @@ -935,12 +935,12 @@ send it  at any other point.
>  +
>  [source,c]
>  ----
> -RED_SCROLL_LOCK_MODIFIER 	=3D 1
> -RED_NUM_LOCK_MODIFIER 		=3D 2
> -RED_CAPS_LOCK_MODIFIER 		=3D 4
> +SPICE_SCROLL_LOCK_MODIFIER 	=3D 1
> +SPICE_NUM_LOCK_MODIFIER 	=3D 2
> +SPICE_CAPS_LOCK_MODIFIER 	=3D 4
>  ----
>  +
> -.. RED_INPUTS_INIT, UINT32
> +.. SPICE_MSG_INPUTS_INIT, UINT32
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -948,7 +948,7 @@ RED_CAPS_LOCK_MODIFIER 		=3D 4
>  |any combination of keyboard led bits. If bit is set then the led is on.
>  |=3D=3D=3D
>  +
> -.. RED_INPUTS_KEY_MODIFAIERS, UINT32
> +.. SPICE_MSG_INPUTS_KEY_MODIFIERS, UINT32
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -956,7 +956,7 @@ RED_CAPS_LOCK_MODIFIER 		=3D 4
>  |any combination of keyboard led bits. If bit is set then the led is on.
>  |=3D=3D=3D
>  +
> -.. REDC_INPUTS_KEY_MODIFAIERS, UINT32
> +.. SPICE_MSGC_INPUTS_KEY_MODIFIERS, UINT32
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -974,7 +974,7 @@ RED_CAPS_LOCK_MODIFIER 		=3D 4
>  bytes for supporting extended codes. A code is terminated by a zero byte.
>  |=3D=3D=3D
>  +
> -.. REDC_INPUTS_KEY_DOWN, KeyCode
> +.. SPICE_MSGC_INPUTS_KEY_DOWN, KeyCode
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -982,7 +982,7 @@ bytes for supporting extended codes. A code is termin=
ated by a zero byte.
>  |client sends this message to notify of key press event.
>  |=3D=3D=3D
>  +
> -.. REDC_INPUTS_KEY_UP,  KeyCode
> +.. SPICE_MSGC_INPUTS_KEY_UP,  KeyCode
>  +
>  KeyCode =E2=80=93 client sends this message to notify of key release eve=
nt.
>  +
> @@ -1005,30 +1005,30 @@ and redc_inputs_mouse_release messages.
>  +
>  [source,c]
>  ----
> -REDC_MOUSE_LBUTTON 	=3D 1, left button
> -REDC_MOUSE_MBUTTON 	=3D 2, middle button
> -REDC_MOUSE_RBUTTON 	=3D 3, right button
> -REDC_MOUSE_UBUTTON 	=3D 4, scroll up button
> -REDC_MOUSE_DBUTTON 	=3D 5, scroll down button
> +SPICE_MOUSE_BUTTON_LEFT 	=3D 1, left button
> +SPICE_MOUSE_BUTTON_MIDDLE 	=3D 2, middle button
> +SPICE_MOUSE_BUTTON_RIGHT 	=3D 3, right button
> +SPICE_MOUSE_BUTTON_UP 		=3D 4, scroll up button
> +SPICE_MOUSE_BUTTON_DOWN 	=3D 5, scroll down button
>  ----
>  +
>  .. Buttons masks
>  +
>  [source,c]
>  ----
> -REDC_LBUTTON_MASK 		=3D 1,  left button mask
> -REDC_MBUTTON_MASK 		=3D 2,  middle button mask
> -REDC_RBUTTON_MASK 		=3D 4, right button mask
> +SPICE_MOUSE_BUTTON_MASK_LEFT 		=3D 1,  left button mask
> +SPICE_MOUSE_BUTTON_MASK_MIDDLE 		=3D 2,  middle button mask
> +SPICE_MOUSE_BUTTON_MASK_RIGHT 		=3D 4, right button mask
>  ----
>  +
> -.. RED_MOTION_ACK_BUNCH
> +.. SPICE_INPUT_MOTION_ACK_BUNCH
>  +
>  [source,c]
>  ----
> -RED_MOTION_ACK_BUNCH		=3D 4
> +SPICE_INPUT_MOTION_ACK_BUNCH		=3D 4
>  ----
>  +
> -.. REDC_INPUTS_MOUSE_MOTION, RedcMouseMotion
> +.. SPICE_MSGC_INPUTS_MOUSE_MOTION, SpiceMsgcMouseMotion
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1044,7 +1044,7 @@ describe unpressed button.
> =20
>  |=3D=3D=3D
>  +
> -.. REDC_INPUTS_MOUSE_POSITION, RedcMousePosition
> +.. SPICE_MSGC_INPUTS_MOUSE_POSITION, SpiceMsgcMousePosition
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1062,7 +1062,7 @@ describe unpressed button.
>  |id of the display that client mouse is on.
>  |=3D=3D=3D
>  +
> -.. REDC_INPUTS_MOUSE_PRESS, RedcMousePress
> +.. SPICE_MSGC_INPUTS_MOUSE_PRESS, SpiceMsgcMousePress
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1074,7 +1074,7 @@ describe unpressed button.
>  bit describes unpressed button.
>  |=3D=3D=3D
>  +
> -.. REDC_INPUTS_MOUSE_RELEASE, RedcMouseRelease
> +.. SPICE_MSGC_INPUTS_MOUSE_RELEASE, SpiceMsgcMouseRelease
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1098,75 +1098,75 @@ supports several images compression methods for r=
educing network traffic.
>  +
>  [source,c]
>  ----
> -RED_DISPLAY_MODE 				=3D 101
> -RED_DISPLAY_MARK 				=3D 102
> -RED_DISPLAY_RESET 				=3D 103
> -RED_DISPLAY_COPY_BITS 				=3D 104
> +SPICE_MSG_DISPLAY_MODE 				=3D 101
> +SPICE_MSG_DISPLAY_MARK 				=3D 102
> +SPICE_MSG_DISPLAY_RESET 			=3D 103
> +SPICE_MSG_DISPLAY_COPY_BITS 			=3D 104
> =20
> -RED_DISPLAY_INVAL_LIST 				=3D 105
> -RED_DISPLAY_INVAL_ALL_IMAGES		 	=3D 106
> -RED_DISPLAY_INVAL_PALETTE 			=3D 107
> -RED_DISPLAY_INVAL_ALL_PALETTES 			=3D 108
> +SPICE_MSG_DISPLAY_INVAL_LIST 			=3D 105
> +SPICE_MSG_DISPLAY_INVAL_ALL_PIXMAPS		=3D 106
> +SPICE_MSG_DISPLAY_INVAL_PALETTE 		=3D 107
> +SPICE_MSG_DISPLAY_INVAL_ALL_PALETTES 		=3D 108
> =20
> -RED_DISPLAY_STREAM_CREATE 			=3D 122
> -RED_DISPLAY_STREAM_DATA				=3D 123
> -RED_DISPLAY_STREAM_CLIP				=3D 124
> -RED_DISPLAY_STREAM_DESTROY			=3D 125
> -RED_DISPLAY_STREAM_DESTROY_ALL			=3D 126
> +SPICE_MSG_DISPLAY_STREAM_CREATE 		=3D 122
> +SPICE_MSG_DISPLAY_STREAM_DATA			=3D 123
> +SPICE_MSG_DISPLAY_STREAM_CLIP			=3D 124
> +SPICE_MSG_DISPLAY_STREAM_DESTROY		=3D 125
> +SPICE_MSG_DISPLAY_STREAM_DESTROY_ALL		=3D 126
> =20
> -RED_DISPLAY_DRAW_FILL				=3D 302
> -RED_DISPLAY_DRAW_OPAQUE				=3D 303
> -RED_DISPLAY_DRAW_COPY				=3D 304
> -RED_DISPLAY_DRAW_BLEND				=3D 305
> -RED_DISPLAY_DRAW_BLACKNESS			=3D 306
> -RED_DISPLAY_DRAW_WHITENESS			=3D 307
> -RED_DISPLAY_DRAW_INVERS				=3D 308
> -RED_DISPLAY_DRAW_ROP3				=3D 309
> -RED_DISPLAY_DRAW_STROKE				=3D 310
> -RED_DISPLAY_DRAW_TEXT				=3D 311
> -RED_DISPLAY_DRAW_TRANSPARENT			=3D 312
> -RED_DISPLAY_DRAW_ALPHA_BLEND			=3D 313
> +SPICE_MSG_DISPLAY_DRAW_FILL			=3D 302
> +SPICE_MSG_DISPLAY_DRAW_OPAQUE			=3D 303
> +SPICE_MSG_DISPLAY_DRAW_COPY			=3D 304
> +SPICE_MSG_DISPLAY_DRAW_BLEND			=3D 305
> +SPICE_MSG_DISPLAY_DRAW_BLACKNESS		=3D 306
> +SPICE_MSG_DISPLAY_DRAW_WHITENESS		=3D 307
> +SPICE_MSG_DISPLAY_DRAW_INVERS			=3D 308
> +SPICE_MSG_DISPLAY_DRAW_ROP3			=3D 309
> +SPICE_MSG_DISPLAY_DRAW_STROKE			=3D 310
> +SPICE_MSG_DISPLAY_DRAW_TEXT			=3D 311
> +SPICE_MSG_DISPLAY_DRAW_TRANSPARENT		=3D 312
> +SPICE_MSG_DISPLAY_DRAW_ALPHA_BLEND		=3D 313
>  ----
>  +
>  . Client messages
>  +
>  [source,c]
>  ----
> -REDC_DISPLAY_INIT 				=3D 101
> +SPICE_MSGC_DISPLAY_INIT 			=3D 101
>  ----
>  +
>  . Operation flow
>  +
> -Spice server sends to the client a mode message using RED_DISPLAY_MODE f=
or
> +Spice server sends to the client a mode message using SPICE_MSG_DISPLAY_=
MODE for
>  specifying the current draw area size and format. In response the client
>  creates a draw area for rendering all the followed rendering commands se=
nt by
>  the server. The client will expose the new remote display area content (=
i.e.,
>  after mode command) only after it receives a mark command (i.e.,
> -RED_DISPLAY_MARK) from the server. The server can send a reset command u=
sing
> -RED_DISPLAY_RESET to instruct the client to drop its draw area and palet=
te
> +SPICE_MSG_DISPLAY_MARK) from the server. The server can send a reset com=
mand using
> +SPICE_MSG_DISPLAY_RESET to instruct the client to drop its draw area and=
 palette
>  cache.  Sending  mode message is allowed only while no active draw area =
exists
>  on the client side. Sending reset message is  allowed only while active =
draw
>  area exists on client side. Sending mark message is allowed only once, b=
etween
>  mode and reset messages. Draw commands, copy bits command and stream com=
mands
>  are allowed only if the client have an active display area (i.e., between
> -RED_DISPLAY_MODE to RED_DISPLAY_RESET).
> +SPICE_MSG_DISPLAY_MODE to SPICE_MSG_DISPLAY_RESET).
>  +
>  On channel connection, the client optionally sends an init message, using
> -REDC_DISPLAY_INIT, in order to enable image caching and global dictionary
> +SPICE_MSGC_DISPLAY_INIT, in order to enable image caching and global dic=
tionary
>  compression. The message includes the cache id and its size and the size=
 of the
>  dictionary compression window. These sizes and id are determined by the =
client.
>  It is disallowed to send more then one init message.
>  +
>  Color pallets cache are manged by the server.
>  Items cache insertion commands are sent as part of  the rendering comman=
ds.
> -Cache items removal are sent explicitly using RED_DISPLAY_INVAL_LIST or
> -RED_DISPLAY_INVAL_LIST server messages. Resetting client caches is done =
by
> -sending RED_DISPLAY_INVAL_ALL_IMAGES or RED_DISPLAY_INVAL_ALL_PALETTES s=
erver
> +Cache items removal are sent explicitly using SPICE_MSG_DISPLAY_INVAL_LI=
ST or
> +SPICE_MSG_DISPLAY_INVAL_LIST server messages. Resetting client caches is=
 done by
> +sending SPICE_MSG_DISPLAY_INVAL_ALL_PIXMAPS or SPICE_MSG_DISPLAY_INVAL_A=
LL_PALETTES server
>  messages.
>  +
>  . Draw area control
>  +
> -.. RED_DISPLAY_MODE,  RedMode
> +.. SPICE_MSG_DISPLAY_MODE,  SpiceMsgDisplayMode
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1180,11 +1180,11 @@ messages.
>  |color depth of the display area. Valid values are 16bpp  or 32bpp.
>  |=3D=3D=3D
>  +
> -.. RED_DISPLAY_MARK, VOID
> +.. SPICE_MSG_DISPLAY_MARK, VOID
>  +
>  Mark the beginning of the display area visibility
>  +
> -.. RED_DISPLAY_RESET, VOID
> +.. SPICE_MSG_DISPLAY_RESET, VOID
>  +
>  Drop current display area of the channel and reset palette cache
>  +
> @@ -1199,77 +1199,77 @@ following definitions of rendering commands this =
combination is referred to by
>  +
>  [source,c]
>  ----
> -ROPD_INVERS_SRC 		=3D 1
> +SPICE_ROPD_INVERS_SRC 		=3D 1
>  ----
>  +
>  Source Image need to be inverted before rendering
>  +
>  [source,c]
>  ----
> -ROPD_INVERS_BRUSH 		=3D 2
> +SPICE_ROPD_INVERS_BRUSH 	=3D 2
>  ----
>  +
> -Brush need to be inverted before rendering
> +SpiceBrush need to be inverted before rendering
>  +
>  [source,c]
>  ----
> -ROPD_INVERS_DEST 		=3D 4
> +SPICE_ROPD_INVERS_DEST 		=3D 4
>  ----
>  +
>  Destination area need to be inverted before rendering
>  +
>  [source,c]
>  ----
> -ROPD_OP_PUT 			=3D 8
> +SPICE_ROPD_OP_PUT 		=3D 8
>  ----
>  +
> -Copy operation should be used.
> +SpiceCopy operation should be used.
>  +
>  [source,c]
>  ----
> -ROPD_OP_OR 			=3D 16
> +SPICE_ROPD_OP_OR 		=3D 16
>  ----
>  +
>  OR operation should be used.
>  +
>  [source,c]
>  ----
> -ROPD_OP_AND 			=3D 32
> +SPICE_ROPD_OP_AND 		=3D 32
>  ----
>  +
>  AND operation should be used.
>  +
>  [source,c]
>  ----
> -ROPD_OP_XOR 			=3D 64
> +SPICE_ROPD_OP_XOR 		=3D 64
>  ----
>  +
>  XOR operation should be used.
>  +
>  [source,c]
>  ----
> -ROPD_OP_BLACKNESS 		=3D 128
> +SPICE_ROPD_OP_BLACKNESS 	=3D 128
>  ----
>  +
>  Destination pixel should be replaced by black
>  +
>  [source,c]
>  ----
> -ROPD_OP_WHITENESS 		=3D 256
> +SPICE_ROPD_OP_WHITENESS 	=3D 256
>  ----
>  +
>  Destination pixel should be replaced by white
>  +
>  [source,c]
>  ----
> -ROPD_OP_INVERS 			=3D 512
> +SPICE_ROPD_OP_INVERS 		=3D 512
>  ----
>  +
>  Destination pixel should be inverted
>  +
>  [source,c]
>  ----
> -ROPD_INVERS_RES 		=3D 1024
> +SPICE_ROPD_INVERS_RES 		=3D 1024
>  ----
>  +
>  Result of the operation needs to be inverted
> @@ -1355,7 +1355,7 @@ PIXMAP_FORMAT_RGBA		=3D 9
>  +
>  pixel format is 32 bits ARGB8888.
>  +
> -.. Palette
> +.. SpicePalette
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1418,7 +1418,7 @@ beginning  of line n+1
>  [source,c]
>  ----
>  union {
> -	ADDRESS palette; /* address of the color palette. Must be zero if no
> +	SPICE_ADDRESS palette; /* address of the color palette. Must be zero if=
 no
>  color table is required for format */
>  }
>  ----
> @@ -1428,7 +1428,7 @@ color table is required for format */
>  |UINT64 palette_id
>  |id of the palette, valid if FLAG_PAL_FROM_CACHE is set
> =20
> -|ADDRESS data
> +|SPICE_ADDRESS data
>  |address of line 0 of the pixmap.
>  |=3D=3D=3D
>  +
> @@ -1476,7 +1476,7 @@ pixmap lines are ordered from top to bottom (i.e. l=
ine 0 is the highest line).
>  [source,c]
>  ----
>  union {
> -	ADDRESS palette; /* address of the color palette (see Palette section
> +	SPICE_ADDRESS palette; /* address of the color palette (see SpicePalett=
e section
>  in =E2=80=9CRaw raster image=E2=80=9D). Zero value is disallowed. */
>  	UINT64 palette_id; /* id of the palette, valid if FLAG_PAL_FROM_CACHE
>  is set. */
> @@ -1507,19 +1507,19 @@ being compressed.
>  [source,c]
>  ----
>  IMAGE_TYPE_PIXMAP 		=3D 0
> -IMAGE_TYPE_QUIC 		=3D 1
> -IMAGE_TYPE_LZ_PLT 		=3D 100
> -IMAGE_TYPE_LZ_RGB 		=3D 101
> -IMAGE_TYPE_GLZ_RGB 		=3D 102
> -IMAGE_TYPE_FROM_CACHE		=3D 103
> +SPICE_IMAGE_TYPE_QUIC 		=3D 1
> +SPICE_IMAGE_TYPE_LZ_PLT 	=3D 100
> +SPICE_IMAGE_TYPE_LZ_RGB 	=3D 101
> +SPICE_IMAGE_TYPE_GLZ_RGB 	=3D 102
> +SPICE_IMAGE_TYPE_FROM_CACHE	=3D 103
>  ----
>  +
>  .. Image flags
>  +
>  IMAGE_FLAG_CACHE_ME =3D 1, this flag instruct the client to add the imag=
e to
> -image cache, cache key is ImageDescriptor.id (see below).
> +image cache, cache key is SpiceImageDescriptor.id (see below).
>  +
> -.. ImageDescriptor
> +.. SpiceImageDescriptor
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1541,8 +1541,8 @@ image cache, cache key is ImageDescriptor.id (see b=
elow).
>  +
>  .. Image data
>  +
> -Image data follows ImageDescriptor and its content depends on
> -ImageDescriptor.type:
> +Image data follows SpiceImageDescriptor and its content depends on
> +SpiceImageDescriptor.type:
>  +
>  * In case of PIXMAP =E2=80=93 content is Pixmap.
>  * In case of QUIC =E2=80=93 content is Quic compressed image. Data begin=
s with   the
> @@ -1556,15 +1556,15 @@ by the compressed data.
>  begins with the size of the compressed data, represented by UINT32, ,  f=
ollowed
>  by the compressed data.
>  * In case of FROM_CACHE =E2=80=93  No image data. The client should use
> -ImageDescriptor.id to retrieve the relevant image from cache.
> +SpiceImageDescriptor.id to retrieve the relevant image from cache.
>  +
> -. Glyph String
> +. Glyph SpiceString
>  +
>  Glyph string defines an array of glyphs for rendering. Glyphs in a strin=
g can
>  be in A1, A4 or A8  format (i.e., 1bpp, 4bpp, or 8bpp alpha mask). Every=
 glyph
>  contains its rendering position on the destination draw area.
>  +
> -.. RasterGlyph
> +.. SpiceRasterGlyph
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1589,7 +1589,7 @@ is A4,  the line stride is ALIGN(width, 2) / 2. If =
the format is A8,  the line
>  stride is width.
>  |=3D=3D=3D
>  +
> -.. Glyph String flags
> +.. Glyph SpiceString flags
>  +
>  [source,c]
>  ----
> @@ -1676,7 +1676,7 @@ PATH_SEGMENT_FLAG_BEZIER 	=3D 16
>  +
>  this segment content is a Bezier curve
>  +
> -.. PathSeg
> +.. SpicePathSeg
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1692,9 +1692,9 @@ this segment content is a Bezier curve
>  +
>  .. PathSegList
>  +
> -List of PathSeg items. End of the list is reached if the sum of all prev=
ious
> +List of SpicePathSeg items. End of the list is reached if the sum of all=
 previous
>  PathSegs' sizes is equal to  list_size. Address of next segment is the a=
ddress
> -of PathSeg.points[PathSeg.count]
> +of SpicePathSeg.points[SpicePathSeg.count]
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1702,40 +1702,40 @@ of PathSeg.points[PathSeg.count]
>  |total size of in bytes of all PathSegs in the list,
>  |=3D=3D=3D
>  +
> -PathSeg seg0 =E2=80=93 first path segment.
> +SpicePathSeg seg0 =E2=80=93 first path segment.
>  +
> -.. Clip types
> +.. SpiceClip types
>  +
>  [source,c]
>  ----
> -CLIP_TYPE_NONE 		=3D 0
> +SPICE_CLIP_TYPE_NONE 		=3D 0
>  ----
>  +
>  no clipping
>  +
>  [source,c]
>  ----
> -CLIP_TYPE_RECTS		=3D 1
> +SPICE_CLIP_TYPE_RECTS		=3D 1
>  ----
>  +
>  data is RectList and union of all rectangles in RectList is the effectiv=
e clip
>  +
>  [source,c]
>  ----
> -CLIP_TYPE_PATH		=3D 2
> +SPICE_CLIP_TYPE_PATH		=3D 2
>  ----
>  +
>  data is PathSegList and the figure described by PathSegList is the effec=
tive
>  clip
>  +
> -.. Clip
> +.. SpiceClip
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UIN32 type
>  |one of CLIP_TYPE_?
> =20
> -|ADDRESS data
> +|SPICE_ADDRESS data
>  |address of clip data. The content depends on <type>
>  |=3D=3D=3D
>  +
> @@ -1754,34 +1754,34 @@ MASK_FLAG_INVERS 	=3D 1, the effective mask is th=
e inverse of the mask
> =20
>  |POINT position | origin of the mask in bitmap coordinates
> =20
> -|ADDRESS bitmap | address of the mask's image, the format of the image m=
ust be
> +|SPICE_ADDRESS bitmap | address of the mask's image, the format of the i=
mage must be
>  1bpp. If the bitmap is zero then no masking operation needs to be prefor=
med.
>  |=3D=3D=3D
>  +
>  In all rendering commands, the mask must be big enough to cover the dest=
ination
>  rectangle
>  +
> -.. Brush types
> +.. SpiceBrush types
>  +
>  [source,c]
>  ----
> -BRUSH_TYPE_NONE		=3D 0 /* the brush is invalid */
> -BRUSH_TYPE_SOLID	=3D 1 /* the brush is solid RGB color */
> -BRUSH_TYPE_PATTERN	=3D 2 /* the brush is a pattern */
> +SPICE_BRUSH_TYPE_NONE		=3D 0 /* the brush is invalid */
> +SPICE_BRUSH_TYPE_SOLID		=3D 1 /* the brush is solid RGB color */
> +SPICE_BRUSH_TYPE_PATTERN	=3D 2 /* the brush is a pattern */
>  ----
>  +
> -.. Pattern
> +.. SpicePattern
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> -|ADDRESS image
> +|SPICE_ADDRESS image
>  |address of the pattern's Image
> =20
>  |POINT position
>  |origin coordinates of the pattern in the image
>  |=3D=3D=3D
>  +
> -.. Brush
> +.. SpiceBrush
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1794,7 +1794,7 @@ BRUSH_TYPE_PATTERN	=3D 2 /* the brush is a pattern =
*/
>  Union {
>  	UINT32 color; */ RGB color. The format of the color depends on current
>  draw area mode.*/
> -	Pattern pattern;
> +	SpicePattern pattern;
>  }
>  ----
>  +
> @@ -1804,14 +1804,14 @@ The following defines the method for scaling image
>  +
>  [source,c]
>  ----
> -IMAGE_SCALE_INTERPOLATE 		=3D 0
> +SPICE_IMAGE_SCALE_MODE_INTERPOLATE 	=3D 0
>  ----
>  +
>  The client is allowed to INTERPOLATE pixel color.
>  +
>  [source,c]
>  ----
> -IMAGE_SCALE_NEAREST 			=3D 1
> +SPICE_IMAGE_SCALE_MODE_NEAREST 		=3D 1
>  ----
>  +
>  The client must use the nearest pixel.
> @@ -1851,7 +1851,7 @@ LINE_ATTR_CAP_SQUARE 			=3D 1
>  LINE_ATTR_CAP_BUTT 			=3D 2
>  ----
>  +
> -.. LineAttr
> +.. SpiceLineAttr
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -1867,14 +1867,14 @@ LINE_ATTR_CAP_BUTT 			=3D 2
>  |UINT8 style_num_segments
>  |number of style segments in line style
> =20
> -|FIXED28_4 width
> +|SPICE_FIXED28_4 width
>  |width of the line in pixels
> =20
> -|FIXED28_4 miter_limit
> +|SPICE_FIXED28_4 miter_limit
>  |miter limit in pixels
> =20
> -| ADDRESS style
> -|address of line style line style is array of FIXED28_4. The array defin=
es
> +| SPICE_ADDRESS style
> +|address of line style line style is array of SPICE_FIXED28_4. The array=
 defines
>  segments that each represents length of  foreground or background pixels=
 in the
>  style. If FLAG_START_WITH_GAP is defined then the first segment in the s=
tyle is
>  background, otherwise it is foreground. Renderer uses  this array of seg=
ments
> @@ -1883,7 +1883,7 @@ repeatedly during rendering operation.
>  +
>  . Rendering command
>  +
> -.. RedDrawBase
> +.. SpiceMsgDisplayBase
>  +
>  Common field to all rendering command
>  +
> @@ -1892,45 +1892,45 @@ Common field to all rendering command
>  |RECT bounding_box
>  |the affected area on the display area
> =20
> -|Clip clip
> +|SpiceClip clip
>  |the effective clip to set before rendering a command
>  |=3D=3D=3D
>  +
> -.. RED_DISPLAY_COPY_BITS
> +.. SPICE_MSG_DISPLAY_COPY_BITS
>  +
>  [source,c]
>  ----
> -RedDrawBase
> +SpiceMsgDisplayBase
>  POINT source_position
>  ----
>  +
> -Copy bits from the draw area to bounding_box on the draw area. Source ar=
ea left
> +SpiceCopy bits from the draw area to bounding_box on the draw area. Sour=
ce area left
>  top corner is source_position and its height and width is equal to bound=
ing_box
>  height and width. Source and  destination rectangles can overlap.
>  +
> -.. RED_DISPLAY_DRAW_FILL
> +.. SPICE_MSG_DISPLAY_DRAW_FILL
>  +
>  [source,c]
>  ----
> -RedDrawBase
> -Brush brush
> +SpiceMsgDisplayBase
> +SpiceBrush brush
>  UINT16 rop_descriptor
>  Mask mask
>  ----
>  +
> -Fill  bounding_box using brush as the fill pattern and rop_descriptor
> +SpiceFill  bounding_box using brush as the fill pattern and rop_descript=
or
>  instructions. If the mask is valid, it will limit the modified area (i.e=
=2E, only
>  pixels on the destination area that their corresponding bits are set wil=
l be
>  affected).
>  +
> -.. RED_DISPLAY_DRAW_OPAQUE
> +.. SPICE_MSG_DISPLAY_DRAW_OPAQUE
>  +
>  [source,c]
>  ----
> -RedDrawBase
> -ADDRESS source_image
> +SpiceMsgDisplayBase
> +SPICE_ADDRESS source_image
>  RECT source_area
> -Brush brush
> +SpiceBrush brush
>  UINT16 rop_descriptor
>  UINT8 scale_mode
>  Mask mask
> @@ -1942,29 +1942,29 @@ bounding_box. In case scaling of source image is =
required it will be performed
>  according to scale_mode and before the combination with brush pixels. If=
 mask
>  is valid it will limit the modified area.
>  +
> -.. RED_DISPLAY_DRAW_COPY
> +.. SPICE_MSG_DISPLAY_DRAW_COPY
>  +
>  [source,c]
>  ----
> -RedDrawBase
> -ADDRESS source_image
> +SpiceMsgDisplayBase
> +SPICE_ADDRESS source_image
>  RECT source_area
>  UINT16 rop_descriptor
>  UINT8 scale_mode
>  Mask mask
>  ----
>  +
> -Copy pixels from source_area in source_image to bounding_box using
> +SpiceCopy pixels from source_area in source_image to bounding_box using
>  rop_descriptor instructions. In case scaling of source image is required=
 it
>  will be performed according to scale_mode and before the copying to the =
draw
>  area. If mask is valid it will limit the modified area.
>  +
> -.. RED_DISPLAY_DRAW_BLEND
> +.. SPICE_MSG_DISPLAY_DRAW_BLEND
>  +
>  [source,c]
>  ----
> -RedDrawBase
> -ADDRESS source_image
> +SpiceMsgDisplayBase
> +SPICE_ADDRESS source_image
>  RECT source_area
>  UINT16 rop_descriptor
>  UINT8 scale_mode
> @@ -1976,47 +1976,47 @@ draw area using rop_descriptor instructions. In c=
ase scaling of source image is
>  required it will be performed according to scale_mode and before the mix=
ing
>  with the draw area. If mask is valid it will limit the modified area.
>  +
> -.. RED_DISPLAY_DRAW_BLACKNESS
> +.. SPICE_MSG_DISPLAY_DRAW_BLACKNESS
>  +
>  [source,c]
>  ----
> -RedDrawBase
> +SpiceMsgDisplayBase
>  Mask mask
>  ----
>  +
> -Fill bounding_box with black pixels. If mask is valid it will limit the
> +SpiceFill bounding_box with black pixels. If mask is valid it will limit=
 the
>  modified area.
>  +
> -.. RED_DISPLAY_DRAW_WHITENESS
> +.. SPICE_MSG_DISPLAY_DRAW_WHITENESS
>  +
>  [source,c]
>  ----
> -RedDrawBase
> +SpiceMsgDisplayBase
>  Mask mask
>  ----
>  +
> -Fill bounding_box with white pixels. If mask is valid it will limit the
> +SpiceFill bounding_box with white pixels. If mask is valid it will limit=
 the
>  modified area.
>  +
> -.. RED_DISPLAY_DRAW_INVERS
> +.. SPICE_MSG_DISPLAY_DRAW_INVERS
>  +
>  [source,c]
>  ----
> -RedDrawBase
> +SpiceMsgDisplayBase
>  Mask mask
>  ----
>  +
>  Inverse all pixels in bounding_box. If mask is valid it will limit the m=
odified
>  area.
>  +
> -.. RED_DISPLAY_DRAW_ROP3
> +.. SPICE_MSG_DISPLAY_DRAW_ROP3
>  +
>  [source,c]
>  ----
> -RedDrawBase
> -ADDRESS source_image
> +SpiceMsgDisplayBase
> +SPICE_ADDRESS source_image
>  RECT source_area
> -Brush brush
> +SpiceBrush brush
>  UINT8 rop3
>  UINT8 scale_mode
>  Mask mask
> @@ -2029,36 +2029,36 @@ operations). In case scaling of source image is r=
equired it will be performed
>  according to scale_mode and before the mixing. If mask is valid it will =
limit
>  the modified area.
>  +
> -.. RED_DISPLAY_DRAW_TRANSPARENT
> +.. SPICE_MSG_DISPLAY_DRAW_TRANSPARENT
>  +
>  [source,c]
>  ----
> -RedDrawBase
> -ADDRESS source_image
> +SpiceMsgDisplayBase
> +SPICE_ADDRESS source_image
>  RECT source_area
>  UINT32 transparent_color
>  UINT32 transparent _true_color
>  ----
>  +
> -Copy pixels from source_area on source_image to  bounding_box on the dra=
w area.
> -In case scaling of source image is required  it will use IMAGE_SCALE_NEA=
REST.
> +SpiceCopy pixels from source_area on source_image to  bounding_box on th=
e draw area.
> +In case scaling of source image is required  it will use SPICE_IMAGE_SCA=
LE_MODE_NEAREST.
>  Pixels with value equal to the transparent color will be masked out.
> -Transparent color is provided in two forms: true color (i.e., RGB888) an=
d  the
> +SpiceTransparent color is provided in two forms: true color (i.e., RGB88=
8) and  the
>  color in the original format (i.e., before compression) .
>  +
> -.. RED_DISPLAY_DRAW_ALPHA_BLEND
> +.. SPICE_MSG_DISPLAY_DRAW_ALPHA_BLEND
>  +
>  [source,c]
>  ----
> -RedDrawBase
> +SpiceMsgDisplayBase
>  UINT8 alpha
> -ADDRESS source_image
> +SPICE_ADDRESS source_image
>  RECT source_area
>  ----
>  +
>  Alpha blend source_area of source_image on  bounding_box of draw area us=
ing
>  alpha value or alternatively per pixel alpha value.  In case scaling of =
source
> -image is required, it will use IMAGE_SCALE_INTERPOLATE mode. Alpha value=
 is
> +image is required, it will use SPICE_IMAGE_SCALE_MODE_INTERPOLATE mode. =
Alpha value is
>  defined as 0 is full transparency and 255 is full opacity. Format of sou=
rce
>  image can be pre-multiplied ARGB8888 for per pixel alpha value.
>  +
> @@ -2071,13 +2071,13 @@ alpha' =3D   (source_alpha *  alpha)  /  255
>  new_color =3D color' + ((255 - alpha' ) * destination_color) / 255
>  ----
>  +
> -.. RED_DISPLAY_DRAW_STROKE
> +.. SPICE_MSG_DISPLAY_DRAW_STROKE
>  +
>  [source,c]
>  ----
> -RedDrawBase
> -ADDRESS path =E2=80=93 address of the PathSegList that defines the path =
to render
> -LineAttr attr
> +SpiceMsgDisplayBase
> +SPICE_ADDRESS path =E2=80=93 address of the PathSegList that defines the=
 path to render
> +SpiceLineAttr attr
>  Bush brush
>  UINT16 fore_mode -  foreground rop_descriptor
>  UINT16 back_mode =E2=80=93 background rop_descriptor
> @@ -2089,15 +2089,15 @@ styled (i.e., LINE_ATTR_FLAG_STYLED is set in att=
r.falgs) then background
>  drawn using fore_mode. If the line is not  styled, the entire path is re=
ndered
>  using fore_mode.
>  +
> -.. RED_DISPLAY_DRAW_TEXT
> +.. SPICE_MSG_DISPLAY_DRAW_TEXT
>  +
>  [source,c]
>  ----
> -RedDrawBase
> -ADDRESS string =E2=80=93 address of GlyphString
> +SpiceMsgDisplayBase
> +SPICE_ADDRESS string =E2=80=93 address of GlyphString
>  RECT back_area
> -Brush fore_brush
> -Brush back_brush
> +SpiceBrush fore_brush
> +SpiceBrush back_brush
>  UINT16 fore_mode
>  UINT16 back_mode
>  ----
> @@ -2118,12 +2118,12 @@ for having smoother playback and audio synchroniz=
ation. Audio  synchronization
>  is achieved by  using time stamp that is attached to audio and video str=
eams.
>  By using video streaming the network traffic can be dramatically reduced=
=2E When
>  the stream is created, the server sends create message using
> -RED_DISPLAY_STREAM_CREATE. After the server creates a stream he can send=
 data
> -using RED_DISPLAY_STREAM_DATA, or set new stream clipping by sending clip
> -message using RED_DISPLAY_STREAM_CLIP. Once the server no longer needs t=
he
> -stream, he can send destroy command using RED_DISPLAY_STREAM_DESTROY. The
> +SPICE_MSG_DISPLAY_STREAM_CREATE. After the server creates a stream he ca=
n send data
> +using SPICE_MSG_DISPLAY_STREAM_DATA, or set new stream clipping by sendi=
ng clip
> +message using SPICE_MSG_DISPLAY_STREAM_CLIP. Once the server no longer n=
eeds the
> +stream, he can send destroy command using SPICE_MSG_DISPLAY_STREAM_DESTR=
OY. The
>  server can also destroy all active streams by sending destroy all messag=
e using
> -RED_DISPLAY_STREAM_DESTROY_ALL.
> +SPICE_MSG_DISPLAY_STREAM_DESTROY_ALL.
>  +
>  .. Stream flags
>  +
> @@ -2139,7 +2139,7 @@ STREAM_FLAG_TOP_DOWN =3D 1 /* stream frame line ord=
er is from top to bottom */
>  STREAM_CODEC_TYPE_MJPEG =3D 1 /* this stream uses motion JPEG  codec */
>  ----
>  +
> -.. RED_DISPLAY_STREAM_CREATE,  RedStreamCreate
> +.. SPICE_MSG_DISPLAY_STREAM_CREATE,  SpiceMsgDisplayStreamCreate
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2170,16 +2170,16 @@ STREAM_CODEC_TYPE_MJPEG =3D 1 /* this stream uses=
 motion JPEG  codec */
>  |RECT destination
>  |area to render into on the client display area
> =20
> -|Clip clip
> +|SpiceClip clip
>  |clipping of the stream
>  |=3D=3D=3D
>  +
> -.. RED_DISPLAY_STREAM_DATA, RedStreamData
> +.. SPICE_MSG_DISPLAY_STREAM_DATA, SpiceMsgDisplayStreamData
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32 id
> -|stream id (i.e., RedStreamCreate.id)
> +|stream id (i.e., SpiceMsgDisplayStreamCreate.id)
> =20
>  |UINT32 multimedia_time
>  |frame time stamp
> @@ -2191,21 +2191,21 @@ STREAM_CODEC_TYPE_MJPEG =3D 1 /* this stream uses=
 motion JPEG  codec */
>  |additional data padding in bytes
> =20
>  |UINT8[] data
> -|stream data depending on RedStreamCreate.codec_type. Size of  data is (
> +|stream data depending on SpiceMsgDisplayStreamCreate.codec_type. Size o=
f  data is (
>  data_size +  pad_size)
>  |=3D=3D=3D
>  +
> -.. RED_DISPLAY_STREAM_CLIP, RedStreamClip
> +.. SPICE_MSG_DISPLAY_STREAM_CLIP, SpiceMsgDisplayStreamClip
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32 id
> -|stream id (i.e., RedStreamCreate.id)
> +|stream id (i.e., SpiceMsgDisplayStreamCreate.id)
>  |=3D=3D=3D
>  +
> -Clip clip =E2=80=93 new clipping of the stream
> +SpiceClip clip =E2=80=93 new clipping of the stream
>  +
> -.. RED_DISPLAY_STREAM_DESTROY, UINT32
> +.. SPICE_MSG_DISPLAY_STREAM_DESTROY, UINT32
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2213,7 +2213,7 @@ Clip clip =E2=80=93 new clipping of the stream
>  |id of stream to destroy
>  |=3D=3D=3D
>  +
> -.. RED_DISPLAY_STREAM_DESTROY_ALL, VOID
> +.. SPICE_MSG_DISPLAY_STREAM_DESTROY_ALL, VOID
>  +
>  Destroy all active streams
>  +
> @@ -2248,7 +2248,7 @@ RED_RES_TYPE_IMAGE =3D 1
>  |list of  resources id
>  |=3D=3D=3D
>  +
> -.. RED_DISPLAY_INVAL_LIST, RedResourceList
> +.. SPICE_MSG_DISPLAY_INVAL_LIST, RedResourceList
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2256,13 +2256,13 @@ RED_RES_TYPE_IMAGE =3D 1
>  |list of resources to remove from cache
>  |=3D=3D=3D
>  +
> -.. RED_DISPLAY_INVAL_ALL_IMAGES, RedWaitForChannels
> +.. SPICE_MSG_DISPLAY_INVAL_ALL_PIXMAPS, SpiceMsgWaitForChannels
>  +
> -Remove all images from the image cache. The client must use RedWaitForCh=
annels
> +Remove all images from the image cache. The client must use SpiceMsgWait=
ForChannels
>  (for more info see <<channel_sync,Channel synchronization>>) to synchron=
ize
>  with other channels before clearing the cache.
>  +
> -.. RED_DISPLAY_INVAL_PALETTE, UINT64
> +.. SPICE_MSG_DISPLAY_INVAL_PALETTE, UINT64
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2270,7 +2270,7 @@ with other channels before clearing the cache.
>  |client needs to remove palette with that id from the cache
>  |=3D=3D=3D
>  +
> -.. RED_DISPLAY_INVAL_ALL_PALETTES, VOID
> +.. SPICE_MSG_DISPLAY_INVAL_ALL_PALETTES, VOID
>  +
>  Remove all palettes from palette cache
> =20
> @@ -2281,43 +2281,43 @@ position on the remote display area, cursor posit=
ion messages are irrelevant
>  for client mouse mode (see <<mouse_modes,Mouse Modes>>). Spice protocol =
also
>  defines a set of messages for managing cursor shape cache on the client =
site.
>  Client must strictly obey all such instructions. The server sends
> -RED_CURSOR_INIT to set current pointer state (i.e., shape, position, vis=
ibility
> +SPICE_MSG_CURSOR_INIT to set current pointer state (i.e., shape, positio=
n, visibility
>  etc.) and to clear shape cache. After the server sends init message it c=
an send
> -any other cursor command except for RED_CURSOR_INIT. The server can send
> -RED_CURSOR_RESET message - this will disable the cursor and reset the cu=
rsor
> +any other cursor command except for SPICE_MSG_CURSOR_INIT. The server ca=
n send
> +SPICE_MSG_CURSOR_RESET message - this will disable the cursor and reset =
the cursor
>  cache. After this message the only valid message the server can send is
> -RED_CURSOR_INIT. The relevant remote display area for a cursor channel i=
s the
> +SPICE_MSG_CURSOR_INIT. The relevant remote display area for a cursor cha=
nnel is the
>  one of the display channel that has the same channel id (i.e.,
> -RedLinkMess.channel_id).
> +SpiceLinkMess.channel_id).
> =20
>  . Server messages
>  +
>  [source,c]
>  ----
> -RED_CURSOR_INIT 		=3D 101
> -RED_CURSOR_RESET		=3D 102
> -RED_CURSOR_SET			=3D 103
> -RED_CURSOR_MOVE			=3D 104
> -RED_CURSOR_HIDE			=3D 105
> -RED_CURSOR_TRAIL		=3D 106
> -RED_CURSOR_INVAL_ONE		=3D 107
> -RED_CURSOR_INVAL_ALL		=3D 108
> +SPICE_MSG_CURSOR_INIT 		=3D 101
> +SPICE_MSG_CURSOR_RESET		=3D 102
> +SPICE_MSG_CURSOR_SET		=3D 103
> +SPICE_MSG_CURSOR_MOVE		=3D 104
> +SPICE_MSG_CURSOR_HIDE		=3D 105
> +SPICE_MSG_CURSOR_TRAIL		=3D 106
> +SPICE_MSG_CURSOR_INVAL_ONE	=3D 107
> +SPICE_MSG_CURSOR_INVAL_ALL	=3D 108
>  ----
>  +
>  .. Cursors types
>  +
>  [source,c]
>  ----
> -CURSOR_TYPE_ALPHA 		=3D 0
> -CURSOR_TYPE_MONO 		=3D 1
> -CURSOR_TYPE_COLOR4 		=3D 2
> -CURSOR_TYPE_COLOR8 		=3D 3
> -CURSOR_TYPE_COLOR16 		=3D 4
> -CURSOR_TYPE_COLOR24 		=3D 5
> -CURSOR_TYPE_COLOR32 		=3D 6
> +SPICE_CURSOR_TYPE_ALPHA 	=3D 0
> +SPICE_CURSOR_TYPE_MONO 		=3D 1
> +SPICE_CURSOR_TYPE_COLOR4 	=3D 2
> +SPICE_CURSOR_TYPE_COLOR8 	=3D 3
> +SPICE_CURSOR_TYPE_COLOR16 	=3D 4
> +SPICE_CURSOR_TYPE_COLOR24 	=3D 5
> +SPICE_CURSOR_TYPE_COLOR32 	=3D 6
>  ----
>  +
> -.. CursorHeader
> +.. SpiceCursorHeader
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2348,7 +2348,7 @@ and retrieving cursors from the cursor cache.
>  CURSOR_FLAGS_NONE 		=3D 1
>  ----
>  +
> -set when RedCursor (see below) is invalid
> +set when SpiceCursor (see below) is invalid
>  +
>  [source,c]
>  ----
> @@ -2356,30 +2356,30 @@ CURSOR_CURSOR_FLAGS _CACHE_ME 	=3D 2
>  ----
>  +
>  set when the client should add this shape to the shapes cache. The clien=
t will
> -use CursorHeader.unique as cache key.
> +use SpiceCursorHeader.unique as cache key.
>  +
>  [source,c]
>  ----
>  CURSOR_FLAGS_FROM_CACHE 	=3D 4
>  ----
>  +
> -set when the client should retrieve the cursor shape, using CursorHeader=
=2Eunique
> -as key, from the shapes cache. In this case all fields of CursorHeader e=
xcept
> +set when the client should retrieve the cursor shape, using SpiceCursorH=
eader.unique
> +as key, from the shapes cache. In this case all fields of SpiceCursorHea=
der except
>  for 'unique' are invalid.
>  +
> -.. RedCursor
> +.. SpiceCursor
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
>  |UINT32 flags
>  |any valid combination of  RED_CURSOR_?
> =20
> -|CursorHeader header
> +|SpiceCursorHeader header
>  |
> =20
>  |UINT8[] data
>  |actual cursor shape data, the size is determine by width, height and ty=
pe from
> -CursorHeader. Next we will describe in detail the  shape data format acc=
ording
> +SpiceCursorHeader. Next we will describe in detail the  shape data forma=
t according
>  to cursor type:
> =20
>  |ALPHA, alpha shape
> @@ -2423,7 +2423,7 @@ ALIGN(<width>, 8) / 8; bits order within every byte=
 is big endian.
>  For more deatails on drawing the cursor shape see <<cursor_shape, this
>  section>>
>  +
> -.. RED_CURSOR_INIT, RedCursorInit
> +.. SPICE_MSG_CURSOR_INIT, SpiceMsgCursorInit
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2440,13 +2440,13 @@ client mode.
>  |UIN8 visible
>  |if 1, the cursor is visible. If 0, the cursor is invisible.
> =20
> -|RedCursor cursor
> +|SpiceCursor cursor
>  |current cursor shape
>  |=3D=3D=3D
>  +
> -.. RED_CURSOR_RESET, VOID
> +.. SPICE_MSG_CURSOR_RESET, VOID
>  +
> -.. RED_CURSOR_SET, RedCursorSet
> +.. SPICE_MSG_CURSOR_SET, SpiceMsgCursorSet
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2457,11 +2457,11 @@ mode.
>  |UINT8 visible
>  |if 1, the cursor is visible. If 0, the cursor is invisible.
> =20
> -|RedCursor cursor
> +|SpiceCursor cursor
>  |current cursor shape
>  |=3D=3D=3D
>  +
> -.. RED_CURSOR_MOVE, POINT16
> +.. SPICE_MSG_CURSOR_MOVE, POINT16
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2470,11 +2470,11 @@ mode.
>  sets cursor visibility to 1.
>  |=3D=3D=3D
>  +
> -.. RED_CURSOR_HIDE, VOID
> +.. SPICE_MSG_CURSOR_HIDE, VOID
>  +
>  Hide pointer on the relevant display area.
>  +
> -.. RED_CURSOR_TRAIL
> +.. SPICE_MSG_CURSOR_TRAIL
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2485,7 +2485,7 @@ Hide pointer on the relevant display area.
>  |millisecond interval between trail updates
>  |=3D=3D=3D
>  +
> -.. RED_CURSOR_INVAL_ONE, UINT64
> +.. SPICE_MSG_CURSOR_INVAL_ONE, UINT64
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2493,7 +2493,7 @@ Hide pointer on the relevant display area.
>  |id of cursor shape to remove from the cursor cache
>  |=3D=3D=3D
>  +
> -.. RED_CURSOR_INVAL_ALL, VOLD
> +.. SPICE_MSG_CURSOR_INVAL_ALL, VOLD
>  +
>  Clear cursor cache
>  +
> @@ -2523,10 +2523,10 @@ Else, put source color.
>  =3D=3D Playback channel definition
> =20
>  Spice supports sending audio streams for playback on the client side. An=
 audio
> -stream is sent by the server in an audio packet using RED_PLAYBACK_DATA
> +stream is sent by the server in an audio packet using SPICE_MSG_PLAYBACK=
_DATA
>  message. The content of the audio packet is controlled by the playback m=
ode
> -that the server sends using RED_PLAYBACK_MODE message. The server can st=
art and
> -stop the stream using RED_PLAYBACK_START and RED_PLAYBACK_STOP messages.
> +that the server sends using SPICE_MSG_PLAYBACK_MODE message. The server =
can start and
> +stop the stream using SPICE_MSG_PLAYBACK_START and SPICE_MSG_PLAYBACK_ST=
OP messages.
>  Sending audio packet is allowed only between  start and stop messages. S=
ending
>  start message is allowed only in stop state and after at least one mode =
message
>  was sent. Sending a stop message is allowed only during a start state.
> @@ -2535,10 +2535,10 @@ was sent. Sending a stop message is allowed only =
during a start state.
>  +
>  [source,c]
>  ----
> -RED_PLAYBACK_DATA 			=3D 101
> -RED_PLAYBACK_MODE 			=3D 102
> -RED_PLAYBACK_START			=3D 103
> -RED_PLAYBACK_STOP			=3D 104
> +SPICE_MSG_PLAYBACK_DATA 		=3D 101
> +SPICE_MSG_PLAYBACK_MODE 		=3D 102
> +SPICE_MSG_PLAYBACK_START		=3D 103
> +SPICE_MSG_PLAYBACK_STOP			=3D 104
>  ----
>  +
>  . Audio format
> @@ -2564,13 +2564,13 @@ RED_PLAYBACK_DATA_MODE_CELT_0_5_1	=3D 2
>  +
>  [source,c]
>  ----
> -RED_PLAYBACK_CAP_CELT_0_5_1 		=3D 0
> +SPICE_PLAYBACK_CAP_CELT_0_5_1 		=3D 0
>  ----
>  +
>  Spice client needs to declare support of CELT_5_1 in channel capabilitie=
s in
>  order to allow the server to send playback packets in CELT_0_5_1 format.
>  +
> -. RED_PLAYBACK_MODE, RedPlaybackMode
> +. SPICE_MSG_PLAYBACK_MODE, SpiceMsgPlaybackMode
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2584,7 +2584,7 @@ order to allow the server to send playback packets =
in CELT_0_5_1 format.
>  |specific data, content depend on mode
>  |=3D=3D=3D
>  +
> -. RED_PLAYBACK_START, RedRecordStart
> +. SPICE_MSG_PLAYBACK_START, SpiceMsgRecordStart
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2598,7 +2598,7 @@ order to allow the server to send playback packets =
in CELT_0_5_1 format.
>  |channel samples per second
>  |=3D=3D=3D
>  +
> -. RED_PLAYBACK_DATA, RedPlaybackPacket
> +. SPICE_MSG_PLAYBACK_DATA, SpiceMsgPlaybackPacket
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2609,22 +2609,22 @@ order to allow the server to send playback packet=
s in CELT_0_5_1 format.
>  |playback data , content depend on mode
>  |=3D=3D=3D
>  +
> -. RED_PLAYBACK_STOP, VOID
> +. SPICE_MSG_PLAYBACK_STOP, VOID
>  +
>  Stop current audio playback
> =20
>  =3D=3D Record Channel definition
> =20
>  Spice supports transmitting of audio captured streams from the client to=
 the
> -server. Spice server starts audio capturing using RED_RECORD_START messa=
ge.
> +server. Spice server starts audio capturing using SPICE_MSG_RECORD_START=
 message.
>  This message instructs the client to start transmitting captured audio .=
 In
>  response, the client sends time stamp of the stream start using
> -REDC_RECORD_START_MARK. After the client sends start mark it can start
> -transmitting audio stream data using REDC_RECORD_DATA. One mode message =
must be
> -sent by the client before any other message using REDC_RECORD_MODE. This=
, in
> +SPICE_MSGC_RECORD_START_MARK. After the client sends start mark it can s=
tart
> +transmitting audio stream data using SPICE_MSGC_RECORD_DATA. One mode me=
ssage must be
> +sent by the client before any other message using SPICE_MSGC_RECORD_MODE=
=2E This, in
>  order to inform the server on what type of data will be transferred. Mode
>  message can also be transmitted at any other time in order to switch the=
 data
> -type delivered by REDC_RECORD_DATA. The Server can send RED_RECORD_STOP =
for
> +type delivered by SPICE_MSGC_RECORD_DATA. The Server can send SPICE_MSG_=
RECORD_STOP for
>  stopping captured audio streaming. Sending a start message is allowed on=
ly
>  while the stream is in stop state. Sending a stop message and data messa=
ges is
>  allowed only while the stream is in start state. Sending mark message is
> @@ -2634,17 +2634,17 @@ allowed only between start message and the first =
data message.
>  +
>  [source,c]
>  ----
> -RED_RECORD_START 			=3D 101
> -RED_RECORD_STOP				=3D 102
> +SPICE_MSG_RECORD_START 			=3D 101
> +SPICE_MSG_RECORD_STOP			=3D 102
>  ----
>  +
>  . Client messages
>  +
>  [source,c]
>  ----
> -REDC_RECORD_DATA 			=3D 101
> -REDC_RECORD_MODE			=3D 102
> -REDC_RECORD_START_MARK			=3D 103
> +SPICE_MSGC_RECORD_DATA 			=3D 101
> +SPICE_MSGC_RECORD_MODE			=3D 102
> +SPICE_MSGC_RECORD_START_MARK		=3D 103
>  ----
>  +
>  . Audio format
> @@ -2670,13 +2670,13 @@ RED_RECORD_DATA_MODE_CELT_0_5_1		=3D 2
>  +
>  [source,c]
>  ----
> -RED_PLAYBACK_CAP_CELT_0_5_1 		=3D 0
> +SPICE_PLAYBACK_CAP_CELT_0_5_1 		=3D 0
>  ----
>  +
>  Spice server needs to declare support of CELT_5_1 in channel capabilitie=
s in
>  order to allow the client to send recorded packets in CELT_0_5_1 format.
>  +
> -. REDC_RECORD_MODE, RedcRecordMode
> +. SPICE_MSGC_RECORD_MODE, SpiceMsgcRecordMode
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2690,7 +2690,7 @@ order to allow the client to send recorded packets =
in CELT_0_5_1 format.
>  |specific data, content depend on mode
>  |=3D=3D=3D
>  +
> -. RED_RECORD_START, RedRecordStart
> +. SPICE_MSG_RECORD_START, SpiceMsgRecordStart
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2698,13 +2698,13 @@ order to allow the client to send recorded packet=
s in CELT_0_5_1 format.
>  |number of audio channels
> =20
>  |UINT32 format
> -|one of RED_AUDIO_FMT_?
> +|one of SPICE_AUDIO_FMT_?
> =20
>  |UINT32 frequency
>  |channel samples per second
>  |=3D=3D=3D
>  +
> -. REDC_RECORD_START_MARK, UINT32
> +. SPICE_MSGC_RECORD_START_MARK, UINT32
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2712,7 +2712,7 @@ order to allow the client to send recorded packets =
in CELT_0_5_1 format.
>  |client time stamp of stream start
>  |=3D=3D=3D
>  +
> -. REDC_RECORD_DATA, RedcRecordPacket
> +. SPICE_MSGC_RECORD_DATA, SpiceMsgcRecordPacket
>  +
>  [cols=3D"2*"]
>  |=3D=3D=3D
> @@ -2723,6 +2723,6 @@ order to allow the client to send recorded packets =
in CELT_0_5_1 format.
>  |recorded data , content depend on mode
>  |=3D=3D=3D
>  +
> -. RED_RECORD_STOP, VOID
> +. SPICE_MSG_RECORD_STOP, VOID
>  +
>  Stop current audio capture
> --=20
> 2.21.0
>=20

> _______________________________________________
> Spice-devel mailing list
> Spice-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/spice-devel


--nswrrypfayfkju6f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEIG07NS9WbzsOZXLpl9kSPeN6SE8FAl2kT6gACgkQl9kSPeN6
SE+5Rg/9FynTfVhoxLEpAhErA6wZfFHq5BKo9xIbB+PjNbLTaPUwRkN9NKKDbIzw
NdHbZIdhjpnTcjVZ8M2VMZpsn6H+q4dBtFKq5uK7ToE5Nh+uUVK4b7BCcDy8cRiP
9hwq8I7HY8+FbjTg2buKlIsZPSH9fAgtEXgt0k9XySrhkOdAWzX1TrrppgfS09Qu
/LbnzISb3qM9I8CPaz9KcrmzxDJQEUhf3v1/f6lEnZzFmC7MIQ6YyedVbDSEpagW
byjoasxVaFQ94sOQzfYkyw9m+zp0y5p3jhAEWar/Ja5AtR+8kEH8ZSdg6TmF/UAK
Ij/zRSxF8KLlZuO9CBhBxOMUkCQZyyodMKKXljrLnYHSKC34wtKJp7rMlY62eB4W
Slxz+13JrviraThDRMEeZIrMgYFusJA7TYx0hR/OKwAJKQLKZf4L/f5wnF/UG8eZ
8hlNgnqj7rFeewV9X25tUe8SHyOFuF1QXZOlNK9OG6cUOFKv7aE64yQG9FCNCsmr
qOs4PQmHVGNLOptoyqJYKWgl0wQCDC1PQg4BN7d8z2EF55ggRU5m02VxCGOSJ/XT
FRndMbiXuiUPOF2pVj221ITBNDDO5hA4hUZKRV2s3hKh7sgIEC6Azyh0EawTdiTx
kTadfYU4U2qRjnWPkd6UFyzBt6TYOEbkFz3VwW8bVdrsGrL35Go=
=pD9h
-----END PGP SIGNATURE-----

--nswrrypfayfkju6f--

--===============0613597029==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BpY2UtZGV2
ZWwgbWFpbGluZyBsaXN0ClNwaWNlLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL3NwaWNlLWRldmVs

--===============0613597029==--
