/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

/*
 * Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */

/*
 * ASSERTION:
 * When two struct are defined such that one of them contains the other, the
 * inner struct has to be defined first.
 *
 * SECTION: Structs and Unions/Structs
 *
 */

#pragma D option quiet


struct record {
	struct pirate p;
	int position;
	char content;
};

struct pirate {
	int position;
	char content;
};

struct record rec;
struct pirate pir;

BEGIN
{
	rec.content = 'y';
	rec.position = 2;

	pir.content = 'z';
	pir.position = 26;

	printf(
	"rec.content: %c\nrec.position: %d\npir.content: %c\npir.position: %d",
		  rec.content, rec.position, pir.content, pir.position);

	exit(0);
}

