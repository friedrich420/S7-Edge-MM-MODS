.class public Lcom/samsung/android/share/SShareCommon;
.super Ljava/lang/Object;
.source "SShareCommon.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final ENABLE_SURVEY_MODE:Z

.field private static final EXTRA_SAFE_FORWARD:Ljava/lang/String; = "extra_safe_forward"

.field private static final LIMITED_ENABLE:I = 0x2

.field private static final MORE_ACTIONS_CHANGE_PLAYER:Ljava/lang/String; = "more_actions_change_player"

.field private static final MORE_ACTIONS_PRINT:Ljava/lang/String; = "more_actions_print"

.field private static final MORE_ACTIONS_QUICK_CONNECT:Ljava/lang/String; = "more_actions_quick_connect"

.field private static final MORE_ACTIONS_SCREEN_MIRRORING:Ljava/lang/String; = "more_actions_screen_mirroring"

.field private static final MORE_ACTIONS_SCREEN_SHARING:Ljava/lang/String; = "more_actions_screen_sharing"

.field private static final RESOLVER_GUIDE_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.internal.app.ResolverGuideActivity"

.field private static final RESOLVER_GUIDE_ACTIVITY_PKG:Ljava/lang/String; = "android"

.field private static final SIMPLE_SHARING_FORCE_DISABLE:Ljava/lang/String; = "simple_sharing_force_disable"

.field private static final TAG:Ljava/lang/String; = "SShareCommon"

.field private static mIsSupportGridResolver:Z

.field private static mIsSupportLogging:Z

.field private static mIsSupportMoreActions:Z

.field private static mIsSupportNearby:Z

.field private static mIsSupportPageMode:Z

.field private static mIsSupportRecentSort:Z

.field private static mIsSupportResolverGuide:Z

.field private static mIsSupportSetAlwaysUse:Z

.field private static mIsSupportSimpleSharing:Z


# instance fields
.field private final REMOTE_SHARE_SERVICE_ID:I

.field private mContext:Landroid/content/Context;

.field private mDeviceDefault:Z

.field private mEasySignUpAlreadyChecked:Z

.field private mEasySignUpEnabled:Z

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIconChangePlayer:I

.field private mIconPrint:I

.field private mIconQuickConnect:I

.field private mIconScreenMirroring:I

.field private mIconScreenSharing:I

.field private mItemCount:I

.field private mLaunchedFromUid:I

.field private mResolverGuideIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, mIsSupportGridResolver:Z

    .line 42
    sput-boolean v0, mIsSupportSetAlwaysUse:Z

    .line 43
    sput-boolean v0, mIsSupportResolverGuide:Z

    .line 44
    sput-boolean v0, mIsSupportSimpleSharing:Z

    .line 45
    sput-boolean v0, mIsSupportLogging:Z

    .line 46
    sput-boolean v0, mIsSupportNearby:Z

    .line 47
    sput-boolean v0, mIsSupportMoreActions:Z

    .line 48
    sput-boolean v0, mIsSupportPageMode:Z

    .line 49
    sput-boolean v0, mIsSupportRecentSort:Z

    .line 82
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ZILjava/util/List;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isDeviceDefault"    # Z
    .param p4, "launchedFromUid"    # I
    .param p6, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p5, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v4, 0x0

    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, <init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isDeviceDefault"    # Z
    .param p4, "alwaysUseOption"    # Z
    .param p5, "hasFilteredItem"    # Z
    .param p6, "launchedFromUid"    # I
    .param p8, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "ZZZI",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p7, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, mItemCount:I

    .line 56
    iput-boolean v0, p0, mEasySignUpAlreadyChecked:Z

    .line 57
    iput-boolean v0, p0, mEasySignUpEnabled:Z

    .line 59
    iput v0, p0, mIconChangePlayer:I

    .line 60
    iput v0, p0, mIconScreenMirroring:I

    .line 61
    iput v0, p0, mIconScreenSharing:I

    .line 62
    iput v0, p0, mIconQuickConnect:I

    .line 63
    iput v0, p0, mIconPrint:I

    .line 65
    const/4 v0, 0x2

    iput v0, p0, REMOTE_SHARE_SERVICE_ID:I

    .line 95
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 96
    iput p8, p0, mItemCount:I

    .line 97
    iput p6, p0, mLaunchedFromUid:I

    .line 98
    iput-object p7, p0, mExtraIntentList:Ljava/util/List;

    .line 99
    iput-boolean p3, p0, mDeviceDefault:Z

    .line 101
    invoke-direct {p0}, setAlwaysUseFeature()V

    .line 102
    invoke-direct {p0}, setResolverGuideFeature()V

    .line 104
    if-eqz p3, :cond_44

    if-nez p4, :cond_44

    if-nez p5, :cond_44

    if-ltz p6, :cond_44

    invoke-static {p6}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 106
    invoke-direct {p0, p2}, setSimpleSharingFeature(Landroid/content/Intent;)V

    .line 108
    invoke-direct {p0, p2}, setMoreActionsFeature(Landroid/content/Intent;)V

    .line 109
    invoke-direct {p0}, setPageModeFeature()V

    .line 110
    invoke-direct {p0}, setRecentSortFeature()V

    .line 111
    invoke-direct {p0}, setLoggingFeature()V

    .line 114
    :cond_44
    if-nez p4, :cond_48

    if-eqz p5, :cond_4b

    .line 115
    :cond_48
    invoke-direct {p0}, setGridResolverFeature()V

    .line 118
    :cond_4b
    sget-boolean v0, mIsSupportSetAlwaysUse:Z

    if-eqz v0, :cond_52

    .line 119
    invoke-direct {p0}, setPageModeFeature()V

    .line 132
    :cond_52
    return-void
.end method

.method private checkSimpleShareSupport()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 496
    iget-boolean v2, p0, mEasySignUpAlreadyChecked:Z

    if-eqz v2, :cond_8

    .line 497
    iget-boolean v2, p0, mEasySignUpEnabled:Z

    .line 515
    :goto_7
    return v2

    .line 501
    :cond_8
    :try_start_8
    iget-object v2, p0, mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v1

    .line 502
    .local v1, "retVal":I
    const-string v2, "SShareCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSimpleShareSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v2, -0x1

    if-ne v1, v2, :cond_33

    .line 505
    const/4 v2, 0x0

    iput-boolean v2, p0, mEasySignUpEnabled:Z

    .line 509
    :goto_2d
    const/4 v2, 0x1

    iput-boolean v2, p0, mEasySignUpAlreadyChecked:Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_30} :catch_37

    .line 515
    .end local v1    # "retVal":I
    :goto_30
    iget-boolean v2, p0, mEasySignUpEnabled:Z

    goto :goto_7

    .line 507
    .restart local v1    # "retVal":I
    :cond_33
    const/4 v2, 0x1

    :try_start_34
    iput-boolean v2, p0, mEasySignUpEnabled:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_36} :catch_37

    goto :goto_2d

    .line 510
    .end local v1    # "retVal":I
    :catch_37
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, mEasySignUpEnabled:Z

    .line 512
    const-string v2, "SShareCommon"

    const-string v3, "EasySignUpManager returns exception !!!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method private getMoreActionsSupportState(Landroid/content/Intent;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 519
    invoke-direct {p0}, isEmergencyOrUPSModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 552
    :cond_9
    :goto_9
    return v1

    .line 524
    :cond_a
    :try_start_a
    const-string/jumbo v3, "more_actions_screen_sharing"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, mIconScreenSharing:I

    .line 525
    const-string/jumbo v3, "more_actions_screen_mirroring"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, mIconScreenMirroring:I

    .line 526
    const-string/jumbo v3, "more_actions_change_player"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, mIconChangePlayer:I

    .line 527
    const-string/jumbo v3, "more_actions_quick_connect"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, mIconQuickConnect:I

    .line 528
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_8e

    move v3, v1

    :goto_3b
    iput v3, p0, mIconPrint:I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_97
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_3d} :catch_a0

    .line 536
    :goto_3d
    iget v3, p0, mIconChangePlayer:I

    if-ne v3, v2, :cond_47

    .line 537
    const-string/jumbo v3, "more_actions_change_player"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    :cond_47
    iget v3, p0, mIconScreenMirroring:I

    if-ne v3, v2, :cond_51

    .line 540
    const-string/jumbo v3, "more_actions_screen_mirroring"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    :cond_51
    iget v3, p0, mIconScreenSharing:I

    if-eq v3, v2, :cond_59

    iget v3, p0, mIconScreenSharing:I

    if-ne v3, v5, :cond_5f

    .line 543
    :cond_59
    const-string/jumbo v3, "more_actions_screen_sharing"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    :cond_5f
    iget v3, p0, mIconQuickConnect:I

    if-ne v3, v2, :cond_69

    .line 546
    const-string/jumbo v3, "more_actions_quick_connect"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    :cond_69
    iget v3, p0, mIconPrint:I

    if-ne v3, v2, :cond_73

    .line 549
    const-string/jumbo v3, "more_actions_print"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    :cond_73
    iget v3, p0, mIconChangePlayer:I

    if-eq v3, v2, :cond_8b

    iget v3, p0, mIconScreenMirroring:I

    if-eq v3, v2, :cond_8b

    iget v3, p0, mIconScreenSharing:I

    if-eq v3, v2, :cond_8b

    iget v3, p0, mIconScreenSharing:I

    if-eq v3, v5, :cond_8b

    iget v3, p0, mIconQuickConnect:I

    if-eq v3, v2, :cond_8b

    iget v3, p0, mIconPrint:I

    if-ne v3, v2, :cond_9

    :cond_8b
    move v1, v2

    goto/16 :goto_9

    .line 528
    :cond_8e
    :try_start_8e
    const-string/jumbo v3, "more_actions_print"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_95} :catch_97
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8e .. :try_end_95} :catch_a0

    move-result v3

    goto :goto_3b

    .line 529
    :catch_97
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SShareCommon"

    const-string v4, "Exception !!! during getting more actions"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SShareCommon"

    const-string v4, "OutOfMemoryError !!! during getting more actions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private getPageModeSupportState()Z
    .registers 7

    .prologue
    .line 443
    const/4 v0, 0x1

    .line 445
    .local v0, "bPageMode":Z
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v1

    .line 446
    .local v1, "bPhoneType":Z
    const-string v4, "2014A"

    const-string/jumbo v5, "ro.build.scafe.version"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 447
    .local v3, "bUpgrade":Z
    invoke-direct {p0}, checkSimpleShareSupport()Z

    move-result v2

    .line 450
    .local v2, "bSupportSimpleShare":Z
    if-eqz v1, :cond_1f

    .line 451
    const/4 v0, 0x1

    .line 454
    if-eqz v3, :cond_1f

    .line 455
    const/4 v0, 0x0

    .line 458
    if-eqz v2, :cond_1f

    .line 459
    const/4 v0, 0x1

    .line 466
    :cond_1f
    return v0
.end method

.method private getQuickConnectSupportState()Z
    .registers 5

    .prologue
    .line 471
    :try_start_0
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 472
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.samsung.android.sconnect"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    .line 477
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_e
    return v2

    .line 473
    :catch_f
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private getResolverGuideSupportState()Z
    .registers 2

    .prologue
    .line 435
    sget-boolean v0, mIsSupportSetAlwaysUse:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, isUSA()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 436
    const/4 v0, 0x1

    .line 438
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getSimpleSharingSupportState(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 481
    invoke-direct {p0}, checkSimpleShareSupport()Z

    move-result v1

    .line 482
    .local v1, "featureEnable":Z
    invoke-direct {p0, p1}, isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v3

    .line 483
    .local v3, "intentSupport":Z
    invoke-direct {p0}, isKnoxModeEnabled()Z

    move-result v4

    .line 484
    .local v4, "knoxMode":Z
    invoke-direct {p0}, isEmergencyOrUPSModeEnabled()Z

    move-result v0

    .line 485
    .local v0, "emergencyMode":Z
    invoke-direct {p0, p1}, isForceSimpleSharingDisable(Landroid/content/Intent;)Z

    move-result v2

    .line 487
    .local v2, "forceDisable":Z
    if-eqz v1, :cond_20

    if-eqz v3, :cond_20

    if-nez v4, :cond_20

    if-nez v0, :cond_20

    if-nez v2, :cond_20

    .line 488
    const/4 v5, 0x1

    .line 491
    :goto_1f
    return v5

    .line 490
    :cond_20
    const-string v5, "SShareCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "featureEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intentSupport = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " knoxMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " emergencyMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " forceDisable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v5, 0x0

    goto :goto_1f
.end method

.method private hasExtraIntentUriInfo()Z
    .registers 5

    .prologue
    .line 364
    iget-object v3, p0, mExtraIntentList:Ljava/util/List;

    if-eqz v3, :cond_2c

    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v3, p0, mExtraIntentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 368
    .local v0, "extraBundle":Landroid/os/Bundle;
    iget-object v3, p0, mExtraIntentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_29

    .line 370
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "uri":Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 371
    .restart local v2    # "uri":Landroid/net/Uri;
    if-eqz v2, :cond_29

    .line 372
    const/4 v3, 0x1

    .line 377
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_28
    return v3

    .line 365
    .restart local v0    # "extraBundle":Landroid/os/Bundle;
    .restart local v1    # "i":I
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 377
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2c
    const/4 v3, 0x0

    goto :goto_28
.end method

.method private isEmergencyOrUPSModeEnabled()Z
    .registers 9

    .prologue
    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 335
    iget-object v6, p0, mContext:Landroid/content/Context;

    if-nez v6, :cond_9

    .line 350
    :cond_8
    :goto_8
    return v5

    .line 339
    :cond_9
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 340
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v1, 0x0

    .line 341
    .local v1, "isEmergencyMode":Z
    const/4 v3, 0x0

    .line 342
    .local v3, "isUltraPowerSavingMode":Z
    const/4 v2, 0x0

    .line 343
    .local v2, "isEmergencyOrUPSM":Z
    if-eqz v0, :cond_32

    .line 344
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_39

    move v1, v4

    .line 345
    :goto_21
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_3b

    move v3, v4

    .line 347
    :goto_2e
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    .line 349
    :cond_32
    const/4 v0, 0x0

    .line 350
    if-nez v1, :cond_37

    if-eqz v3, :cond_8

    :cond_37
    move v5, v4

    goto :goto_8

    :cond_39
    move v1, v5

    .line 344
    goto :goto_21

    :cond_3b
    move v3, v5

    .line 345
    goto :goto_2e
.end method

.method private isForceSimpleSharingDisable(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    const-string/jumbo v3, "simple_sharing_force_disable"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 327
    .local v0, "forceDisalbe":I
    if-ne v0, v1, :cond_c

    .line 330
    :goto_b
    return v1

    :cond_c
    move v1, v2

    goto :goto_b
.end method

.method private isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_14
    invoke-direct {p0, p1}, isIntentUriDataIValidCheck(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 357
    const/4 v1, 0x1

    .line 359
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private isIntentUriDataIValidCheck(Landroid/content/Intent;)Z
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 381
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 383
    const/4 v5, 0x0

    .line 384
    .local v5, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 385
    .local v1, "extraBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_1e

    .line 387
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "uri":Landroid/net/Uri;
    check-cast v5, Landroid/net/Uri;

    .line 390
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_1e
    if-nez v5, :cond_29

    .line 391
    invoke-direct {p0}, hasExtraIntentUriInfo()Z

    move-result v8

    if-eqz v8, :cond_27

    .line 430
    .end local v1    # "extraBundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_26
    :goto_26
    return v3

    .restart local v1    # "extraBundle":Landroid/os/Bundle;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_27
    move v3, v7

    .line 394
    goto :goto_26

    .line 396
    :cond_29
    const-string v7, "com.android.contacts"

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    goto :goto_26

    .line 401
    .end local v1    # "extraBundle":Landroid/os/Bundle;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_36
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 402
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v6, "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 404
    if-nez v6, :cond_4d

    move v3, v7

    .line 406
    goto :goto_26

    .line 408
    :cond_4d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 409
    .local v4, "numOfUri":I
    const/4 v3, 0x0

    .line 411
    .local v3, "isNotNullAtLeastOne":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_53
    if-ge v2, v4, :cond_26

    .line 412
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_71

    .line 413
    const-string v8, "com.android.contacts"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 415
    const/4 v3, 0x1

    .line 416
    goto :goto_26

    .line 419
    :cond_6f
    const/4 v3, 0x1

    .line 420
    goto :goto_26

    .line 411
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_53
.end method

.method private isKnoxModeEnabled()Z
    .registers 4

    .prologue
    .line 321
    iget v1, p0, mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    .line 322
    .local v0, "isKnoxMode":Z
    :goto_b
    return v0

    .line 321
    .end local v0    # "isKnoxMode":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isUSA()Z
    .registers 3

    .prologue
    .line 317
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_SupportResolverActivityGuide"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setAlwaysUseFeature()V
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x1

    sput-boolean v0, mIsSupportSetAlwaysUse:Z

    .line 140
    return-void
.end method

.method private setGridResolverFeature()V
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x1

    sput-boolean v0, mIsSupportGridResolver:Z

    .line 136
    return-void
.end method

.method private setLoggingFeature()V
    .registers 2

    .prologue
    .line 151
    sget-boolean v0, ENABLE_SURVEY_MODE:Z

    sput-boolean v0, mIsSupportLogging:Z

    .line 152
    return-void
.end method

.method private setMoreActionsFeature(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-direct {p0, p1}, getMoreActionsSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, mIsSupportMoreActions:Z

    .line 160
    return-void
.end method

.method private setPageModeFeature()V
    .registers 2

    .prologue
    .line 163
    invoke-direct {p0}, getPageModeSupportState()Z

    move-result v0

    sput-boolean v0, mIsSupportPageMode:Z

    .line 164
    return-void
.end method

.method private setQuickConnectFeature()V
    .registers 2

    .prologue
    .line 155
    invoke-direct {p0}, getQuickConnectSupportState()Z

    move-result v0

    sput-boolean v0, mIsSupportNearby:Z

    .line 156
    return-void
.end method

.method private setRecentSortFeature()V
    .registers 2

    .prologue
    .line 167
    sget-boolean v0, mIsSupportPageMode:Z

    sput-boolean v0, mIsSupportRecentSort:Z

    .line 168
    return-void
.end method

.method private setResolverGuideFeature()V
    .registers 2

    .prologue
    .line 143
    invoke-direct {p0}, getResolverGuideSupportState()Z

    move-result v0

    sput-boolean v0, mIsSupportResolverGuide:Z

    .line 144
    return-void
.end method

.method private setSimpleSharingFeature(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    invoke-direct {p0, p1}, getSimpleSharingSupportState(Landroid/content/Intent;)Z

    move-result v0

    sput-boolean v0, mIsSupportSimpleSharing:Z

    .line 148
    return-void
.end method


# virtual methods
.method public getChangePlayerEnable()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, mIconChangePlayer:I

    return v0
.end method

.method public getPrintEnable()I
    .registers 2

    .prologue
    .line 313
    iget v0, p0, mIconPrint:I

    return v0
.end method

.method public getQuickConnectEnable()I
    .registers 2

    .prologue
    .line 306
    iget v0, p0, mIconQuickConnect:I

    return v0
.end method

.method public getResolverGuideIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, mResolverGuideIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getScreenMirroringEnable()I
    .registers 2

    .prologue
    .line 292
    iget v0, p0, mIconScreenMirroring:I

    return v0
.end method

.method public getScreenSharingEnable()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, mIconScreenSharing:I

    return v0
.end method

.method public getSupportGridResolver()Z
    .registers 2

    .prologue
    .line 222
    sget-boolean v0, mIsSupportGridResolver:Z

    return v0
.end method

.method public getSupportLogging()Z
    .registers 2

    .prologue
    .line 250
    sget-boolean v0, mIsSupportLogging:Z

    return v0
.end method

.method public getSupportMoreActions()Z
    .registers 2

    .prologue
    .line 264
    sget-boolean v0, mIsSupportMoreActions:Z

    return v0
.end method

.method public getSupportNearby()Z
    .registers 2

    .prologue
    .line 257
    sget-boolean v0, mIsSupportNearby:Z

    return v0
.end method

.method public getSupportPageMode()Z
    .registers 2

    .prologue
    .line 271
    sget-boolean v0, mIsSupportPageMode:Z

    return v0
.end method

.method public getSupportRecentSort()Z
    .registers 2

    .prologue
    .line 278
    sget-boolean v0, mIsSupportRecentSort:Z

    return v0
.end method

.method public getSupportResolverGuide()Z
    .registers 2

    .prologue
    .line 236
    sget-boolean v0, mIsSupportResolverGuide:Z

    return v0
.end method

.method public getSupportSetAlwaysUse()Z
    .registers 2

    .prologue
    .line 229
    sget-boolean v0, mIsSupportSetAlwaysUse:Z

    return v0
.end method

.method public getSupportSimpleSharing()Z
    .registers 2

    .prologue
    .line 243
    sget-boolean v0, mIsSupportSimpleSharing:Z

    return v0
.end method

.method public isDeviceDefaultTheme()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, mDeviceDefault:Z

    return v0
.end method

.method public setResolverGuideIntent(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "safeForward"    # Z

    .prologue
    .line 174
    sget-boolean v4, mIsSupportResolverGuide:Z

    if-eqz v4, :cond_38

    .line 176
    :try_start_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 177
    .local v3, "newIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 179
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    const-string v4, "android"

    const-string v5, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .restart local v0    # "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    const-string v4, "extra_safe_forward"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 188
    .local v2, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez v2, :cond_30

    .line 189
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v2    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 191
    .restart local v2    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_30
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 192
    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->skipMultiWindowLaunch(Landroid/content/Intent;)V

    .line 195
    iput-object v3, p0, mResolverGuideIntent:Landroid/content/Intent;
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_42

    .line 202
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v3    # "newIntent":Landroid/content/Intent;
    :cond_38
    :goto_38
    return-void

    .line 196
    :catch_39
    move-exception v1

    .line 197
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "SShareCommon"

    const-string v5, "Activity Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 198
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_42
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SShareCommon"

    const-string v5, "Class Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method
