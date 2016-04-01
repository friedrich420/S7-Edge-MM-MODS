.class public Lcom/android/server/am/DualScreenPolicy;
.super Ljava/lang/Object;
.source "DualScreenPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;
    }
.end annotation


# static fields
.field public static final ACTION_FOLDING_STATE_CHANGED_INTENT:Ljava/lang/String; = "com.samsung.android.dualscreen.action.FOLDING_STATE_CHANGED"

.field private static final DEBUG:Z

.field public static final DEFAULT_FINISH_WITH_COUPLED_TASK:Z = true

.field public static final EXTRA_FOLDING_STATE:Ljava/lang/String; = "com.samsung.android.dualscreen.extra.FOLDING_STATE"

.field static final FLAG_EXPANEDED_HOME_NONE:I = 0x0

.field static final FLAG_EXPANEDED_HOME_ON_EXPANEDED:I = 0x3

.field static final FLAG_EXPANEDED_HOME_ON_MAIN:I = 0x1

.field static final FLAG_EXPANEDED_HOME_ON_SUB:I = 0x2

.field static final FLAG_EXPANEDED_HOME_STATUS:[I

.field static final MULTIPLE_SCREEN_STATE_CHANGED_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DualScreenPolicy"

.field public static final USE_INTERNAL_APIS:Ljava/lang/String; = "com.samsung.android.dualscreen.permission.USE_INTERNAL_APIS"

.field public static final WAKE_UP_2_FINGER:I = 0x4

.field public static final WAKE_UP_REASON_APP_LAUNCHING_BACK_SCREEN:I = 0x8

.field public static final WAKE_UP_REASON_BACK_SCREEN:I = 0x5

.field public static final WAKE_UP_REASON_COVER_OPEN:I = 0x1

.field public static final WAKE_UP_REASON_FLIP_SENSOR:I = 0x2

.field public static final WAKE_UP_REASON_POWER_STATE:I = 0x6

.field public static final WAKE_UP_REASON_UNKNOWN:I = 0x0

.field public static final WAKE_UP_REASON_WAKEFULNESS_CHANGED:I = 0x7

.field public static final WAKE_UP_REASON_WRAP_AROUND:I = 0x3


# instance fields
.field private mActivityService:Lcom/android/server/am/ActivityManagerService;

.field private final mBrowserAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mExpandedHomeStatus:I

.field final mHandler:Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

.field mNeedToUpdatePackageList:Z

.field mSingleScreenState:Z

.field mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field public mTalkBackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, FLAG_EXPANEDED_HOME_STATUS:[I

    return-void

    nop

    :array_e
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    .line 74
    iput-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 77
    iput-boolean v1, p0, mTalkBackEnabled:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mBrowserAppList:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedToUpdatePackageList:Z

    .line 84
    iput-boolean v1, p0, mSingleScreenState:Z

    .line 86
    iput v1, p0, mExpandedHomeStatus:I

    .line 162
    iput-object p1, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    .line 163
    iget-object v0, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 164
    new-instance v0, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;-><init>(Lcom/android/server/am/DualScreenPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/DualScreenPolicy;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/DualScreenPolicy;

    .prologue
    .line 69
    iget-object v0, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private applyMultipleScreenState(I)V
    .registers 9
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 348
    and-int/lit8 v4, p1, 0x1

    if-ne v4, v2, :cond_1f

    move v0, v2

    .line 349
    .local v0, "mainScreenOn":Z
    :goto_8
    and-int/lit8 v4, p1, 0x2

    if-ne v4, v5, :cond_21

    move v1, v2

    .line 351
    .local v1, "subScreenOn":Z
    :goto_d
    iget-object v4, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mScreenState:[I

    if-eqz v0, :cond_23

    move v4, v5

    :goto_14
    aput v4, v6, v3

    .line 352
    iget-object v3, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenState:[I

    if-eqz v1, :cond_25

    :goto_1c
    aput v5, v3, v2

    .line 353
    return-void

    .end local v0    # "mainScreenOn":Z
    .end local v1    # "subScreenOn":Z
    :cond_1f
    move v0, v3

    .line 348
    goto :goto_8

    .restart local v0    # "mainScreenOn":Z
    :cond_21
    move v1, v3

    .line 349
    goto :goto_d

    .restart local v1    # "subScreenOn":Z
    :cond_23
    move v4, v2

    .line 351
    goto :goto_14

    :cond_25
    move v5, v2

    .line 352
    goto :goto_1c
.end method

.method public static canBeCoupled(Lcom/android/server/am/ActivityRecord;)Z
    .registers 2
    .param p0, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 666
    const/4 v0, 0x1

    return v0
.end method

.method private canBeLinkedApp(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "caller"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "launchedFromPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 489
    iget-object v2, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->isScreenOn(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 490
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : SUBSCREEN is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_11
    return v0

    .line 494
    :cond_12
    if-eqz p4, :cond_16

    if-nez p2, :cond_1e

    .line 495
    :cond_16
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From system(null)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 498
    :cond_1e
    const-string v2, "android"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "com.android.systemui"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 499
    :cond_2e
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From android or systemui"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 503
    :cond_36
    const-string v2, "com.google.android.setupwizard"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 504
    :cond_46
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From setupwizard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 507
    :cond_4e
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 508
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : From Launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 512
    :cond_60
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isSamsungHomeActivity()Z

    move-result v2

    if-nez v2, :cond_74

    .line 513
    const-string v1, "DualScreenPolicy"

    const-string v2, "canbeLinkedApp Case : called from HomeActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 517
    :cond_74
    if-eqz p3, :cond_7e

    .line 518
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : exist resultTo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 522
    :cond_7e
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_ab

    .line 523
    const-class v2, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    const-class v2, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 524
    :cond_a2
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : Resolver(ChooserActivity)Activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 528
    :cond_ab
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->isInFixedScreenMode()Z

    move-result v2

    if-eqz v2, :cond_ca

    if-eqz p2, :cond_ca

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v2, v3, :cond_ca

    .line 531
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : In FixedScreenMode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 535
    :cond_ca
    invoke-virtual {p0}, isTalkBackEnabled()Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 536
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : Voice Assistant Enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 540
    :cond_d9
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_105

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_105

    .line 541
    const-string v2, "android.intent.action.MAIN"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_105

    invoke-direct {p0, p1}, isBrowserApp(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 542
    const-string v0, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 543
    goto/16 :goto_11

    .line 546
    :cond_105
    const-string v1, "DualScreenPolicy"

    const-string v2, "canBeLinkedApp Case : else"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11
.end method

.method public static getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 3
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "medataDataKey"    # Ljava/lang/String;

    .prologue
    .line 475
    if-eqz p0, :cond_2e

    .line 476
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 477
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 484
    :goto_14
    return v0

    .line 480
    :cond_15
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 481
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14

    .line 484
    :cond_2e
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static getPolicyOrientation(II)I
    .registers 4
    .param p0, "requestedOrientation"    # I
    .param p1, "targetActivityOrientation"    # I

    .prologue
    .line 693
    move v0, p1

    .line 694
    .local v0, "orientation":I
    packed-switch p1, :pswitch_data_26

    .line 720
    :pswitch_4
    move v0, p0

    .line 723
    :cond_5
    :goto_5
    return v0

    .line 699
    :pswitch_6
    if-eqz p0, :cond_13

    const/16 v1, 0x8

    if-eq p0, v1, :cond_13

    const/4 v1, 0x6

    if-eq p0, v1, :cond_13

    const/16 v1, 0xb

    if-ne p0, v1, :cond_5

    .line 703
    :cond_13
    move v0, p0

    goto :goto_5

    .line 711
    :pswitch_15
    const/4 v1, 0x1

    if-eq p0, v1, :cond_23

    const/16 v1, 0x9

    if-eq p0, v1, :cond_23

    const/4 v1, 0x7

    if-eq p0, v1, :cond_23

    const/16 v1, 0xc

    if-ne p0, v1, :cond_5

    .line 715
    :cond_23
    move v0, p0

    goto :goto_5

    .line 694
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6
        :pswitch_15
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_15
        :pswitch_6
        :pswitch_15
        :pswitch_4
        :pswitch_6
        :pswitch_15
    .end packed-switch
.end method

.method private getScreenStateLocked()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "screenState":I
    iget-object v1, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    :goto_c
    or-int/2addr v0, v1

    .line 313
    iget-object v1, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->isScreenOn(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v3, 0x2

    :cond_16
    or-int/2addr v0, v3

    .line 315
    return v0

    :cond_18
    move v1, v3

    .line 312
    goto :goto_c
.end method

.method private isBrowserApp(Lcom/android/server/am/ActivityRecord;)Z
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x0

    .line 880
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-nez v6, :cond_6

    .line 901
    :cond_5
    :goto_5
    return v5

    .line 883
    :cond_6
    iget-boolean v6, p0, mNeedToUpdatePackageList:Z

    if-eqz v6, :cond_34

    .line 884
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    .local v3, "queryIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.APP_BROWSER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    :try_start_16
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x80

    iget-object v9, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v9

    invoke-interface {v6, v3, v7, v8, v9}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 889
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, mBrowserAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 890
    iget-object v6, p0, mBrowserAppList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 891
    const/4 v6, 0x0

    iput-boolean v6, p0, mNeedToUpdatePackageList:Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_34} :catch_56

    .line 896
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "queryIntent":Landroid/content/Intent;
    :cond_34
    :goto_34
    iget-object v6, p0, mBrowserAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 897
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 898
    const/4 v5, 0x1

    goto :goto_5

    .line 892
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "queryIntent":Landroid/content/Intent;
    :catch_56
    move-exception v0

    .line 893
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_34
.end method

.method public static isCoupled(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 8
    .param p0, "a"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "b"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 670
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v2, v3

    .line 689
    :cond_7
    :goto_7
    return v2

    .line 674
    :cond_8
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_2c

    .line 675
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getParentCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 676
    .local v1, "targetParentTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 678
    .local v0, "targetChildTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_22

    .line 679
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v5, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v4, v5, :cond_7

    .line 683
    :cond_22
    if-eqz v0, :cond_2c

    .line 684
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v4, v5, :cond_7

    .end local v0    # "targetChildTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "targetParentTask":Lcom/android/server/am/TaskRecord;
    :cond_2c
    move v2, v3

    .line 689
    goto :goto_7
.end method

.method public static isFullViewLaunchWithPriority(Landroid/content/pm/ActivityInfo;)Z
    .registers 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 467
    const-string v0, "com.samsung.android.sdk.dualscreen.fullview.launchWithPriority"

    invoke-static {p0, v0}, getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFullView(Landroid/content/pm/ActivityInfo;)Z
    .registers 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 471
    const-string v0, "com.samsung.android.sdk.dualscreen.fullview.enable"

    invoke-static {p0, v0}, getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static makeTaskInfo(Lcom/android/server/am/TaskRecord;)Lcom/samsung/android/dualscreen/TaskInfo;
    .registers 9
    .param p0, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v7, 0x3

    .line 625
    if-nez p0, :cond_5

    .line 626
    const/4 v5, 0x0

    .line 661
    :goto_4
    return-object v5

    .line 628
    :cond_5
    new-instance v5, Lcom/samsung/android/dualscreen/TaskInfo;

    iget v6, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;-><init>(I)V

    .line 630
    .local v5, "ti":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getType()I

    move-result v4

    .line 631
    .local v4, "taskType":I
    if-lt v4, v7, :cond_15

    .line 632
    if-ne v4, v7, :cond_49

    .line 633
    const/4 v4, 0x0

    .line 640
    :cond_15
    :goto_15
    invoke-virtual {v5, v4}, Lcom/samsung/android/dualscreen/TaskInfo;->setTaskType(I)V

    .line 642
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_53

    .line 643
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v1

    .line 644
    .local v1, "displayId":I
    invoke-static {v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    .line 645
    .local v3, "screen":Lcom/samsung/android/dualscreen/DualScreen;
    invoke-virtual {v5, v3}, Lcom/samsung/android/dualscreen/TaskInfo;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 649
    .end local v1    # "displayId":I
    .end local v3    # "screen":Lcom/samsung/android/dualscreen/DualScreen;
    :goto_29
    iget-boolean v6, p0, Lcom/android/server/am/TaskRecord;->fixed:Z

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setFixed(Z)V

    .line 651
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getParentCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 652
    .local v2, "parentTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 654
    .local v0, "childTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_3d

    .line 655
    iget v6, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setParentCoupledTaskId(I)V

    .line 657
    :cond_3d
    if-eqz v0, :cond_44

    .line 658
    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setChildCoupledTaskId(I)V

    .line 660
    :cond_44
    iget-boolean v6, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    iput-boolean v6, v5, Lcom/samsung/android/dualscreen/TaskInfo;->canMoveTaskToScreen:Z

    goto :goto_4

    .line 634
    .end local v0    # "childTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "parentTask":Lcom/android/server/am/TaskRecord;
    :cond_49
    const/4 v6, 0x4

    if-ne v4, v6, :cond_4e

    .line 635
    const/4 v4, 0x1

    goto :goto_15

    .line 636
    :cond_4e
    const/4 v6, 0x6

    if-ne v4, v6, :cond_15

    .line 637
    const/4 v4, 0x6

    goto :goto_15

    .line 647
    :cond_53
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5, v6}, Lcom/samsung/android/dualscreen/TaskInfo;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_29
.end method

.method public static screenStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "screenState"    # I

    .prologue
    .line 356
    packed-switch p0, :pswitch_data_12

    .line 366
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 358
    :pswitch_6
    const-string v0, "ALL_SCREEN_ON"

    goto :goto_5

    .line 360
    :pswitch_9
    const-string v0, "ALL_SCREEN_OFF"

    goto :goto_5

    .line 362
    :pswitch_c
    const-string v0, "MAIN_SCREEN_ON"

    goto :goto_5

    .line 364
    :pswitch_f
    const-string v0, "SUB_SCREEN_ON"

    goto :goto_5

    .line 356
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_6
    .end packed-switch
.end method

.method private sendShrinkRequestIfNeededLocked(I)V
    .registers 7
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x1

    .line 293
    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_6

    .line 308
    :goto_5
    return-void

    .line 298
    :cond_6
    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v2

    rsub-int/lit8 v1, v2, 0x3

    .line 299
    .local v1, "oppositeDisplayZone":I
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->convertScreenZoneToDisplayId(I)I

    move-result v0

    .line 301
    .local v0, "oppositeDisplayId":I
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v3, 0x65

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->sendShrinkRequestToAllResumedActivityLocked(II)V

    .line 304
    if-ne p1, v4, :cond_21

    .line 305
    iget-object v2, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsToDisplayIfNeededLocked(Z)V

    .line 307
    :cond_21
    iget-object v2, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->cancelDualScreenTransitionIfNeeded(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_5
.end method

.method private setSingleScreenStateLocked(Z)V
    .registers 11
    .param p1, "singleScreen"    # Z

    .prologue
    const/4 v8, 0x0

    .line 319
    iget-boolean v5, p0, mSingleScreenState:Z

    if-eq v5, p1, :cond_5b

    .line 320
    const-string v5, "DualScreenPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "singleScreenState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mSingleScreenState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz p1, :cond_5c

    .line 322
    iget-object v5, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v5, Lcom/android/server/am/ActivityStackSupervisor;->mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

    .line 323
    .local v2, "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_59

    iget-object v5, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 324
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 325
    .local v4, "topActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2, v8}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 326
    .local v1, "expandedHomeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_59

    if-ne v4, v1, :cond_59

    .line 327
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    .line 328
    .local v0, "displayId":I
    if-ltz v0, :cond_59

    const/4 v5, 0x2

    if-gt v0, v5, :cond_59

    .line 329
    sget-object v5, FLAG_EXPANEDED_HOME_STATUS:[I

    aget v5, v5, v0

    iput v5, p0, mExpandedHomeStatus:I

    .line 343
    .end local v0    # "displayId":I
    .end local v1    # "expandedHomeActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    .end local v4    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_59
    :goto_59
    iput-boolean p1, p0, mSingleScreenState:Z

    .line 345
    :cond_5b
    return-void

    .line 334
    :cond_5c
    const/4 v3, 0x0

    .line 335
    .local v3, "result":Z
    const/4 v0, 0x2

    .restart local v0    # "displayId":I
    :goto_5e
    if-ltz v0, :cond_66

    .line 336
    invoke-virtual {p0, v0}, moveExpandedHomeTaskToActiveScreenLocked(I)Z

    move-result v3

    .line 337
    if-eqz v3, :cond_6a

    .line 341
    :cond_66
    const/4 v5, 0x0

    iput v5, p0, mExpandedHomeStatus:I

    goto :goto_59

    .line 335
    :cond_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_5e
.end method


# virtual methods
.method public applyDualScreenAttrs(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/android/server/am/DualScreenAttrs;
    .registers 8
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "launchedFromPackage"    # Ljava/lang/String;
    .param p4, "resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "sourceToken"    # Landroid/os/IBinder;

    .prologue
    .line 371
    new-instance v0, Lcom/android/server/am/DualScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/DualScreenAttrs;-><init>()V

    .line 463
    .local v0, "attrs":Lcom/android/server/am/DualScreenAttrs;
    return-object v0
.end method

.method public arrangeFullViewPolicyOnResumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .registers 21
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 731
    move-object/from16 v0, p0

    iget-object v1, v0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 732
    .local v13, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "dual_screen_fullview_shrink_mode"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v13, v1, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 734
    .local v10, "fullViewShrinkMode":I
    if-nez v10, :cond_16

    .line 779
    :cond_15
    :goto_15
    return-void

    .line 738
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUniversalTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 739
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 740
    .local v9, "N":I
    if-lez v9, :cond_15

    .line 744
    const/16 v17, 0x0

    .line 745
    .local v17, "topTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    .line 746
    .local v2, "nextTask":Lcom/android/server/am/TaskRecord;
    const/4 v14, 0x0

    .line 747
    .local v14, "screenZone":I
    add-int/lit8 v11, v9, -0x1

    .local v11, "i":I
    :goto_2a
    if-ltz v11, :cond_44

    .line 748
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/TaskRecord;

    .line 749
    .local v18, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v15

    .line 751
    .local v15, "taskScreenZone":I
    if-eqz v15, :cond_88

    .line 752
    if-nez v17, :cond_3e

    .line 753
    move-object/from16 v17, v18

    .line 756
    :cond_3e
    or-int/2addr v14, v15

    .line 758
    const/4 v1, 0x3

    if-ne v14, v1, :cond_88

    .line 759
    move-object/from16 v2, v18

    .line 765
    .end local v15    # "taskScreenZone":I
    .end local v18    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_44
    if-eqz v17, :cond_15

    if-eqz v2, :cond_15

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_15

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->isRecentTask()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->hasFullScreenActivity()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 769
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_15

    .line 770
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->getScreenZone()I

    move-result v1

    rsub-int/lit8 v12, v1, 0x3

    .line 771
    .local v12, "oppositeDisplayZone":I
    invoke-static {v12}, Lcom/android/server/am/ActivityStackSupervisor;->convertScreenZoneToDisplayId(I)I

    move-result v3

    .line 772
    .local v3, "displayId":I
    const/4 v1, -0x1

    if-eq v3, v1, :cond_15

    .line 773
    move-object/from16 v0, p0

    iget-object v1, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isExpandHomeTask()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZZZ)V

    .line 774
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isExpandHomeTask()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 775
    const/4 v1, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_15

    .line 747
    .end local v3    # "displayId":I
    .end local v12    # "oppositeDisplayZone":I
    .restart local v15    # "taskScreenZone":I
    .restart local v18    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_88
    add-int/lit8 v11, v11, -0x1

    goto :goto_2a
.end method

.method public arrangeTaskToReturnTo()V
    .registers 1

    .prologue
    .line 973
    return-void
.end method

.method public handleMultipleScreenStateChangedLocked(II)V
    .registers 13
    .param p1, "nextState"    # I
    .param p2, "reason"    # I

    .prologue
    .line 175
    iget-object v7, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v7, :cond_7

    .line 290
    :cond_6
    :goto_6
    return-void

    .line 179
    :cond_7
    invoke-direct {p0}, getScreenStateLocked()I

    move-result v0

    .line 181
    .local v0, "currentScreenState":I
    const-string v7, "DualScreenPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currentScreenState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, screenStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nextState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, screenStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v7, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mIsBackWindowShown:Z

    if-eqz v7, :cond_5a

    .line 184
    const/4 v7, 0x5

    if-ne p2, v7, :cond_5a

    .line 185
    const/4 v7, 0x1

    if-eq p1, v7, :cond_4f

    const/4 v7, 0x2

    if-ne p1, v7, :cond_56

    .line 188
    :cond_4f
    iget-object v7, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->setBackWindowShownLocked(ZI)V

    .line 191
    :cond_56
    invoke-direct {p0, p1}, applyMultipleScreenState(I)V

    goto :goto_6

    .line 196
    :cond_5a
    if-eq v0, p1, :cond_6

    .line 200
    invoke-direct {p0, p1}, applyMultipleScreenState(I)V

    .line 202
    const/4 v4, -0x1

    .line 203
    .local v4, "prevBackWindowDisplayId":I
    const/4 v3, 0x0

    .line 205
    .local v3, "needToScreenStateChanged":Z
    iget-object v7, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mIsBackWindowShown:Z

    if-eqz v7, :cond_79

    .line 206
    iget-object v7, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v7, Lcom/android/server/am/ActivityManagerService;->mBackWindowDisplayId:I

    .line 207
    iget-object v7, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->setBackWindowShownLocked(ZI)V

    .line 209
    invoke-virtual {p0, v4}, isActiveDisplayLocked(I)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 210
    const/4 v3, 0x1

    .line 214
    :cond_79
    packed-switch v0, :pswitch_data_17c

    .line 286
    :cond_7c
    :goto_7c
    if-eqz v3, :cond_6

    .line 287
    const-string v7, "DualScreenPolicy"

    const-string/jumbo v8, "needToScreenStateChanged due to BackWindow"

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v7, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x2

    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityManagerService;->onScreenStateChanged(II)V

    goto/16 :goto_6

    .line 216
    :pswitch_8e
    const/4 v7, 0x1

    if-eq p1, v7, :cond_94

    const/4 v7, 0x2

    if-ne p1, v7, :cond_a2

    .line 219
    :cond_94
    const/4 v7, 0x1

    invoke-direct {p0, v7}, setSingleScreenStateLocked(Z)V

    .line 220
    const/4 v7, 0x1

    if-ne p1, v7, :cond_a0

    const/4 v1, 0x0

    .line 221
    .local v1, "displayId":I
    :goto_9c
    invoke-virtual {p0, v1}, moveExpandedHomeTaskToActiveScreenLocked(I)Z

    goto :goto_7c

    .line 220
    .end local v1    # "displayId":I
    :cond_a0
    const/4 v1, 0x1

    goto :goto_9c

    .line 222
    :cond_a2
    const/4 v7, 0x3

    if-ne p1, v7, :cond_7c

    .line 223
    const/4 v7, 0x0

    invoke-direct {p0, v7}, setSingleScreenStateLocked(Z)V

    goto :goto_7c

    .line 228
    :pswitch_aa
    const/4 v7, 0x2

    if-ne p1, v7, :cond_b2

    .line 230
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, moveExpandedHomeTaskToActiveScreenLocked(I)Z

    goto :goto_7c

    .line 231
    :cond_b2
    const/4 v7, 0x3

    if-ne p1, v7, :cond_7c

    .line 232
    iget v2, p0, mExpandedHomeStatus:I

    .line 233
    .local v2, "expandedHomeStatus":I
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 234
    .local v5, "topActivityOnMain":Lcom/android/server/am/ActivityRecord;
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 235
    .local v6, "topActivityOnSub":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_f2

    if-eqz v6, :cond_f2

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-nez v7, :cond_f2

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-eqz v7, :cond_f2

    .line 237
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_f2

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_f2

    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_f2

    .line 239
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, setFullViewHomeStatusLocked(ZI)V

    .line 242
    :cond_f2
    const/4 v7, 0x0

    invoke-direct {p0, v7}, setSingleScreenStateLocked(Z)V

    .line 243
    const/4 v7, 0x2

    if-ne p2, v7, :cond_7c

    const/4 v7, 0x2

    if-ne v2, v7, :cond_7c

    .line 244
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v8, 0xca

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->sendExpandRequestToExpandableActivityLocked(I)V

    goto/16 :goto_7c

    .line 251
    .end local v2    # "expandedHomeStatus":I
    .end local v5    # "topActivityOnMain":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topActivityOnSub":Lcom/android/server/am/ActivityRecord;
    :pswitch_105
    const/4 v7, 0x1

    if-ne p1, v7, :cond_10e

    .line 253
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, moveExpandedHomeTaskToActiveScreenLocked(I)Z

    goto/16 :goto_7c

    .line 254
    :cond_10e
    const/4 v7, 0x3

    if-ne p1, v7, :cond_7c

    .line 255
    iget v2, p0, mExpandedHomeStatus:I

    .line 256
    .restart local v2    # "expandedHomeStatus":I
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 257
    .restart local v5    # "topActivityOnMain":Lcom/android/server/am/ActivityRecord;
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 258
    .restart local v6    # "topActivityOnSub":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_14e

    if-eqz v6, :cond_14e

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-eqz v7, :cond_14e

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-nez v7, :cond_14e

    .line 260
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v7, :cond_14e

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_14e

    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_14e

    .line 262
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, setFullViewHomeStatusLocked(ZI)V

    .line 265
    :cond_14e
    const/4 v7, 0x0

    invoke-direct {p0, v7}, setSingleScreenStateLocked(Z)V

    .line 266
    const/4 v7, 0x2

    if-ne p2, v7, :cond_7c

    const/4 v7, 0x1

    if-ne v2, v7, :cond_7c

    .line 267
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v8, 0xca

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->sendExpandRequestToExpandableActivityLocked(I)V

    goto/16 :goto_7c

    .line 274
    .end local v2    # "expandedHomeStatus":I
    .end local v5    # "topActivityOnMain":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topActivityOnSub":Lcom/android/server/am/ActivityRecord;
    :pswitch_161
    const/4 v7, 0x1

    if-eq p1, v7, :cond_167

    const/4 v7, 0x2

    if-ne p1, v7, :cond_7c

    .line 277
    :cond_167
    const/4 v7, 0x1

    invoke-direct {p0, v7}, setSingleScreenStateLocked(Z)V

    .line 278
    const/4 v7, 0x1

    if-ne p1, v7, :cond_17a

    const/4 v1, 0x0

    .line 279
    .restart local v1    # "displayId":I
    :goto_16f
    invoke-virtual {p0, v1}, moveExpandedHomeTaskToActiveScreenLocked(I)Z

    move-result v7

    if-nez v7, :cond_7c

    .line 280
    invoke-direct {p0, v1}, sendShrinkRequestIfNeededLocked(I)V

    goto/16 :goto_7c

    .line 278
    .end local v1    # "displayId":I
    :cond_17a
    const/4 v1, 0x1

    goto :goto_16f

    .line 214
    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_aa
        :pswitch_105
        :pswitch_161
    .end packed-switch
.end method

.method protected isActiveDisplayLocked(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    const/4 v2, 0x1

    .line 921
    invoke-direct {p0}, getScreenStateLocked()I

    move-result v1

    .line 924
    .local v1, "screenState":I
    packed-switch p1, :pswitch_data_14

    .line 937
    :cond_8
    :goto_8
    return v2

    .line 926
    :pswitch_9
    const/4 v0, 0x1

    .line 937
    .local v0, "screenFlag":I
    :goto_a
    and-int v3, v1, v0

    if-eq v3, v0, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    .line 929
    .end local v0    # "screenFlag":I
    :pswitch_10
    const/4 v0, 0x2

    .line 930
    .restart local v0    # "screenFlag":I
    goto :goto_a

    .line 932
    .end local v0    # "screenFlag":I
    :pswitch_12
    const/4 v0, 0x3

    .line 933
    .restart local v0    # "screenFlag":I
    goto :goto_a

    .line 924
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_10
        :pswitch_12
    .end packed-switch
.end method

.method public isTalkBackEnabled()Z
    .registers 2

    .prologue
    .line 876
    iget-boolean v0, p0, mTalkBackEnabled:Z

    return v0
.end method

.method public moveExpandHomeStackTaskToTopInner(ILjava/lang/String;IZ)I
    .registers 5
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "preArrangeHomeTask"    # Z

    .prologue
    .line 783
    return p3
.end method

.method protected moveExpandedHomeTaskToActiveScreenLocked(I)Z
    .registers 9
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 941
    iget v0, p0, mExpandedHomeStatus:I

    sget-object v2, FLAG_EXPANEDED_HOME_STATUS:[I

    aget v2, v2, p1

    and-int/2addr v0, v2

    sget-object v2, FLAG_EXPANEDED_HOME_STATUS:[I

    aget v2, v2, p1

    if-ne v0, v2, :cond_2a

    .line 942
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mExpandedHomeTask:Lcom/android/server/am/TaskRecord;

    .line 943
    .local v1, "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_29

    .line 944
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 945
    .local v6, "expandedHomeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_29

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_29

    .line 946
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToScreenLocked(Lcom/android/server/am/TaskRecord;IZZZ)V

    .line 951
    .end local v1    # "expandedHomeTask":Lcom/android/server/am/TaskRecord;
    .end local v6    # "expandedHomeActivity":Lcom/android/server/am/ActivityRecord;
    :cond_29
    :goto_29
    return v3

    :cond_2a
    move v3, v4

    goto :goto_29
.end method

.method public onMultipleScreenStateChanged(II)V
    .registers 6
    .param p1, "nextState"    # I
    .param p2, "reason"    # I

    .prologue
    .line 168
    iget-object v1, p0, mHandler:Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 169
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 170
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 171
    iget-object v1, p0, mHandler:Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method

.method public parseExpandedDisplayOrientation(Ljava/lang/String;)I
    .registers 4
    .param p1, "expandedDisplayOrienation"    # Ljava/lang/String;

    .prologue
    .line 1021
    const/4 v0, -0x2

    .line 1022
    .local v0, "policyExpandedDisplayOrientation":I
    if-eqz p1, :cond_d

    .line 1023
    const-string/jumbo v1, "unspecified"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1024
    const/4 v0, -0x1

    .line 1057
    :cond_d
    :goto_d
    return v0

    .line 1025
    :cond_e
    const-string v1, "behind"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1026
    const/4 v0, 0x3

    goto :goto_d

    .line 1027
    :cond_18
    const-string/jumbo v1, "landscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1028
    const/4 v0, 0x0

    goto :goto_d

    .line 1029
    :cond_23
    const-string/jumbo v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1030
    const/4 v0, 0x1

    goto :goto_d

    .line 1031
    :cond_2e
    const-string/jumbo v1, "reverseLandscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1032
    const/16 v0, 0x8

    goto :goto_d

    .line 1033
    :cond_3a
    const-string/jumbo v1, "reversePortrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1034
    const/16 v0, 0x9

    goto :goto_d

    .line 1035
    :cond_46
    const-string/jumbo v1, "sensorLandscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1036
    const/4 v0, 0x6

    goto :goto_d

    .line 1037
    :cond_51
    const-string/jumbo v1, "sensorPortrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1038
    const/4 v0, 0x7

    goto :goto_d

    .line 1039
    :cond_5c
    const-string/jumbo v1, "userLandscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1040
    const/16 v0, 0xb

    goto :goto_d

    .line 1041
    :cond_68
    const-string/jumbo v1, "userPortrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1042
    const/16 v0, 0xc

    goto :goto_d

    .line 1043
    :cond_74
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1044
    const/4 v0, 0x4

    goto :goto_d

    .line 1045
    :cond_7f
    const-string/jumbo v1, "fullSensor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1046
    const/16 v0, 0xa

    goto :goto_d

    .line 1047
    :cond_8b
    const-string/jumbo v1, "nosensor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1048
    const/4 v0, 0x5

    goto/16 :goto_d

    .line 1049
    :cond_97
    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 1050
    const/4 v0, 0x2

    goto/16 :goto_d

    .line 1051
    :cond_a3
    const-string/jumbo v1, "fullUser"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 1052
    const/16 v0, 0xd

    goto/16 :goto_d

    .line 1053
    :cond_b0
    const-string/jumbo v1, "locked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1054
    const/16 v0, 0xe

    goto/16 :goto_d
.end method

.method public resolveDisplayChooser(Landroid/content/Intent;Lcom/android/server/am/ActivityRecord;Landroid/content/pm/ResolveInfo;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x1

    .line 580
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_8a

    .line 581
    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : rInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : DualScreenFeatures.SUPPORT_DISPLAY_CHOOSER="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v3, "DualScreenPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveDisplayChooser() : FocusedStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_8a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    if-ne v3, v4, :cond_b4

    sget-boolean v3, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    if-eqz v3, :cond_b4

    .line 591
    if-eqz p2, :cond_11e

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11e

    if-eqz p2, :cond_11e

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_11e

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

    invoke-virtual {v3}, Lcom/android/server/am/DualScreenAttrs;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v3, v4, :cond_11e

    .line 621
    :cond_b3
    :goto_b3
    return v2

    .line 598
    :cond_b4
    if-eqz p3, :cond_11e

    sget-boolean v3, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_OPPOSITE_LAUNCH:Z

    if-eqz v3, :cond_11e

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    if-ne v3, v4, :cond_11e

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromDisplayChooser()Z

    move-result v3

    if-nez v3, :cond_11e

    .line 602
    iget-object v3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 603
    .local v0, "className":Ljava/lang/String;
    iget-object v3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 604
    .local v1, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_f0

    invoke-static {}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;->getInstance()Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;->isOppositeLaunchSupportApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f0

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f0

    .line 608
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setFromOppositeLaunchApp(Z)V

    .line 611
    :cond_f0
    sget-boolean v3, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DISPLAY_CHOOSER:Z

    if-eqz v3, :cond_11e

    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->fromOppositeLaunchApp()Z

    move-result v3

    if-eqz v3, :cond_11e

    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11e

    const-class v3, Lcom/android/internal/app/ResolverGuideActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 621
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_11e
    const/4 v2, 0x0

    goto :goto_b3
.end method

.method setAppTokenDisplayIdLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 5
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .prologue
    .line 727
    iget-object v0, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->setAppTokenDisplayId(Landroid/view/IApplicationToken;I)V

    .line 728
    return-void
.end method

.method protected setFullViewHomeStatusLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 905
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isExpandHomeActivity()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, setFullViewHomeStatusLocked(ZI)V

    .line 906
    return-void
.end method

.method protected setFullViewHomeStatusLocked(ZI)V
    .registers 5
    .param p1, "isExpandHomeActivity"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 909
    iget-boolean v0, p0, mSingleScreenState:Z

    if-nez v0, :cond_5

    .line 918
    :goto_4
    return-void

    .line 913
    :cond_5
    if-eqz p1, :cond_11

    .line 914
    iget v0, p0, mExpandedHomeStatus:I

    sget-object v1, FLAG_EXPANEDED_HOME_STATUS:[I

    aget v1, v1, p2

    or-int/2addr v0, v1

    iput v0, p0, mExpandedHomeStatus:I

    goto :goto_4

    .line 916
    :cond_11
    iget v0, p0, mExpandedHomeStatus:I

    sget-object v1, FLAG_EXPANEDED_HOME_STATUS:[I

    aget v1, v1, p2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mExpandedHomeStatus:I

    goto :goto_4
.end method

.method public setTalkBackEnabled(Z)V
    .registers 6
    .param p1, "talkBackEnabled"    # Z

    .prologue
    .line 867
    iget-object v1, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 868
    :try_start_3
    iget-boolean v0, p0, mTalkBackEnabled:Z

    if-eq v0, p1, :cond_26

    .line 869
    const-string v2, "DualScreenPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TalkBack "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_28

    const-string/jumbo v0, "enabled"

    :goto_19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iput-boolean p1, p0, mTalkBackEnabled:Z

    .line 872
    :cond_26
    monitor-exit v1

    .line 873
    return-void

    .line 869
    :cond_28
    const-string/jumbo v0, "disabled"

    goto :goto_19

    .line 872
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public showBackWindowIfNeededLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x1

    .line 955
    iget-boolean v2, p0, mSingleScreenState:Z

    if-eqz v2, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 968
    :cond_14
    :goto_14
    return-void

    .line 961
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v2

    rsub-int/lit8 v0, v2, 0x3

    .line 962
    .local v0, "oppositeDisplayZone":I
    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor;->convertScreenZoneToDisplayId(I)I

    move-result v1

    .line 964
    .local v1, "targetDisplayId":I
    iget-object v2, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mScreenState:[I

    aget v2, v2, v1

    if-ne v2, v4, :cond_14

    .line 965
    iget-object v2, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/am/ActivityManagerService;->setBackWindowShownLocked(ZI)V

    .line 966
    iget-object v2, p0, mActivityService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->setAppBackWindow(I)V

    goto :goto_14
.end method

.method public updateScreenForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 551
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "DualScreenPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScreenForAllActivitiesInTask() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_1d
    return-void
.end method
