/* Copyright 2015 Google Inc. All Rights Reserved.

   Distributed under MIT license.
   See file LICENSE for detail or copy at https://opensource.org/licenses/MIT
*/

/* Algorithms for distributing the literals and commands of a metablock between
   block types and contexts. */

#include "./memory.h"

#include <stdlib.h>  /* exit, free, malloc */
#include <string.h>  /* memcpy */

#include "../common/platform.h"
#include <brotli/types.h>

#if defined(__cplusplus) || defined(c_plusplus)
extern "C" {
#endif

#define MAX_PERM_ALLOCATED 128
#define MAX_NEW_ALLOCATED 64
#define MAX_NEW_FREED 64

#define PERM_ALLOCATED_OFFSET 0
#define NEW_ALLOCATED_OFFSET MAX_PERM_ALLOCATED
#define NEW_FREED_OFFSET (MAX_PERM_ALLOCATED + MAX_NEW_ALLOCATED)

void BrotliInitMemoryManager(
    MemoryManager* m, brotli_alloc_func alloc_func, brotli_free_func free_func,
    void* opaque) {
  if (!alloc_func) {
    m->alloc_func = BrotliDefaultAllocFunc;
    m->free_func = BrotliDefaultFreeFunc;
    m->opaque = 0;
  } else {
    m->alloc_func = alloc_func;
    m->free_func = free_func;
    m->opaque = opaque;
  }
#if !defined(BROTLI_ENCODER_EXIT_ON_OOM)
  m->is_oom = BROTLI_FALSE;
  m->perm_allocated = 0;
  m->new_allocated = 0;
  m->new_freed = 0;
#endif  /* BROTLI_ENCODER_EXIT_ON_OOM */
}

#if defined(BROTLI_ENCODER_EXIT_ON_OOM)

void* BrotliAllocate(MemoryManager* m, size_t n) {
  void* result = m->alloc_func(m->opaque, n);
  if (!result) exit(EXIT_FAILURE);
  return result;
}

void BrotliFree(MemoryManager* m, void* p) {
  m->free_func(m->opaque, p);
}

#endif  /* BROTLI_ENCODER_EXIT_ON_OOM */

#if defined(__cplusplus) || defined(c_plusplus)
}  /* extern "C" */
#endif
