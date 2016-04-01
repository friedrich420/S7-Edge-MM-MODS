.class public Lcom/android/server/QuickConnectService;
.super Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;
.source "QuickConnectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_AFW_TOAST:I = 0x7d1

.field private static final MSG_SHOW_KNOX_TOAST:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "QuickConnectService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedProfileFocused:Z

.field private final mUserSwitchListener:Landroid/app/IUserSwitchObserver$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;-><init>()V

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, mContext:Landroid/content/Context;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mListener:Ljava/util/ArrayList;

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, mManagedProfileFocused:Z

    .line 266
    new-instance v1, Lcom/android/server/QuickConnectService$1;

    invoke-direct {v1, p0}, Lcom/android/server/QuickConnectService$1;-><init>(Lcom/android/server/QuickConnectService;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 282
    new-instance v1, Lcom/android/server/QuickConnectService$2;

    invoke-direct {v1, p0}, Lcom/android/server/QuickConnectService$2;-><init>(Lcom/android/server/QuickConnectService;)V

    iput-object v1, p0, mUserSwitchListener:Landroid/app/IUserSwitchObserver$Stub;

    .line 42
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 45
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, mUserSwitchListener:Landroid/app/IUserSwitchObserver$Stub;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_2a

    .line 50
    :goto_29
    return-void

    .line 46
    :catch_2a
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickConnectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickConnectService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method static synthetic access$000(Lcom/android/server/QuickConnectService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;

    .prologue
    .line 32
    invoke-direct {p0}, startSconnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/QuickConnectService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;

    .prologue
    .line 32
    iget-object v0, p0, mListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/QuickConnectService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;

    .prologue
    .line 32
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/QuickConnectService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;

    .prologue
    .line 32
    iget-boolean v0, p0, mManagedProfileFocused:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/QuickConnectService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/QuickConnectService;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, mManagedProfileFocused:Z

    return p1
.end method

.method private getSubDisplayTopActivityComponentName()Landroid/content/ComponentName;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 175
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 176
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, v5, v5}, Landroid/app/ActivityManager;->getRunningTasks(II)Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 178
    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .registers 6

    .prologue
    .line 168
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 169
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 171
    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private startSconnect()V
    .registers 6

    .prologue
    .line 255
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v1, "sConnectIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.sconnect"

    const-string v3, "com.samsung.android.sconnect.central.ui.SconnectDisplay"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 260
    const-string v2, "QuickConnectService"

    const-string/jumbo v3, "startSconnect - Start S-Connect!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_20} :catch_21

    .line 264
    .end local v1    # "sConnectIntent":Landroid/content/Intent;
    :goto_20
    return-void

    .line 261
    :catch_21
    move-exception v0

    .line 262
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "QuickConnectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exception - ActivityNotFoundException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method


# virtual methods
.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v3, p0, mListener:Ljava/util/ArrayList;

    monitor-enter v3

    .line 56
    if-nez p1, :cond_10

    .line 57
    :try_start_6
    const-string v4, "QuickConnectService"

    const-string/jumbo v5, "registerCallback >>> binder is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    monitor-exit v3

    .line 91
    :goto_f
    return v2

    .line 59
    :cond_10
    if-nez p2, :cond_1f

    .line 60
    const-string v4, "QuickConnectService"

    const-string/jumbo v5, "registerCallback >>> componentName is null!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    monitor-exit v3

    goto :goto_f

    .line 92
    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v2

    .line 63
    :cond_1f
    :try_start_1f
    const-string v4, "QuickConnectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerCallback >>> Input listener ClassName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v4, p0, mListener:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .line 68
    .local v1, "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-eqz v1, :cond_95

    .line 69
    const-string v4, "QuickConnectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerCallback >>> Compare listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v4, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 73
    const-string v4, "QuickConnectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerCallback >>> binder equal listener token : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit v3

    goto/16 :goto_f

    .line 78
    :cond_95
    const-string v4, "QuickConnectService"

    const-string/jumbo v5, "registerCallback >>> Compare listener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v4, p0, mListener:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_42

    .line 82
    .end local v1    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :cond_a3
    const/4 v1, 0x0

    .line 83
    .restart local v1    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    new-instance v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .end local v1    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;-><init>(Lcom/android/server/QuickConnectService;Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 84
    .restart local v1    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-nez v1, :cond_b6

    .line 85
    const-string v4, "QuickConnectService"

    const-string/jumbo v5, "registerCallback >>> QuickConnectListenerInfo return null. Do not register."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v3

    goto/16 :goto_f

    .line 89
    :cond_b6
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 90
    iget-object v2, p0, mListener:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_1f .. :try_end_c1} :catchall_1c

    goto/16 :goto_f
.end method

.method public selectedItemCallback()V
    .registers 11

    .prologue
    .line 183
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/PersonaManager;->isKnoxAppRunning(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 184
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    const/16 v7, 0x7d0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    const-string v6, "QuickConnectService"

    const-string v7, "Preventing launch of QuickConnect from KNOX"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_16
    return-void

    .line 189
    :cond_17
    iget-boolean v6, p0, mManagedProfileFocused:Z

    if-eqz v6, :cond_2a

    .line 190
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    const/16 v7, 0x7d1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    const-string v6, "QuickConnectService"

    const-string v7, "Preventing launch of QuickConnect from Managed profile"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 195
    :cond_2a
    iget-object v7, p0, mListener:Ljava/util/ArrayList;

    monitor-enter v7

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "isDualDispaly":Z
    const/4 v3, 0x0

    .line 198
    .local v3, "subDisplayTopComponentName":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 200
    .local v4, "subListener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :try_start_30
    invoke-direct {p0}, getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 201
    .local v5, "topComponentName":Landroid/content/ComponentName;
    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "selectedItemCallback - topComponentName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DUAL_DISPLAY"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 207
    const/4 v1, 0x1

    .line 208
    invoke-direct {p0}, getSubDisplayTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 209
    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "selectedItemCallback - subDisplayTopComponentName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_7f
    iget-object v6, p0, mListener:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_85
    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_115

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .line 215
    .local v2, "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-nez v2, :cond_9f

    .line 216
    const-string v6, "QuickConnectService"

    const-string/jumbo v8, "selectedItemCallback - listener is null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 250
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .end local v5    # "topComponentName":Landroid/content/ComponentName;
    :catchall_9c
    move-exception v6

    monitor-exit v7
    :try_end_9e
    .catchall {:try_start_30 .. :try_end_9e} :catchall_9c

    throw v6

    .line 218
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .restart local v5    # "topComponentName":Landroid/content/ComponentName;
    :cond_9f
    :try_start_9f
    iget-object v6, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    if-nez v6, :cond_ac

    .line 219
    const-string v6, "QuickConnectService"

    const-string/jumbo v8, "selectedItemCallback - listener.component is null"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 222
    :cond_ac
    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "selectedItemCallback : Search List "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    .line 226
    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "selectedItemCallback - Start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v2}, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->callback()V

    .line 230
    monitor-exit v7

    goto/16 :goto_16

    .line 233
    :cond_100
    if-eqz v1, :cond_85

    .line 234
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 235
    move-object v4, v2

    goto/16 :goto_85

    .line 241
    .end local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :cond_115
    if-eqz v4, :cond_13c

    .line 242
    const-string v6, "QuickConnectService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "selectedItemCallback(subDisplay) - Start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v4}, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->callback()V

    .line 246
    monitor-exit v7

    goto/16 :goto_16

    .line 249
    :cond_13c
    invoke-direct {p0}, startSconnect()V

    .line 250
    monitor-exit v7
    :try_end_140
    .catchall {:try_start_9f .. :try_end_140} :catchall_9c

    goto/16 :goto_16
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .registers 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v4, p0, mListener:Ljava/util/ArrayList;

    monitor-enter v4

    .line 98
    if-nez p1, :cond_10

    .line 99
    :try_start_6
    const-string v5, "QuickConnectService"

    const-string/jumbo v6, "unregisterCallback >>> binder is null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    monitor-exit v4

    .line 129
    :goto_f
    return v3

    .line 102
    :cond_10
    const-string v5, "QuickConnectService"

    const-string/jumbo v6, "unregisterCallback"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    iget-object v5, p0, mListener:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;

    .line 105
    .local v1, "l":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    if-eqz v1, :cond_56

    .line 106
    const-string v5, "QuickConnectService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterCallback >>> Compare listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v5, v1, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 110
    move-object v2, v1

    goto :goto_1f

    .line 113
    :cond_56
    const-string v5, "QuickConnectService"

    const-string/jumbo v6, "unregisterCallback >>> Compare listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 130
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    .end local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :catchall_5f
    move-exception v3

    monitor-exit v4
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_5f

    throw v3

    .line 116
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;
    :cond_62
    if-nez v2, :cond_6e

    .line 117
    :try_start_64
    const-string v5, "QuickConnectService"

    const-string/jumbo v6, "unregisterCallback >>> listener is null!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit v4

    goto :goto_f

    .line 120
    :cond_6e
    iget-object v3, p0, mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9a

    .line 121
    const-string v3, "QuickConnectService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterCallback >>> Removed listener ClassName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/QuickConnectService$QuickConnectListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, mListener:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    :cond_9a
    if-eqz v2, :cond_a0

    .line 126
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 128
    :cond_a0
    iget-object v3, p0, mListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 129
    const/4 v3, 0x1

    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_64 .. :try_end_a7} :catchall_5f

    goto/16 :goto_f
.end method
