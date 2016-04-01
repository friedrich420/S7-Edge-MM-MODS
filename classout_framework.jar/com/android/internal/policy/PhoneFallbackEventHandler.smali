.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final LONG_PRESS_LAUNCH:I

.field private final NO_LAUNCH:I

.field private final SHORT_PRESS_LAUNCH:I

.field private final SocialActivity:Ljava/lang/String;

.field private final SocialPackage:Ljava/lang/String;

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLaunchType:I

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;

.field mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 55
    const-string v1, "PhoneFallbackEventHandler"

    sput-object v1, TAG:Ljava/lang/String;

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_c

    const/4 v0, 0x0

    :cond_c
    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v1, p0, NO_LAUNCH:I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, SHORT_PRESS_LAUNCH:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, LONG_PRESS_LAUNCH:I

    .line 73
    iput v1, p0, mLaunchType:I

    .line 77
    const-string v0, "com.sec.android.app.socialpage"

    iput-object v0, p0, SocialPackage:Ljava/lang/String;

    .line 78
    const-string v0, "com.sec.android.app.socialpage.SocialSetActivity"

    iput-object v0, p0, SocialActivity:Ljava/lang/String;

    .line 81
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private checkLaunchSetting()I
    .registers 5

    .prologue
    .line 716
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 717
    .local v0, "state":I
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_29

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_29
    return v0
.end method

.method private getZoomKeyController()Lcom/android/internal/policy/samsung/ZoomKeyController;
    .registers 3

    .prologue
    .line 723
    iget-object v0, p0, mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    if-nez v0, :cond_d

    .line 724
    new-instance v0, Lcom/android/internal/policy/samsung/ZoomKeyController;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/samsung/ZoomKeyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    .line 726
    :cond_d
    iget-object v0, p0, mZoomKeyController:Lcom/android/internal/policy/samsung/ZoomKeyController;

    return-object v0
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 582
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 583
    return-void
.end method

.method private isUserSetupComplete()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private launchAppActivity(Landroid/content/Intent;Z)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isSupportBCM"    # Z

    .prologue
    const/4 v5, 0x0

    .line 677
    if-eqz p2, :cond_50

    .line 678
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 679
    invoke-direct {p0}, checkLaunchSetting()I

    move-result v3

    if-eqz v3, :cond_42

    .line 680
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, v5, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 681
    .local v2, "pendIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 682
    .local v1, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-nez v3, :cond_33

    .line 683
    const-string v3, "dismissIfInsecure"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    const-string v3, "afterKeyguardGone"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 686
    :cond_33
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/app/KeyguardManager;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 687
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "The pendingIntent sent to keyguard"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "pendIntent":Landroid/app/PendingIntent;
    :goto_41
    return-void

    .line 690
    :cond_42
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "it is blocked to launch app by setting value"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 693
    :cond_4a
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    goto :goto_41

    .line 697
    :cond_50
    :try_start_50
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_67

    move-result v3

    if-eqz v3, :cond_6c

    .line 700
    :try_start_5a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_61} :catch_72
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_67

    .line 704
    :goto_61
    :try_start_61
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_67

    goto :goto_41

    .line 709
    :catch_67
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6c
    :try_start_6c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_71} :catch_67

    goto :goto_41

    .line 702
    :catch_72
    move-exception v3

    goto :goto_61
.end method

.method private launchCameraApp()V
    .registers 7

    .prologue
    .line 487
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.camera"

    const-string v5, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .local v0, "CString":Landroid/content/ComponentName;
    const-string v4, "isSecure"

    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 492
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 493
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 496
    const v4, 0x24001000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    :goto_3a
    :try_start_3a
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4a

    .line 503
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4a} :catch_68

    .line 509
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_4f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4a .. :try_end_4f} :catch_5f

    .line 514
    :goto_4f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 515
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_58

    .line 516
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 518
    :cond_58
    return-void

    .line 498
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_59
    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3a

    .line 510
    :catch_5f
    move-exception v1

    .line 511
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "No activity to launch Camera."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 505
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_68
    move-exception v4

    goto :goto_4a
.end method

.method private launchUserDefinedApp(I)Z
    .registers 14
    .param p1, "mode"    # I

    .prologue
    .line 593
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v9

    if-nez v9, :cond_f

    .line 594
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "Not lauching User defined app because user setup is in progress."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v9, 0x0

    .line 673
    :goto_e
    return v9

    .line 598
    :cond_f
    const/4 v6, 0x0

    .line 599
    .local v6, "launch_app":Ljava/lang/String;
    const/4 v7, 0x0

    .line 600
    .local v7, "package_index":I
    const/4 v8, 0x0

    .line 601
    .local v8, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 603
    .local v0, "activity_name":Ljava/lang/String;
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 604
    .local v2, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v3, -0x1

    .line 605
    .local v3, "emMode":I
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportBatteryConversingMode()Z

    move-result v5

    .line 607
    .local v5, "isSupportBCM":Z
    if-eqz v5, :cond_3d

    .line 608
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v3

    .line 609
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "now mode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_3d
    packed-switch p1, :pswitch_data_108

    .line 636
    :goto_40
    :try_start_40
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_5c

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "launch for userkey launch_app = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_5c
    if-eqz v6, :cond_bf

    .line 638
    const/16 v9, 0x2f

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 639
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 640
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_73} :catch_cc

    move-result-object v0

    .line 656
    :goto_74
    if-eqz v8, :cond_7e

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dd

    .line 657
    :cond_7e
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_89

    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "None pkg name"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_89
    const/4 v9, 0x0

    goto :goto_e

    .line 614
    :pswitch_8b
    const/4 v9, 0x1

    goto :goto_e

    .line 617
    :pswitch_8d
    const/4 v9, 0x2

    if-ne v3, v9, :cond_9e

    .line 618
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app_battery_conserve"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_40

    .line 621
    :cond_9e
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 624
    goto :goto_40

    .line 627
    :pswitch_ac
    const/4 v9, 0x2

    if-ne v3, v9, :cond_b2

    .line 628
    const/4 v9, 0x1

    goto/16 :goto_e

    .line 630
    :cond_b2
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "long_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_40

    .line 643
    :cond_bf
    :try_start_bf
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "set package info for launching PTT app(Korea National Emergency Network)"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v8, "com.sec.ptt"

    .line 646
    const-string v0, "com.sec.ptt.call.activities.callMainActivity"
    :try_end_cb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bf .. :try_end_cb} :catch_cc

    goto :goto_74

    .line 649
    :catch_cc
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_d8

    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "There is no launch app!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_d8
    const/4 v8, 0x0

    .line 652
    const/4 v0, 0x0

    .line 653
    const/4 v9, 0x0

    goto/16 :goto_e

    .line 660
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_dd
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v4, "i":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const/high16 v9, 0x10200000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 664
    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    :try_start_f1
    invoke-virtual {p0}, sendCloseSystemWindows()V

    .line 667
    invoke-direct {p0, v4, v5}, launchAppActivity(Landroid/content/Intent;Z)V
    :try_end_f7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f1 .. :try_end_f7} :catch_fa

    .line 673
    :cond_f7
    :goto_f7
    const/4 v9, 0x1

    goto/16 :goto_e

    .line 668
    :catch_fa
    move-exception v1

    .line 669
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_f7

    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "Activity to be assigned by the key is not found."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 612
    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_8d
        :pswitch_ac
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 95
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 106
    .local v1, "keyCode":I
    if-nez v0, :cond_f

    .line 107
    invoke-virtual {p0, v1, p1}, onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 109
    :goto_e
    return v2

    :cond_f
    invoke-virtual {p0, v1, p1}, onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_e
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 571
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 572
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    .line 574
    :cond_10
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 565
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 567
    :cond_10
    iget-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .prologue
    .line 549
    iget-object v0, p0, mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_11

    .line 550
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, mSearchManager:Landroid/app/SearchManager;

    .line 552
    :cond_11
    iget-object v0, p0, mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 556
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    .line 557
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 560
    :cond_11
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 118
    iget-object v6, p0, mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 120
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_224

    :cond_e
    :goto_e
    move v4, v5

    .line 342
    :cond_f
    :goto_f
    return v4

    .line 124
    :sswitch_10
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_f

    .line 133
    :sswitch_1a
    invoke-virtual {p0}, getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_f

    .line 139
    :sswitch_24
    const/16 v5, 0x4f

    if-ne p1, v5, :cond_36

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 141
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 152
    :cond_36
    :sswitch_36
    invoke-direct {p0, p2}, handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_f

    .line 157
    :sswitch_3a
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_e

    if-eqz v1, :cond_e

    .line 160
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_50

    .line 161
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_f

    .line 162
    :cond_50
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 163
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 164
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 165
    iget-object v6, p0, mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 167
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    :try_start_74
    invoke-virtual {p0}, sendCloseSystemWindows()V

    .line 171
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_7c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_74 .. :try_end_7c} :catch_7d

    goto :goto_f

    .line 172
    :catch_7d
    move-exception v2

    .line 173
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, startCallActivity()V

    goto :goto_f

    .line 176
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_82
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "Not starting call activity because user setup is in progress."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 186
    :sswitch_8a
    if-nez v1, :cond_99

    .line 187
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_e

    sget-object v4, TAG:Ljava/lang/String;

    const-string v6, "Camera key is blocked by policy or dispatcher is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 191
    :cond_99
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_af

    .line 192
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_aa

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "Camera key start Tracking"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_aa
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 194
    :cond_af
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto/16 :goto_f

    .line 220
    :sswitch_bd
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_e

    if-eqz v1, :cond_e

    .line 223
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_d4

    .line 224
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 225
    :cond_d4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 226
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 227
    .local v0, "config":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v4, :cond_f2

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v7, :cond_e

    .line 229
    :cond_f2
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 231
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    :try_start_102
    iget-object v6, p0, mView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 235
    invoke-virtual {p0}, sendCloseSystemWindows()V

    .line 236
    invoke-virtual {p0}, getSearchManager()Landroid/app/SearchManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/SearchManager;->stopSearch()V

    .line 237
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V

    .line 241
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_11a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_102 .. :try_end_11a} :catch_11c

    goto/16 :goto_f

    .line 243
    :catch_11c
    move-exception v4

    goto/16 :goto_e

    .line 247
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_11f
    sget-object v4, TAG:Ljava/lang/String;

    const-string v6, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 257
    .end local v0    # "config":Landroid/content/res/Configuration;
    :sswitch_128
    if-eqz v1, :cond_e

    .line 261
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_16f

    .line 262
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 263
    iput v4, p0, mLaunchType:I

    .line 271
    :cond_135
    :goto_135
    iget v6, p0, mLaunchType:I

    if-ne v6, v7, :cond_f

    .line 272
    iget v6, p0, mLaunchType:I

    invoke-direct {p0, v6}, launchUserDefinedApp(I)Z

    move-result v6

    if-nez v6, :cond_16b

    .line 273
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_14c

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "There are no apps defined by the user key"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_14c
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_197

    .line 276
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    const-string v6, "com.sec.android.app.popupuireceiver"

    const-string v7, "com.sec.android.app.popupuireceiver.popupCustomizeKey"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    :try_start_163
    invoke-virtual {p0}, sendCloseSystemWindows()V

    .line 282
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_16b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_163 .. :try_end_16b} :catch_189

    .line 291
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_16b
    :goto_16b
    iput v5, p0, mLaunchType:I

    goto/16 :goto_f

    .line 264
    :cond_16f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_135

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_135

    .line 265
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 266
    iget-object v6, p0, mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 267
    invoke-virtual {p0}, sendCloseSystemWindows()V

    .line 268
    iput v7, p0, mLaunchType:I

    goto :goto_135

    .line 283
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_189
    move-exception v2

    .line 284
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_16b

    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "popupuireceiver is not found."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16b

    .line 287
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_197
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Not dispatching Active Key long press because user setup is in progress."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16b

    .line 299
    :sswitch_19f
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_e

    if-eqz v1, :cond_e

    .line 303
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_1b6

    .line 304
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 305
    :cond_1b6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 306
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 307
    iget-object v6, p0, mView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 308
    invoke-virtual {p0}, sendCloseSystemWindows()V

    .line 310
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_1dc

    .line 312
    const-string v5, "com.sec.android.app.socialpage"

    const-string v6, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v5, v6}, startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 314
    :cond_1dc
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "Not dispatching APPSELECT Key long press because user setup is in progress."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 322
    :sswitch_1e5
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v6

    if-nez v6, :cond_1f4

    .line 323
    sget-object v4, TAG:Ljava/lang/String;

    const-string v6, "Not dispatching KEYCODE_BUTTON_GAME Key press because user setup is in progress."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 328
    :cond_1f4
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_e

    if-eqz v1, :cond_e

    .line 332
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_20b

    .line 333
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 334
    :cond_20b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 335
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 336
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "no action about game button longpressed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 120
    :sswitch_data_224
    .sparse-switch
        0x5 -> :sswitch_3a
        0x18 -> :sswitch_10
        0x19 -> :sswitch_10
        0x1b -> :sswitch_8a
        0x4f -> :sswitch_24
        0x54 -> :sswitch_bd
        0x55 -> :sswitch_1a
        0x56 -> :sswitch_36
        0x57 -> :sswitch_36
        0x58 -> :sswitch_36
        0x59 -> :sswitch_36
        0x5a -> :sswitch_36
        0x5b -> :sswitch_24
        0x7e -> :sswitch_1a
        0x7f -> :sswitch_1a
        0x82 -> :sswitch_36
        0xa4 -> :sswitch_10
        0xde -> :sswitch_36
        0x3f7 -> :sswitch_128
        0x41a -> :sswitch_1e5
        0x431 -> :sswitch_19f
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 15
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 346
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_1f

    .line 347
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "up "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1f
    iget-object v9, p0, mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 350
    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2a

    .line 351
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 354
    :cond_2a
    sparse-switch p1, :sswitch_data_1ac

    :cond_2d
    :goto_2d
    move v7, v8

    .line 483
    :cond_2e
    :goto_2e
    return v7

    .line 358
    :sswitch_2f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_2e

    .line 359
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v9

    invoke-virtual {v9, p2, v8}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_2e

    .line 366
    :sswitch_3f
    const/16 v8, 0x4f

    if-ne p1, v8, :cond_51

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 368
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 383
    :cond_51
    :sswitch_51
    invoke-direct {p0, p2}, handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_2e

    .line 388
    :sswitch_55
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_83

    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Camera key event.isTracking() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " event.isCanceled() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_83
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 391
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 392
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_a0

    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "launch camera"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_a0
    invoke-virtual {p0}, sendCloseSystemWindows()V

    .line 394
    invoke-direct {p0}, launchCameraApp()V

    goto :goto_2e

    .line 396
    :cond_a7
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "Not starting Camera activity because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 404
    :sswitch_af
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 407
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 408
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 409
    invoke-virtual {p0}, startCallActivity()V

    goto/16 :goto_2e

    .line 411
    :cond_d0
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "Not starting call activity because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 420
    :sswitch_d9
    iget v9, p0, mLaunchType:I

    if-ne v9, v7, :cond_2e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_2e

    .line 421
    iget v9, p0, mLaunchType:I

    invoke-direct {p0, v9}, launchUserDefinedApp(I)Z

    move-result v9

    if-nez v9, :cond_f6

    .line 422
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_f6

    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "There are no apps defined by the user key"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_f6
    iput v8, p0, mLaunchType:I

    goto/16 :goto_2e

    .line 432
    :sswitch_fa
    invoke-virtual {p0}, getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 436
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_2e

    .line 438
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "short_press_app"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "launch_app":Ljava/lang/String;
    const/4 v6, 0x0

    .line 440
    .local v6, "package_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 441
    .local v0, "activity_name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 443
    .local v5, "package_index":I
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_13c

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "app select short pressed!! app = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_13c
    if-eqz v3, :cond_164

    .line 447
    const/16 v9, 0x2f

    const/4 v10, 0x0

    :try_start_141
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 448
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 449
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_153
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_141 .. :try_end_153} :catch_15f

    move-result-object v0

    .line 461
    :goto_154
    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v8

    if-eqz v8, :cond_174

    .line 462
    invoke-virtual {p0, v6, v0}, startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 450
    :catch_15f
    move-exception v2

    .line 451
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v6, 0x0

    .line 452
    const/4 v0, 0x0

    .line 453
    goto/16 :goto_2d

    .line 456
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_164
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_16f

    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "There is no app that is selected so setting app will be launched"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_16f
    const-string v6, "com.sec.android.app.socialpage"

    .line 458
    const-string v0, "com.sec.android.app.socialpage.SocialSetActivity"

    goto :goto_154

    .line 464
    :cond_174
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "Not dispatching APPSELECT Key short press because user setup is in progress."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 472
    .end local v0    # "activity_name":Ljava/lang/String;
    .end local v3    # "launch_app":Ljava/lang/String;
    .end local v5    # "package_index":I
    .end local v6    # "package_name":Ljava/lang/String;
    :sswitch_17d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 473
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.BUTTON_GAME"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v4, "notifyGameButton":Landroid/content/Intent;
    const-string v8, "deviceName"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "Send BR for game button"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 354
    nop

    :sswitch_data_1ac
    .sparse-switch
        0x5 -> :sswitch_af
        0x18 -> :sswitch_2f
        0x19 -> :sswitch_2f
        0x1b -> :sswitch_55
        0x4f -> :sswitch_3f
        0x55 -> :sswitch_51
        0x56 -> :sswitch_51
        0x57 -> :sswitch_51
        0x58 -> :sswitch_51
        0x59 -> :sswitch_51
        0x5a -> :sswitch_51
        0x5b -> :sswitch_51
        0x7e -> :sswitch_51
        0x7f -> :sswitch_51
        0x82 -> :sswitch_51
        0xa4 -> :sswitch_2f
        0xde -> :sswitch_51
        0x3f7 -> :sswitch_d9
        0x41a -> :sswitch_17d
        0x431 -> :sswitch_fa
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    invoke-virtual {p0}, getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 90
    return-void
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 578
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iput-object p1, p0, mView:Landroid/view/View;

    .line 86
    return-void
.end method

.method startCallActivity()V
    .registers 5

    .prologue
    .line 538
    invoke-virtual {p0}, sendCloseSystemWindows()V

    .line 539
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 542
    :try_start_f
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_14} :catch_15

    .line 546
    :goto_14
    return-void

    .line 543
    :catch_15
    move-exception v0

    .line 544
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "package_name"    # Ljava/lang/String;
    .param p2, "activity_name"    # Ljava/lang/String;

    .prologue
    .line 521
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 525
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    :try_start_14
    invoke-virtual {p0}, sendCloseSystemWindows()V

    .line 529
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivityForKey(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 535
    :cond_1c
    :goto_1c
    return-void

    .line 530
    :catch_1d
    move-exception v0

    .line 531
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_3a

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_3a
    const-string v2, "com.sec.android.app.socialpage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 533
    const-string v2, "com.sec.android.app.socialpage"

    const-string v3, "com.sec.android.app.socialpage.SocialSetActivity"

    invoke-virtual {p0, v2, v3}, startSocialActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method
