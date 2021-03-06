/* LibTomMath, multiple-precision integer library -- Tom St Denis
 *
 * LibTomMath is a library that provides multiple-precision
 * integer arithmetic as well as number theoretic functionality.
 *
 * The library was designed directly after the MPI library by
 * Michael Fromberger but has been written from scratch with
 * additional optimizations in place.
 *
 * The library is free for all purposes without any express
 * guarantee it works.
 *
 * Tom St Denis, tomstdenis@iahu.ca, http://math.libtomcrypt.org
 *
 * Modifications :
 *   - 29 Sept 2003, A. Apvrille, <axelle.apvrille@ericsson.ca>
 *     porting to kernel 2.5.66: calloc --> kmalloc
 *
 */
#include <tommath.h>
#include "../dsi.h"		/* AxL */


/* init an mp_init for a given size */
int mp_init_size(mp_int * a, int size)
{
	/* pad size so there are always extra digits */
	size += (MP_PREC * 2) - (size % MP_PREC);

	/* alloc mem */
	a->dp =
	    (mp_digit *) kmalloc(sizeof(mp_digit) * size, DIGSIG_SAFE_ALLOC);

	/* AxL: a->dp = OPT_CAST calloc (sizeof (mp_digit), size); */
	if (a->dp == NULL) {
		return MP_MEM;
	}
/*	memset(a->dp, 0x00, sizeof(mp_digit) * size);*/	/*AxL */

	a->used = 0;
	a->alloc = size;
	a->sign = MP_ZPOS;

	return MP_OKAY;
}
