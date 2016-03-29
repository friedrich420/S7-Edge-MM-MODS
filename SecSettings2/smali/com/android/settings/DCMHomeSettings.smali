.class public Lcom/android/settings/DCMHomeSettings;
.super Landroid/app/ListFragment;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DCMHomeSettings$HomeAdapter;
    }
.end annotation


# instance fields
.field private EXTRA_LARGE_FONT_SCALE:F

.field private LARGE_FONT_SCALE:F

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurrentHome:I

.field private mCurrentMode:I

.field private mExtraLargeFontIndex:I

.field private mHasEasyLauncher:Z

.field mHomeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeIntent:Landroid/content/Intent;

.field private mInitHome:I

.field private mMw:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelectedHome:I

.field private mSetupButton:Landroid/widget/TextView;

.field private mSetupMode:Z

.field private objValue:Ljava/lang/Object;

.field private previousIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 72
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DCMHomeSettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 73
    iput v1, p0, Lcom/android/settings/DCMHomeSettings;->previousIndex:I

    .line 74
    const v0, 0x3f9ae148    # 1.21f

    iput v0, p0, Lcom/android/settings/DCMHomeSettings;->LARGE_FONT_SCALE:F

    .line 75
    const v0, 0x3fc28f5c    # 1.52f

    iput v0, p0, Lcom/android/settings/DCMHomeSettings;->EXTRA_LARGE_FONT_SCALE:F

    .line 76
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/DCMHomeSettings;->mExtraLargeFontIndex:I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/DCMHomeSettings;->mSetupMode:Z

    .line 506
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/DCMHomeSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DCMHomeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/settings/DCMHomeSettings;->mInitHome:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/DCMHomeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DCMHomeSettings;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/DCMHomeSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DCMHomeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/settings/DCMHomeSettings;->mSelectedHome:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/DCMHomeSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DCMHomeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/DCMHomeSettings;->changeHome(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/DCMHomeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DCMHomeSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/DCMHomeSettings;->startHome()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/DCMHomeSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DCMHomeSettings;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DCMHomeSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private changeHome(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 292
    const-string v1, "DCMHomeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeHome "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 294
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v0}, Lcom/android/settings/DCMHomeSettings;->setPreferredHome(Landroid/content/pm/ResolveInfo;)V

    .line 295
    iput p1, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    .line 297
    packed-switch p1, :pswitch_data_0

    .line 312
    invoke-direct {p0, v4, v5}, Lcom/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    .line 315
    :goto_0
    return-void

    .line 299
    :pswitch_0
    invoke-direct {p0, v4, v5}, Lcom/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-direct {p0, v4, v4}, Lcom/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 305
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v1, :cond_0

    .line 306
    invoke-direct {p0, v5, v4}, Lcom/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 492
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 494
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 486
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setEasymode(ZZ)V
    .locals 12
    .param p1, "enabled"    # Z
    .param p2, "isCustom"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x2

    const/4 v6, 0x0

    .line 350
    const-string v8, "DCMHomeSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setEasymode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz p1, :cond_3

    move v5, v6

    .line 352
    .local v5, "switchValue":I
    :goto_0
    iget-object v8, p0, Lcom/android/settings/DCMHomeSettings;->mMw:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v8, :cond_0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "easymode"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .local v2, "key":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_4

    .line 355
    iget-object v8, p0, Lcom/android/settings/DCMHomeSettings;->mMw:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v8, v2, v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateMultiWindowSetting(Ljava/lang/StringBuilder;Z)V

    .line 360
    .end local v2    # "key":Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "easy_mode_switch"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "easymode"

    invoke-virtual {v1, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    const-string v8, "easymode_from"

    const-string v9, "settings"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    if-eqz p2, :cond_5

    .line 365
    const-string v8, "homemode_jpn"

    const-string v9, "docomo"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    :goto_2
    iget-boolean v8, p0, Lcom/android/settings/DCMHomeSettings;->mSetupMode:Z

    if-nez v8, :cond_2

    .line 371
    iget-object v8, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "easy_mode_switch"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_6

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->setLargeFont()V

    .line 375
    iget-object v7, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "smart_scroll"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 376
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v4, "smart_scroll_changed":Landroid/content/Intent;
    const-string v7, "isEnable"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    iget-object v7, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "smart_pause"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v3, "smart_pause_changed":Landroid/content/Intent;
    const-string v7, "isEnable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    iget-object v7, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, "finger_air_view_changed":Landroid/content/Intent;
    const-string v7, "isEnable"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    iget-object v7, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "multi_window_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    .end local v0    # "finger_air_view_changed":Landroid/content/Intent;
    .end local v3    # "smart_pause_changed":Landroid/content/Intent;
    .end local v4    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_1
    :goto_3
    if-nez p2, :cond_2

    .line 401
    iget v6, p0, Lcom/android/settings/DCMHomeSettings;->mInitHome:I

    if-eq v6, v11, :cond_7

    iget v6, p0, Lcom/android/settings/DCMHomeSettings;->mSelectedHome:I

    if-ne v6, v11, :cond_7

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    :cond_2
    :goto_4
    return-void

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "switchValue":I
    :cond_3
    move v5, v7

    .line 351
    goto/16 :goto_0

    .line 357
    .restart local v2    # "key":Ljava/lang/StringBuilder;
    .restart local v5    # "switchValue":I
    :cond_4
    iget-object v8, p0, Lcom/android/settings/DCMHomeSettings;->mMw:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v8, v2, v7}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateMultiWindowSetting(Ljava/lang/StringBuilder;Z)V

    goto/16 :goto_1

    .line 367
    .end local v2    # "key":Ljava/lang/StringBuilder;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v8, "homemode_jpn"

    const-string v9, "samsung"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 394
    :cond_6
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->setStandardFont()V

    goto :goto_3

    .line 403
    :cond_7
    iget v6, p0, Lcom/android/settings/DCMHomeSettings;->mInitHome:I

    if-ne v6, v11, :cond_2

    iget v6, p0, Lcom/android/settings/DCMHomeSettings;->mSelectedHome:I

    if-eq v6, v11, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private startHome()V
    .locals 4

    .prologue
    .line 468
    const-string v1, "DCMHomeSettings"

    const-string v2, "startHome"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 475
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/settings/DCMHomeSettings;->startActivity(Landroid/content/Intent;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 479
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    const-string v0, "DCMHomeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 239
    new-instance v0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;

    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08005b

    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/DCMHomeSettings$HomeAdapter;-><init>(Lcom/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DCMHomeSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 109
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const-string v4, "DCMHomeSettings"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    .line 114
    iput v6, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    .line 115
    iput v6, p0, Lcom/android/settings/DCMHomeSettings;->mInitHome:I

    .line 116
    iput v6, p0, Lcom/android/settings/DCMHomeSettings;->mSelectedHome:I

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v4

    iput v4, p0, Lcom/android/settings/DCMHomeSettings;->LARGE_FONT_SCALE:F

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v4

    iput v4, p0, Lcom/android/settings/DCMHomeSettings;->EXTRA_LARGE_FONT_SCALE:F

    .line 121
    iget-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .line 124
    .local v2, "isSettingWizard":Z
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mHomeIntent:Landroid/content/Intent;

    .line 125
    iget-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mHomeIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings;->mHomeIntent:Landroid/content/Intent;

    const v6, 0x10040

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    .line 128
    new-instance v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mMw:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 130
    iget-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "font_size"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/DCMHomeSettings;->previousIndex:I

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/DCMHomeSettings;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/android/settings/DCMHomeSettings;->mExtraLargeFontIndex:I

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    .line 135
    const-string v4, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v4}, Lcom/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 136
    iget-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string v5, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v5}, Lcom/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v4, "DCMHomeSettings"

    const-string v5, "NewCustomerLauncher add"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_1
    const-string v4, "com.sec.android.app.launcher"

    invoke-direct {p0, v4}, Lcom/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string v5, "com.sec.android.app.launcher"

    invoke-direct {p0, v5}, Lcom/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v4, "DCMHomeSettings"

    const-string v5, "TWLauncher add"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    const-string v4, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v4}, Lcom/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 147
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string v4, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v4}, Lcom/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v3, "DCMHomeSettings"

    const-string v4, "EasyLauncher add"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_2
    if-nez v2, :cond_6

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 156
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 158
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.nttdocomo.android.paletteui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.nttdocomo.android.dhome"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.launcher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.easylauncher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.kidslauncher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.longlifemodelauncher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.kidshome"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .end local v0    # "i":I
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "isSettingWizard":Z
    :cond_3
    move v2, v3

    .line 121
    goto/16 :goto_0

    .line 138
    .restart local v2    # "isSettingWizard":Z
    :cond_4
    const-string v4, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v4}, Lcom/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string v5, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v5}, Lcom/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v4, "DCMHomeSettings"

    const-string v5, "CustomerLauncher add"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 150
    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    goto/16 :goto_2

    .line 173
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 174
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 175
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 176
    const-string v3, "DCMHomeSettings"

    const-string v4, "Remove secsetupwizard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 182
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_8
    const/4 v0, 0x0

    :goto_5
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 183
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 184
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 185
    const-string v3, "DCMHomeSettings"

    const-string v4, "Remove googlesetupwizard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 189
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    const-string v0, "DCMHomeSettings"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const v0, 0x7f040105

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v6, 0x1

    .line 244
    const-string v3, "DCMHomeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v3, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    if-ne v3, p3, :cond_0

    .line 289
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 253
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-boolean v3, p0, Lcom/android/settings/DCMHomeSettings;->mSetupMode:Z

    if-eqz v3, :cond_1

    .line 254
    invoke-direct {p0, p3}, Lcom/android/settings/DCMHomeSettings;->changeHome(I)V

    .line 255
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mSetupButton:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DCMHomeSettings$HomeAdapter;

    invoke-virtual {v3}, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "label":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 273
    :cond_2
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e160b

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/DCMHomeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/DCMHomeSettings$1;

    invoke-direct {v5, p0, p3}, Lcom/android/settings/DCMHomeSettings$1;-><init>(Lcom/android/settings/DCMHomeSettings;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 287
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 261
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_0
    const v3, 0x7f0e160c

    invoke-virtual {p0, v3}, Lcom/android/settings/DCMHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    goto :goto_1

    .line 264
    :pswitch_1
    const v3, 0x7f0e160e

    invoke-virtual {p0, v3}, Lcom/android/settings/DCMHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    goto :goto_1

    .line 267
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-eqz v3, :cond_2

    .line 268
    const v3, 0x7f0e1610

    invoke-virtual {p0, v3}, Lcom/android/settings/DCMHomeSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 198
    const-string v2, "DCMHomeSettings"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 202
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_4

    .line 203
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    iput v0, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    .line 210
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string v2, "com.sec.android.app.launcher"

    invoke-direct {p0, v2}, Lcom/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 211
    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentMode:I

    .line 212
    iget v2, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentMode:I

    if-nez v2, :cond_5

    .line 213
    iput v6, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    .line 221
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    if-eq v2, v5, :cond_7

    iget-boolean v2, p0, Lcom/android/settings/DCMHomeSettings;->mSetupMode:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mSetupButton:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 222
    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mSetupButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 229
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 230
    const-string v2, "DCMHomeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentHome: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DCMHomeSettings$HomeAdapter;

    invoke-virtual {v2}, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->notifyDataSetChanged()V

    .line 233
    :cond_3
    return-void

    .line 200
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5
    iput v4, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    goto :goto_1

    .line 217
    :cond_6
    const-string v2, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v2}, Lcom/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iput v6, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    goto :goto_1

    .line 223
    :cond_7
    iget v2, p0, Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I

    if-ne v2, v5, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/DCMHomeSettings;->mSetupMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mSetupButton:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 225
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/DCMHomeSettings;->changeHome(I)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mSetupButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public setLargeFont()V
    .locals 7

    .prologue
    .line 412
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "font_size"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 418
    .local v2, "previousIndex":I
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "STANDARD_FONT_SIZE"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/DCMHomeSettings;->EXTRA_LARGE_FONT_SCALE:F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 421
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "large_font"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    const-string v3, "DCMHomeSettings"

    const-string v4, "KKK android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "font_size"

    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/DCMHomeSettings;->LARGE_FONT_SCALE:F

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getFontIndex(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    iget v3, p0, Lcom/android/settings/DCMHomeSettings;->LARGE_FONT_SCALE:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DCMHomeSettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 430
    return-void

    .line 413
    .end local v2    # "previousIndex":I
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "DCMHomeSettings"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreferredHome(Landroid/content/pm/ResolveInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 326
    const-string v5, "DCMHomeSettings"

    const-string v6, "setPreferredHome"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 330
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 332
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/ComponentName;

    .line 333
    .local v0, "components":[Landroid/content/ComponentName;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v4, "target":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 336
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 337
    .local v2, "home":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v3

    .line 340
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 341
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 335
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "home":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v6, p1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v5, v1, v6, v0, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 347
    return-void
.end method

.method public setStandardFont()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 434
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "STANDARD_FONT_SIZE"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 436
    .local v0, "fontIndex":I
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DCMHomeSettings;->objValue:Ljava/lang/Object;

    .line 438
    const-string v3, "DCMHomeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KKK setStandardFont fontIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " objValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings;->objValue:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "font_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 441
    .local v2, "previousIndex":I
    iget v3, p0, Lcom/android/settings/DCMHomeSettings;->mExtraLargeFontIndex:I

    if-gt v2, v3, :cond_1

    iget v3, p0, Lcom/android/settings/DCMHomeSettings;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_1

    .line 442
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 445
    const-string v3, "DCMHomeSettings"

    const-string v4, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->objValue:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/settings/DCMHomeSettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 454
    return-void

    .line 446
    :cond_1
    iget v3, p0, Lcom/android/settings/DCMHomeSettings;->mExtraLargeFontIndex:I

    if-le v2, v3, :cond_0

    iget v3, p0, Lcom/android/settings/DCMHomeSettings;->mExtraLargeFontIndex:I

    if-gt v0, v3, :cond_0

    .line 447
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "large_font"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    const-string v3, "DCMHomeSettings"

    const-string v4, "setStandardFont android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 459
    .local v1, "fontScale":F
    iget-object v2, p0, Lcom/android/settings/DCMHomeSettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 460
    const-string v2, "DCMHomeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DCMHomeSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v1    # "fontScale":F
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DCMHomeSettings"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
