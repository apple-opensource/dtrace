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
 * Combining multiple union definitions in a single line should throw a
 * compiler error.
 *
 * SECTION: Structs and Unions/Unions
 *
 */

#pragma D option quiet

union record {
	int position;
	char content;
};


union pirate {
	int position;
	char content;
}

union record rec;
union pirate pir;

BEGIN
{
	rec.content = 'a';
	rec.position = 1;

	pir.content = 'b';
	pir.position = 2;

	printf(
	"rec.content: %c\nrec.position: %d\npir.content: %c\npir.position: %d",
	rec.content, rec.position, pir.content, pir.position);

	exit(0);
}

