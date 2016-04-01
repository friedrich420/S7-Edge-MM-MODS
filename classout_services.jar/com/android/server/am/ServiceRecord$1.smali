.class Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$_foregroundNoti:Landroid/app/Notification;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;Ljava/lang/String;III)V
    .registers 7

    .prologue
    .line 445
    iput-object p1, p0, this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, val$_foregroundNoti:Landroid/app/Notification;

    iput-object p3, p0, val$localPackageName:Ljava/lang/String;

    iput p4, p0, val$appUid:I

    iput p5, p0, val$appPid:I

    iput p6, p0, val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 447
    const-class v2, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    .line 449
    .local v1, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v1, :cond_b

    .line 534
    :goto_a
    return-void

    .line 452
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, val$_foregroundNoti:Landroid/app/Notification;

    .line 454
    .local v8, "localForegroundNoti":Landroid/app/Notification;
    :try_start_f
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_10b

    .line 459
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to start a foreground service ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") with a broken notification (no icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 467
    .local v11, "appName":Ljava/lang/CharSequence;
    if-nez v11, :cond_63

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_63} :catch_131

    .line 470
    :cond_63
    const/4 v12, 0x0

    .line 472
    .local v12, "ctx":Landroid/content/Context;
    :try_start_64
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .line 475
    new-instance v14, Landroid/app/Notification$Builder;

    invoke-direct {v14, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    .local v14, "notiBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v14, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 481
    const/16 v2, 0x40

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 484
    const/4 v2, -0x2

    invoke-virtual {v14, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 486
    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v16, "runningIntent":Landroid/content/Intent;
    const-string/jumbo v2, "package"

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 492
    .local v15, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1060059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040358

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1040359

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 505
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 507
    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_10a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_10a} :catch_1a2
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_10a} :catch_131

    move-result-object v8

    .line 511
    .end local v11    # "appName":Ljava/lang/CharSequence;
    .end local v12    # "ctx":Landroid/content/Context;
    .end local v14    # "notiBuilder":Landroid/app/Notification$Builder;
    .end local v15    # "pi":Landroid/app/PendingIntent;
    .end local v16    # "runningIntent":Landroid/content/Intent;
    :cond_10b
    :goto_10b
    :try_start_10b
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_179

    .line 516
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid service notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_131
    .catch Ljava/lang/RuntimeException; {:try_start_10b .. :try_end_131} :catch_131

    .line 525
    :catch_131
    move-exception v13

    .line 526
    .local v13, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Error showing notification for service"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ServiceRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v3, v0, val$appUid:I

    move-object/from16 v0, p0

    iget v4, v0, val$appPid:I

    move-object/from16 v0, p0

    iget-object v5, v0, val$localPackageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad notification for startForeground: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 519
    .end local v13    # "e":Ljava/lang/RuntimeException;
    :cond_179
    const/4 v2, 0x1

    :try_start_17a
    new-array v9, v2, [I

    .line 520
    .local v9, "outId":[I
    move-object/from16 v0, p0

    iget-object v2, v0, val$localPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, val$localPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, val$appUid:I

    move-object/from16 v0, p0

    iget v5, v0, val$appPid:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, val$localForegroundId:I

    move-object/from16 v0, p0

    iget-object v10, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iget v10, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/am/ServiceRecord;

    iput-object v8, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;
    :try_end_1a0
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_1a0} :catch_131

    goto/16 :goto_a

    .line 508
    .end local v9    # "outId":[I
    .restart local v11    # "appName":Ljava/lang/CharSequence;
    .restart local v12    # "ctx":Landroid/content/Context;
    :catch_1a2
    move-exception v2

    goto/16 :goto_10b
.end method
