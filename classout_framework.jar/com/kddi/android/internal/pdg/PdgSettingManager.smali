.class public final Lcom/kddi/android/internal/pdg/PdgSettingManager;
.super Ljava/lang/Object;
.source "PdgSettingManager.java"


# static fields
.field public static final DEFAULT_PRIVACY:I = 0x1

.field public static final PRIVACY_ENABLED:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "PdgSettingManager() start"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 23
    const-string v0, "PdgSettingManager() end"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static getBoolean(Landroid/content/Context;I)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingType"    # I

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getBoolean( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 28
    const/4 v11, 0x0

    .line 29
    .local v11, "ret":Z
    const/4 v7, 0x0

    .line 31
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/internal/pdg/PDG$Settings;->CONTENT_URI_READ_ONLY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 32
    if-eqz v7, :cond_53

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_53

    .line 33
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 34
    .local v9, "next":Z
    if-eqz v9, :cond_53

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_53

    .line 35
    packed-switch p1, :pswitch_data_ae

    .line 53
    const-string/jumbo v0, "parameter error: setting type is out of range."

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_53} :catch_91
    .catchall {:try_start_28 .. :try_end_53} :catchall_a6

    .line 62
    .end local v9    # "next":Z
    :cond_53
    :goto_53
    if-eqz v7, :cond_58

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_58
    :goto_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getBoolean() end / return = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 67
    return v11

    .line 37
    .restart local v9    # "next":Z
    :pswitch_6f
    :try_start_6f
    const-string/jumbo v0, "pdg_enable"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 38
    .local v10, "pdgEnable":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_7f

    .line 39
    const/4 v11, 0x1

    goto :goto_53

    .line 41
    :cond_7f
    const/4 v11, 0x0

    .line 43
    goto :goto_53

    .line 45
    .end local v10    # "pdgEnable":I
    :pswitch_81
    const-string v0, "action_of_non_selected"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_8a} :catch_91
    .catchall {:try_start_6f .. :try_end_8a} :catchall_a6

    move-result v6

    .line 46
    .local v6, "actionOfNonSelected":I
    if-nez v6, :cond_8f

    .line 47
    const/4 v11, 0x1

    goto :goto_53

    .line 49
    :cond_8f
    const/4 v11, 0x0

    .line 51
    goto :goto_53

    .line 58
    .end local v6    # "actionOfNonSelected":I
    .end local v9    # "next":Z
    :catch_91
    move-exception v8

    .line 59
    .local v8, "e":Ljava/lang/Exception;
    :try_start_92
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_92 .. :try_end_a0} :catchall_a6

    .line 62
    if-eqz v7, :cond_58

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_58

    .line 62
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_a6
    move-exception v0

    if-eqz v7, :cond_ac

    .line 63
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_ac
    throw v0

    .line 35
    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_81
    .end packed-switch
.end method

.method public static getFirstLaunch(Landroid/content/Context;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "int getFirstLaunch( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 72
    const/4 v8, 0x0

    .line 73
    .local v8, "firstLaunch":I
    const/4 v6, 0x0

    .line 76
    .local v6, "cur":Landroid/database/Cursor;
    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/internal/pdg/PDG$Settings;->CONTENT_URI_READ_ONLY:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 77
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4a

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 79
    .local v9, "next":Z
    if-eqz v9, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 80
    const-string v0, "first_launch"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_49} :catch_66
    .catchall {:try_start_1e .. :try_end_49} :catchall_7c

    move-result v8

    .line 88
    .end local v9    # "next":Z
    :cond_4a
    if-eqz v6, :cond_4f

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_4f
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "int getFirstLaunch() end / return = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 94
    return v8

    .line 83
    :catch_66
    move-exception v7

    .line 84
    .local v7, "e":Ljava/lang/Exception;
    :try_start_67
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_7c

    .line 86
    const/4 v8, -0x1

    .line 88
    if-eqz v6, :cond_4f

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4f

    .line 88
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_7c
    move-exception v0

    if-eqz v6, :cond_82

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_82
    throw v0
.end method
