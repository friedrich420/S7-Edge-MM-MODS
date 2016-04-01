.class public Lcom/android/server/enterprise/license/LicenseLogService;
.super Landroid/os/Binder;
.source "LicenseLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    }
.end annotation


# static fields
.field private static final ACTION_LICENSE_LOG_DELETE_OLD_RECORDS:Ljava/lang/String; = "edm.intent.action.elm.cleanrecords"

.field private static final MSG_CLEAN_OLD_RECORDS:I = 0x1

.field private static final MSG_LOG_API:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LicenseLogService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 253
    new-instance v1, Lcom/android/server/enterprise/license/LicenseLogService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/license/LicenseLogService$1;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;)V

    iput-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 83
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "edm.intent.action.elm.cleanrecords"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    invoke-direct {p0}, initializeHandlerThread()V

    .line 90
    return-void
.end method

.method private _log(Ljava/lang/String;I)V
    .registers 14
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 126
    :try_start_0
    invoke-direct {p0, p2}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_7

    .line 165
    .end local v5    # "pkgName":Ljava/lang/String;
    :goto_6
    return-void

    .line 133
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 134
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v7, 0xb

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/16 v7, 0xc

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/16 v7, 0xd

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 137
    const/16 v7, 0xe

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 138
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 140
    .local v8, "time":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "pkgName"

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v7, "id"

    invoke-virtual {v3, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v7, "date"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "value"

    .line 146
    .local v1, "column":Ljava/lang/String;
    sget-object v7, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v7, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 149
    .local v6, "result":Landroid/content/ContentValues;
    if-eqz v6, :cond_83

    .line 152
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "value"

    const-string/jumbo v10, "value"

    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    sget-object v7, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v7, v10, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    goto :goto_6

    .line 161
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "column":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "result":Landroid/content/ContentValues;
    .end local v8    # "time":J
    :catch_73
    move-exception v4

    .line 162
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "LicenseLogService"

    const-string v10, "_log() failed"

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v7, "LicenseLogService"

    const-string v10, "_log() failed"

    invoke-static {v7, v10, v4}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 158
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "column":Ljava/lang/String;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "result":Landroid/content/ContentValues;
    .restart local v8    # "time":J
    :cond_83
    :try_start_83
    sget-object v7, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE_LOG"

    invoke-virtual {v7, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8a} :catch_73

    goto/16 :goto_6
.end method

.method static synthetic access$000()Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
    .registers 1

    .prologue
    .line 68
    sget-object v0, mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/license/LicenseLogService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/license/LicenseLogService;

    .prologue
    .line 68
    invoke-direct {p0}, handleLicenseLogCleanNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/license/LicenseLogService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, _log(Ljava/lang/String;I)V

    return-void
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .registers 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    aput-object v2, v0, v3

    .line 220
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p0, v1, v3

    .line 223
    .local v1, "sValues":[Ljava/lang/String;
    sget-object v2, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE_LOG"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 14
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 169
    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v9, "ret":Landroid/os/Bundle;
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    .line 171
    .local v0, "columns":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string/jumbo v12, "date"

    aput-object v12, v0, v11

    .line 172
    const/4 v11, 0x1

    const-string/jumbo v12, "id"

    aput-object v12, v0, v11

    .line 173
    const/4 v11, 0x2

    const-string/jumbo v12, "value"

    aput-object v12, v0, v11

    .line 175
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v11, "pkgName"

    invoke-virtual {v2, v11, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v11, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "LICENSE_LOG"

    invoke-virtual {v11, v12, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 181
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_86

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_86

    .line 182
    const/4 v7, 0x0

    .line 183
    .local v7, "keyVal":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 184
    .local v5, "id":Ljava/lang/String;
    const/4 v10, 0x0

    .line 185
    .local v10, "val":I
    const/4 v3, 0x0

    .line 186
    .local v3, "date":Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 189
    .local v6, "it":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_87

    .line 190
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 191
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "date"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    const-string/jumbo v11, "id"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    const-string/jumbo v11, "value"

    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 195
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_88

    .line 197
    new-instance v7, Landroid/os/Bundle;

    .end local v7    # "keyVal":Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 198
    .restart local v7    # "keyVal":Landroid/os/Bundle;
    invoke-virtual {v7, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    invoke-virtual {v9, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_75

    goto :goto_3e

    .line 208
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "date":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "keyVal":Landroid/os/Bundle;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9    # "ret":Landroid/os/Bundle;
    .end local v10    # "val":I
    :catch_75
    move-exception v4

    .line 209
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "LicenseLogService"

    const-string/jumbo v12, "getLog() failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v11, "LicenseLogService"

    const-string/jumbo v12, "getLog() failed"

    invoke-static {v11, v12, v4}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_86
    const/4 v9, 0x0

    :cond_87
    return-object v9

    .line 202
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    .restart local v3    # "date":Ljava/lang/String;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "it":Ljava/util/Iterator;
    .restart local v7    # "keyVal":Landroid/os/Bundle;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v9    # "ret":Landroid/os/Bundle;
    .restart local v10    # "val":I
    :cond_88
    :try_start_88
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8f} :catch_75

    goto :goto_3e
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 244
    sget-object v1, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_12

    .line 247
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_12
    return-object v0
.end method

.method private handleLicenseLogCleanNotification()V
    .registers 25

    .prologue
    .line 293
    const-string v15, "LicenseLogService"

    const-string/jumbo v20, "handleLicenseLogCleanNotification()"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 296
    .local v7, "calendar":Ljava/util/Calendar;
    const/16 v15, 0xb

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 297
    const/16 v15, 0xc

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 298
    const/16 v15, 0xd

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 299
    const/16 v15, 0xe

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v15, v0}, Ljava/util/Calendar;->set(II)V

    .line 300
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 303
    .local v12, "now":J
    const-wide v10, 0x9a7ec800L

    .line 304
    .local v10, "howOld":J
    sub-long v16, v12, v10

    .line 307
    .local v16, "temp":J
    :try_start_3d
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v14, "selectionValues":Landroid/content/ContentValues;
    const-string/jumbo v15, "date<=?"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    sget-object v15, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v20, "LICENSE_LOG"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_57} :catch_af
    .catchall {:try_start_3d .. :try_end_57} :catchall_11c

    .line 316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 318
    .local v18, "token":J
    const-wide/32 v20, 0x5265c00

    add-long v4, v12, v20

    .line 319
    .local v4, "alarmTime":J
    :try_start_60
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string v20, "alarm"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 320
    .local v6, "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.elm.cleanrecords"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x48000000    # 131072.0f

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v15, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 323
    .local v9, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v6, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 324
    const-wide/16 v20, 0x0

    cmp-long v15, v4, v20

    if-eqz v15, :cond_95

    .line 325
    const/4 v15, 0x1

    invoke-virtual {v6, v15, v4, v5, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_95} :catch_99

    .line 332
    .end local v6    # "am":Landroid/app/AlarmManager;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    :cond_95
    :goto_95
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    .end local v14    # "selectionValues":Landroid/content/ContentValues;
    :goto_98
    return-void

    .line 328
    .restart local v14    # "selectionValues":Landroid/content/ContentValues;
    :catch_99
    move-exception v8

    .line 329
    .local v8, "e":Ljava/lang/Exception;
    const-string v15, "LicenseLogService"

    const-string/jumbo v20, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v15, "LicenseLogService"

    const-string/jumbo v20, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v20

    invoke-static {v15, v0, v8}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    .line 311
    .end local v4    # "alarmTime":J
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v14    # "selectionValues":Landroid/content/ContentValues;
    .end local v18    # "token":J
    :catch_af
    move-exception v8

    .line 312
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_b0
    const-string v15, "LicenseLogService"

    const-string/jumbo v20, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v15, "LicenseLogService"

    const-string/jumbo v20, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v20

    invoke-static {v15, v0, v8}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_11c

    .line 316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 318
    .restart local v18    # "token":J
    const-wide/32 v20, 0x5265c00

    add-long v4, v12, v20

    .line 319
    .restart local v4    # "alarmTime":J
    :try_start_cd
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string v20, "alarm"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 320
    .restart local v6    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const/16 v20, 0x0

    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.elm.cleanrecords"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x48000000    # 131072.0f

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v15, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 323
    .restart local v9    # "pi":Landroid/app/PendingIntent;
    invoke-virtual {v6, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 324
    const-wide/16 v20, 0x0

    cmp-long v15, v4, v20

    if-eqz v15, :cond_102

    .line 325
    const/4 v15, 0x1

    invoke-virtual {v6, v15, v4, v5, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_102} :catch_106

    .line 332
    .end local v6    # "am":Landroid/app/AlarmManager;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    :cond_102
    :goto_102
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_98

    .line 328
    :catch_106
    move-exception v8

    .line 329
    const-string v15, "LicenseLogService"

    const-string/jumbo v20, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v15, "LicenseLogService"

    const-string/jumbo v20, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v20

    invoke-static {v15, v0, v8}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_102

    .line 316
    .end local v4    # "alarmTime":J
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v18    # "token":J
    :catchall_11c
    move-exception v15

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 318
    .restart local v18    # "token":J
    const-wide/32 v20, 0x5265c00

    add-long v4, v12, v20

    .line 319
    .restart local v4    # "alarmTime":J
    :try_start_126
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "alarm"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 320
    .restart local v6    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v23, "edm.intent.action.elm.cleanrecords"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v23, 0x48000000    # 131072.0f

    invoke-static/range {v20 .. v23}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 323
    .restart local v9    # "pi":Landroid/app/PendingIntent;
    invoke-virtual {v6, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 324
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-eqz v20, :cond_15a

    .line 325
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0, v4, v5, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_15a} :catch_15e

    .line 332
    .end local v6    # "am":Landroid/app/AlarmManager;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    :cond_15a
    :goto_15a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    throw v15

    .line 328
    :catch_15e
    move-exception v8

    .line 329
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v20, "LicenseLogService"

    const-string/jumbo v21, "handleLicenseLogCleanNotification() failed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v20, "LicenseLogService"

    const-string/jumbo v21, "handleLicenseLogCleanNotification() failed"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15a
.end method

.method private initializeHandlerThread()V
    .registers 3

    .prologue
    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LicenseLogService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 95
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;-><init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V

    sput-object v0, mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    .line 97
    return-void
.end method

.method public static log(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 8
    .param p0, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "apiName"    # Ljava/lang/String;

    .prologue
    .line 100
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    sget-object v4, mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    if-nez v4, :cond_9

    .line 121
    :cond_8
    :goto_8
    return-void

    .line 104
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 106
    .local v0, "appid":I
    const/16 v4, 0x2710

    if-lt v0, v4, :cond_8

    const/16 v4, 0x4e1f

    if-gt v0, v4, :cond_8

    .line 111
    sget-object v4, mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 112
    .local v3, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "apiName"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v4, "adminUid"

    iget v5, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 116
    sget-object v4, mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_39} :catch_3a

    goto :goto_8

    .line 117
    .end local v0    # "appid":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_3a
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "LicenseLogService"

    const-string/jumbo v5, "log() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v4, "LicenseLogService"

    const-string/jumbo v5, "log() failed"

    invoke-static {v4, v5, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method


# virtual methods
.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 233
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 237
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 241
    return-void
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 229
    return-void
.end method
