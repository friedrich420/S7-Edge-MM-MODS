.class public Lcom/android/server/pm/KnoxKeyguardDelegate;
.super Ljava/lang/Object;
.source "KnoxKeyguardDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;
    }
.end annotation


# static fields
.field public static final FLAG_B2C_PWC_RESET:I = 0x40

.field public static final FLAG_DISMISS_KNOX_KEYGUARD:I = 0x2

.field protected static final FLAG_FROM_NOTIFICATION:I = 0x2

.field public static final FLAG_HOME_KEY_INPUT:I = 0x8

.field public static final FLAG_KNOX_KEYGUARD_FINISHED:I = 0x80

.field private static final FLAG_MOVE_TO_KNOX:I = 0x1

.field public static final FLAG_PWD_RESET_RESULT:I = 0x4

.field public static final FLAG_RESET_KNOX_KEYGUARD:I = 0x1

.field public static final FLAG_SCREEN_OFF:I = 0x20

.field public static final FLAG_SCREEN_ON:I = 0x10

.field public static final KNOX_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "KnoxKeyguardEventFlag"

.field private static final LOG_TAG:Ljava/lang/String; = "KnoxKeyguardDelegate"

.field private static final MSG_HIDE:I = 0x3

.field private static final MSG_HOME_SHOW:I = 0x1

.field private static final MSG_SHOW:I = 0x2

.field public static final SHARED_DEVICE_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "SharedDeviceKeyguardEventFlag"


# instance fields
.field private isHomeShowPending:Z

.field private final mContext:Landroid/content/Context;

.field private mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

.field private mIsHidingProcessing:Z

.field private mIsShowingProcessing:Z

.field private mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

.field private final mService:Lcom/android/server/pm/PersonaManagerService;

.field private mVisibleKeyguardOwner:I

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, -0x2710

    iput v0, p0, mVisibleKeyguardOwner:I

    .line 65
    new-instance v0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;Lcom/android/server/pm/KnoxKeyguardDelegate$1;)V

    iput-object v0, p0, mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    .line 68
    iput-boolean v2, p0, isHomeShowPending:Z

    .line 87
    iput-boolean v2, p0, mIsShowingProcessing:Z

    .line 88
    iput-boolean v2, p0, mIsHidingProcessing:Z

    .line 127
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    .line 130
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWm:Landroid/view/WindowManager;

    .line 131
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    iput-object v0, p0, mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 132
    invoke-direct {p0}, createScrim()V

    .line 133
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, handleHomeShow(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/KnoxKeyguardDelegate;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, show(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, hide(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/KnoxKeyguardDelegate;)Lcom/android/server/pm/KnoxNativeKeyguardHost;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;

    .prologue
    .line 38
    iget-object v0, p0, mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    return-object v0
.end method

.method private createScrim()V
    .registers 9

    .prologue
    const/4 v1, -0x1

    .line 366
    new-instance v2, Lcom/android/server/pm/KnoxNativeKeyguardHost;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/server/pm/KnoxNativeKeyguardHost;-><init>(Landroid/content/Context;Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    iput-object v2, p0, mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    .line 368
    const v4, 0x110900

    .line 373
    .local v4, "flags":I
    or-int/lit16 v4, v4, 0x400

    .line 374
    or-int/lit16 v4, v4, 0x2000

    .line 376
    const/4 v6, -0x1

    .line 377
    .local v6, "stretch":I
    const/16 v7, 0x7d8

    .line 379
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 382
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 383
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3c

    :goto_26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 386
    const-string v1, "ContainerKeyguardScrim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, p0, mWm:Landroid/view/WindowManager;

    iget-object v2, p0, mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v1, p0, mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setVisibility(I)V

    .line 390
    return-void

    .line 383
    :cond_3c
    const/4 v1, 0x5

    goto :goto_26
.end method

.method private getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;
    .registers 3

    .prologue
    .line 431
    iget-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_13

    .line 432
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 433
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 435
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    iget-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v1
.end method

.method private handleHomeShow(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 461
    if-nez p1, :cond_17

    iget-boolean v0, p0, isHomeShowPending:Z

    if-eqz v0, :cond_17

    .line 462
    const-string v0, "KnoxKeyguardDelegate"

    const-string v1, " unfreeze the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0}, getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, isHomeShowPending:Z

    .line 466
    :cond_17
    return-void
.end method

.method private declared-synchronized hide(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 241
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 244
    .local v1, "isSharedDevice":Z
    iget-object v2, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getKeyguardShowState(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 245
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "real hide for emergency state is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isEmergencyCall"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 248
    :cond_44
    if-eqz v1, :cond_6c

    .line 249
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shared devices real hide for emergency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 p1, 0x0

    .line 251
    const/4 v2, 0x0

    iput v2, p0, mVisibleKeyguardOwner:I

    .line 252
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, sendSharedDeviceKeyguardCommand(IZ)V
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_9b

    .line 281
    :goto_6a
    monitor-exit p0

    return-void

    .line 257
    :cond_6c
    :try_start_6c
    iget-boolean v2, p0, mIsShowingProcessing:Z

    iget-boolean v3, p0, mIsHidingProcessing:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_9e

    .line 258
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hide() will be ignored. mIsShowingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsShowingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsHidingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsHidingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_6c .. :try_end_9a} :catchall_9b

    goto :goto_6a

    .line 239
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v1    # "isSharedDevice":Z
    :catchall_9b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 262
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v1    # "isSharedDevice":Z
    :cond_9e
    const/4 v2, -0x1

    if-ne p1, v2, :cond_f0

    .line 265
    :try_start_a1
    iget v2, p0, mVisibleKeyguardOwner:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_b0

    .line 266
    const-string v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, "no keyguard needs to be dismissed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 270
    :cond_b0
    iget p1, p0, mVisibleKeyguardOwner:I

    .line 271
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to dismiss keyguard for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with dismiss_all event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_d1
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "real hide for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, sendKeyguardCommand(IZ)V

    goto/16 :goto_6a

    .line 273
    :cond_f0
    iget v2, p0, mVisibleKeyguardOwner:I

    if-eq p1, v2, :cond_d1

    .line 274
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to dismiss the wrong keyguard for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while current visible keyguard belongs to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mVisibleKeyguardOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_118
    .catchall {:try_start_a1 .. :try_end_118} :catchall_9b

    goto/16 :goto_6a
.end method

.method private sendKeyguardCommand(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "shouldShow"    # Z

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, sendKeyguardCommand(IZI)V

    .line 290
    return-void
.end method

.method private sendKeyguardCommand(IZI)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "shouldShow"    # Z
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x1

    .line 299
    iget-object v1, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v2, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 300
    const-string v1, "KnoxKeyguardDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s state is SUER_LOCKED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_2a
    return-void

    .line 302
    :cond_2b
    iget-object v1, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v2, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 303
    const-string v1, "KnoxKeyguardDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'s state is TIMA_COMPROMISED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 305
    :cond_55
    invoke-static {p1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 306
    const-string v1, "KnoxKeyguardDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is BBC Container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 308
    :cond_7c
    iget-object v1, p0, mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 309
    const-string v1, "KnoxKeyguardDelegate"

    const-string v2, "UPSM enabed! cannot start service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 312
    :cond_8e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_cd

    .line 315
    const-string v1, "KnoxKeyguardEventFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    and-int/lit8 v1, p3, 0x1

    if-lez v1, :cond_a4

    .line 317
    const-string/jumbo v1, "isMoveToKnox"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    :cond_a4
    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_ae

    .line 320
    const-string/jumbo v1, "isLaunchedFromNotification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    :cond_ae
    invoke-virtual {p0}, showScrim()V

    .line 322
    iput p1, p0, mVisibleKeyguardOwner:I

    .line 323
    iput-boolean v3, p0, mIsShowingProcessing:Z

    .line 330
    :goto_b5
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.kss"

    const-string v3, "com.samsung.knox.kss.KnoxKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 332
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_2a

    .line 325
    :cond_cd
    const-string v1, "KnoxKeyguardEventFlag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const/16 v1, -0x2710

    iput v1, p0, mVisibleKeyguardOwner:I

    .line 327
    iput-boolean v3, p0, mIsHidingProcessing:Z

    goto :goto_b5
.end method

.method private sendSharedDeviceKeyguardCommand(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "shouldShow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_2b

    .line 347
    invoke-virtual {p0}, showScrimSD()V

    .line 348
    const-string v1, "SharedDeviceKeyguardEventFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    iput p1, p0, mVisibleKeyguardOwner:I

    .line 350
    iput-boolean v3, p0, mIsShowingProcessing:Z

    .line 359
    :goto_14
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.knox.shareddevice.keyguard"

    const-string v3, "com.sec.enterprise.knox.shareddevice.keyguard.SharedDeviceKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 362
    return-void

    .line 352
    :cond_2b
    invoke-virtual {p0}, hideScrim()V

    .line 353
    const-string v1, "SharedDeviceKeyguardEventFlag"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const/16 v1, -0x2710

    iput v1, p0, mVisibleKeyguardOwner:I

    .line 356
    iput-boolean v3, p0, mIsHidingProcessing:Z

    goto :goto_14
.end method

.method private declared-synchronized show(II)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 156
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 158
    .local v1, "isSharedDevice":Z
    if-eqz v1, :cond_3c

    .line 159
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shared devices real show for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 p1, 0x0

    .line 161
    const/4 v2, -0x1

    iput v2, p0, mVisibleKeyguardOwner:I

    .line 162
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, sendSharedDeviceKeyguardCommand(IZ)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_6b

    .line 189
    :goto_3a
    monitor-exit p0

    return-void

    .line 166
    :cond_3c
    :try_start_3c
    iget-boolean v2, p0, mIsShowingProcessing:Z

    iget-boolean v3, p0, mIsHidingProcessing:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_6e

    .line 167
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show() will be ignored. mIsShowingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsShowingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsHidingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsHidingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_3c .. :try_end_6a} :catchall_6b

    goto :goto_3a

    .line 154
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v1    # "isSharedDevice":Z
    :catchall_6b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 170
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v1    # "isSharedDevice":Z
    :cond_6e
    :try_start_6e
    iget-object v2, p0, mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 171
    const-string v2, "KnoxKeyguardDelegate"

    const-string v3, "UPSM enabed! ignore show()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 175
    :cond_80
    iget v2, p0, mVisibleKeyguardOwner:I

    if-ne p1, v2, :cond_8c

    .line 176
    const-string v2, "KnoxKeyguardDelegate"

    const-string v3, " keyguard already visible"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 178
    :cond_8c
    iget v2, p0, mVisibleKeyguardOwner:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_b8

    .line 179
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " other container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mVisibleKeyguardOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has keyguard shown, dismiss that first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget v2, p0, mVisibleKeyguardOwner:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, sendKeyguardCommand(IZ)V

    .line 183
    :cond_b8
    iget v2, p0, mVisibleKeyguardOwner:I

    if-eq p1, v2, :cond_c8

    iget-boolean v2, p0, isHomeShowPending:Z

    if-eqz v2, :cond_c8

    .line 184
    const-string v2, "KnoxKeyguardDelegate"

    const-string/jumbo v3, "isHomeShowPending is true but not skip to show keyguard!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_c8
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " real showing keyguard for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, p2}, sendKeyguardCommand(IZI)V
    :try_end_ee
    .catchall {:try_start_6e .. :try_end_ee} :catchall_6b

    goto/16 :goto_3a
.end method


# virtual methods
.method declared-synchronized clearFlag()V
    .registers 3

    .prologue
    .line 473
    monitor-enter p0

    :try_start_1
    const-string v0, "KnoxKeyguardDelegate"

    const-string v1, "clear Flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsShowingProcessing:Z

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsHidingProcessing:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 476
    monitor-exit p0

    return-void

    .line 473
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getVisibleKeyguardOwner()I
    .registers 2

    .prologue
    .line 469
    iget v0, p0, mVisibleKeyguardOwner:I

    return v0
.end method

.method hideScrim()V
    .registers 3

    .prologue
    .line 420
    iget-object v0, p0, mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardDelegate$3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxKeyguardDelegate$3;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method declared-synchronized notifyShow(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "isShown"    # Z

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " notify show "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " show ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz p2, :cond_7a

    .line 200
    const-string v2, "KnoxKeyguardDelegate"

    const-string v3, " unfreeze due to keyguard show"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 202
    .local v0, "ident":J
    invoke-direct {p0}, getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    iput p1, p0, mVisibleKeyguardOwner:I

    .line 205
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsShowingProcessing:Z

    .line 211
    .end local v0    # "ident":J
    :goto_3f
    iget-boolean v2, p0, mIsShowingProcessing:Z

    iget-boolean v3, p0, mIsHidingProcessing:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_73

    .line 212
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyShow() mIsShowingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsShowingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsHidingProcessing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsHidingProcessing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsShowingProcessing:Z

    .line 214
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsHidingProcessing:Z

    .line 217
    :cond_73
    if-nez p2, :cond_78

    .line 218
    invoke-virtual {p0}, hideScrim()V
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_82

    .line 220
    :cond_78
    monitor-exit p0

    return-void

    .line 207
    :cond_7a
    const/16 v2, -0x2710

    :try_start_7c
    iput v2, p0, mVisibleKeyguardOwner:I

    .line 208
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsHidingProcessing:Z
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_82

    goto :goto_3f

    .line 197
    :catchall_82
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method onHomeShow(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 452
    iget-object v1, p0, mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 453
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    return-void
.end method

.method onKeyguardBackPressed(I)V
    .registers 4
    .param p1, "personaId"    # I

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-direct {p0}, getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, isHomeShowPending:Z

    .line 445
    iget-object v0, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 446
    return-void
.end method

.method postHide(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x3

    .line 227
    iget-object v1, p0, mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->removeMessages(I)V

    .line 228
    iget-object v1, p0, mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    return-void
.end method

.method postShow(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x2

    .line 140
    iget-object v1, p0, mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->removeMessages(I)V

    .line 141
    iget-object v1, p0, mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method showScrim()V
    .registers 3

    .prologue
    .line 411
    iget-object v0, p0, mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardDelegate$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxKeyguardDelegate$2;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method showScrimSD()V
    .registers 7

    .prologue
    .line 394
    :try_start_0
    const-string v0, "com.sec.enterprise.knox.shareddevice.keyguard"

    .line 395
    .local v0, "SETUP_PACKAGE":Ljava/lang/String;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v2

    .line 396
    .local v2, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v4, "knox_bg_b2c_00"

    const-string/jumbo v5, "drawable"

    invoke-virtual {v2, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 397
    .local v3, "resid":I
    iget-object v4, p0, mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget-object v4, p0, mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxNativeKeyguardHost;

    new-instance v5, Lcom/android/server/pm/KnoxKeyguardDelegate$1;

    invoke-direct {v5, p0}, Lcom/android/server/pm/KnoxKeyguardDelegate$1;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    invoke-virtual {v4, v5}, Lcom/android/server/pm/KnoxNativeKeyguardHost;->post(Ljava/lang/Runnable;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 408
    .end local v0    # "SETUP_PACKAGE":Ljava/lang/String;
    .end local v2    # "packageResources":Landroid/content/res/Resources;
    .end local v3    # "resid":I
    :goto_2a
    return-void

    .line 404
    :catch_2b
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method
