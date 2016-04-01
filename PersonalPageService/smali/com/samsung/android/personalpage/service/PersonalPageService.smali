.class public Lcom/samsung/android/personalpage/service/PersonalPageService;
.super Landroid/app/Service;
.source "PersonalPageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;,
        Lcom/samsung/android/personalpage/service/PersonalPageService$H;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.feature.fingerprint_manager_service"

.field private static final INTENT_PRIVATE_MODE_OFF:Landroid/content/Intent;

.field private static final INTENT_PRIVATE_MODE_ON:Landroid/content/Intent;

.field private static final PRIVATE_MODE_STATUSBAR_SLOT:Ljava/lang/String; = "private_mode"

.field private static final TAG:Ljava/lang/String; = "PersonalPageService"

.field private static isWhiteTheme:Z

.field private static mIsVerificationForNormal:Z

.field private static mSalesCode:Ljava/lang/String;


# instance fields
.field private final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private final currentapiVersion:I

.field private isSystemFeatureEnabled:Z

.field private isSystemFeatureQueried:Z

.field private levelPrivatemode:I

.field private mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

.field mAm:Landroid/app/IActivityManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field mDoNotShowCheck:Landroid/widget/CheckBox;

.field final mForegroundToken:Landroid/os/IBinder;

.field final mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

.field private mIsSkipEnableLockScreen:Z

.field private mIsSkipTurnOffToast:Z

.field mLockType:I

.field private mPersonalPageReceiver:Landroid/content/BroadcastReceiver;

.field private mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

.field private mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

.field mPrivateModeDialog:Landroid/app/AlertDialog;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field mStatusBarMgr:Landroid/app/StatusBarManager;

.field private onTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_ON:Landroid/content/Intent;

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_OFF:Landroid/content/Intent;

    .line 77
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSalesCode:Ljava/lang/String;

    .line 97
    sput-boolean v2, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsVerificationForNormal:Z

    .line 110
    sput-boolean v2, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->currentapiVersion:I

    .line 83
    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureQueried:Z

    .line 84
    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureEnabled:Z

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->onTime:J

    .line 92
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    .line 94
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    .line 95
    iput-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    .line 99
    new-instance v0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    .line 100
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mForegroundToken:Landroid/os/IBinder;

    .line 101
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mAm:Landroid/app/IActivityManager;

    .line 106
    iput v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mLockType:I

    .line 107
    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipEnableLockScreen:Z

    .line 108
    iput-boolean v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->levelPrivatemode:I

    .line 177
    invoke-static {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    .line 179
    new-instance v0, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mBinder:Landroid/os/IBinder;

    .line 925
    new-instance v0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$2;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPersonalPageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleUpdateLocale()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleUserSwitch()V

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/android/personalpage/service/PersonalPageService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/personalpage/service/PersonalPageService;Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;
    .param p1, "x1"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeOff()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeOn()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->cleanUp()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handlePrivateModeKeepOn()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/personalpage/service/PersonalPageService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestUpdateLocale()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestUserSwitch()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/personalpage/service/PersonalPageService;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    return-object v0
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    .line 243
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 244
    .local v1, "modeStatus":I
    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    .line 245
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPersonalPageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    .end local v1    # "modeStatus":I
    :goto_0
    return-void

    .line 248
    .restart local v1    # "modeStatus":I
    :cond_0
    const-string v2, "PersonalPageService"

    const-string v3, "skip cleanUp"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v1    # "modeStatus":I
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private clearVariables()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->clearNormalM2P()V

    .line 871
    return-void
.end method

.method private collapseStatusBarPanels()V
    .locals 2

    .prologue
    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    goto :goto_0
.end method

.method public static getIsWhiteTheme()Z
    .locals 1

    .prologue
    .line 352
    sget-boolean v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    return v0
.end method

.method private declared-synchronized handleChangePrivateMode(Z)V
    .locals 9
    .param p1, "mPrivatMode"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 362
    monitor-enter p0

    const/4 v3, 0x0

    .line 364
    .local v3, "result":Z
    :try_start_0
    const-string v6, "PersonalPageService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleChangePrivateMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIsSkipTurnOffToast: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    if-nez p1, :cond_0

    .line 367
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->sendBroadcastForPrivateMode(Z)V

    .line 368
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->clearVariables()V

    .line 372
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    invoke-virtual {v6, p1}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->changePrivateModeStorage(Z)Z

    move-result v3

    .line 374
    if-eqz v3, :cond_6

    .line 376
    const-string v6, "sys.samsung.personalpage.mode"

    if-eqz p1, :cond_5

    const-string v5, "1"

    :goto_0
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {p1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    .line 379
    iget-boolean v5, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z

    if-nez v5, :cond_1

    .line 380
    invoke-static {p1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->showToastMessageForMode(Z)V

    .line 383
    :cond_1
    if-eqz p1, :cond_2

    .line 384
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    .line 385
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->sendBroadcastForPrivateMode(Z)V

    .line 386
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_pm_first_mount"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 387
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 388
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_pm_first_mount"

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    invoke-virtual {v5, p1}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->onPersonalPageModeChanged(Z)V

    .line 394
    if-nez p1, :cond_3

    .line 395
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestServcieStop()V

    .line 398
    :cond_3
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v2

    .line 400
    .local v2, "mSensorType":I
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "personal_mode_lock_type"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 401
    .local v1, "lockType":I
    const/4 v5, 0x5

    if-ne v1, v5, :cond_4

    if-eqz p1, :cond_4

    if-eq v2, v4, :cond_4

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->showMigrationDialog()V

    .line 405
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->SendPrivateModeSurvery(Z)V

    .line 412
    .end local v1    # "lockType":I
    .end local v2    # "mSensorType":I
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 376
    :cond_5
    :try_start_1
    const-string v5, "0"

    goto :goto_0

    .line 408
    :cond_6
    const-string v6, "PersonalPageService"

    const-string v7, "handleChangePrivateMode: Failed "

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    .line 410
    if-eqz p1, :cond_8

    const v4, 0x7f050011

    :goto_3
    invoke-static {v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->showToastMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 362
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_7
    move v4, v5

    .line 409
    goto :goto_2

    .line 410
    :cond_8
    const v4, 0x7f050005

    goto :goto_3
.end method

.method private declared-synchronized handlePrivateModeKeepOn()V
    .locals 6

    .prologue
    .line 442
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    .line 443
    const-string v1, "sys.samsung.personalpage.mode"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v1, "VZW"

    sget-object v2, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->currentapiVersion:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 446
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeIndicator(Z)V

    .line 447
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v2, "private_mode"

    const v3, 0x7f020004

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v2, "private_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 452
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->sendBroadcastForPrivateMode(Z)V

    .line 453
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->onPersonalPageModeChanged(Z)V

    .line 454
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 457
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_pp_disclaimer_noti_for_lock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 458
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->showPrivateModeDialog(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_2
    monitor-exit p0

    return-void

    .line 442
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handlePrivateModeOff()V
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleChangePrivateMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handlePrivateModeOn()V
    .locals 4

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_1

    .line 337
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipEnableLockScreen:Z

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_pp_disclaimer_noti_for_lock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->showPrivateModeDialog(Z)V

    .line 347
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleChangePrivateMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_1
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleUpdateLocale()V
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method private declared-synchronized handleUserSwitch()V
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleChangePrivateMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_0
    monitor-exit p0

    return-void

    .line 288
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsSkipTurnOffToast:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSupportedLockType(I)Z
    .locals 3
    .param p1, "lockType"    # I

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "retVal":Z
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureQueried:Z

    if-nez v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureEnabled:Z

    .line 598
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureQueried:Z

    .line 600
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 612
    const/4 v0, 0x1

    .line 615
    :goto_0
    return v0

    .line 602
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSystemFeatureEnabled:Z

    .line 603
    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private requestLockScreenUnlock()V
    .locals 5

    .prologue
    .line 473
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "minimum_quality"

    const v3, 0x8000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PersonalPageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleVerifyUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestSelectLockType()V
    .locals 5

    .prologue
    .line 773
    const-string v2, "PersonalPageService"

    const-string v3, "requestSelectLockType()"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 775
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.personalpage.PersonalPageSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const-string v2, "to_select_unlock_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 778
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 780
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "PersonalPageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSelectLockType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestServcieStop()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 275
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    .line 277
    return-void
.end method

.method private requestUpdateLocale()V
    .locals 2

    .prologue
    const/16 v1, 0x402

    .line 293
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    .line 295
    return-void
.end method

.method private requestUserSwitch()V
    .locals 2

    .prologue
    const/16 v1, 0x403

    .line 280
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    .line 282
    return-void
.end method

.method private declared-synchronized restorePrivatemodeState()V
    .locals 6

    .prologue
    .line 905
    monitor-enter p0

    const/4 v2, 0x0

    .line 906
    .local v2, "pmode":I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 909
    .local v1, "isMounted":Z
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 913
    :goto_0
    :try_start_2
    const-string v3, "PersonalPageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorePrivatemodeState : private mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,isPrivateStorageMounted : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 916
    const-string v3, "sys.samsung.personalpage.mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    .line 918
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->onPersonalPageModeChanged(Z)V

    .line 919
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestServcieStop()V

    .line 921
    const-string v3, "PersonalPageService"

    const-string v4, "restorePrivatemodeState : Restored"

    invoke-static {v3, v4}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 923
    :cond_0
    monitor-exit p0

    return-void

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 905
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v1    # "isMounted":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private sendBroadcastForPrivateMode(Z)V
    .locals 5
    .param p1, "currentMode"    # Z

    .prologue
    .line 261
    const-string v2, "PersonalPageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcastForPrivateMode: BEGIN - PrivateMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_OFF:Landroid/content/Intent;

    .line 265
    .local v1, "prevIntent":Landroid/content/Intent;
    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_ON:Landroid/content/Intent;

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 269
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 271
    const-string v2, "PersonalPageService"

    const-string v3, "sendBroadcastForPrivateMode: FINISH"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void

    .line 263
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prevIntent":Landroid/content/Intent;
    :cond_0
    sget-object v1, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_ON:Landroid/content/Intent;

    goto :goto_0

    .line 265
    .restart local v1    # "prevIntent":Landroid/content/Intent;
    :cond_1
    sget-object v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->INTENT_PRIVATE_MODE_OFF:Landroid/content/Intent;

    goto :goto_1
.end method

.method private setServiceForeGround(Z)V
    .locals 4
    .param p1, "isForeground"    # Z

    .prologue
    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 898
    const-string v1, "PersonalPageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServiceForeGround: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :goto_0
    return-void

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showMigrationDialog()V
    .locals 5

    .prologue
    const/high16 v4, 0x1000000

    .line 417
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05002f

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 419
    const v2, 0x7f050030

    new-instance v3, Lcom/samsung/android/personalpage/service/PersonalPageService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/personalpage/service/PersonalPageService$1;-><init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 428
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 430
    .local v1, "mDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 431
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 432
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 433
    return-void
.end method

.method private showPrivateModeDialog(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 770
    return-void
.end method


# virtual methods
.method protected SendPrivateModeSurvery(Z)V
    .locals 12
    .param p1, "mPrivatMode"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 876
    if-eqz p1, :cond_0

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->onTime:J

    .line 878
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 879
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e8

    const-string v7, "personal_mode_lock_type"

    invoke-static {v0, v7, v10, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    int-to-long v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    .line 888
    .end local v0    # "mContentResolver":Landroid/content/ContentResolver;
    .local v1, "mPersonalPageSurveyLog":Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->sendSurveyLog()V

    .line 889
    return-void

    .line 882
    .end local v1    # "mPersonalPageSurveyLog":Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 883
    .local v8, "currentTime":J
    iget-wide v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->onTime:J

    sub-long v4, v8, v2

    .line 885
    .local v4, "aliveTime":J
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTime : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", onTime : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->onTime:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",  aliveTime : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    new-instance v1, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e9

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    .restart local v1    # "mPersonalPageSurveyLog":Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;
    goto :goto_0
.end method

.method public cancelVerifyByUser()Z
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->getNumOfRegisteredClient()I

    move-result v0

    if-lez v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->KillAllClient()V

    .line 863
    const/4 v0, 0x1

    .line 865
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLevelPrivatemode()I
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->levelPrivatemode:I

    return v0
.end method

.method public getPreferenceBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 848
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getPrivateModeStorageManager()Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    return-object v0
.end method

.method protected handleM2pKeepMode(Z)V
    .locals 2
    .param p1, "mPrivatMode"    # Z

    .prologue
    const/16 v1, 0x407

    .line 436
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    .line 438
    return-void
.end method

.method declared-synchronized handleVerifyUser(Z)V
    .locals 13
    .param p1, "bInNormal"    # Z

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 487
    monitor-enter p0

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 488
    .local v5, "pwIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 489
    .local v4, "mContentResolver":Landroid/content/ContentResolver;
    const-string v8, "personal_mode_lock_type"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 490
    .local v3, "lockType":I
    const-string v8, "PersonalPageService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleVerifyUser, lock_type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", In Normal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    if-nez v3, :cond_2

    .line 494
    if-nez p1, :cond_0

    .line 495
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    invoke-virtual {p0, v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    .line 496
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestSelectLockType()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v6, v7

    .line 495
    goto :goto_0

    .line 501
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    if-eqz v8, :cond_3

    .line 502
    iget-object v8, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v8}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v8}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_3

    .line 503
    iget-object v8, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v8}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    .line 504
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    .line 508
    :cond_3
    invoke-direct {p0, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isSupportedLockType(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 509
    const-string v6, "PersonalPageService"

    const-string v7, "isSupportedLockType is Fail"

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 487
    .end local v3    # "lockType":I
    .end local v4    # "mContentResolver":Landroid/content/ContentResolver;
    .end local v5    # "pwIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 513
    .restart local v3    # "lockType":I
    .restart local v4    # "mContentResolver":Landroid/content/ContentResolver;
    .restart local v5    # "pwIntent":Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x0

    .line 514
    .local v1, "hasEnrolledFinger":Z
    const/4 v2, 0x0

    .line 515
    .local v2, "isFingerReset":Z
    :try_start_2
    iget-object v8, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "finger_reset_change"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    move v2, v6

    .line 517
    :goto_2
    const-string v6, "PersonalPageService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFingerReset : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    if-lt v3, v11, :cond_5

    if-ge v3, v12, :cond_5

    .line 519
    const-string v7, "PersonalPageService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isFingerHardware : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_5
    if-le v3, v11, :cond_6

    if-ge v3, v12, :cond_6

    .line 522
    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v1

    .line 523
    const-string v6, "personal_backup_lock_type"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    :cond_6
    packed-switch v3, :pswitch_data_0

    .line 567
    const-string v6, "PersonalPageService"

    const-string v7, "Unknown Lock Type"

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_3
    const/high16 v6, 0x34000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    :try_start_3
    sput-boolean p1, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsVerificationForNormal:Z

    .line 575
    const-string v6, "M2P"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0, v5}, Lcom/samsung/android/personalpage/service/PersonalPageService;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_4
    const-string v6, "PersonalPageService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleVerifyUser"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    move v2, v7

    .line 515
    goto/16 :goto_2

    .line 527
    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 528
    const-string v6, "personal_backup_lock_type"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 532
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 536
    :pswitch_2
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 540
    :pswitch_3
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 543
    :pswitch_4
    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    .line 544
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 546
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 547
    const-string v6, "FINGERPRINT"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 551
    :pswitch_5
    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    .line 552
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 554
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePin;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 555
    const-string v6, "FINGERPRINT"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 559
    :pswitch_6
    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    .line 560
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 562
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePassword;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 563
    const-string v6, "FINGERPRINT"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isPrivateStorageAtLeastMounted()Z
    .locals 1

    .prologue
    .line 857
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 832
    const-string v0, "PersonalPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    .line 834
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mBinder:Landroid/os/IBinder;

    .line 837
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 189
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 190
    const-string v1, "PersonalPageService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "white"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    .line 193
    iput-object p0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    .line 194
    sget-boolean v1, Lcom/samsung/android/personalpage/service/PersonalPageService;->isWhiteTheme:Z

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 198
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->initializePrivateModeNoti(Landroid/content/Context;)V

    .line 199
    new-instance v1, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    .line 200
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mStatusBarMgr:Landroid/app/StatusBarManager;

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    .line 202
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.secretmode_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->levelPrivatemode:I

    .line 205
    const-string v1, "PersonalPageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate - currentapiVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->currentapiVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", levelPrivatemode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->levelPrivatemode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->levelPrivatemode:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->currentapiVersion:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_pp_disclaimer_noti"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_pp_disclaimer_noti_for_lock"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_pp_disclaimer_noti"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 211
    const-string v1, "pref_pp_disclaimer_noti_for_lock"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->restorePrivatemodeState()V

    .line 218
    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->setServiceForeGround(Z)V

    .line 219
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "PersonalPageService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->cleanUp()V

    .line 226
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 227
    return-void
.end method

.method public onFinishUserVerification()V
    .locals 3

    .prologue
    .line 314
    const-string v0, "PersonalPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangePrivateMode: InNormal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsVerificationForNormal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-boolean v0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mIsVerificationForNormal:Z

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPmManagerService:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->onVerifiedUser()V

    .line 327
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestPrivateModeOn()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 789
    if-eqz p1, :cond_5

    .line 790
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "action":Ljava/lang/String;
    const-string v2, "PersonalPageService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v2, "com.samsung.android.personalpage.action.START_SERVICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 795
    const-string v2, "PersonalPageService"

    const-string v3, "started personal page service"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 797
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 800
    const-string v2, "PersonalPageService"

    const-string v3, "onStartCommand: M2P Activating"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->collapseStatusBarPanels()V

    .line 804
    const-string v2, "without_verify"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 805
    .local v1, "bWithoutVerify":Z
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 806
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    .line 807
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestPersonalPageOff(Z)V

    goto :goto_0

    .line 810
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    .line 811
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    .line 812
    if-eqz v1, :cond_4

    .line 813
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestPrivateModeOn()V

    goto :goto_0

    .line 816
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->requestVerifyUser()V

    goto :goto_0

    .line 823
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bWithoutVerify":Z
    :cond_5
    const-string v2, "PersonalPageService"

    const-string v3, "onStartCommand: registerPersonalPageReceiver"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "argIntent"    # Landroid/content/Intent;

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected registerPersonalPageReceiver()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mPersonalPageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    return-void
.end method

.method public requestPersonalPageOff(Z)V
    .locals 4
    .param p1, "isDialog"    # Z

    .prologue
    const/16 v3, 0x405

    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    .line 306
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 307
    return-void

    :cond_0
    move v0, v1

    .line 306
    goto :goto_0
.end method

.method public requestPrivateModeOn()V
    .locals 2

    .prologue
    const/16 v1, 0x406

    .line 330
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    .line 332
    return-void
.end method

.method public requestVerifyUser()V
    .locals 2

    .prologue
    const/16 v1, 0x401

    .line 464
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->removeMessages(I)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mH:Lcom/samsung/android/personalpage/service/PersonalPageService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->sendEmptyMessage(I)Z

    .line 466
    return-void
.end method

.method public setPersonalPageServiceActivity(Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)V
    .locals 0
    .param p1, "argActivity"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mActivity:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    .line 470
    return-void
.end method

.method public setPreferences(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 842
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 843
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 844
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 845
    return-void
.end method

.method updateSettingDB(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 852
    const-string v0, "PersonalPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePrivateModeDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 854
    return-void
.end method
