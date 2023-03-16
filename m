Return-Path: <spice-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+spice-devel@lfdr.de
Delivered-To: lists+spice-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E246BEB06
	for <lists+spice-devel@lfdr.de>; Fri, 17 Mar 2023 15:22:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740C310E376;
	Fri, 17 Mar 2023 14:22:13 +0000 (UTC)
X-Original-To: spice-devel@lists.freedesktop.org
Delivered-To: spice-devel@lists.freedesktop.org
X-Greylist: delayed 54519 seconds by postgrey-1.36 at gabe;
 Fri, 17 Mar 2023 05:30:13 UTC
Received: from delivery.antispam.mailspamprotection.com
 (delivery.antispam.mailspamprotection.com [185.56.86.128])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3E510E064
 for <spice-devel@lists.freedesktop.org>; Fri, 17 Mar 2023 05:30:13 +0000 (UTC)
Received: from 228.147.209.35.bc.googleusercontent.com ([35.209.147.228]
 helo=siteground326.com)
 by instance-us-central1-45wh.prod.antispam.mailspamprotection.com with esmtpsa
 (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <richard.cantin@ayuda.ca>) id 1pcoTw-009et9-14
 for spice-devel@lists.freedesktop.org;
 Thu, 16 Mar 2023 14:21:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ayuda.ca;
 s=default; h=Date:Subject:To:From:cc:list-help:list-unsubscribe:
 list-subscribe:list-post:list-owner:list-archive;
 bh=IFNsp5PIpcptvcEOyZLS+TO84n/fVWctLAMwMylyh84=; b=OAa1Ut6AbjCYwqobdofUh2LfL3
 y5CRGjlunuEm5slUcLk9Jz4WuUu8OFbE1mpNwhm0uV9fKjgmEguaKg/4cy2+ObI2JMq4uKFeEhxDL
 ANdXdcoFDd/Y4Dw2mdbyj50A5QQvwD5Uc9R8+wGIgAM+3kVsPJ4pQ3qnNPdeE+ONw9r4=;
Received: from [76.10.128.49] (port=57433 helo=RCPC2019)
 by siteground326.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 (Exim 4.96)
 (envelope-from <richard.cantin@ayuda.ca>) id 1pcoTv-0001AZ-28;
 Thu, 16 Mar 2023 14:21:28 +0000
From: "Richard Cantin" <richard.cantin@ayuda.ca>
To: <spice-devel@lists.freedesktop.org>
Date: Thu, 16 Mar 2023 10:21:36 -0400
Organization: Ayuda
Message-ID: <003801d95812$9e2f35d0$da8da170$@ayuda.ca>
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="----=_NextPart_000_0039_01D957F1.172536F0"
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdlYCGEA8Qpaw+gNRLu23E+79Y2cyA==
Content-Language: en-ca
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - siteground326.com
X-AntiAbuse: Original Domain - lists.freedesktop.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - ayuda.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: 2b2a4b254b59496ba2273cbc31bf2d96
X-Mailman-Approved-At: Fri, 17 Mar 2023 14:22:11 +0000
Subject: [Spice-devel] Automated, PERL-based Spice launch script for Proxmox
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
Reply-To: richard.cantin@ayuda.ca
Errors-To: spice-devel-bounces@lists.freedesktop.org
Sender: "Spice-devel" <spice-devel-bounces@lists.freedesktop.org>

This is a multipart message in MIME format.

------=_NextPart_000_0039_01D957F1.172536F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Spice protocols are SO much better/faster/more fucntional/. (thank you) than
alternatives.

 

I could not see where to put this on your forum so if you want it, please
feel free to add it wherever you want - no attribution required.

 

I have enclosed below a Perl script I wrote - using material from various
online forums and adding my code - that allows a Windows user to  use Spice
protocols to access a Proxmox VM (in my case Linux Mint) by launching a
Shortcut on the Windows machine.  

 

This way you do NOT have to launch the Proxmox GUI and use the Proxmox
Console to generate the SPICE certificate to use the Spice connection.

 

The script is initiated via a shortcut on the Windows machine that points to
the script.

 

The script creates an SSH connection between the WIndows machine and the
Proxmox VM, generates the Spice certificate and launches the Spice client
(Virtual Viewer) on the Windows machine.

 

I installed Strawberry Perl and Remote Viewer on the Windows machine for
this to work.

 

It makes it a LOT easier to access the Linux Mint VM, instead of using the
intermediate Proxmox GUI.

 

I you want to use/post/share this, feel free.  No attribution required. See
below.

 

Richard

 

Richard Cantin

richard.cantin@ayuda.ca <mailto:richard.cantin@ayuda.ca> 

(519) 957-2414 [home]

(519) 574-9401 [mobile]

 

===================================================================

 

#!C:\Strawberry\perl\bin\perl.exe

###!/usr/bin/perl

###!perl

 

# See perldoc.perl.org for information on Perl

# # comments out a line

 

# This script allows a Windows user to access a Proxmox VM via Spice
protocols

# WITHOUT having to launch the Proxmox GUI to use the Proxmox Console

# by simply double-clicking on a Shortcut on the Windows PC

#

# This script is installed on a Windows PC

# It requires 

#             a Perl interpreter

#                            ( I use Strawberry Perl at
https://strawberryperl.com )

#             a module on the PC to enable SSH connections via script

#                            ( I use Net::SSH::Perl installed with "cpan
install Net::SSH::Perl" )

#             a Spice-compatible Remote Viewer Windows package 

#                            (I use the msi installer for virt-viewer at
https://virt-manager.org/download )

#             a Proxmox VM with the Spice client enabled

#                            ( I use Linux Mint as a Proxmox VM )

#             a Public/Private key pair enabling SSH connection from the
Windows to the Proxmox host

#                            ( I use PuttyGen to create the keys on the PC -
Export the Private key in OpenSSH format )

#

# Install this script on the Windows PC

# Put the public key onto the Proxmox host and manually SSH to the Proxmox
host from the Wondows PC

#   to establish an entry in the "kown-hosts" file on the Windows PC

# Set the script parameters specific to your installation in the variables
section below

# Point a Shortcut to this script

# Launch the shortcut

#

 

# ##############################################################

# Installation parameters

 

# Establish Parameters for the connection and command to use for fetching
the SPICE ticket

# Replace the values enclosed in <> and delete the enclosing brackets < and
>

#

# The address of the Proxmox host (NOT the VM to which you want to connect)

my $host = '<FQDN or IP Address of Proxmox Host>';

# Set the Port number used by the remote Proxmox host to accept SSH
connections (usually 22)

my $port_number = 22;

# Set the SSH protocol version (usually 2) accepted by the remote Proxmox
host

my $protocol_selection = '2';

# Set the (non-root) remote user username for the VM (NOT the Proxmox host)

my $non_root_user = '<Non-root username on VM>';

# Set the (non-root) remote user password for the VM (NOT the Proxmox host)

my $non_root_user_password = "<Non-root password on VM>";

# Set the name of the Proxmox Node (the host or physical machine) 

my $node_name = "<Name of Proxmox Node>";

# Set the VM Number of the VM to which you want to connect via Spice

my $vm_number = <VM Number of VM to which you want to connect via Spice>;

# Set the location of the Private key on the Windows PC (in OpenSSH format)

# Remember to use Windows directory delimiters (backslash) and precede with
a backslash to make it a literal value

my @identity_file_location = ( "<DiskID:\\Full\\Path\\To\\Private\\Key.pem>"
);

# Set the filename and path for edited file containing Spice Certificate

# The file is created on a temporary basis and deleted once used

# File suffix is .vv

my $output_filename_with_path =
"<DiskID:\\Full\\Path\\To\\Temporary\\Storage\\Of\\Spice\\Certificate.vv>";

# Set the location of the Remote viewer application that will use the ticket
/ configuration file generated

# Usually looks something like the path shown - adjust to your specifics

my $path_to_remoteviewer_program = 'C:\Program Files\VirtViewer
v11.0-256\bin\remote-viewer.exe';

 

# ##############################################################

 

# Nothing after this normally needs customizing

#   unless your spice generator has a different format for the certificates
it generates

#  (ie the layout uses something other than | as a separator)

# Try this as is and if it works, great, but if not

#             Set the parameters above for your installation

#             Comment out the line near the end of this script "system :
'$path_to_remoteviewer_program" ...'

#             Run this script and use a text editor to view the certificate

#                            It will be stored at the location specified
above in $output_filename_with_path

#             Adjust the RegEx below to suit

#             Restore the line near the end of this script "system :
'$path_to_remoteviewer_program" ...'

#             Run this script

 

# Set the debug flag to true

my $debug_flag = 1;

# Include this whenever creating code; If you want to comment it out for
production, your call

use warnings;

# You may want to comment this out for production (resource usage) but use
for development

use diagnostics;

# Use this to ensure you properly declare variables prior to their use and
reserve space for them

use strict;

# establish the encoding protocol to use for all script elements

use utf8;

# Set the STDIN STDOUT and STDERR to show with UTF-8 formatting 

# This helps with debugging with print statements

use open ":std", ":encoding(UTF-8)";

# Enable the module on the PC that will setup SSH connections

# Make sure the module is installed and if not, install it with "cpan
install Net::SSH::Perl"

use Net::SSH::Perl;

# Establish Parameters for the conversion of the raw ticket to a format
remoteviewer can use

# Tell the system what encoding you will be using: more necessary for read
but a good habit to get into

my $encoding = ":encoding(UTF-8)";

 

# =======================================================

 

# Instantiate the SSH connection object using the method enabled above
NET:SSH:Perl

my $ssh_connection = Net::SSH::Perl->new( $host , debug => $debug_flag ,
port => $port_number , protocol => $protocol_selection , identity_files =>
\@identity_file_location );

# Or, with some options that are not required for basic Debian access but
some shared hosting require

# my $ssh_connection = Net::SSH::Perl->new( $host , debug => $debug_flag ,
port => $port_number , protocol => $protocol_selection , identity_files =>
\@identity_file_location , options => [ "HostKeyAlgorithms
+ssh-rsa,ssh-ed25519" , "PubkeyAcceptedAlgorithms +ssh-rsa,ssh-ed25519" ] );

# Or, to have it work with user/password (when user/password is enabled)

# my $ssh_connection = Net::SSH::Perl->new( $host , debug => $debug_flag ,
port => $port_number , protocol => $protocol_selection , options => [
"HostKeyAlgorithms +ssh-rsa,ssh-ed25519" , "PubkeyAcceptedAlgorithms
+ssh-rsa,ssh-ed25519" ] );

 

# Login to the remote host

# If the host system has previously been associated with a different
"known_host"

# make sure to delete the previous host entry in Windows

# For Windows 7 find this by entering %USERPROFILE% in the search bar and
looking in the .ssh directory

# I disable remote SSH with root for security purposes so you need to login
with a non-root user

# and then use sudo to perform superuser commands like pvesh

$ssh_connection->login($non_root_user);

# Or, to have it work with user/password (when user/password is enabled)

# $ssh_connection->login($non_root_user,$non_root_user_password);

 

# Issue the command at the remote host to generate the SPICE ticket and put
it into a variable called $output

# I know storing a password in a script and sending it is a security issue

# If someone else wants to use Expect or React for making an interactive
script, be my guest

# This script uses key-pair to make the encrypted connection, then sends the
password so I am ok with the transmission

# Yes, storage of password in a readable text file is risky; I password
protect my PC and do not allow others access

my $command = ( "echo $non_root_user_password | sudo -S pvesh create
/nodes/$node_name/qemu/$vm_number/spiceproxy" );

my ($output, $error_message, $exit_code) = $ssh_connection->cmd( "$command"
);

 

# Read the raw ticket content, edit the content to match what remote-viewer
is looking for

# and write the edited content to a file on the system that is hosting the
script

# We will use this edited content file as the configuration settings when we
launch remoteviewer

# Create the file handler, with read and/or write permission (include the
$encoding as shown)

#             The '>' designator tells the system this file handler is for
writing

#             To Read, use "< $encoding"

#             To Read and Write use "+< $encoding"

#             To Read and Write by deleting existing content in a file
(truncating) use "+> $encoding"

#             To Read and Write by appending to existing contents of a file
use "+>> $encoding"

# If the file deos not already exist, it will be created

# Note: the $! system variable contains the error code for the failure.  If
$! is empty, there was no error

open ( my $raw_content_handler , "< $encoding" , \$output ) or die "Could
not open the raw content due to $! \r\n";

open ( my $output_file_handler , "> $encoding" , $output_filename_with_path
) or die "Could not open file $output_filename_with_path due to $! \r\n";

 

# Bring the file contents in one line at a time

# When you use <filehandler> syntax, the <> brackets bring in the next line
of a file 

# When you us <STDIN>, the system assumes there will user input from STDIN
and waits

# If you do not define a variable for bringing the contents in, Perl uses
the system variable $_ to hold each line

# So if you use while ( <file_handler> ) without assigning it to a variable,
the line will be in $_

# I prefer the explicit assignment to a variable so I use while ( my
$variable = <file_handler> ) and use $variable

# This script is parsing a specific format to convert it to another specific
format, 

# so the sequence may not be exactly what you will want to use in your
situation

# but the functions shown give you a sample of what text manipulation looks
like in Perl

#

# Re-set the file pointer for the input file to the start of the file

# Usually not needed but a good habit to get into

seek $raw_content_handler , 0 , 0;

# Since we are creating a linux file from a Windows script, 

# the newline character will be Windows and will be problematic on linux

# We need to change the $INPUT_RECORD_SEPARATOR = $/ but do not want to do
that globally, just in this script

# so we put the editing functions into a subroutine and change a local
version of $/

# Initialize the first line of the file (specific to this situation;
normally initialize to blank)

our $edited_contents = "[virt-viewer]\n";

 

while ( my $file_line = <$raw_content_handler> ) {

               # Delete / skip lines that do not have space as the second
character; they are delimeter lines

               if ( substr( $file_line , 1 , 1 ) ne ' ' ) {

                              next;

               # Delete / skip the header line

               } elsif ( substr( $file_line , 2 , 3 ) eq 'key' ) {

                              next;

               } else {

                              # Remove the Windows newline

                              chomp $file_line;

                              # The remaining lines have the content we
want, so we will manipulate them to our format

                              # Delete the first two characters of each line
(they are "| ")

                              substr( $file_line , 0 , 2 ) = '';

                              # Convert what was the middle | character (now
the first | in the line) to an = sign

                              # The raw syntax also has a space after the
middle | so include it in the substitution

                              # and insert a ~ character before and after
the = sign so we can hold a spot for them later

                              $file_line =~ s/\| /~=~/;

                              # Convert all the remaining | to spaces

                              $file_line =~ s/\|/ /g;

                              # Trim white space at start and end of each
line

                              # Remove white spaces from left side of string

                              $file_line =~ s/^\s+//;

                              # Remove white spaces from right side of
string

                              $file_line =~ s/\s+$//;

                              # Remove white space between first "word" and
= sign

                              # Make sure there is at least one space before
making the edit

                              my $first_space_location = index( $file_line ,
" " , 0 );

                              if ( $first_space_location != -1 ) {

                                             my
$first_character_location_after_space = index($file_line , "~" ,
$first_space_location + 1 );

                                             substr( $file_line ,
$first_space_location , $first_character_location_after_space -
$first_space_location ) = '';

                              }

                              # Delete the temporary placeholder ~
characters surrounding the = sign

                              $file_line =~ s/\~//g;

                              # Save the remaining characters into the
output line with the linux newline

                              $edited_contents .= $file_line . "\n";

               }

}

 

# For debugging if running the script from a Windows command line

# print "The ticket created will contain \r\n";

# print $edited_contents;

 

# Save the edited contents into the output file

# Set the file pointer to the start of the file and erase the existing
contents to create a blank file

# Not necessary for a new file but a good habit to get into IF you do not
want to append to a file's contents

seek $output_file_handler , 0 , 0;

truncate $output_file_handler , 0;

# Write your edited contents to the output file

print $output_file_handler $edited_contents;

# Close the file - which will ensure that buffered content is completely
written and any lock is released

close $raw_content_handler or die "Could not close the raw content holder
due to $! so content may not be properly written \r\n";

close $output_file_handler or die "Could not close the file
$output_filename_with_path due to $! so content may not be properly written
\r\n";

 

# Launch the remote-viewer application using the formatted configuration
file 

# There will be a series of warnings generated but the viewer will launch
and work

system ( "$path_to_remoteviewer_program" , "$output_filename_with_path" ) or
die "Errors encountered while launching from $path_to_remoteviewer_program
\r\n";

 

# For debugging if running the script from a Windows command line

# Show that you made it to the end of the script

# print "\r\n\r\nMade it to the end of the script!\r\n\r\n";


------=_NextPart_000_0039_01D957F1.172536F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-CA =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Spice protocols are SO much better/faster/more =
fucntional/&#8230; (thank you) than alternatives.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I could not =
see where to put this on your forum so if you want it, please feel free =
to add it wherever you want - no attribution required.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I have =
enclosed below a Perl script I wrote - using material from various =
online forums and adding my code - that allows a Windows user to =
&nbsp;use Spice protocols to access a Proxmox VM (in my case Linux Mint) =
by launching a Shortcut on the Windows machine.&nbsp; <o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>This way you =
do NOT have to launch the Proxmox GUI and use the Proxmox Console to =
generate the SPICE certificate to use the Spice =
connection.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>The script is initiated via a shortcut on the Windows =
machine that points to the script.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The script =
creates an SSH connection between the WIndows machine and the Proxmox =
VM, generates the Spice certificate and launches the Spice client =
(Virtual Viewer) on the Windows machine.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I installed =
Strawberry Perl and Remote Viewer on the Windows machine for this to =
work.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>It makes it a LOT easier to access the Linux Mint VM, =
instead of using the intermediate Proxmox GUI.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I you want =
to use/post/share this, feel free.&nbsp; No attribution required. See =
below.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Richard<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-CA'>Richard =
Cantin<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-CA'><a =
href=3D"mailto:richard.cantin@ayuda.ca">richard.cantin@ayuda.ca</a><o:p><=
/o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-CA'>(519) 957-2414 =
[home]<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-CA'>(519) 574-9401 =
[mobile]<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p=
></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>#!C:\Strawberry\perl\bin\perl.exe<o:p></o:p></p><p =
class=3DMsoNormal>###!/usr/bin/perl<o:p></o:p></p><p =
class=3DMsoNormal>###!perl<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># See =
perldoc.perl.org for information on Perl<o:p></o:p></p><p =
class=3DMsoNormal># # comments out a line<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># This =
script allows a Windows user to access a Proxmox VM via Spice =
protocols<o:p></o:p></p><p class=3DMsoNormal># WITHOUT having to launch =
the Proxmox GUI to use the Proxmox Console<o:p></o:p></p><p =
class=3DMsoNormal># by simply double-clicking on a Shortcut on the =
Windows PC<o:p></o:p></p><p class=3DMsoNormal>#<o:p></o:p></p><p =
class=3DMsoNormal># This script is installed on a Windows =
PC<o:p></o:p></p><p class=3DMsoNormal># It requires <o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; a Perl interpreter<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( I use Strawberry Perl at =
https://strawberryperl.com )<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; a module on the PC to enable SSH connections via =
script<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( I use Net::SSH::Perl installed =
with &quot;cpan install Net::SSH::Perl&quot; )<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; a Spice-compatible Remote Viewer Windows package =
<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (I use the msi installer for =
virt-viewer at https://virt-manager.org/download )<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; a Proxmox VM with the Spice client =
enabled<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( I use Linux Mint as a Proxmox VM =
)<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; a Public/Private key pair enabling SSH connection =
from the Windows to the Proxmox host<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( I use PuttyGen to create the keys =
on the PC - Export the Private key in OpenSSH format )<o:p></o:p></p><p =
class=3DMsoNormal>#<o:p></o:p></p><p class=3DMsoNormal># Install this =
script on the Windows PC<o:p></o:p></p><p class=3DMsoNormal># Put the =
public key onto the Proxmox host and manually SSH to the Proxmox host =
from the Wondows PC<o:p></o:p></p><p class=3DMsoNormal>#&nbsp;&nbsp; to =
establish an entry in the &quot;kown-hosts&quot; file on the Windows =
PC<o:p></o:p></p><p class=3DMsoNormal># Set the script parameters =
specific to your installation in the variables section =
below<o:p></o:p></p><p class=3DMsoNormal># Point a Shortcut to this =
script<o:p></o:p></p><p class=3DMsoNormal># Launch the =
shortcut<o:p></o:p></p><p class=3DMsoNormal>#<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># =
##############################################################<o:p></o:p>=
</p><p class=3DMsoNormal># Installation parameters<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># Establish =
Parameters for the connection and command to use for fetching the SPICE =
ticket<o:p></o:p></p><p class=3DMsoNormal># Replace the values enclosed =
in &lt;&gt; and delete the enclosing brackets &lt; and =
&gt;<o:p></o:p></p><p class=3DMsoNormal>#<o:p></o:p></p><p =
class=3DMsoNormal># The address of the Proxmox host (NOT the VM to which =
you want to connect)<o:p></o:p></p><p class=3DMsoNormal>my $host =3D =
'&lt;FQDN or IP Address of Proxmox Host&gt;';<o:p></o:p></p><p =
class=3DMsoNormal># Set the Port number used by the remote Proxmox host =
to accept SSH connections (usually 22)<o:p></o:p></p><p =
class=3DMsoNormal>my $port_number =3D 22;<o:p></o:p></p><p =
class=3DMsoNormal># Set the SSH protocol version (usually 2) accepted by =
the remote Proxmox host<o:p></o:p></p><p class=3DMsoNormal>my =
$protocol_selection =3D '2';<o:p></o:p></p><p class=3DMsoNormal># Set =
the (non-root) remote user username for the VM (NOT the Proxmox =
host)<o:p></o:p></p><p class=3DMsoNormal>my $non_root_user =3D =
'&lt;Non-root username on VM&gt;';<o:p></o:p></p><p class=3DMsoNormal># =
Set the (non-root) remote user password for the VM (NOT the Proxmox =
host)<o:p></o:p></p><p class=3DMsoNormal>my $non_root_user_password =3D =
&quot;&lt;Non-root password on VM&gt;&quot;;<o:p></o:p></p><p =
class=3DMsoNormal># Set the name of the Proxmox Node (the host or =
physical machine) <o:p></o:p></p><p class=3DMsoNormal>my $node_name =3D =
&quot;&lt;Name of Proxmox Node&gt;&quot;;<o:p></o:p></p><p =
class=3DMsoNormal># Set the VM Number of the VM to which you want to =
connect via Spice<o:p></o:p></p><p class=3DMsoNormal>my $vm_number =3D =
&lt;VM Number of VM to which you want to connect via =
Spice&gt;;<o:p></o:p></p><p class=3DMsoNormal># Set the location of the =
Private key on the Windows PC (in OpenSSH format)<o:p></o:p></p><p =
class=3DMsoNormal># Remember to use Windows directory delimiters =
(backslash) and precede with a backslash to make it a literal =
value<o:p></o:p></p><p class=3DMsoNormal>my @identity_file_location =3D =
( &quot;&lt;DiskID:\\Full\\Path\\To\\Private\\Key.pem&gt;&quot; =
);<o:p></o:p></p><p class=3DMsoNormal># Set the filename and path for =
edited file containing Spice Certificate<o:p></o:p></p><p =
class=3DMsoNormal># The file is created on a temporary basis and deleted =
once used<o:p></o:p></p><p class=3DMsoNormal># File suffix is =
.vv<o:p></o:p></p><p class=3DMsoNormal>my $output_filename_with_path =3D =
&quot;&lt;DiskID:\\Full\\Path\\To\\Temporary\\Storage\\Of\\Spice\\Certifi=
cate.vv&gt;&quot;;<o:p></o:p></p><p class=3DMsoNormal># Set the location =
of the Remote viewer application that will use the ticket / =
configuration file generated<o:p></o:p></p><p class=3DMsoNormal># =
Usually looks something like the path shown - adjust to your =
specifics<o:p></o:p></p><p class=3DMsoNormal>my =
$path_to_remoteviewer_program =3D 'C:\Program Files\VirtViewer =
v11.0-256\bin\remote-viewer.exe';<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># =
##############################################################<o:p></o:p>=
</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># =
Nothing after this normally needs customizing<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp; unless your spice generator has a =
different format for the certificates it generates<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp; (ie the layout uses something other than | as =
a separator)<o:p></o:p></p><p class=3DMsoNormal># Try this as is and if =
it works, great, but if not<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Set the parameters above for your =
installation<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Comment out the line near the end of this script =
&quot;system : '$path_to_remoteviewer_program&quot; =
...'<o:p></o:p></p><p class=3DMsoNormal># =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Run =
this script and use a text editor to view the =
certificate<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It will be stored at the location =
specified above in $output_filename_with_path<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Adjust the RegEx below to suit<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Restore the line near the end of this script =
&quot;system : '$path_to_remoteviewer_program&quot; =
...'<o:p></o:p></p><p class=3DMsoNormal># =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Run =
this script<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal># Set the debug flag to true<o:p></o:p></p><p =
class=3DMsoNormal>my $debug_flag =3D 1;<o:p></o:p></p><p =
class=3DMsoNormal># Include this whenever creating code; If you want to =
comment it out for production, your call<o:p></o:p></p><p =
class=3DMsoNormal>use warnings;<o:p></o:p></p><p class=3DMsoNormal># You =
may want to comment this out for production (resource usage) but use for =
development<o:p></o:p></p><p class=3DMsoNormal>use =
diagnostics;<o:p></o:p></p><p class=3DMsoNormal># Use this to ensure you =
properly declare variables prior to their use and reserve space for =
them<o:p></o:p></p><p class=3DMsoNormal>use strict;<o:p></o:p></p><p =
class=3DMsoNormal># establish the encoding protocol to use for all =
script elements<o:p></o:p></p><p class=3DMsoNormal>use =
utf8;<o:p></o:p></p><p class=3DMsoNormal># Set the STDIN STDOUT and =
STDERR to show with UTF-8 formatting <o:p></o:p></p><p =
class=3DMsoNormal># This helps with debugging with print =
statements<o:p></o:p></p><p class=3DMsoNormal>use open &quot;:std&quot;, =
&quot;:encoding(UTF-8)&quot;;<o:p></o:p></p><p class=3DMsoNormal># =
Enable the module on the PC that will setup SSH =
connections<o:p></o:p></p><p class=3DMsoNormal># Make sure the module is =
installed and if not, install it with &quot;cpan install =
Net::SSH::Perl&quot;<o:p></o:p></p><p class=3DMsoNormal>use =
Net::SSH::Perl;<o:p></o:p></p><p class=3DMsoNormal># Establish =
Parameters for the conversion of the raw ticket to a format remoteviewer =
can use<o:p></o:p></p><p class=3DMsoNormal># Tell the system what =
encoding you will be using: more necessary for read but a good habit to =
get into<o:p></o:p></p><p class=3DMsoNormal>my $encoding =3D =
&quot;:encoding(UTF-8)&quot;;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># =
Instantiate the SSH connection object using the method enabled above =
NET:SSH:Perl<o:p></o:p></p><p class=3DMsoNormal>my $ssh_connection =3D =
Net::SSH::Perl-&gt;new( $host , debug =3D&gt; $debug_flag , port =3D&gt; =
$port_number , protocol =3D&gt; $protocol_selection , identity_files =
=3D&gt; \@identity_file_location );<o:p></o:p></p><p class=3DMsoNormal># =
Or, with some options that are not required for basic Debian access but =
some shared hosting require<o:p></o:p></p><p class=3DMsoNormal># my =
$ssh_connection =3D Net::SSH::Perl-&gt;new( $host , debug =3D&gt; =
$debug_flag , port =3D&gt; $port_number , protocol =3D&gt; =
$protocol_selection , identity_files =3D&gt; \@identity_file_location , =
options =3D&gt; [ &quot;HostKeyAlgorithms +ssh-rsa,ssh-ed25519&quot; , =
&quot;PubkeyAcceptedAlgorithms +ssh-rsa,ssh-ed25519&quot; ] =
);<o:p></o:p></p><p class=3DMsoNormal># Or, to have it work with =
user/password (when user/password is enabled)<o:p></o:p></p><p =
class=3DMsoNormal># my $ssh_connection =3D Net::SSH::Perl-&gt;new( $host =
, debug =3D&gt; $debug_flag , port =3D&gt; $port_number , protocol =
=3D&gt; $protocol_selection , options =3D&gt; [ &quot;HostKeyAlgorithms =
+ssh-rsa,ssh-ed25519&quot; , &quot;PubkeyAcceptedAlgorithms =
+ssh-rsa,ssh-ed25519&quot; ] );<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># Login to =
the remote host<o:p></o:p></p><p class=3DMsoNormal># If the host system =
has previously been associated with a different =
&quot;known_host&quot;<o:p></o:p></p><p class=3DMsoNormal># make sure to =
delete the previous host entry in Windows<o:p></o:p></p><p =
class=3DMsoNormal># For Windows 7 find this by entering %USERPROFILE% in =
the search bar and looking in the .ssh directory<o:p></o:p></p><p =
class=3DMsoNormal># I disable remote SSH with root for security purposes =
so you need to login with a non-root user<o:p></o:p></p><p =
class=3DMsoNormal># and then use sudo to perform superuser commands like =
pvesh<o:p></o:p></p><p =
class=3DMsoNormal>$ssh_connection-&gt;login($non_root_user);<o:p></o:p></=
p><p class=3DMsoNormal># Or, to have it work with user/password (when =
user/password is enabled)<o:p></o:p></p><p class=3DMsoNormal># =
$ssh_connection-&gt;login($non_root_user,$non_root_user_password);<o:p></=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># =
Issue the command at the remote host to generate the SPICE ticket and =
put it into a variable called $output<o:p></o:p></p><p =
class=3DMsoNormal># I know storing a password in a script and sending it =
is a security issue<o:p></o:p></p><p class=3DMsoNormal># If someone else =
wants to use Expect or React for making an interactive script, be my =
guest<o:p></o:p></p><p class=3DMsoNormal># This script uses key-pair to =
make the encrypted connection, then sends the password so I am ok with =
the transmission<o:p></o:p></p><p class=3DMsoNormal># Yes, storage of =
password in a readable text file is risky; I password protect my PC and =
do not allow others access<o:p></o:p></p><p class=3DMsoNormal>my =
$command =3D ( &quot;echo $non_root_user_password | sudo -S pvesh create =
/nodes/$node_name/qemu/$vm_number/spiceproxy&quot; );<o:p></o:p></p><p =
class=3DMsoNormal>my ($output, $error_message, $exit_code) =3D =
$ssh_connection-&gt;cmd( &quot;$command&quot; );<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># Read the =
raw ticket content, edit the content to match what remote-viewer is =
looking for<o:p></o:p></p><p class=3DMsoNormal># and write the edited =
content to a file on the system that is hosting the =
script<o:p></o:p></p><p class=3DMsoNormal># We will use this edited =
content file as the configuration settings when we launch =
remoteviewer<o:p></o:p></p><p class=3DMsoNormal># Create the file =
handler, with read and/or write permission (include the $encoding as =
shown)<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; The '&gt;' designator tells the system this file =
handler is for writing<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; To Read, use &quot;&lt; =
$encoding&quot;<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; To Read and Write use &quot;+&lt; =
$encoding&quot;<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; To Read and Write by deleting existing content in a =
file (truncating) use &quot;+&gt; $encoding&quot;<o:p></o:p></p><p =
class=3DMsoNormal>#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; To Read and Write by appending to existing contents =
of a file use &quot;+&gt;&gt; $encoding&quot;<o:p></o:p></p><p =
class=3DMsoNormal># If the file deos not already exist, it will be =
created<o:p></o:p></p><p class=3DMsoNormal># Note: the $! system =
variable contains the error code for the failure.&nbsp; If $! is empty, =
there was no error<o:p></o:p></p><p class=3DMsoNormal>open ( my =
$raw_content_handler , &quot;&lt; $encoding&quot; , \$output ) or die =
&quot;Could not open the raw content due to $! =
\r\n&quot;;<o:p></o:p></p><p class=3DMsoNormal>open ( my =
$output_file_handler , &quot;&gt; $encoding&quot; , =
$output_filename_with_path ) or die &quot;Could not open file =
$output_filename_with_path due to $! \r\n&quot;;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># Bring the =
file contents in one line at a time<o:p></o:p></p><p class=3DMsoNormal># =
When you use &lt;filehandler&gt; syntax, the &lt;&gt; brackets bring in =
the next line of a file <o:p></o:p></p><p class=3DMsoNormal># When you =
us &lt;STDIN&gt;, the system assumes there will user input from STDIN =
and waits<o:p></o:p></p><p class=3DMsoNormal># If you do not define a =
variable for bringing the contents in, Perl uses the system variable $_ =
to hold each line<o:p></o:p></p><p class=3DMsoNormal># So if you use =
while ( &lt;file_handler&gt; ) without assigning it to a variable, the =
line will be in $_<o:p></o:p></p><p class=3DMsoNormal># I prefer the =
explicit assignment to a variable so I use while ( my $variable =3D =
&lt;file_handler&gt; ) and use $variable<o:p></o:p></p><p =
class=3DMsoNormal># This script is parsing a specific format to convert =
it to another specific format, <o:p></o:p></p><p class=3DMsoNormal># so =
the sequence may not be exactly what you will want to use in your =
situation<o:p></o:p></p><p class=3DMsoNormal># but the functions shown =
give you a sample of what text manipulation looks like in =
Perl<o:p></o:p></p><p class=3DMsoNormal>#<o:p></o:p></p><p =
class=3DMsoNormal># Re-set the file pointer for the input file to the =
start of the file<o:p></o:p></p><p class=3DMsoNormal># Usually not =
needed but a good habit to get into<o:p></o:p></p><p =
class=3DMsoNormal>seek $raw_content_handler , 0 , 0;<o:p></o:p></p><p =
class=3DMsoNormal># Since we are creating a linux file from a Windows =
script, <o:p></o:p></p><p class=3DMsoNormal># the newline character will =
be Windows and will be problematic on linux<o:p></o:p></p><p =
class=3DMsoNormal># We need to change the $INPUT_RECORD_SEPARATOR =3D $/ =
but do not want to do that globally, just in this =
script<o:p></o:p></p><p class=3DMsoNormal># so we put the editing =
functions into a subroutine and change a local version of =
$/<o:p></o:p></p><p class=3DMsoNormal># Initialize the first line of the =
file (specific to this situation; normally initialize to =
blank)<o:p></o:p></p><p class=3DMsoNormal>our $edited_contents =3D =
&quot;[virt-viewer]\n&quot;;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>while ( my =
$file_line =3D &lt;$raw_content_handler&gt; ) {<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Delete / skip lines that do not have =
space as the second character; they are delimeter lines<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ( substr( $file_line , 1 , 1 ) ne ' ' ) =
{<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; next;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Delete / skip the header =
line<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } elsif ( substr( $file_line , 2 , 3 ) eq =
'key' ) {<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; next;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } else {<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Remove the Windows =
newline<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chomp =
$file_line;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # The remaining lines =
have the content we want, so we will manipulate them to our =
format<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Delete the first two =
characters of each line (they are &quot;| &quot;)<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; substr( $file_line , 0 , =
2 ) =3D '';<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Convert what was the =
middle | character (now the first | in the line) to an =3D =
sign<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # The raw syntax also has =
a space after the middle | so include it in the =
substitution<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # and insert a ~ =
character before and after the =3D sign so we can hold a spot for them =
later<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $file_line =3D~ s/\| =
/~=3D~/;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Convert all the =
remaining | to spaces<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $file_line =3D~ s/\|/ =
/g;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Trim white space at =
start and end of each line<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Remove white spaces =
from left side of string<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $file_line =3D~ =
s/^\s+//;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Remove white spaces =
from right side of string<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $file_line =3D~ =
s/\s+$//;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Remove white space =
between first &quot;word&quot; and =3D sign<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Make sure there is at =
least one space before making the edit<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; my $first_space_location =
=3D index( $file_line , &quot; &quot; , 0 );<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if ( =
$first_space_location !=3D -1 ) {<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; my =
$first_character_location_after_space =3D index($file_line , =
&quot;~&quot; , $first_space_location + 1 );<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; substr( =
$file_line , $first_space_location , =
$first_character_location_after_space - $first_space_location ) =3D =
'';<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Delete the temporary =
placeholder ~ characters surrounding the =3D sign<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $file_line =3D~ =
s/\~//g;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Save the remaining =
characters into the output line with the linux newline<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $edited_contents .=3D =
$file_line . &quot;\n&quot;;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></p><p =
class=3DMsoNormal>}<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># For =
debugging if running the script from a Windows command =
line<o:p></o:p></p><p class=3DMsoNormal># print &quot;The ticket created =
will contain \r\n&quot;;<o:p></o:p></p><p class=3DMsoNormal># print =
$edited_contents;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># Save the =
edited contents into the output file<o:p></o:p></p><p =
class=3DMsoNormal># Set the file pointer to the start of the file and =
erase the existing contents to create a blank file<o:p></o:p></p><p =
class=3DMsoNormal># Not necessary for a new file but a good habit to get =
into IF you do not want to append to a file's contents<o:p></o:p></p><p =
class=3DMsoNormal>seek $output_file_handler , 0 , 0;<o:p></o:p></p><p =
class=3DMsoNormal>truncate $output_file_handler , 0;<o:p></o:p></p><p =
class=3DMsoNormal># Write your edited contents to the output =
file<o:p></o:p></p><p class=3DMsoNormal>print $output_file_handler =
$edited_contents;<o:p></o:p></p><p class=3DMsoNormal># Close the file - =
which will ensure that buffered content is completely written and any =
lock is released<o:p></o:p></p><p class=3DMsoNormal>close =
$raw_content_handler or die &quot;Could not close the raw content holder =
due to $! so content may not be properly written =
\r\n&quot;;<o:p></o:p></p><p class=3DMsoNormal>close =
$output_file_handler or die &quot;Could not close the file =
$output_filename_with_path due to $! so content may not be properly =
written \r\n&quot;;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal># Launch the =
remote-viewer application using the formatted configuration file =
<o:p></o:p></p><p class=3DMsoNormal># There will be a series of warnings =
generated but the viewer will launch and work<o:p></o:p></p><p =
class=3DMsoNormal>system ( &quot;$path_to_remoteviewer_program&quot; , =
&quot;$output_filename_with_path&quot; ) or die &quot;Errors encountered =
while launching from $path_to_remoteviewer_program =
\r\n&quot;;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal># For debugging if running the script from a Windows =
command line<o:p></o:p></p><p class=3DMsoNormal># Show that you made it =
to the end of the script<o:p></o:p></p><p class=3DMsoNormal># print =
&quot;\r\n\r\nMade it to the end of the =
script!\r\n\r\n&quot;;<o:p></o:p></p></div></body></html>
------=_NextPart_000_0039_01D957F1.172536F0--

