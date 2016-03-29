.class public Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;
.super Landroid/app/Activity;
.source "ShareAccessibilitySettingsReceive.java"


# static fields
.field private static RevSettingValues:Ljava/lang/String;

.field private static receiveSettingValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImportandRestoreNotificationManager:Landroid/app/NotificationManager;

.field private mReceiveFullPath:Ljava/lang/String;

.field mReceiveUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->importNotificationSet(Ljava/lang/String;)V

    return-void
.end method

.method private applyPayload([B)V
    .locals 20
    .param p1, "payload"    # [B

    .prologue
    .line 166
    new-instance v15, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    .line 167
    const-string v15, "ShareAccessibilitySettingsReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "applyPayload: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v10, "mResultHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 172
    .local v12, "separationEachSettingValue":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 173
    .local v13, "separationHashKey_HashValue":[Ljava/lang/String;
    const-string v5, ","

    .line 174
    .local v5, "delimiterComma":Ljava/lang/String;
    const-string v6, "="

    .line 175
    .local v6, "delimiterEqual":Ljava/lang/String;
    const-string v7, "\\{"

    .line 176
    .local v7, "delimiterLBracket":Ljava/lang/String;
    const-string v8, "\\}"

    .line 177
    .local v8, "delimiterRBracket":Ljava/lang/String;
    const/4 v3, 0x0

    .line 178
    .local v3, "ResultKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 179
    .local v4, "ResultValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 181
    .local v2, "RemoveValues":Ljava/lang/String;
    sget-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    const-string v15, ""

    invoke-virtual {v2, v8, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v15, "ShareAccessibilitySettingsReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "after remove Bracket: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 186
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v15, v12

    if-ge v9, v15, :cond_0

    .line 187
    aget-object v15, v12, v9

    invoke-virtual {v15, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 189
    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 190
    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v15, "ShareAccessibilitySettingsReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ResultKey"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v15, "ShareAccessibilitySettingsReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ResultValue"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 197
    :cond_0
    new-instance v11, Ljava/text/SimpleDateFormat;

    sget-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v11, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 199
    .local v14, "today":Ljava/util/Calendar;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Settings of accessibility_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".sasf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    .line 200
    const-string v15, "ShareAccessibilitySettingsReceive"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FILE NAME : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->createFolder(Ljava/lang/String;)V

    .line 202
    const/4 v15, 0x1

    sput v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    .line 203
    new-instance v15, Ljava/io/File;

    sget-object v16, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    sget-object v17, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    .line 204
    sget-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v15}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    sput-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    .line 206
    sget-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v10, v15}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V

    .line 207
    sget-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_1

    .line 208
    sget-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showImportAndRestoreDialog(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 213
    :goto_1
    return-void

    .line 210
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showImportFailureDialog()V

    .line 211
    sget-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private importNotificationSet(Ljava/lang/String;)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 286
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v4, "noti_import_intent":Landroid/content/Intent;
    const-string v5, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v5, "importNotification"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    invoke-static {p0, v7, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 291
    .local v3, "intent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e09e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "importnotiticker":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e09e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "importnotititle":Ljava/lang/String;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mImportandRestoreNotificationManager:Landroid/app/NotificationManager;

    .line 295
    new-instance v0, Landroid/app/Notification;

    const v5, 0x7f0202f3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v5, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 296
    .local v0, "importnotification":Landroid/app/Notification;
    invoke-virtual {v0, p0, v2, p1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 297
    iget v5, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Landroid/app/Notification;->flags:I

    .line 300
    iget-object v5, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mImportandRestoreNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 302
    iget-object v5, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method private shareAccessibilitySettingsReceive_Init()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "ShareAccessibilitySettingsReceive"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    .line 162
    return-void
.end method

.method private showImportAndRestoreDialog(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "restoreSettingValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e09d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0827

    new-instance v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$7;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$7;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0826

    new-instance v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$6;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$5;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$5;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 265
    return-void
.end method

.method private showImportFailureDialog()V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0826

    new-instance v2, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$3;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$3;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    new-instance v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$4;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$4;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 234
    return-void
.end method

.method private showNotSupportFileDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0e09e5

    .line 126
    const-string v1, "ShareAccessibilitySettingsReceive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNotSupportFileDialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    if-nez p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e09e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0f72

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$1;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    new-instance v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$2;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 155
    return-void

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string v9, "ShareAccessibilitySettingsReceive"

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->shareAccessibilitySettingsReceive_Init()V

    .line 56
    const-string v9, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 60
    .local v7, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v7, :cond_1

    .line 61
    array-length v9, v7

    new-array v4, v9, [Landroid/nfc/NdefMessage;

    .line 62
    .local v4, "msgs":[Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v7

    if-ge v2, v9, :cond_0

    .line 63
    aget-object v9, v7, v2

    check-cast v9, Landroid/nfc/NdefMessage;

    aput-object v9, v4, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    aget-object v9, v4, v11

    invoke-virtual {v9}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v8

    .line 67
    .local v8, "recs":[Landroid/nfc/NdefRecord;
    aget-object v9, v8, v11

    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    .line 68
    .local v5, "payload":[B
    const-string v9, "ShareAccessibilitySettingsReceive"

    const-string v10, "call applyPayload"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->applyPayload([B)V

    .line 123
    .end local v2    # "i":I
    .end local v4    # "msgs":[Landroid/nfc/NdefMessage;
    .end local v5    # "payload":[B
    .end local v7    # "rawMsgs":[Landroid/os/Parcelable;
    .end local v8    # "recs":[Landroid/nfc/NdefRecord;
    :cond_1
    :goto_1
    return-void

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 74
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "ShareAccessibilitySettingsReceive"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Intent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    .line 78
    iget-object v9, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    if-nez v9, :cond_3

    .line 79
    const-string v9, "ShareAccessibilitySettingsReceive"

    const-string v10, "mReceiveUri is null "

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    goto :goto_1

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    .local v0, "ReceivefileName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    .line 84
    const/4 v6, 0x0

    .line 85
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    const-string v9, "ShareAccessibilitySettingsReceive"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mReceiveUri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v9, "ShareAccessibilitySettingsReceive"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mReceiveFullPath: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    const-string v11, "r"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    .line 94
    :goto_2
    if-nez v6, :cond_4

    .line 96
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showNotSupportFileDialog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->LoadValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/HashMap;

    move-result-object v9

    sput-object v9, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    if-eqz v6, :cond_5

    .line 107
    :try_start_2
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    :cond_5
    :goto_3
    sget-object v9, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "{}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 114
    const-string v9, "ShareAccessibilitySettingsReceive"

    const-string v10, "receiveSettingValues is null"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    goto/16 :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_3
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    if-eqz v6, :cond_5

    .line 107
    :try_start_4
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 108
    :catch_1
    move-exception v9

    goto :goto_3

    .line 105
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_6

    .line 107
    :try_start_5
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    :cond_6
    :goto_4
    throw v9

    .line 117
    :cond_7
    sget-object v9, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    invoke-direct {p0, v9, v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->showImportAndRestoreDialog(Ljava/util/HashMap;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    :catch_2
    move-exception v9

    goto :goto_3

    :catch_3
    move-exception v10

    goto :goto_4

    .line 90
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    sget-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 308
    sput-object v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->RevSettingValues:Ljava/lang/String;

    .line 311
    :cond_0
    sget-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 312
    sput-object v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->receiveSettingValues:Ljava/util/HashMap;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 316
    iput-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mContext:Landroid/content/Context;

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 320
    iput-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveFullPath:Ljava/lang/String;

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 324
    iput-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->mReceiveUri:Landroid/net/Uri;

    .line 327
    :cond_4
    const-string v0, "ShareAccessibilitySettingsReceive"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 329
    return-void
.end method
