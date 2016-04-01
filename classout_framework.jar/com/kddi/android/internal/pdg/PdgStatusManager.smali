.class public final Lcom/kddi/android/internal/pdg/PdgStatusManager;
.super Ljava/lang/Object;
.source "PdgStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "PdgStatusManager() start"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 62
    const-string v0, "PdgStatusManager() end"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static getPrivacyData(Landroid/content/Context;Ljava/lang/String;I)Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataType"    # I

    .prologue
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "int getPrivacyData( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ) start"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 67
    if-eqz p1, :cond_3e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4b

    .line 68
    :cond_3e
    const-string/jumbo v2, "parameter error: package name is not set."

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 69
    const-string v2, "int getPrivacyData() end / return = null"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 70
    const/4 v6, 0x0

    .line 121
    :goto_4a
    return-object v6

    .line 72
    :cond_4b
    if-ltz p2, :cond_52

    const/4 v2, 0x2

    move/from16 v0, p2

    if-le v0, v2, :cond_5f

    .line 73
    :cond_52
    const-string/jumbo v2, "parameter error: data type is out of range."

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 74
    const-string v2, "int getPrivacyData() end / return = null"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 75
    const/4 v6, 0x0

    goto :goto_4a

    .line 78
    :cond_5f
    const/4 v15, 0x0

    .line 79
    .local v15, "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    const/4 v12, 0x0

    .line 81
    .local v12, "cur":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 82
    .local v3, "uri":Landroid/net/Uri;
    if-nez p2, :cond_f4

    .line 83
    :try_start_64
    const-string v2, "content://com.kddi.android.pdg.read_only/pdg_status/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 90
    :cond_6a
    :goto_6a
    if-eqz v3, :cond_12d

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packagename=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 93
    if-eqz v12, :cond_12d

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_12d

    .line 94
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    .line 95
    .local v14, "next":Z
    if-eqz v14, :cond_12d

    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_12d

    .line 96
    const-string/jumbo v2, "setting_state"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 97
    .local v8, "settingState":I
    const-string v2, "auth_state"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 98
    .local v9, "authState":I
    const-string v2, "access_time"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 99
    .local v10, "accessTime":J
    if-ltz v8, :cond_12d

    const/4 v2, 0x2

    if-gt v8, v2, :cond_12d

    if-ltz v9, :cond_12d

    const/4 v2, 0x2

    if-gt v9, v2, :cond_12d

    .line 103
    new-instance v6, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;-><init>(Ljava/lang/String;IIJ)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_d7} :catch_10e
    .catchall {:try_start_64 .. :try_end_d7} :catchall_124

    .line 116
    .end local v5    # "selection":Ljava/lang/String;
    .end local v8    # "settingState":I
    .end local v9    # "authState":I
    .end local v10    # "accessTime":J
    .end local v14    # "next":Z
    .end local v15    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .local v6, "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    :goto_d7
    if-eqz v12, :cond_dc

    .line 117
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_dc
    :goto_dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "int getPrivacyData() end / return = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto/16 :goto_4a

    .line 84
    .end local v6    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .restart local v15    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    :cond_f4
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_101

    .line 85
    :try_start_f9
    const-string v2, "content://com.kddi.android.pdg.read_only/pdg_status/location"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_6a

    .line 86
    :cond_101
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_6a

    .line 87
    const-string v2, "content://com.kddi.android.pdg.read_only/pdg_status/uim"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_10b} :catch_10e
    .catchall {:try_start_f9 .. :try_end_10b} :catchall_124

    move-result-object v3

    goto/16 :goto_6a

    .line 112
    :catch_10e
    move-exception v13

    .line 113
    .local v13, "e":Ljava/lang/Exception;
    :try_start_10f
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V
    :try_end_11d
    .catchall {:try_start_10f .. :try_end_11d} :catchall_124

    .line 116
    if-eqz v12, :cond_12b

    .line 117
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v6, v15

    .end local v15    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .restart local v6    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    goto :goto_dc

    .line 116
    .end local v6    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    :catchall_124
    move-exception v2

    if-eqz v12, :cond_12a

    .line 117
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_12a
    throw v2

    .restart local v13    # "e":Ljava/lang/Exception;
    :cond_12b
    move-object v6, v15

    .end local v15    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .restart local v6    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    goto :goto_dc

    .end local v6    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    :cond_12d
    move-object v6, v15

    .end local v15    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    .restart local v6    # "ret":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    goto :goto_d7
.end method
