.class public final Lcom/kddi/android/internal/pdg/PdgWhiteListManager;
.super Ljava/lang/Object;
.source "PdgWhiteListManager.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "PdgWhiteListManager() start"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 20
    const-string v0, "PdgWhiteListManager() end"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static contain(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean contain( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 25
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3b

    .line 26
    :cond_2e
    const-string/jumbo v0, "parameter error: package_name is not set."

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 27
    const-string v0, "boolean contain() end / return = false"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 28
    const/4 v9, 0x0

    .line 55
    :goto_3a
    return v9

    .line 31
    :cond_3b
    const/4 v9, 0x0

    .line 32
    .local v9, "ret":Z
    const/4 v6, 0x0

    .line 34
    .local v6, "cur":Landroid/database/Cursor;
    :try_start_3d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/internal/pdg/PDG$WhiteList;->CONTENT_URI_READ_ONLY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 35
    if-eqz v6, :cond_71

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_71

    .line 36
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 37
    .local v8, "next":Z
    :goto_57
    if-eqz v8, :cond_71

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_71

    .line 38
    const-string/jumbo v0, "packagename"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 39
    .local v10, "whiteListPackage":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_6d} :catch_91
    .catchall {:try_start_3d .. :try_end_6d} :catchall_a6

    move-result v0

    if-eqz v0, :cond_8d

    .line 40
    const/4 v9, 0x1

    .line 50
    .end local v8    # "next":Z
    .end local v10    # "whiteListPackage":Ljava/lang/String;
    :cond_71
    if-eqz v6, :cond_76

    .line 51
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_76
    :goto_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean contain() end / return = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_3a

    .line 43
    .restart local v8    # "next":Z
    .restart local v10    # "whiteListPackage":Ljava/lang/String;
    :cond_8d
    :try_start_8d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91
    .catchall {:try_start_8d .. :try_end_90} :catchall_a6

    goto :goto_57

    .line 46
    .end local v8    # "next":Z
    .end local v10    # "whiteListPackage":Ljava/lang/String;
    :catch_91
    move-exception v7

    .line 47
    .local v7, "e":Ljava/lang/Exception;
    :try_start_92
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_92 .. :try_end_a0} :catchall_a6

    .line 50
    if-eqz v6, :cond_76

    .line 51
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_76

    .line 50
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_a6
    move-exception v0

    if-eqz v6, :cond_ac

    .line 51
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_ac
    throw v0
.end method
