.class public Lcom/android/server/power/ShutdownThread$Led;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Led"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 2220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Off()V
    .registers 1

    .prologue
    .line 2226
    const/4 v0, 0x6

    invoke-static {v0}, fileWriteInt(I)V

    .line 2227
    return-void
.end method

.method private static On()V
    .registers 1

    .prologue
    .line 2222
    const/4 v0, 0x6

    invoke-static {v0}, fileWriteInt(I)V

    .line 2223
    return-void
.end method

.method static synthetic access$1500()V
    .registers 0

    .prologue
    .line 2220
    invoke-static {}, On()V

    return-void
.end method

.method private static fileWriteInt(I)V
    .registers 8
    .param p0, "value"    # I

    .prologue
    .line 2230
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/led/led_pattern"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2231
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_17

    .line 2232
    :cond_f
    const-string v4, "LED"

    const-string v5, "!@LED File is not exist"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_16
    :goto_16
    return-void

    .line 2236
    :cond_17
    const/4 v2, 0x0

    .line 2238
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_18
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_3a
    .catchall {:try_start_18 .. :try_end_1d} :catchall_52

    .line 2239
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_66
    .catchall {:try_start_1d .. :try_end_28} :catchall_63

    .line 2246
    if-eqz v3, :cond_2d

    .line 2247
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    :cond_2d
    move-object v2, v3

    .line 2251
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_16

    .line 2249
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2f
    move-exception v0

    .line 2250
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "ShutdownThread"

    const-string/jumbo v5, "led file close error"

    invoke-static {v4, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    move-object v2, v3

    .line 2252
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_16

    .line 2241
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3a
    move-exception v0

    .line 2242
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3b
    :try_start_3b
    const-string v4, "LED"

    const-string v5, "!@Exception has raised while file write"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_52

    .line 2246
    if-eqz v2, :cond_16

    .line 2247
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_16

    .line 2249
    :catch_48
    move-exception v0

    .line 2250
    const-string v4, "ShutdownThread"

    const-string/jumbo v5, "led file close error"

    invoke-static {v4, v5, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_16

    .line 2245
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v4

    .line 2246
    :goto_53
    if-eqz v2, :cond_58

    .line 2247
    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 2251
    :cond_58
    :goto_58
    throw v4

    .line 2249
    :catch_59
    move-exception v0

    .line 2250
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "ShutdownThread"

    const-string/jumbo v6, "led file close error"

    invoke-static {v5, v6, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_58

    .line 2245
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_63
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_53

    .line 2241
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_66
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_3b
.end method
