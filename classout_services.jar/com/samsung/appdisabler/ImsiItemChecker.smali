.class public Lcom/samsung/appdisabler/ImsiItemChecker;
.super Ljava/lang/Thread;
.source "ImsiItemChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;,
        Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;,
        Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    }
.end annotation


# static fields
.field private static final APK_CLASS_NAME:Ljava/lang/String; = "com.samsung.appdisabler.app.AppHideService"

.field private static final APK_VERSION_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.appdisabler.app"

.field protected static final CUSTOM_XML_FILE:Ljava/lang/String; = "/system/csc/appDisablerList.xml"

.field protected static final ERROR_HEADER:Ljava/lang/String; = "There is critical error in /system/csc/appDisablerList.xml configuration file, please check bellow message and fix before releasing PDA/CSC!\n\n\n"

.field private static final MSG_CHECK_FINISH_LOOPER:I = 0x70

.field private static final MSG_CHECK_TIMEOUT:I = 0x6f

.field private static final MSG_SHOW_DIALOG:I = 0xc9


# instance fields
.field private CHECK_DELAY_IN_MS:I

.field private mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

.field private mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

.field private mContext:Landroid/content/Context;

.field private mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

.field private mCurrentImsiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/appdisabler/ImsiItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNetworkNumeric:Ljava/lang/String;

.field private mIsImsiNumericBase:Z

.field private mIsNetworkNumeric:Z

.field private mIsSimGid:Z

.field private mIsSimNumeric:Z

.field private mIsSimSpn:Z

.field private mShowPackage:Z

.field private mSimGid:Ljava/lang/String;

.field private mSimImsiNumericBase:Ljava/lang/String;

.field private mSimNumeric:Ljava/lang/String;

.field private mSimSpn:Ljava/lang/String;

.field private mStartTimeInMiliseconds:J

.field private mTimeoutOffset:J

.field private packageManager:Landroid/content/pm/PackageManager;

.field private phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingObject"    # Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mStartTimeInMiliseconds:J

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, mShowPackage:Z

    .line 97
    const/16 v0, 0x1f4

    iput v0, p0, CHECK_DELAY_IN_MS:I

    .line 122
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    .line 124
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, packageManager:Landroid/content/pm/PackageManager;

    .line 125
    iput-object p2, p0, mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    .line 126
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 51
    invoke-direct {p0}, hideAppAfterTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 51
    iget-object v0, p0, mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/appdisabler/ImsiItemChecker;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/appdisabler/ImsiItemChecker;)Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 51
    iget-object v0, p0, mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/appdisabler/ImsiItemChecker;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/appdisabler/ImsiItemChecker;

    .prologue
    .line 51
    invoke-direct {p0}, receiveNetworkNumericFromDevice()V

    return-void
.end method

.method private changeAppVisibility(Ljava/util/Set;ZZ)V
    .registers 14
    .param p2, "show"    # Z
    .param p3, "addShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 555
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 556
    .local v3, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeAppVisibility, package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " show: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 557
    new-instance v4, Lcom/samsung/appdisabler/ShortcutHandler;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/appdisabler/ShortcutHandler;-><init>(Landroid/content/Context;)V

    .line 559
    .local v4, "shortcutHandler":Lcom/samsung/appdisabler/ShortcutHandler;
    :try_start_39
    iget-object v5, p0, packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 560
    .local v0, "currentState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state of application: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 562
    if-eqz p2, :cond_91

    .line 563
    if-ne v0, v9, :cond_6

    .line 564
    const-string v5, "Enabling application"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 565
    iget-object v5, p0, packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 567
    iget-object v5, p0, packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 569
    if-eqz p3, :cond_6

    .line 570
    invoke-virtual {v4, v3}, Lcom/samsung/appdisabler/ShortcutHandler;->addShortcut(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_71} :catch_72

    goto :goto_6

    .line 582
    .end local v0    # "currentState":I
    :catch_72
    move-exception v1

    .line 584
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException, package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 574
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "currentState":I
    :cond_91
    if-eq v0, v8, :cond_95

    if-nez v0, :cond_6

    .line 576
    :cond_95
    :try_start_95
    const-string v5, "Disabling application"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 577
    iget-object v5, p0, packageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 579
    invoke-virtual {v4, v3}, Lcom/samsung/appdisabler/ShortcutHandler;->uninstallShort(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_a4} :catch_72

    goto/16 :goto_6

    .line 588
    .end local v0    # "currentState":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "shortcutHandler":Lcom/samsung/appdisabler/ShortcutHandler;
    :cond_a6
    const-string v5, "-------------- End checking imsi item --------------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method private checkSimState()V
    .registers 5

    .prologue
    .line 491
    iget-object v1, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 492
    .local v0, "simState":I
    packed-switch v0, :pswitch_data_74

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported SIM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 539
    :goto_20
    return-void

    .line 495
    :pswitch_21
    const-string v1, "SIM_STATE_READY"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, startTimeMeasuring()V

    .line 497
    invoke-direct {p0}, receiveInfoFromSim()V

    goto :goto_20

    .line 504
    :pswitch_2d
    invoke-direct {p0}, startTimeMeasuring()V

    .line 511
    :pswitch_30
    const-string v1, "SIM_STATE_PIN_REQUIRED || SIM_STATE_PUK_REQUIRED"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 514
    invoke-direct {p0}, startTimeMeasuring()V

    goto :goto_20

    .line 517
    :cond_41
    const-string/jumbo v1, "reset timer"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 518
    const-wide/16 v2, -0x1

    iput-wide v2, p0, mStartTimeInMiliseconds:J

    goto :goto_20

    .line 523
    :pswitch_4c
    invoke-direct {p0}, isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-direct {p0}, isBootComplete()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 525
    const-string v1, "SIM_STATE_ABSENT, wait for device boot"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    goto :goto_20

    .line 526
    :cond_5e
    invoke-direct {p0}, isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 527
    const-string v1, "SIM_STATE_ABSENT"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 529
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mStartTimeInMiliseconds:J

    goto :goto_20

    .line 532
    :cond_6e
    const-string v1, "SIM_STATE_ABSENT, wait for setup end"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto :goto_20

    .line 492
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_4c
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_21
    .end packed-switch
.end method

.method private displayImsiItems()V
    .registers 9

    .prologue
    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout_in_seconds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mTimeoutOffset:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, mCurrentImsiList:Ljava/util/List;

    if-eqz v2, :cond_3a

    .line 655
    iget-object v2, p0, mCurrentImsiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/appdisabler/ImsiItem;

    .line 656
    .local v1, "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    invoke-virtual {v1}, Lcom/samsung/appdisabler/ImsiItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_26

    .line 659
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    :cond_3a
    const-string/jumbo v2, "imsiList = null"

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 661
    :cond_40
    return-void
.end method

.method private hideAppAfterTimeout()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItem;->isHideAfterTimeout()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 481
    iget-object v0, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v0}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, changeAppVisibility(Ljava/util/Set;ZZ)V

    .line 485
    :goto_12
    return-void

    .line 483
    :cond_13
    const-string v0, "-------------- End checking imsi item --------------"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 752
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_17

    .line 754
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_15

    .line 758
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 754
    goto :goto_14

    .line 758
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_14

    move v0, v1

    goto :goto_14
.end method

.method private isBootComplete()Z
    .registers 4

    .prologue
    .line 763
    const-string/jumbo v1, "dev.bootcomplete"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "boot":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 765
    const/4 v1, 0x1

    .line 768
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private isDeviceProvisioned()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 819
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private isDualSim()Z
    .registers 5

    .prologue
    .line 721
    const-string/jumbo v0, "none"

    .line 723
    .local v0, "defValue":Ljava/lang/String;
    const-string/jumbo v2, "gsm.sim.state_1"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "simState":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 727
    const/4 v2, 0x0

    .line 729
    :goto_28
    return v2

    :cond_29
    const/4 v2, 0x1

    goto :goto_28
.end method

.method private isNetworkDataValidate()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 342
    iget-boolean v4, p0, mIsNetworkNumeric:Z

    if-eqz v4, :cond_4b

    .line 344
    iget-object v4, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v4}, Lcom/samsung/appdisabler/ImsiItem;->getNetworkNumeric()Ljava/util/List;

    move-result-object v2

    .line 345
    .local v2, "networkNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    .local v1, "networkNumericFromXml":Ljava/lang/String;
    iget-object v4, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network numeric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " equal XML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". PASS!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 354
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "networkNumericFromXml":Ljava/lang/String;
    .end local v2    # "networkNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4b
    :goto_4b
    return v3

    .line 351
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "networkNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network numeric: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " different than XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". FAIL!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 352
    const/4 v3, 0x0

    goto :goto_4b
.end method

.method private isSimDataValidate()Z
    .registers 16

    .prologue
    .line 263
    const/4 v9, 0x1

    .line 265
    .local v9, "validationResult":Z
    iget-boolean v12, p0, mIsSimNumeric:Z

    if-eqz v12, :cond_79

    .line 266
    const/4 v9, 0x0

    .line 267
    iget-object v12, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v12}, Lcom/samsung/appdisabler/ImsiItem;->getSimNumeric()Ljava/util/List;

    move-result-object v6

    .line 268
    .local v6, "simNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 269
    .local v5, "simNumericFromXml":Ljava/lang/String;
    iget-object v12, p0, mSimNumeric:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 270
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIM numeric: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSimNumeric:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " equal XML: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". PASS!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 271
    const/4 v9, 0x1

    .line 275
    .end local v5    # "simNumericFromXml":Ljava/lang/String;
    :cond_4d
    if-nez v9, :cond_79

    .line 276
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIM numeric: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSimNumeric:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " different than XML: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". FAIL!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 277
    const/4 v12, 0x0

    .line 333
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "simNumericListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_78
    return v12

    .line 280
    :cond_79
    iget-boolean v12, p0, mIsImsiNumericBase:Z

    if-eqz v12, :cond_b7

    .line 281
    iget-object v12, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v12}, Lcom/samsung/appdisabler/ImsiItem;->getImsiNumericBase()Ljava/util/List;

    move-result-object v3

    .line 282
    .local v3, "mImsiNumericBaseFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/appdisabler/ImsiNumeric;>;"
    iget-object v12, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v13, p0, mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/samsung/appdisabler/ImsiItem;->looseCompare(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b7

    .line 283
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Imsi numeric base: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " different than XML: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". FAIL!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 284
    const/4 v12, 0x0

    goto :goto_78

    .line 287
    .end local v3    # "mImsiNumericBaseFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/appdisabler/ImsiNumeric;>;"
    :cond_b7
    iget-boolean v12, p0, mIsSimSpn:Z

    if-eqz v12, :cond_130

    .line 288
    const/4 v9, 0x0

    .line 289
    iget-object v12, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v12}, Lcom/samsung/appdisabler/ImsiItem;->getSimSpn()Ljava/util/List;

    move-result-object v8

    .line 290
    .local v8, "simSpnListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_c6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_103

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 291
    .local v7, "simSpnFromXml":Ljava/lang/String;
    iget-object v12, p0, mSimSpn:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c6

    .line 292
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sim spn: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSimSpn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " equal XML: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". PASS!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 293
    const/4 v9, 0x1

    .line 297
    .end local v7    # "simSpnFromXml":Ljava/lang/String;
    :cond_103
    if-nez v9, :cond_130

    .line 298
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sim spn: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSimSpn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " different than XML: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". FAIL!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 299
    const/4 v12, 0x0

    goto/16 :goto_78

    .line 302
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "simSpnListFromXml":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_130
    iget-boolean v12, p0, mIsSimGid:Z

    if-eqz v12, :cond_1db

    .line 303
    iget-object v12, p0, mSimGid:Ljava/lang/String;

    if-nez v12, :cond_140

    .line 304
    const-string v12, "SIM GID1 is null"

    invoke-static {v12}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 306
    const/4 v12, 0x0

    goto/16 :goto_78

    .line 308
    :cond_140
    const/4 v9, 0x0

    .line 311
    :try_start_141
    new-instance v0, Ljava/math/BigInteger;

    iget-object v12, p0, mSimGid:Ljava/lang/String;

    const-string v13, "0x"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x10

    invoke-direct {v0, v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 314
    .local v0, "devGidB":Ljava/math/BigInteger;
    iget-object v12, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v12}, Lcom/samsung/appdisabler/ImsiItem;->getGid1()Ljava/util/List;

    move-result-object v11

    .line 315
    .local v11, "xmlGids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_15c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 317
    .local v4, "s":Ljava/lang/String;
    new-instance v10, Ljava/math/BigInteger;

    const-string v12, "0x"

    const-string v13, ""

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x10

    invoke-direct {v10, v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 318
    .local v10, "xmlGidB":Ljava/math/BigInteger;
    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15c

    .line 319
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GID1 pass, SIM: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSimGid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " xml: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V
    :try_end_19f
    .catch Ljava/lang/NumberFormatException; {:try_start_141 .. :try_end_19f} :catch_1d3

    .line 320
    const/4 v9, 0x1

    .line 328
    .end local v0    # "devGidB":Ljava/math/BigInteger;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    .end local v10    # "xmlGidB":Ljava/math/BigInteger;
    .end local v11    # "xmlGids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a0
    :goto_1a0
    if-nez v9, :cond_1db

    .line 329
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIM gid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSimGid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " different than XML: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v13}, Lcom/samsung/appdisabler/ImsiItem;->getGid1()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". FAIL!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 330
    const/4 v12, 0x0

    goto/16 :goto_78

    .line 324
    :catch_1d3
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v12, "error converting GID"

    invoke-static {v12, v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a0

    .line 333
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1db
    const/4 v12, 0x1

    goto/16 :goto_78
.end method

.method private isTimeout()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 464
    iget-wide v2, p0, mStartTimeInMiliseconds:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    .line 472
    :cond_9
    :goto_9
    return v0

    .line 469
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, mStartTimeInMiliseconds:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, mTimeoutOffset:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    .line 470
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private isWiFiOnly()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 740
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 742
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 743
    .local v1, "mobileNetworkSupported":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mobileNetworkSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 744
    if-eqz v1, :cond_29

    .line 748
    :goto_28
    return v2

    :cond_29
    const/4 v2, 0x1

    goto :goto_28
.end method

.method private parseXml()Z
    .registers 13

    .prologue
    .line 595
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 597
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    new-instance v7, Lcom/samsung/appdisabler/XmlItemHandler;

    invoke-direct {v7}, Lcom/samsung/appdisabler/XmlItemHandler;-><init>()V

    .line 599
    .local v7, "xmlHandler":Lcom/samsung/appdisabler/XmlItemHandler;
    new-instance v9, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v9}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 600
    const/4 v2, 0x0

    .line 602
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_12
    const-string/jumbo v9, "parseXml"

    invoke-static {v9}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 603
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    const-string v10, "/system/csc/appDisablerList.xml"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_24} :catch_64
    .catch Lorg/xml/sax/SAXException; {:try_start_12 .. :try_end_24} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_24} :catch_98
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_b2
    .catchall {:try_start_12 .. :try_end_24} :catchall_cc

    .line 604
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_24
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 605
    .local v5, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 606
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v8, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 607
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 608
    .local v1, "inStream":Lorg/xml/sax/InputSource;
    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 609
    invoke-interface {v8, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 612
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getTimeoutInSeconds()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v10, v9

    iput-wide v10, p0, mTimeoutOffset:J

    .line 613
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getImsiList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, mCurrentImsiList:Ljava/util/List;
    :try_end_49
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_24 .. :try_end_49} :catch_ec
    .catch Lorg/xml/sax/SAXException; {:try_start_24 .. :try_end_49} :catch_e9
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_49} :catch_e6
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_49} :catch_e3
    .catchall {:try_start_24 .. :try_end_49} :catchall_e0

    .line 627
    if-eqz v3, :cond_f0

    .line 629
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_5c

    move-object v2, v3

    .line 637
    .end local v1    # "inStream":Lorg/xml/sax/InputSource;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_4f
    :goto_4f
    invoke-virtual {v7}, Lcom/samsung/appdisabler/XmlItemHandler;->getValidationErrors()Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "parsingError":Ljava/lang/String;
    if-nez v4, :cond_da

    .line 639
    const-string v9, "Parsing XML ended successfully!"

    invoke-static {v9}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 640
    const/4 v9, 0x1

    .line 646
    :goto_5b
    return v9

    .line 630
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "parsingError":Ljava/lang/String;
    .restart local v1    # "inStream":Lorg/xml/sax/InputSource;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_5c
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 632
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_4f

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inStream":Lorg/xml/sax/InputSource;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_64
    move-exception v0

    .line 615
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_65
    :try_start_65
    const-string v9, "ParserConfigurationException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_cc

    .line 627
    if-eqz v2, :cond_4f

    .line 629
    :try_start_73
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_4f

    .line 630
    :catch_77
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 617
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7e
    move-exception v0

    .line 618
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_7f
    :try_start_7f
    const-string v9, "SAXException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_cc

    .line 627
    if-eqz v2, :cond_4f

    .line 629
    :try_start_8d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_4f

    .line 630
    :catch_91
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 620
    .end local v0    # "e":Ljava/io/IOException;
    :catch_98
    move-exception v0

    .line 621
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_99
    :try_start_99
    const-string v9, "FileNotFoundException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 622
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_cc

    .line 627
    if-eqz v2, :cond_4f

    .line 629
    :try_start_a7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_4f

    .line 630
    :catch_ab
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 623
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b2
    move-exception v0

    .line 624
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_b3
    :try_start_b3
    const-string v9, "IOException"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_b3 .. :try_end_bf} :catchall_cc

    .line 627
    if-eqz v2, :cond_4f

    .line 629
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_4f

    .line 630
    :catch_c5
    move-exception v0

    .line 631
    const-string v9, "close inputStream"

    invoke-static {v9, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 627
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_cc
    move-exception v9

    :goto_cd
    if-eqz v2, :cond_d2

    .line 629
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    .line 632
    :cond_d2
    :goto_d2
    throw v9

    .line 630
    :catch_d3
    move-exception v0

    .line 631
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "close inputStream"

    invoke-static {v10, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d2

    .line 644
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "parsingError":Ljava/lang/String;
    :cond_da
    invoke-direct {p0, v4}, sendErrorMsg(Ljava/lang/String;)V

    .line 646
    const/4 v9, 0x0

    goto/16 :goto_5b

    .line 627
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "parsingError":Ljava/lang/String;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_e0
    move-exception v9

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_cd

    .line 623
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_e3
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_b3

    .line 620
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_e6
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_99

    .line 617
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_e9
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_7f

    .line 614
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_ec
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_65

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inStream":Lorg/xml/sax/InputSource;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :cond_f0
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_4f
.end method

.method private receiveInfoFromSim()V
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, mSimNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 403
    iget-object v0, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mSimNumeric:Ljava/lang/String;

    .line 406
    :cond_10
    iget-object v0, p0, mSimImsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 407
    iget-object v0, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mSimImsiNumericBase:Ljava/lang/String;

    .line 410
    :cond_1c
    iget-object v0, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mSimSpn:Ljava/lang/String;

    .line 412
    iget-object v0, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mSimGid:Ljava/lang/String;

    .line 414
    iget-object v0, p0, mSimNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, mSimImsiNumericBase:Ljava/lang/String;

    if-nez v0, :cond_69

    .line 415
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data from SIM do not loaded yet: ImsiNumericBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device SimNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mSimNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mSimSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 422
    :goto_68
    return-void

    .line 420
    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device ImsiNumericBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mSimImsiNumericBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device SimNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mSimNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mSimSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    goto :goto_68
.end method

.method private receiveNetworkNumericFromDevice()V
    .registers 4

    .prologue
    .line 428
    iget-object v0, p0, phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    if-eqz v0, :cond_a

    .line 429
    iget-object v0, p0, phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    iget-object v0, v0, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;->simNumeric:Ljava/lang/String;

    iput-object v0, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    .line 432
    :cond_a
    iget-object v0, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 433
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong network numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 444
    :goto_2e
    return-void

    .line 439
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device network numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 443
    iget-object v0, p0, mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->sendEmptyMessage(I)Z

    goto :goto_2e
.end method

.method private sendErrorMsg(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMsgText"    # Ljava/lang/String;

    .prologue
    .line 671
    const-string v1, "There is critical error in /system/csc/appDisablerList.xml configuration file, please check bellow message and fix before releasing PDA/CSC!\n\n\n"

    .line 672
    .local v1, "msgToShow":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 674
    .local v0, "errorMsg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 675
    const/16 v2, 0xc9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 676
    iget-object v2, p0, mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 677
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 678
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 691
    .local v1, "dialog":Landroid/app/AlertDialog;
    const-string/jumbo v3, "show error dialog"

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 694
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 695
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 696
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 697
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 698
    const/4 v3, -0x1

    const-string v4, "OK"

    new-instance v5, Lcom/samsung/appdisabler/ImsiItemChecker$1;

    invoke-direct {v5, p0}, Lcom/samsung/appdisabler/ImsiItemChecker$1;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 707
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 710
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 711
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 712
    return-void
.end method

.method private startApkVersion()V
    .registers 4

    .prologue
    .line 792
    const-string/jumbo v1, "start apk version"

    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 793
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, "apkIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.appdisabler.app"

    const-string v2, "com.samsung.appdisabler.app.AppHideService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 796
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 797
    return-void
.end method

.method private startTimeMeasuring()V
    .registers 5

    .prologue
    .line 451
    iget-wide v0, p0, mStartTimeInMiliseconds:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 452
    const-string v0, "Measuring time started"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mStartTimeInMiliseconds:J

    .line 455
    :cond_13
    return-void
.end method


# virtual methods
.method public isApkVersionInstalled()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 779
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 780
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 781
    .local v1, "listOfApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 782
    .local v3, "tempApp":Landroid/content/pm/ApplicationInfo;
    const-string v5, "com.samsung.appdisabler.app"

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 783
    invoke-direct {p0}, startApkVersion()V

    .line 784
    const/4 v4, 0x1

    .line 788
    .end local v3    # "tempApp":Landroid/content/pm/ApplicationInfo;
    :cond_29
    return v4
.end method

.method public run()V
    .registers 15

    .prologue
    .line 136
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 137
    new-instance v5, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V

    iput-object v5, p0, mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    .line 139
    invoke-direct {p0}, isDualSim()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-direct {p0}, isWiFiOnly()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 141
    :cond_17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 142
    .local v2, "errorMsg":Landroid/os/Message;
    const-string v1, "SamsungAppDisabler currently is not supporting dual SIM or WiFi only devices, delete /system/csc/appDisablerList.xml from CSC"

    .line 143
    .local v1, "error":Ljava/lang/String;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    const/16 v5, 0xc9

    iput v5, v2, Landroid/os/Message;->what:I

    .line 145
    iget-object v5, p0, mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    invoke-virtual {v5, v2}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 147
    iget-object v5, p0, mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v5}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    .line 255
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errorMsg":Landroid/os/Message;
    :goto_30
    return-void

    .line 151
    :cond_31
    invoke-direct {p0}, parseXml()Z

    move-result v5

    if-nez v5, :cond_49

    .line 153
    iget-object v5, p0, mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v5}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_30

    .line 250
    :catch_3d
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v5}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V

    .line 253
    const-string v5, "Run exception"

    invoke-static {v5, v0}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_49
    :try_start_49
    invoke-direct {p0}, displayImsiItems()V

    .line 158
    iget-object v5, p0, mCurrentImsiList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_52
    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/appdisabler/ImsiItem;

    .line 159
    .local v4, "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    const/4 v5, 0x1

    iput-boolean v5, p0, mShowPackage:Z

    .line 160
    iput-object v4, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    .line 161
    const-string v5, "------------- Start checking imsi item -------------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 162
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->isForceApplicationTurnOff()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 166
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v5, v8, v9}, changeAppVisibility(Ljava/util/Set;ZZ)V

    goto :goto_52

    .line 170
    :cond_85
    const-string v5, "------------- Validating SIM data -------------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 172
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getSimNumeric()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10d

    const/4 v5, 0x1

    :goto_97
    iput-boolean v5, p0, mIsSimNumeric:Z

    .line 173
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getImsiNumericBase()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10f

    const/4 v5, 0x1

    :goto_a6
    iput-boolean v5, p0, mIsImsiNumericBase:Z

    .line 174
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getSimSpn()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_111

    const/4 v5, 0x1

    :goto_b5
    iput-boolean v5, p0, mIsSimSpn:Z

    .line 175
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getGid1()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_113

    const/4 v5, 0x1

    :goto_c4
    iput-boolean v5, p0, mIsSimGid:Z

    .line 186
    :goto_c6
    iget-boolean v5, p0, mIsSimNumeric:Z

    if-eqz v5, :cond_d2

    iget-object v5, p0, mSimNumeric:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e2

    :cond_d2
    iget-boolean v5, p0, mIsImsiNumericBase:Z

    if-eqz v5, :cond_da

    iget-object v5, p0, mSimImsiNumericBase:Ljava/lang/String;

    if-eqz v5, :cond_e2

    :cond_da
    iget-boolean v5, p0, mIsSimSpn:Z

    if-eqz v5, :cond_f0

    iget-object v5, p0, mSimSpn:Ljava/lang/String;

    if-nez v5, :cond_f0

    .line 188
    :cond_e2
    invoke-direct {p0}, isTimeout()Z

    move-result v5

    if-eqz v5, :cond_115

    .line 189
    const-string v5, "Waiting time elapsed"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, hideAppAfterTimeout()V

    .line 203
    :cond_f0
    invoke-direct {p0}, isTimeout()Z

    move-result v5

    if-nez v5, :cond_52

    .line 207
    invoke-direct {p0}, isSimDataValidate()Z

    move-result v5

    iput-boolean v5, p0, mShowPackage:Z

    .line 210
    iget-boolean v5, p0, mShowPackage:Z

    if-nez v5, :cond_128

    .line 211
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v5, v8, v9}, changeAppVisibility(Ljava/util/Set;ZZ)V

    goto/16 :goto_52

    .line 172
    :cond_10d
    const/4 v5, 0x0

    goto :goto_97

    .line 173
    :cond_10f
    const/4 v5, 0x0

    goto :goto_a6

    .line 174
    :cond_111
    const/4 v5, 0x0

    goto :goto_b5

    .line 175
    :cond_113
    const/4 v5, 0x0

    goto :goto_c4

    .line 193
    :cond_115
    invoke-direct {p0}, checkSimState()V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_118} :catch_3d

    .line 197
    :try_start_118
    iget v5, p0, CHECK_DELAY_IN_MS:I

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11e
    .catch Ljava/lang/InterruptedException; {:try_start_118 .. :try_end_11e} :catch_11f
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11e} :catch_3d

    goto :goto_c6

    .line 198
    :catch_11f
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_120
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto :goto_c6

    .line 215
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_128
    const-string v5, "----------- Validating Network data -----------"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 217
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getNetworkNumeric()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_193

    const/4 v5, 0x1

    :goto_13a
    iput-boolean v5, p0, mIsNetworkNumeric:Z

    .line 218
    iget-boolean v5, p0, mIsNetworkNumeric:Z

    if-eqz v5, :cond_17a

    iget-object v5, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    if-nez v5, :cond_17a

    .line 219
    const-string v5, "Checking network numeric"

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogI(Ljava/lang/String;)V

    .line 225
    iget-wide v8, p0, mStartTimeInMiliseconds:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_195

    .line 226
    iget-wide v8, p0, mTimeoutOffset:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, mStartTimeInMiliseconds:J

    sub-long/2addr v10, v12

    sub-long v6, v8, v10

    .line 231
    .local v6, "waitingTime":J
    :goto_15c
    iget-object v5, p0, mActionHandler:Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;

    const/16 v8, 0x6f

    invoke-virtual {v5, v8, v6, v7}, Lcom/samsung/appdisabler/ImsiItemChecker$CheckTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    new-instance v5, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;-><init>(Lcom/samsung/appdisabler/ImsiItemChecker;Lcom/samsung/appdisabler/ImsiItemChecker$1;)V

    iput-object v5, p0, phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    .line 234
    iget-object v5, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, phoneStateListener:Lcom/samsung/appdisabler/ImsiItemChecker$PhoneServiceStateListener;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 235
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 237
    iget-object v5, p0, mCurrentNetworkNumeric:Ljava/lang/String;

    if-eqz v5, :cond_52

    .line 242
    .end local v6    # "waitingTime":J
    :cond_17a
    invoke-direct {p0}, isNetworkDataValidate()Z

    move-result v5

    iput-boolean v5, p0, mShowPackage:Z

    .line 245
    iget-object v5, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5}, Lcom/samsung/appdisabler/ImsiItem;->getPackageToHide()Ljava/util/Set;

    move-result-object v5

    iget-boolean v8, p0, mShowPackage:Z

    iget-object v9, p0, mCurrentImsiItem:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v9}, Lcom/samsung/appdisabler/ImsiItem;->isAddShortcutToScreen()Z

    move-result v9

    invoke-direct {p0, v5, v8, v9}, changeAppVisibility(Ljava/util/Set;ZZ)V

    goto/16 :goto_52

    .line 217
    :cond_193
    const/4 v5, 0x0

    goto :goto_13a

    .line 228
    :cond_195
    invoke-direct {p0}, startTimeMeasuring()V

    .line 229
    iget-wide v6, p0, mTimeoutOffset:J

    .restart local v6    # "waitingTime":J
    goto :goto_15c

    .line 248
    .end local v4    # "imsiItem":Lcom/samsung/appdisabler/ImsiItem;
    .end local v6    # "waitingTime":J
    :cond_19b
    iget-object v5, p0, mCallingObject:Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;

    invoke-interface {v5}, Lcom/samsung/appdisabler/ImsiItemChecker$ImsiItemCheckerFinish;->checkingEnded()V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_1a0} :catch_3d

    goto/16 :goto_30
.end method
