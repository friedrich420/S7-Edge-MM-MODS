.class public Lcom/android/server/pm/KnoxTimeoutHandler;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;,
        Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;,
        Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_LOCK_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

.field private static final LOG_TAG:Ljava/lang/String; = "KnoxTimeoutHandler"

.field private static final MSG_ACTIVE_USER_CHANGE:I = 0x1

.field private static final MSG_CANCEL_LOCK_TIMEOUT:I = 0x3

.field private static final MSG_HIDE_KEYGUARD_IF_NEEDED:I = 0x5

.field private static final MSG_HOME_SHOW:I = 0x4

.field private static final MSG_NOTIFY_ACTIVITY_DRAWN:I = 0x6

.field private static final MSG_RESET_LOCK_TIMEOUT:I = 0x2

.field private static final PERSONA_ID:Ljava/lang/String; = "personaId"


# instance fields
.field private isKnox:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentId:I

.field private mCurrentPersonaId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/pm/PersonaManagerService;

.field private final mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, mCurrentId:I

    .line 62
    iput v0, p0, mCurrentPersonaId:I

    .line 64
    iput-boolean v0, p0, isKnox:Z

    .line 66
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/KnoxTimeoutHandler$TimeoutHandler;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    .line 369
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$1;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    iput-object v0, p0, mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    .line 159
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 161
    invoke-direct {p0}, registerTapInputEventListener()V

    .line 162
    invoke-direct {p0}, registerTimeoutReceiver()V

    .line 163
    invoke-direct {p0}, registerSystemPersonaObserver()V

    .line 164
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, resetLockTimer(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/pm/KnoxTimeoutHandler;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, mCurrentPersonaId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    .line 38
    invoke-direct {p0, p1}, handleActiveUserChange(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, cancelLockTimer(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/KnoxTimeoutHandler;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, handleHomeShow(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;

    .prologue
    .line 38
    invoke-direct {p0}, hideKeyguardIfNeeded()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p1, "x1"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    .line 38
    invoke-direct {p0, p1}, activityDrawn(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;

    .prologue
    .line 38
    iget-object v0, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/KnoxTimeoutHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;

    .prologue
    .line 38
    iget v0, p0, mCurrentId:I

    return v0
.end method

.method private declared-synchronized activityDrawn(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .registers 9
    .param p1, "msgParam"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    const-string v3, "KnoxTimeoutHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activityDrawn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_36

    .line 302
    if-nez p1, :cond_1d

    .line 336
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 305
    :cond_1d
    :try_start_1d
    iget-object v3, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 306
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v3, :cond_1b

    .line 307
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_36

    goto :goto_1b

    .line 301
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    .line 310
    :cond_39
    :try_start_39
    iget-object v3, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    iget v4, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 311
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v3, :cond_1b

    .line 312
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1b

    .line 316
    :cond_54
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 318
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 320
    .local v1, "isSharedDevice":Z
    const-string v3, "KnoxTimeoutHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SD activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isEmergencyCall"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 323
    .local v2, "mSharedDeviceCall":I
    if-eqz v1, :cond_a9

    .line 324
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v3, :cond_1b

    .line 325
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    const-string v3, "KnoxTimeoutHandler"

    const-string v4, "Hide"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 331
    :cond_a9
    iget-boolean v3, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    if-eqz v3, :cond_1b

    .line 332
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_b9
    .catchall {:try_start_39 .. :try_end_b9} :catchall_36

    goto/16 :goto_1b
.end method

.method private declared-synchronized cancelLockTimer(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 498
    monitor-enter p0

    :try_start_1
    const-string v4, "KnoxTimeoutHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cancel lock timer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 501
    .local v2, "token":J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "personaId"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    iget-object v4, p0, mContext:Landroid/content/Context;

    const/high16 v5, 0x48000000    # 131072.0f

    invoke-static {v4, p1, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 506
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v4, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 508
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 509
    monitor-exit p0

    return-void

    .line 498
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    .end local v2    # "token":J
    :catchall_3c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;
    .registers 3

    .prologue
    .line 79
    iget-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_13

    .line 80
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    iget-object v1, p0, mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v1
.end method

.method private declared-synchronized handleActiveUserChange(Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;)V
    .registers 12
    .param p1, "msgParam"    # Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    .prologue
    const/4 v9, 0x1

    .line 220
    monitor-enter p0

    :try_start_2
    iget v4, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->userId:I

    .line 221
    .local v4, "userId":I
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleActiveUserChange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 224
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->isMutiwindowRecord:Z

    if-nez v5, :cond_2b

    .line 225
    iput v4, p0, mCurrentId:I

    .line 227
    :cond_2b
    const/4 v5, 0x1

    iput-boolean v5, p0, isKnox:Z

    .line 228
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " active change for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 231
    const-string v5, "KnoxTimeoutHandler"

    const-string v6, " reset timeout from active user change"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0, v4}, resetLockTimer(I)V
    :try_end_5a
    .catchall {:try_start_2 .. :try_end_5a} :catchall_87

    .line 298
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-void

    .line 234
    :cond_5c
    :try_start_5c
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v3

    .line 235
    .local v3, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v3, :cond_8a

    iget-boolean v5, v3, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v5, :cond_8a

    .line 236
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is removed, no locking needed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_5c .. :try_end_86} :catchall_87

    goto :goto_5a

    .line 220
    .end local v3    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v4    # "userId":I
    :catchall_87
    move-exception v5

    monitor-exit p0

    throw v5

    .line 240
    .restart local v3    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v4    # "userId":I
    :cond_8a
    :try_start_8a
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v5

    if-eqz v5, :cond_ba

    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 241
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isUserHasTrust "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V

    goto :goto_5a

    .line 246
    :cond_ba
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " container is locked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v5, :cond_ed

    .line 248
    const-string v5, "KnoxTimeoutHandler"

    const-string v6, "Do not show knox security screen cause it has FLAG_SHOW_WHEN_LOCKED but hide if needed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v5, p0, mHandler:Landroid/os/Handler;

    iget-object v6, p0, mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5a

    .line 251
    :cond_ed
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService;->isKnoxMultiWindowExist()Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 252
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(II)V

    goto/16 :goto_5a

    .line 254
    :cond_fd
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_5a

    .line 260
    .end local v3    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_104
    const/4 v5, 0x0

    iput-boolean v5, p0, isKnox:Z

    .line 262
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 264
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 266
    .local v1, "isSharedDevice":Z
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared devices show user state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "isEmergencyCall"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 269
    .local v2, "mSharedDeviceCall":I
    if-eqz v1, :cond_16c

    if-ne v2, v9, :cond_16c

    .line 270
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shared devices flag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-nez v5, :cond_5a

    .line 272
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_5a

    .line 275
    :cond_16c
    if-nez v1, :cond_5a

    .line 279
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v5

    if-eqz v5, :cond_1b1

    .line 280
    iput v4, p0, mCurrentId:I

    .line 281
    const-string v5, "KnoxTimeoutHandler"

    const-string/jumbo v6, "handleActiveUserChange"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    iget-object v7, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    iget v7, v7, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-nez v5, :cond_1ab

    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    iget-object v7, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    iget v7, v7, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-nez v5, :cond_1ab

    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-nez v5, :cond_1ab

    .line 285
    iget-object v5, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    iget-object v6, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    iget v6, v6, Lcom/android/server/pm/PersonaManagerService;->enabledKioskContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->showKeyguard(I)V

    goto/16 :goto_5a

    .line 286
    :cond_1ab
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->showWhenLocked:Z

    if-eqz v5, :cond_5a

    goto/16 :goto_5a

    .line 290
    :cond_1b1
    iget-boolean v5, p1, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;->fullscreen:Z

    if-eqz v5, :cond_1b9

    .line 291
    iput v4, p0, mCurrentId:I

    goto/16 :goto_5a

    .line 294
    :cond_1b9
    const-string v5, "KnoxTimeoutHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target Activity is not fullscreen. We will not show this activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d1
    .catchall {:try_start_8a .. :try_end_1d1} :catchall_87

    goto/16 :goto_5a
.end method

.method private handleHomeShow(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 203
    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleHomeShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mCurrentPersonaId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p1, :cond_2c

    const/16 v1, 0x64

    if-ge p1, v1, :cond_2c

    .line 213
    :cond_2b
    :goto_2b
    return-void

    .line 206
    :cond_2c
    iget v1, p0, mCurrentPersonaId:I

    if-eq v1, p1, :cond_2b

    .line 207
    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " launch home intent for calibration because home is shown for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b
.end method

.method private hideKeyguardIfNeeded()V
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguardIfNeeded()V

    .line 340
    return-void
.end method

.method private registerSystemPersonaObserver()V
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    new-instance v1, Lcom/android/server/pm/KnoxTimeoutHandler$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxTimeoutHandler$2;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 459
    return-void
.end method

.method private registerTapInputEventListener()V
    .registers 4

    .prologue
    .line 417
    const-string v0, "KnoxTimeoutHandler"

    const-string v1, " register tap input event listener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, getWindowManagerLocked()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 419
    return-void
.end method

.method private registerTimeoutReceiver()V
    .registers 4

    .prologue
    .line 425
    const-string v1, "KnoxTimeoutHandler"

    const-string v2, " register time out receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 428
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mContainerTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 430
    return-void
.end method

.method private declared-synchronized resetLockTimer(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    .line 466
    monitor-enter p0

    :try_start_1
    const-string v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " reset lock timer for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v8, p0, mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 469
    const-string v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Wake lock acquired for this user. Ignore reset timeout for userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_8e

    .line 491
    :goto_3a
    monitor-exit p0

    return-void

    .line 473
    :cond_3c
    :try_start_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 474
    .local v6, "token":J
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "personaId"

    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    iget-object v8, p0, mContext:Landroid/content/Context;

    const/high16 v9, 0x48000000    # 131072.0f

    invoke-static {v8, p1, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 479
    .local v1, "pi":Landroid/app/PendingIntent;
    iget-object v8, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v8, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 481
    iget-object v8, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v4

    .line 483
    .local v4, "timeout":J
    const-string v8, "KnoxTimeoutHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " timeout value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_8a

    .line 486
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 487
    .local v2, "now":J
    iget-object v8, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x2

    add-long v10, v2, v4

    invoke-virtual {v8, v9, v10, v11, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 490
    .end local v2    # "now":J
    :cond_8a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8d
    .catchall {:try_start_3c .. :try_end_8d} :catchall_8e

    goto :goto_3a

    .line 466
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "timeout":J
    .end local v6    # "token":J
    :catchall_8e
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method declared-synchronized getForegroundUser()I
    .registers 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget v0, p0, mCurrentId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyActivityDrawn(IZZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "fullscreen"    # Z
    .param p3, "showWhenLocked"    # Z

    .prologue
    .line 177
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZ)V

    .line 178
    .local v0, "msgParam":Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyActivityDrawn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method

.method onHomeShow(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 187
    const-string v0, "KnoxTimeoutHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "post home show event for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method

.method postActiveUserChange(IZZZ)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "fullscreen"    # Z
    .param p3, "showWhenLocked"    # Z
    .param p4, "isMutiwindowRecord"    # Z

    .prologue
    .line 171
    new-instance v0, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZZ)V

    .line 172
    .local v0, "msgParam":Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
    const-string v1, "KnoxTimeoutHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postActiveUserChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method

.method postTimeoutCancel(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 524
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void
.end method

.method postTimeoutReset(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 516
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 517
    return-void
.end method

.method setWakeLockAcquired(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "isAcquired"    # Z

    .prologue
    .line 533
    iget-object v0, p0, mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 534
    return-void
.end method
