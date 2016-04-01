.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;
.super Landroid/os/AsyncTask;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitoringCertNotificationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .prologue
    .line 2522
    iput-object p1, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "x1"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    .prologue
    .line 2522
    invoke-direct {p0, p1}, <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    return-void
.end method

.method private manageNotification(Landroid/os/UserHandle;)V
    .registers 21
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2538
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    .line 2541
    .local v18, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2625
    :cond_1c
    :goto_1c
    return-void

    .line 2544
    :cond_1d
    if-eqz v18, :cond_1c

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 2549
    const/4 v9, 0x0

    .line 2551
    .local v9, "hasCert":Z
    const/4 v10, 0x0

    .line 2552
    .local v10, "hasMDM":Z
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/license/EnterpriseLicenseManager;

    move-result-object v12

    .line 2553
    .local v12, "licenseManager":Landroid/app/enterprise/license/EnterpriseLicenseManager;
    if-eqz v12, :cond_3a

    .line 2554
    invoke-virtual {v12}, Landroid/app/enterprise/license/EnterpriseLicenseManager;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 2555
    const/4 v10, 0x1

    .line 2560
    :cond_3a
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_45} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_45} :catch_8c
    .catch Ljava/lang/AssertionError; {:try_start_3a .. :try_end_45} :catch_95

    move-result-object v11

    .line 2562
    .local v11, "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_46
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_55} :catch_72
    .catchall {:try_start_46 .. :try_end_55} :catchall_87

    move-result v1

    if-nez v1, :cond_59

    .line 2563
    const/4 v9, 0x1

    .line 2568
    :cond_59
    :try_start_59
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_5c} :catch_8c
    .catch Ljava/lang/AssertionError; {:try_start_59 .. :try_end_5c} :catch_95

    .line 2577
    .end local v11    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :goto_5c
    if-eqz v9, :cond_60

    if-eqz v10, :cond_b1

    .line 2578
    :cond_60
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;

    move-result-object v1

    const/4 v2, 0x0

    const v4, 0x10400f8

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v4, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1c

    .line 2565
    .restart local v11    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catch_72
    move-exception v8

    .line 2566
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_73
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "Could not connect to KeyChain service"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_87

    .line 2568
    :try_start_7a
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_7d
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_7d} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_7d} :catch_8c
    .catch Ljava/lang/AssertionError; {:try_start_7a .. :try_end_7d} :catch_95

    goto :goto_5c

    .line 2570
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v11    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catch_7e
    move-exception v8

    .line 2571
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5c

    .line 2568
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v11    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_87
    move-exception v1

    :try_start_88
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v1
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_8c} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_88 .. :try_end_8c} :catch_8c
    .catch Ljava/lang/AssertionError; {:try_start_88 .. :try_end_8c} :catch_95

    .line 2572
    .end local v11    # "kcs":Landroid/security/KeyChain$KeyChainConnection;
    :catch_8c
    move-exception v8

    .line 2573
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "Could not connect to KeyChain service"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 2574
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catch_95
    move-exception v8

    .line 2575
    .local v8, "e":Ljava/lang/AssertionError;
    const-string v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bind to KeyChain service userHandle : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 2586
    .end local v8    # "e":Ljava/lang/AssertionError;
    :cond_b1
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v15

    .line 2587
    .local v15, "ownerName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 2588
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2589
    .local v7, "contentText":Ljava/lang/String;
    const v16, 0x1080783

    .line 2598
    .local v16, "smallIconId":I
    :goto_d7
    new-instance v3, Landroid/content/Intent;

    const-string v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2599
    .local v3, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2601
    const-string v1, "com.android.settings"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2602
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 2607
    .local v14, "notifyIntent":Landroid/app/PendingIntent;
    :try_start_f9
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_107
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f9 .. :try_end_107} :catch_18c

    move-result-object v17

    .line 2612
    .local v17, "userContext":Landroid/content/Context;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10400f8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1060059

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 2623
    .local v13, "noti":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;

    move-result-object v1

    const/4 v2, 0x0

    const v4, 0x10400f8

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v4, v13, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_1c

    .line 2590
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v13    # "noti":Landroid/app/Notification;
    .end local v14    # "notifyIntent":Landroid/app/PendingIntent;
    .end local v16    # "smallIconId":I
    .end local v17    # "userContext":Landroid/content/Context;
    :cond_160
    if-eqz v15, :cond_17a

    .line 2591
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400fb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2592
    .restart local v7    # "contentText":Ljava/lang/String;
    const v16, 0x1080783

    .restart local v16    # "smallIconId":I
    goto/16 :goto_d7

    .line 2594
    .end local v7    # "contentText":Ljava/lang/String;
    .end local v16    # "smallIconId":I
    :cond_17a
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2595
    .restart local v7    # "contentText":Ljava/lang/String;
    const v16, 0x108008a

    .restart local v16    # "smallIconId":I
    goto/16 :goto_d7

    .line 2608
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v14    # "notifyIntent":Landroid/app/PendingIntent;
    :catch_18c
    move-exception v8

    .line 2609
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create context as "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2522
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .registers 8
    .param p1, "params"    # [Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 2525
    const/4 v3, 0x0

    aget-object v3, p1, v3

    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2527
    .local v1, "userHandle":I
    if-ne v1, v5, :cond_2c

    .line 2528
    iget-object v3, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2529
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, v3}, manageNotification(Landroid/os/UserHandle;)V

    goto :goto_18

    .line 2532
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2c
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v3}, manageNotification(Landroid/os/UserHandle;)V

    .line 2534
    :cond_34
    const/4 v3, 0x0

    return-object v3
.end method
