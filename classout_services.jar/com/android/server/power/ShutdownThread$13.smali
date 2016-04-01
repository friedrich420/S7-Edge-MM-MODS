.class Lcom/android/server/power/ShutdownThread$13;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;[Z)V
    .registers 3

    .prologue
    .line 1607
    iput-object p1, p0, this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 1611
    new-instance v8, Ljava/io/File;

    const-string v9, "/cache/recovery/uncrypt_status"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1613
    :try_start_a
    const-string v8, "/cache/recovery/uncrypt_status"

    const/16 v9, 0x180

    invoke-static {v8, v9}, Landroid/system/Os;->mkfifo(Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_11} :catch_9e

    .line 1619
    :goto_11
    const-string/jumbo v8, "ctl.start"

    const-string/jumbo v9, "uncrypt"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    :try_start_1a
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/cache/recovery/uncrypt_status"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_26} :catch_d8

    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 1625
    const/high16 v1, -0x80000000

    .line 1627
    .local v1, "lastStatus":I
    :cond_29
    :goto_29
    :try_start_29
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_ca
    .catchall {:try_start_29 .. :try_end_2c} :catchall_fb

    move-result-object v5

    .line 1629
    .local v5, "str":Ljava/lang/String;
    :try_start_2d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1632
    .local v4, "status":I
    if-ne v4, v1, :cond_37

    const/high16 v8, -0x80000000

    if-ne v1, v8, :cond_29

    .line 1635
    :cond_37
    move v1, v4

    .line 1637
    if-ltz v4, :cond_bd

    const/16 v8, 0x64

    if-ge v4, v8, :cond_bd

    .line 1639
    const-string v8, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uncrypt read status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    int-to-double v10, v4

    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    double-to-int v4, v10

    .line 1642
    add-int/lit8 v4, v4, 0x14

    .line 1643
    iget-object v8, p0, this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$1100(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v8

    const v10, 0x104010e

    invoke-virtual {v8, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1645
    .local v2, "msg":Ljava/lang/CharSequence;
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v8, v4, v2}, Lcom/android/server/power/ShutdownThread;->access$1700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_75} :catch_76
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_75} :catch_ca
    .catchall {:try_start_2d .. :try_end_75} :catchall_fb

    goto :goto_29

    .line 1655
    .end local v2    # "msg":Ljava/lang/CharSequence;
    .end local v4    # "status":I
    :catch_76
    move-exception v6

    .line 1656
    .local v6, "unused":Ljava/lang/NumberFormatException;
    :try_start_77
    const-string v8, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uncrypt invalid status received: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_90} :catch_ca
    .catchall {:try_start_77 .. :try_end_90} :catchall_fb

    .line 1660
    .end local v6    # "unused":Ljava/lang/NumberFormatException;
    :goto_90
    if-eqz v3, :cond_97

    if-eqz v9, :cond_102

    :try_start_94
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_97} :catch_fd
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_d8

    .line 1663
    .end local v1    # "lastStatus":I
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    :cond_97
    :goto_97
    iget-object v8, p0, val$done:[Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v8, v9

    .line 1664
    return-void

    .line 1614
    :catch_9e
    move-exception v0

    .line 1615
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ErrnoException when creating named pipe \"/cache/recovery/uncrypt_status\": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1646
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "lastStatus":I
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "status":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_bd
    const/16 v8, 0x64

    if-ne v4, v8, :cond_e1

    .line 1647
    :try_start_c1
    const-string v8, "ShutdownThread"

    const-string/jumbo v10, "uncrypt successfully finished."

    invoke-static {v8, v10}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_c1 .. :try_end_c9} :catch_76
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c9} :catch_ca
    .catchall {:try_start_c1 .. :try_end_c9} :catchall_fb

    goto :goto_90

    .line 1622
    .end local v4    # "status":I
    .end local v5    # "str":Ljava/lang/String;
    :catch_ca
    move-exception v8

    :try_start_cb
    throw v8
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_cc

    .line 1660
    :catchall_cc
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_d0
    if-eqz v3, :cond_d7

    if-eqz v9, :cond_10b

    :try_start_d4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_106
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    :cond_d7
    :goto_d7
    :try_start_d7
    throw v8
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_d8} :catch_d8

    .end local v1    # "lastStatus":I
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_d8
    move-exception v6

    .line 1661
    .local v6, "unused":Ljava/io/IOException;
    const-string v8, "ShutdownThread"

    const-string v9, "IOException when reading \"/cache/recovery/uncrypt_status\"."

    invoke-static {v8, v9, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_97

    .line 1652
    .end local v6    # "unused":Ljava/io/IOException;
    .restart local v1    # "lastStatus":I
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "status":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_e1
    :try_start_e1
    const-string v8, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uncrypt failed with status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/lang/NumberFormatException; {:try_start_e1 .. :try_end_fa} :catch_76
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_fa} :catch_ca
    .catchall {:try_start_e1 .. :try_end_fa} :catchall_fb

    goto :goto_90

    .line 1660
    .end local v4    # "status":I
    .end local v5    # "str":Ljava/lang/String;
    :catchall_fb
    move-exception v8

    goto :goto_d0

    .restart local v5    # "str":Ljava/lang/String;
    :catch_fd
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_fe
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_97

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_102
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_97

    .end local v5    # "str":Ljava/lang/String;
    :catch_106
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d7

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_10b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_10e} :catch_d8

    goto :goto_d7
.end method
