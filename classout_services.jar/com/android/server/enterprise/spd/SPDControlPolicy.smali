.class public Lcom/android/server/enterprise/spd/SPDControlPolicy;
.super Lcom/sec/enterprise/spd/ISPDControlPolicy$Stub;
.source "SPDControlPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final BROADCAST_AUTOUPDATE_CHANGED:Ljava/lang/String; = "com.policydm.intent.action.AUTOUPDATE"

.field private static final EXTRA_DATA:Ljava/lang/String; = "changed_data"

.field private static final EXTRA_MDM:Ljava/lang/String; = "mdm"

.field private static final SPDCONTROLPOLICY_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.MDM_SPDCONTROL"

.field private static final TAG:Ljava/lang/String; = "SPDControlPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mService:Lcom/sec/enterprise/spd/ISPDControlPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/enterprise/spd/ISPDControlPolicy$Stub;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 79
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 81
    return-void
.end method

.method private enforceOwnerOnlyAndSpdPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 119
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.permission.MDM_SPDCONTROL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 93
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 96
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getService()Lcom/sec/enterprise/spd/ISPDControlPolicy;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, mService:Lcom/sec/enterprise/spd/ISPDControlPolicy;

    if-nez v0, :cond_11

    .line 85
    const-string/jumbo v0, "spd_control_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/spd/ISPDControlPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/spd/ISPDControlPolicy;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/sec/enterprise/spd/ISPDControlPolicy;

    .line 88
    :cond_11
    iget-object v0, p0, mService:Lcom/sec/enterprise/spd/ISPDControlPolicy;

    return-object v0
.end method

.method private setAutoSecurityPolicyUpdateModeInternal(II)Z
    .registers 31
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    .prologue
    .line 146
    const/16 v16, 0x0

    .line 147
    .local v16, "ret":Z
    const/16 v17, 0x1

    .line 148
    .local v17, "retValue":Z
    const/4 v12, 0x0

    .line 149
    .local v12, "deleteEntry":Z
    const/4 v11, 0x0

    .line 150
    .local v11, "defaultValue":I
    const/16 v24, 0x0

    .line 151
    .local v24, "updatesValue":I
    const/16 v22, -0x1

    .line 152
    .local v22, "updateSetting":I
    const/4 v7, -0x1

    .line 153
    .local v7, "backupSetting":I
    const/4 v6, -0x1

    .line 154
    .local v6, "adminEntryInDB":I
    const/4 v14, 0x0

    .line 155
    .local v14, "existAdmin":I
    const/4 v8, 0x0

    .line 156
    .local v8, "currentValue":I
    const-wide/16 v20, 0x0

    .line 157
    .local v20, "token":J
    const/16 v23, -0x1

    .line 160
    .local v23, "updateSettingsValue":I
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 162
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 163
    .local v18, "sColumns":[Ljava/lang/String;
    const/16 v25, 0x0

    const-string/jumbo v26, "spdUpdate"

    aput-object v26, v18, v25

    .line 164
    const/16 v25, 0x1

    const-string/jumbo v26, "spdAdminUid"

    aput-object v26, v18, v25

    .line 165
    const/16 v25, 0x2

    const-string/jumbo v26, "spdDefaultValue"

    aput-object v26, v18, v25

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v25, v0

    const-string v26, "SPDCONTROL"

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v15

    .line 168
    .local v15, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 169
    .local v19, "sValues":[Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v9, "cv":Landroid/content/ContentValues;
    if-eqz v15, :cond_1f1

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_1f1

    .line 173
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_77

    .line 174
    const-string v25, "SPDControlPolicy"

    const-string v26, "Multiple entries, not expected"

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_71} :catch_28f
    .catchall {:try_start_12 .. :try_end_71} :catchall_2ad

    .line 175
    const/16 v25, 0x0

    .line 268
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "sColumns":[Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    :goto_76
    return v25

    .line 177
    .restart local v9    # "cv":Landroid/content/ContentValues;
    .restart local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "sColumns":[Ljava/lang/String;
    .restart local v19    # "sValues":[Ljava/lang/String;
    :cond_77
    const/16 v25, 0x0

    :try_start_79
    move/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/ContentValues;

    const-string/jumbo v26, "spdUpdate"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 178
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/ContentValues;

    const-string/jumbo v26, "spdAdminUid"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 179
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/ContentValues;

    const-string/jumbo v26, "spdDefaultValue"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 181
    const/16 v25, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v19, v25

    .line 182
    const/16 v25, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v19, v25

    .line 183
    const/16 v25, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v19, v25

    .line 185
    const-string v25, "SPDControlPolicy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setAutoSecurityPolicyUpdateModeInternal, currentValue = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", existAdminUid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", defaultValue = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    move/from16 v0, p1

    if-eq v14, v0, :cond_12d

    .line 187
    const-string v25, "SPDControlPolicy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setAutoSecurityPolicyUpdateModeInternal, existAdminUid: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not match current uid, cannot make changes"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_126} :catch_28f
    .catchall {:try_start_79 .. :try_end_126} :catchall_2ad

    .line 188
    const/16 v25, 0x0

    .line 268
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_76

    .line 192
    :cond_12d
    :try_start_12d
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v10, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v25, "spdAdminUid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string/jumbo v25, "spdUpdate"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string/jumbo v25, "spdAdminUid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string/jumbo v25, "spdDefaultValue"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    packed-switch p2, :pswitch_data_2b2

    .line 213
    :goto_16d
    if-eqz v12, :cond_1dd

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v25, v0

    const-string v26, "SPDCONTROL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v16

    .line 218
    :goto_183
    if-eqz v16, :cond_1ee

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "security_update_db"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    new-instance v4, Landroid/content/Intent;

    const-string v25, "com.policydm.intent.action.AUTOUPDATE"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, "AutoUpdateIntent":Landroid/content/Intent;
    const-string v25, "changed_data"

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string/jumbo v25, "mdm"

    const-string/jumbo v26, "mdm"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_1cc} :catch_28f
    .catchall {:try_start_12d .. :try_end_1cc} :catchall_2ad

    .line 268
    .end local v4    # "AutoUpdateIntent":Landroid/content/Intent;
    .end local v10    # "cvWhere":Landroid/content/ContentValues;
    :goto_1cc
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "sColumns":[Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    :goto_1cf
    move/from16 v25, v17

    .line 270
    goto/16 :goto_76

    .line 200
    .restart local v9    # "cv":Landroid/content/ContentValues;
    .restart local v10    # "cvWhere":Landroid/content/ContentValues;
    .restart local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "sColumns":[Ljava/lang/String;
    .restart local v19    # "sValues":[Ljava/lang/String;
    :pswitch_1d3
    const/4 v12, 0x1

    .line 201
    move/from16 v23, v11

    .line 202
    goto :goto_16d

    .line 204
    :pswitch_1d7
    const/16 v23, 0x3

    .line 205
    goto :goto_16d

    .line 207
    :pswitch_1da
    const/16 v23, 0x2

    .line 208
    goto :goto_16d

    .line 216
    :cond_1dd
    :try_start_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v25, v0

    const-string v26, "SPDCONTROL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v16

    goto :goto_183

    .line 226
    :cond_1ee
    const/16 v17, 0x0

    goto :goto_1cc

    .line 230
    .end local v10    # "cvWhere":Landroid/content/ContentValues;
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "security_update_db"

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 231
    const-string/jumbo v25, "spdUpdate"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string/jumbo v25, "spdAdminUid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string/jumbo v25, "spdDefaultValue"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const/4 v5, 0x1

    .line 235
    .local v5, "addEntry":Z
    packed-switch p2, :pswitch_data_2bc

    .line 249
    :goto_232
    if-eqz v5, :cond_244

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v25, v0

    const-string v26, "SPDCONTROL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v16

    .line 252
    :cond_244
    if-eqz v16, :cond_2a9

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "security_update_db"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    new-instance v4, Landroid/content/Intent;

    const-string v25, "com.policydm.intent.action.AUTOUPDATE"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v4    # "AutoUpdateIntent":Landroid/content/Intent;
    const-string v25, "changed_data"

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string/jumbo v25, "mdm"

    const-string/jumbo v26, "mdm"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const/16 v25, 0x20

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_28d} :catch_28f
    .catchall {:try_start_1dd .. :try_end_28d} :catchall_2ad

    goto/16 :goto_1cc

    .line 263
    .end local v4    # "AutoUpdateIntent":Landroid/content/Intent;
    .end local v5    # "addEntry":Z
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "sColumns":[Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    :catch_28f
    move-exception v13

    .line 264
    .local v13, "e":Ljava/lang/Exception;
    :try_start_290
    const-string v25, "SPDControlPolicy"

    const-string v26, "Exception in setAutoSecurityPolicyUpdateMode"

    invoke-static/range {v25 .. v26}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29a
    .catchall {:try_start_290 .. :try_end_29a} :catchall_2ad

    .line 266
    const/16 v17, 0x0

    .line 268
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1cf

    .line 237
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v5    # "addEntry":Z
    .restart local v9    # "cv":Landroid/content/ContentValues;
    .restart local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "sColumns":[Ljava/lang/String;
    .restart local v19    # "sValues":[Ljava/lang/String;
    :pswitch_2a1
    const/4 v5, 0x0

    .line 238
    goto :goto_232

    .line 240
    :pswitch_2a3
    const/16 v23, 0x3

    .line 241
    goto :goto_232

    .line 243
    :pswitch_2a6
    const/16 v23, 0x2

    .line 244
    goto :goto_232

    .line 260
    :cond_2a9
    const/16 v17, 0x0

    goto/16 :goto_1cc

    .line 268
    .end local v5    # "addEntry":Z
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "sColumns":[Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    :catchall_2ad
    move-exception v25

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25

    .line 198
    :pswitch_data_2b2
    .packed-switch 0x0
        :pswitch_1d3
        :pswitch_1d7
        :pswitch_1da
    .end packed-switch

    .line 235
    :pswitch_data_2bc
    .packed-switch 0x0
        :pswitch_2a1
        :pswitch_2a3
        :pswitch_2a6
    .end packed-switch
.end method


# virtual methods
.method public getAutoSecurityPolicyUpdateMode()I
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 286
    const/4 v5, -0x1

    .line 287
    .local v5, "settingValue":I
    const/4 v3, -0x1

    .line 291
    .local v3, "retValue":I
    const/4 v6, 0x3

    :try_start_4
    new-array v4, v6, [Ljava/lang/String;

    .line 292
    .local v4, "sColumns":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "spdUpdate"

    aput-object v7, v4, v6

    .line 293
    const/4 v6, 0x1

    const-string/jumbo v7, "spdAdminUid"

    aput-object v7, v4, v6

    .line 294
    const/4 v6, 0x2

    const-string/jumbo v7, "spdDefaultValue"

    aput-object v7, v4, v6

    .line 295
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SPDCONTROL"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 297
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v2, :cond_43

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_43

    .line 300
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "spdUpdate"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 301
    move v3, v5

    :goto_41
    move v6, v3

    .line 314
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "sColumns":[Ljava/lang/String;
    :goto_42
    return v6

    .line 303
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "sColumns":[Ljava/lang/String;
    :cond_43
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "security_update_db"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_50} :catch_57

    move-result v5

    .line 304
    if-ne v5, v9, :cond_55

    .line 305
    const/4 v3, 0x3

    goto :goto_41

    .line 307
    :cond_55
    const/4 v3, 0x4

    goto :goto_41

    .line 311
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "sColumns":[Ljava/lang/String;
    :catch_57
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SPDControlPolicy"

    const-string v7, "Exception in getAutoSecurityPolicyUpdateMode"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    const/4 v6, -0x1

    goto :goto_42
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, setAutoSecurityPolicyUpdateModeInternal(II)Z

    .line 107
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 116
    return-void
.end method

.method public setAutoSecurityPolicyUpdateMode(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "mode"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSpdPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 138
    if-nez p1, :cond_8

    .line 139
    const/4 v1, 0x0

    .line 142
    :goto_7
    return v1

    .line 141
    :cond_8
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 142
    .local v0, "uid":I
    invoke-direct {p0, v0, p2}, setAutoSecurityPolicyUpdateModeInternal(II)Z

    move-result v1

    goto :goto_7
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 111
    const-string v0, "SPDControlPolicy"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
