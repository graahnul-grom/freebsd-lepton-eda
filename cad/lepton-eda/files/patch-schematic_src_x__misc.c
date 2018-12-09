--- schematic/src/x_misc.c.orig	2018-11-01 19:01:02 UTC
+++ schematic/src/x_misc.c
@@ -123,7 +123,7 @@ x_show_uri (GschemToplevel *w_current, c
 
 # else
   gboolean spawn_status;
-  gint exit_status;
+  GPid pid;
   gchar *argv[3];
 
   g_assert (uri);
@@ -132,24 +132,19 @@ x_show_uri (GschemToplevel *w_current, c
   argv[1] = (gchar *) uri;
   argv[2] = NULL; /* Null-terminated */
 
-  spawn_status = g_spawn_sync (NULL, /* Inherit working directory */
-                               argv,
-                               NULL, /* Inherit environment */
-                               G_SPAWN_SEARCH_PATH, /* Flags */
-                               NULL, /* No child setup function */
-                               NULL, /* No child setup function data */
-                               NULL, /* Don't need stdout */
-                               NULL, /* Don't need stderr */
-                               &exit_status,
-                               error);
+  spawn_status = g_spawn_async (NULL, /* Inherit working directory */
+                                argv,
+                                NULL, /* Inherit environment */
+                                G_SPAWN_SEARCH_PATH, /* Flags */
+                                NULL, /* No child setup function */
+                                NULL, /* No child setup function data */
+                                &pid,
+                                error);
 
-  if (!spawn_status) return FALSE;
+  g_spawn_close_pid (pid);
 
-  if (exit_status != 0) {
-    g_set_error (error, G_SPAWN_ERROR, G_SPAWN_ERROR_FAILED,
-                 _("%1$s failed to launch URI"), argv[0]);
+  if (!spawn_status)
     return FALSE;
-  }
 
   return TRUE;
 
