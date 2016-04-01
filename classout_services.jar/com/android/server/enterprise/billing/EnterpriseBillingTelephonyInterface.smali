.class public Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;
.super Ljava/lang/Object;
.source "EnterpriseBillingTelephonyInterface.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EnterpriseBillingTelephonyInterface"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentActiveApns(Landroid/content/Context;)Ljava/util/List;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/billing/EnterpriseApn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v10, 0x0

    .line 36
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    const-string v2, "EnterpriseBillingTelephonyInterface"

    const-string v3, " getCurrentActiveApns - start "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v15, 0x0

    .line 40
    .local v15, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_9
    const-string/jumbo v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v15, v0
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_16} :catch_fd

    .line 44
    :goto_16
    if-eqz v15, :cond_d7

    .line 45
    const-string v2, "EnterpriseBillingTelephonyInterface"

    const-string v3, " getCurrentActiveApns - telephony manager not null "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_d7

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d7

    .line 49
    const/4 v12, 0x0

    .line 50
    .local v12, "mcc":Ljava/lang/String;
    const/4 v13, 0x0

    .line 52
    .local v13, "mnc":Ljava/lang/String;
    const-string v2, "EnterpriseBillingTelephonyInterface"

    const-string v3, " getCurrentActiveApns - SystemProperties -  Sim state valid "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v2, 0x0

    const-string/jumbo v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, "numeric":Ljava/lang/String;
    if-eqz v14, :cond_53

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_53

    .line 58
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 59
    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 62
    :cond_53
    const-string v2, "EnterpriseBillingTelephonyInterface"

    const-string v3, " getCurrentActiveApns - Sim state valid "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz v12, :cond_d7

    if-eqz v13, :cond_d7

    .line 65
    const/4 v9, 0x0

    .line 68
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 71
    .local v16, "token":J
    :try_start_63
    const-string v2, "EnterpriseBillingTelephonyInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getCurrentActiveApns - mcc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mnc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "apn"

    aput-object v6, v4, v5

    const-string/jumbo v5, "mcc= ? AND mnc = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 78
    if-eqz v9, :cond_cf

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_a9
    .catchall {:try_start_63 .. :try_end_a9} :catchall_f0

    move-result v2

    if-eqz v2, :cond_cf

    :cond_ac
    move-object v11, v10

    .line 80
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    const/4 v2, 0x0

    :try_start_ae
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "apn":Ljava/lang/String;
    if-eqz v8, :cond_102

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_102

    .line 82
    if-nez v11, :cond_100

    .line 83
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_c1
    .catchall {:try_start_ae .. :try_end_c1} :catchall_fa

    .line 85
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    :goto_c1
    :try_start_c1
    new-instance v2, Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    invoke-direct {v2, v8, v12, v13}, Lcom/sec/enterprise/knox/billing/EnterpriseApn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_c9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_cc
    .catchall {:try_start_c1 .. :try_end_cc} :catchall_f0

    move-result v2

    if-nez v2, :cond_ac

    .line 92
    .end local v8    # "apn":Ljava/lang/String;
    :cond_cf
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    if-eqz v9, :cond_d7

    .line 94
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 100
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "mcc":Ljava/lang/String;
    .end local v13    # "mnc":Ljava/lang/String;
    .end local v14    # "numeric":Ljava/lang/String;
    .end local v16    # "token":J
    :cond_d7
    const-string v2, "EnterpriseBillingTelephonyInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getCurrentActiveApns - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v10

    .line 92
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "mcc":Ljava/lang/String;
    .restart local v13    # "mnc":Ljava/lang/String;
    .restart local v14    # "numeric":Ljava/lang/String;
    .restart local v16    # "token":J
    :catchall_f0
    move-exception v2

    :goto_f1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    if-eqz v9, :cond_f9

    .line 94
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_f9
    throw v2

    .line 92
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    :catchall_fa
    move-exception v2

    move-object v10, v11

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    goto :goto_f1

    .line 41
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "mcc":Ljava/lang/String;
    .end local v13    # "mnc":Ljava/lang/String;
    .end local v14    # "numeric":Ljava/lang/String;
    .end local v16    # "token":J
    :catch_fd
    move-exception v2

    goto/16 :goto_16

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v8    # "apn":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v12    # "mcc":Ljava/lang/String;
    .restart local v13    # "mnc":Ljava/lang/String;
    .restart local v14    # "numeric":Ljava/lang/String;
    .restart local v16    # "token":J
    :cond_100
    move-object v10, v11

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    goto :goto_c1

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    :cond_102
    move-object v10, v11

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    goto :goto_c9
.end method

.method public static getDefaultType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apn"    # Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 137
    const-string v0, "EnterpriseBillingTelephonyInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultType - apn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v6, 0x0

    .line 139
    .local v6, "apnDefaultType":Ljava/lang/String;
    if-eqz p1, :cond_5e

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 143
    .local v8, "token":J
    const/4 v7, 0x0

    .line 145
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const-string v3, "apn= ? AND mcc= ? AND mnc = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, p1, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->apn:Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    iget-object v10, p1, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    iget-object v10, p1, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 151
    if-eqz v7, :cond_56

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 152
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_21 .. :try_end_55} :catchall_5f

    move-result-object v6

    .line 156
    :cond_56
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    if-eqz v7, :cond_5e

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 162
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "token":J
    :cond_5e
    return-object v6

    .line 156
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "token":J
    :catchall_5f
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    if-eqz v7, :cond_68

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_68
    throw v0
.end method

.method public static updateApnType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;Ljava/lang/String;)I
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apn"    # Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .param p2, "apnType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 109
    const-string v4, "EnterpriseBillingTelephonyInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateApnType - updated rows - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, -0x1

    .line 111
    .local v0, "returnValue":I
    if-eqz p1, :cond_56

    .line 112
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 118
    .local v2, "token":J
    :try_start_35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "apn= ? AND mcc = ? AND mnc = ?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->apn:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_70

    move-result v0

    .line 125
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "token":J
    :cond_56
    const-string v4, "EnterpriseBillingTelephonyInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateApnType - updated rows - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v0

    .line 125
    .restart local v1    # "values":Landroid/content/ContentValues;
    .restart local v2    # "token":J
    :catchall_70
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
