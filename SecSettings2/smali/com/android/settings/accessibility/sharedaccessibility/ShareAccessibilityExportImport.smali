.class public Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;
.super Landroid/app/Activity;
.source "ShareAccessibilityExportImport.java"


# static fields
.field private static RevSettingValues:Ljava/util/HashMap;
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

.field private static isDialogShown:Z

.field private static isSdCardAvailable:Z

.field private static isSecondDialogShown:Z

.field private static settingValue:Ljava/util/HashMap;
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

.field private mExportFailNotificationManager:Landroid/app/NotificationManager;

.field private mExportNotificationManager:Landroid/app/NotificationManager;

.field private mImportNotificationManager:Landroid/app/NotificationManager;

.field private path:Ljava/lang/String;

.field pending_noti_external_intent:Landroid/app/PendingIntent;

.field pending_noti_internal_intent:Landroid/app/PendingIntent;

.field private window:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z

    .line 62
    sput-boolean v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSdCardAvailable:Z

    .line 63
    sput-boolean v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_internal_intent:Landroid/app/PendingIntent;

    .line 52
    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_external_intent:Landroid/app/PendingIntent;

    .line 65
    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->window:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private ShareAccessibilityExport_Init()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    .line 148
    const-string v0, "ShareAccessibilityExportImport"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method private ShareAccessibilityImport_Init()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;

    .line 142
    const-string v0, "ShareAccessibilityExportImport"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 32
    sput-object p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->importNotificationSet(Ljava/lang/String;)V

    return-void
.end method

.method private exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportFailNotificationManager:Landroid/app/NotificationManager;

    .line 400
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f0202f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 401
    .local v0, "exportFailureNotification":Landroid/app/Notification;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 402
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 403
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportFailNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    .line 405
    return-void
.end method

.method private exportNotificationSet(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "file_path"    # Ljava/lang/String;
    .param p3, "which"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 295
    const/4 v5, 0x0

    .line 296
    .local v5, "noti_common_export_intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 298
    .local v4, "mgr":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_0

    .line 299
    const-string v6, "com.sec.android.app.myfiles"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 302
    :cond_0
    if-nez v5, :cond_1

    .line 303
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "noti_common_export_intent":Landroid/content/Intent;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 307
    .restart local v5    # "noti_common_export_intent":Landroid/content/Intent;
    :cond_1
    const-string v6, "ShareAccessibilityExportImport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exportNotificationSet which :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-nez p3, :cond_4

    .line 309
    const-string v6, "START_FOLDER"

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v6, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v6, "samsung.myfiles.intent.extra.START_PATH"

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-static {p0, v10, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_internal_intent:Landroid/app/PendingIntent;

    .line 323
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e09e1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "exportnotiticker":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e09e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "exportnotititle":Ljava/lang/String;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    .line 327
    new-instance v0, Landroid/app/Notification;

    const v6, 0x7f0202f2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v0, v6, v1, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 328
    .local v0, "exportnotification":Landroid/app/Notification;
    if-nez p3, :cond_5

    .line 329
    iget-object v6, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_internal_intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v2, p1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 333
    :cond_3
    :goto_1
    iget v6, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v0, Landroid/app/Notification;->flags:I

    .line 334
    iget-object v6, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v6, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 337
    iget-object v6, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 338
    return-void

    .line 314
    .end local v0    # "exportnotification":Landroid/app/Notification;
    .end local v1    # "exportnotiticker":Ljava/lang/String;
    .end local v2    # "exportnotititle":Ljava/lang/String;
    :cond_4
    if-ne p3, v10, :cond_2

    .line 315
    iget-object v6, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string v7, "/Accessibility"

    invoke-static {v6, v7}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "folder_path":Ljava/lang/String;
    const-string v6, "START_FOLDER"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v6, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v6, "samsung.myfiles.intent.extra.START_PATH"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const/4 v6, 0x2

    invoke-static {p0, v6, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_external_intent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 330
    .end local v3    # "folder_path":Ljava/lang/String;
    .restart local v0    # "exportnotification":Landroid/app/Notification;
    .restart local v1    # "exportnotiticker":Ljava/lang/String;
    .restart local v2    # "exportnotititle":Ljava/lang/String;
    :cond_5
    if-ne p3, v10, :cond_3

    .line 331
    iget-object v6, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_external_intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v2, p1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private importNotificationSet(Ljava/lang/String;)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 342
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v4, "noti_import_intent":Landroid/content/Intent;
    const-string v5, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v5, "importNotification"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const/4 v5, 0x3

    invoke-static {p0, v5, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 348
    .local v3, "intent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e09e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "importnotiticker":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e09e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "importnotititle":Ljava/lang/String;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mImportNotificationManager:Landroid/app/NotificationManager;

    .line 352
    new-instance v0, Landroid/app/Notification;

    const v5, 0x7f0202f3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v5, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 353
    .local v0, "importnotification":Landroid/app/Notification;
    invoke-virtual {v0, p0, v2, p1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 354
    iget v5, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Landroid/app/Notification;->flags:I

    .line 355
    iget-object v5, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mImportNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 357
    iget-object v5, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    return-void
.end method

.method private showContent(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    const-wide/16 v8, 0x0

    const v7, 0x7f0e09dc

    const/4 v6, 0x1

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-static {}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getAvailableInternalMemorySize()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportMyFiles()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e09dd

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v3, "import_internal_intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v4, "FOLDERPATH"

    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v4, "CONTENT_TYPE"

    const-string v5, "application/x-sasf"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v4, "JUST_SELECT_MODE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "import_internal_intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getAvailableExternalMemorySize(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportSDCards()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e09de

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string v5, "/Accessibility"

    invoke-static {v4, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "folder_path":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v2, "import_external_intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v4, "FOLDERPATH"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v4, "CONTENT_TYPE"

    const-string v5, "application/x-sasf"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v4, "JUST_SELECT_MODE"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    const/4 v4, 0x4

    :try_start_1
    invoke-virtual {p0, v2, v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public exportMyFiles()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 230
    .local v2, "today":Ljava/util/Calendar;
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "month":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "day":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings of accessibility_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".sasf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    .line 236
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    .line 237
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    .line 238
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->createFolder(Ljava/lang/String;)V

    .line 239
    sput v6, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    .line 241
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 242
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 244
    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValue(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    .line 245
    const-string v3, "ShareAccessibilityExportImport"

    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V

    .line 248
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 249
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportNotificationSet(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    :goto_0
    const-string v3, "ShareAccessibilityExportImport"

    const-string v4, "finish"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    .line 258
    return-void

    .line 252
    :cond_3
    const v3, 0x7f0e09dc

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e09e0

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public exportSDCards()V
    .locals 9

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 262
    .local v3, "today":Ljava/util/Calendar;
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "month":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "day":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_1
    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string v5, "/Accessibility"

    invoke-static {v4, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "folder_path":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->createFolder(Ljava/lang/String;)V

    .line 269
    sput v8, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    .line 271
    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 272
    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 275
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValue(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    .line 276
    const-string v4, "ShareAccessibilityExportImport"

    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings of accessibility_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sasf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    .line 278
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    .line 279
    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-static {v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    sput-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    .line 280
    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-static {v4, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V

    .line 281
    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 282
    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportNotificationSet(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    :goto_0
    const-string v4, "ShareAccessibilityExportImport"

    const-string v5, "finish"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    .line 292
    return-void

    .line 287
    :cond_3
    const v4, 0x7f0e09dc

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0e09e0

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 376
    const-string v0, "ShareAccessibilityExportImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 378
    const-string v0, "ShareAccessibilityExportImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v0, "ShareAccessibilityExportImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz p3, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    .line 382
    const-string v0, "FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    .line 383
    const-string v0, "ShareAccessibilityExportImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult PICK_SINGLE_FILE path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->showDialog(I)V

    .line 396
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string v0, "ShareAccessibilityExportImport"

    const-string v1, "data is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->ShareAccessibilityExport_Init()V

    .line 72
    invoke-direct {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->ShareAccessibilityImport_Init()V

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 76
    const-string v2, "ShareAccessibilityExportImport"

    const-string v3, "It is not possible to get Action"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Item"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 80
    .local v1, "item":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->showContent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v1    # "item":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ShareAccessibilityExportImport"

    const-string v3, "It is not possible to get selected item from Intent"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 167
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    const-string v2, "ShareAccessibilityExportImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    packed-switch p1, :pswitch_data_0

    .line 222
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 223
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 225
    return-object v0

    .line 188
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_0
    const v2, 0x7f0e09d6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0827

    new-instance v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e09df

    new-instance v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    const-string v0, "ShareAccessibilityExportImport"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 412
    sput-object v2, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 416
    iput-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    .line 419
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 420
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 155
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 373
    :goto_0
    return-void

    .line 365
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->removeDialog(I)V

    goto :goto_0

    .line 368
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->removeDialog(I)V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
