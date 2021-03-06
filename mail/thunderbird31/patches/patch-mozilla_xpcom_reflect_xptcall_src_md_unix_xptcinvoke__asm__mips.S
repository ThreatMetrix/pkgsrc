$NetBSD: patch-mozilla_xpcom_reflect_xptcall_src_md_unix_xptcinvoke__asm__mips.S,v 1.1 2015/07/13 17:49:26 ryoon Exp $

--- mozilla/xpcom/reflect/xptcall/src/md/unix/xptcinvoke_asm_mips.S.orig	2014-07-18 00:05:57.000000000 +0000
+++ mozilla/xpcom/reflect/xptcall/src/md/unix/xptcinvoke_asm_mips.S
@@ -16,6 +16,47 @@
 #include <sys/asm.h>
 #endif
 
+#ifdef __NetBSD__
+# include <machine/regdef.h>
+# include <machine/asm.h>
+# ifndef fp
+#  define      fp      s8
+# endif
+# ifndef PTRLOG
+#  if SZREG == 4
+#   define     PTRLOG  2
+#  else
+#   define     PTRLOG  3
+#  endif
+# endif
+# ifndef SETUP_GP
+#  if defined(__mips_o32)
+#   define     SETUP_GP        \
+               .set push;      \
+               .set noreorder; \
+               .cpload t9;     \
+               .set pop
+#   define     SAVE_GP(x)      \
+               .cprestore x
+#  else
+#   define     SETUP_GP
+#   define     SAVE_GP(x)
+#  endif
+# endif
+# ifndef ALSZ
+#  if defined(__mips_n32) || defined(__mips_n64)
+#   define     ALSZ    15
+#   define     ALMASK  ~15
+#  else
+#   define     ALSZ    7
+#   define     ALMASK  ~7
+#  endif
+# endif
+#else
+# include <sys/regdef.h>
+# include <sys/asm.h>
+#endif
+
 # NARGSAVE is the argument space in the callers frame, including extra
 # 'shadowed' space for the argument registers. The minimum of 4
 # argument slots is sometimes predefined in the header files.
