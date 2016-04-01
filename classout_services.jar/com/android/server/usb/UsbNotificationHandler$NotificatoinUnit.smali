.class Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
.super Ljava/lang/Object;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificatoinUnit"
.end annotation


# instance fields
.field private mCurrentNofication:Z

.field private final mDismissable:Z

.field private mExpandedIcon1:I

.field private mExpandedIcon2:I

.field private mExpandedIntent1:Landroid/app/PendingIntent;

.field private mExpandedIntent2:Landroid/app/PendingIntent;

.field private mExpandedTitleId1:I

.field private mExpandedTitleId2:I

.field private final mIcon:I

.field private final mId:I

.field private final mMessageId:I

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mStayNofiBar:Z

.field private final mTitleId:I

.field private final mVisible:Z

.field private final mszId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbNotificationHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbNotificationHandler;IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V
    .registers 16
    .param p2, "titleId"    # I
    .param p3, "messageId"    # I
    .param p4, "icon"    # I
    .param p5, "visible"    # Z
    .param p6, "dismissable"    # Z
    .param p7, "expandedIntent1"    # Landroid/app/PendingIntent;
    .param p8, "expandedIntent2"    # Landroid/app/PendingIntent;
    .param p9, "expandedTitleId1"    # I
    .param p10, "expandedTitleId2"    # I
    .param p11, "expandedIcon1"    # I
    .param p12, "expandedIcon2"    # I
    .param p13, "bstay"    # Z
    .param p14, "device"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbNotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, mCurrentNofication:Z

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, mExpandedIntent1:Landroid/app/PendingIntent;

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, mExpandedIntent2:Landroid/app/PendingIntent;

    .line 358
    const/4 v0, 0x0

    iput v0, p0, mExpandedTitleId1:I

    .line 359
    const/4 v0, 0x0

    iput v0, p0, mExpandedTitleId2:I

    .line 360
    const/4 v0, 0x0

    iput v0, p0, mExpandedIcon1:I

    .line 361
    const/4 v0, 0x0

    iput v0, p0, mExpandedIcon2:I

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 370
    iput p2, p0, mTitleId:I

    .line 371
    iput p3, p0, mMessageId:I

    .line 372
    iput p4, p0, mIcon:I

    .line 373
    iput-boolean p5, p0, mVisible:Z

    .line 374
    iput-boolean p6, p0, mDismissable:Z

    .line 375
    iput-object p14, p0, mszId:Ljava/lang/String;

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, mCurrentNofication:Z

    .line 377
    iget-object v0, p0, mszId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, mId:I

    .line 378
    iput-boolean p13, p0, mStayNofiBar:Z

    .line 380
    iput-object p7, p0, mExpandedIntent1:Landroid/app/PendingIntent;

    .line 381
    iput-object p8, p0, mExpandedIntent2:Landroid/app/PendingIntent;

    .line 382
    iput p9, p0, mExpandedTitleId1:I

    .line 383
    iput p10, p0, mExpandedTitleId2:I

    .line 384
    iput p11, p0, mExpandedIcon1:I

    .line 385
    iput p12, p0, mExpandedIcon2:I

    .line 386
    return-void
.end method

.method private declared-synchronized setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V
    .registers 27
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "visible"    # Z
    .param p5, "dismissable"    # Z
    .param p6, "expandedIntent1"    # Landroid/app/PendingIntent;
    .param p7, "expandedIntent2"    # Landroid/app/PendingIntent;
    .param p8, "expandedTitleId1"    # I
    .param p9, "expandedTitleId2"    # I
    .param p10, "expandedIcon1"    # I
    .param p11, "expandedIcon2"    # I
    .param p12, "device"    # Ljava/lang/String;

    .prologue
    .line 426
    monitor-enter p0

    if-nez p4, :cond_9

    :try_start_3
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_157

    if-nez v10, :cond_9

    .line 514
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 430
    :cond_9
    :try_start_9
    iget-object v10, p0, this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/usb/UsbNotificationHandler;->access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 432
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v5, :cond_7

    .line 436
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz v10, :cond_53

    if-eqz p4, :cond_53

    .line 442
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 443
    .local v4, "notificationId":I
    iget-object v10, p0, this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v10, v4, v11}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 450
    .end local v4    # "notificationId":I
    :cond_53
    if-eqz p4, :cond_df

    .line 451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 452
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 453
    .local v9, "title":Ljava/lang/CharSequence;
    if-nez p2, :cond_15a

    .line 454
    new-instance v2, Ljava/lang/String;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 460
    .local v2, "message":Ljava/lang/CharSequence;
    :goto_66
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/usb/UsbNotificationHandler;->access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 461
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 464
    if-eqz p5, :cond_162

    .line 465
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 466
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 472
    :goto_88
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 473
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 474
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 476
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 477
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 478
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 479
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, -0x2

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 481
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 483
    if-eqz p6, :cond_170

    if-eqz p7, :cond_170

    .line 484
    const/4 v7, 0x0

    .line 485
    .local v7, "subtitle1":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 487
    .local v8, "subtitle2":Ljava/lang/CharSequence;
    if-eqz p8, :cond_c5

    .line 488
    move/from16 v0, p8

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 491
    :cond_c5
    if-eqz p9, :cond_cd

    .line 492
    move/from16 v0, p9

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 494
    :cond_cd
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p10

    move-object/from16 v1, p6

    invoke-virtual {v10, v0, v7, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 495
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p11

    move-object/from16 v1, p7

    invoke-virtual {v10, v0, v8, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 506
    .end local v2    # "message":Ljava/lang/CharSequence;
    .end local v6    # "r":Landroid/content/res/Resources;
    .end local v7    # "subtitle1":Ljava/lang/CharSequence;
    .end local v8    # "subtitle2":Ljava/lang/CharSequence;
    .end local v9    # "title":Ljava/lang/CharSequence;
    :cond_df
    :goto_df
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 507
    .restart local v4    # "notificationId":I
    iget-object v10, p0, this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setUsbObserverNotification : cancel id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v10, v4, v11}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 509
    if-eqz p4, :cond_7

    .line 510
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 511
    .local v3, "noti":Landroid/app/Notification;
    iget-object v10, p0, this$0:Lcom/android/server/usb/UsbNotificationHandler;

    # getter for: Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/usb/UsbNotificationHandler;->access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setUsbObserverNotification : notify id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", device = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", title = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v10, v4, v3, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_155
    .catchall {:try_start_9 .. :try_end_155} :catchall_157

    goto/16 :goto_7

    .line 426
    .end local v3    # "noti":Landroid/app/Notification;
    .end local v4    # "notificationId":I
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_157
    move-exception v10

    monitor-exit p0

    throw v10

    .line 456
    .restart local v5    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v6    # "r":Landroid/content/res/Resources;
    .restart local v9    # "title":Ljava/lang/CharSequence;
    :cond_15a
    :try_start_15a
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_66

    .line 468
    :cond_162
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 469
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_88

    .line 496
    :cond_170
    if-eqz p6, :cond_17b

    .line 497
    iget-object v10, p0, mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_179
    .catchall {:try_start_15a .. :try_end_179} :catchall_157

    goto/16 :goto_df

    .line 498
    :cond_17b
    if-nez p6, :cond_df

    goto/16 :goto_df
.end method


# virtual methods
.method public clearNotification()V
    .registers 14

    .prologue
    .line 406
    iget v1, p0, mTitleId:I

    iget v2, p0, mMessageId:I

    iget v3, p0, mIcon:I

    const/4 v4, 0x0

    iget-boolean v5, p0, mDismissable:Z

    iget-object v6, p0, mExpandedIntent1:Landroid/app/PendingIntent;

    iget-object v7, p0, mExpandedIntent2:Landroid/app/PendingIntent;

    iget v8, p0, mExpandedTitleId1:I

    iget v9, p0, mExpandedTitleId2:I

    iget v10, p0, mExpandedIcon1:I

    iget v11, p0, mExpandedIcon2:I

    iget-object v12, p0, mszId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V

    .line 409
    return-void
.end method

.method public getNotificationStayed()Z
    .registers 2

    .prologue
    .line 392
    iget-boolean v0, p0, mStayNofiBar:Z

    return v0
.end method

.method public getStringId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, mszId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 396
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 397
    .local v0, "r":Landroid/content/res/Resources;
    iget v1, p0, mTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setNotificationStayed(Z)V
    .registers 2
    .param p1, "stay"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, mStayNofiBar:Z

    .line 390
    return-void
.end method

.method public setObserverNotification()V
    .registers 14

    .prologue
    .line 412
    iget v1, p0, mTitleId:I

    iget v2, p0, mMessageId:I

    iget v3, p0, mIcon:I

    const/4 v4, 0x1

    iget-boolean v5, p0, mDismissable:Z

    iget-object v6, p0, mExpandedIntent1:Landroid/app/PendingIntent;

    iget-object v7, p0, mExpandedIntent2:Landroid/app/PendingIntent;

    iget v8, p0, mExpandedTitleId1:I

    iget v9, p0, mExpandedTitleId2:I

    iget v10, p0, mExpandedIcon1:I

    iget v11, p0, mExpandedIcon2:I

    iget-object v12, p0, mszId:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, setUsbObserverNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIILjava/lang/String;)V

    .line 415
    return-void
.end method
