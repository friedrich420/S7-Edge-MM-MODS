.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;
.super Ljava/lang/Object;
.source "DcmKeyguardMascotUtils.java"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mIsBootCompleted:Z

.field private mIsWaitingForBootComplete:Z

.field public mMascotClicked:Z

.field private mMascotHandler:Landroid/os/Handler;

.field private mMascotView:Landroid/widget/LinearLayout;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field private sBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "mBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z

    .line 33
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;

    .line 35
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotView:Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 41
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method


# virtual methods
.method public bindIScreenLockService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 151
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsBootCompleted:Z

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    .line 158
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecKeyguardStatusUtils"

    const-string v2, "bindIScreenLockService() : bindService IScreenLockService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "screenLockServiceIntent":Landroid/content/Intent;
    const-string v1, "com.nttdocomo.android.screenlockservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const-string v1, "SecKeyguardStatusUtils"

    const-string v2, "bindIScreenLockService() : can\'t connect IScreenLockService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1
    return-void

    .line 154
    .end local v0    # "screenLockServiceIntent":Landroid/content/Intent;
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mIsWaitingForBootComplete:Z

    goto :goto_0
.end method

.method public declared-synchronized getActivityManager()Landroid/app/ActivityManager;
    .locals 2

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mActivityManager:Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public isMascotAppRunning()Z
    .locals 5

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->getActivityManager()Landroid/app/ActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 264
    .local v2, "processInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 265
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v3, "com.nttdocomo.android.mascot"

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SecKeyguardStatusUtils"

    const-string v4, "NotificationPanelView.isMascotAppRunning() : Mascot is running."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    const/4 v3, 0x1

    .line 272
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v3

    .line 270
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "SecKeyguardStatusUtils"

    const-string v4, "NotificationPanelView.isMascotAppRunning(): Mascot is not running."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isMascotEnabled()Z
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShowHistoryCountAndMascot()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->isMascotAppRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 230
    .local v0, "enabled":Z
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecKeyguardStatusUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationPanelView.isMascotEnabled(): enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return v0

    .line 227
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerMascotReceiver()V
    .locals 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViewReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 137
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 5

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 210
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecKeyguardStatusUtils"

    const-string v2, "NotificationPanelView.registerReceiver(): regist "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setMasCotView(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "mascotview"    # Landroid/widget/LinearLayout;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotView:Landroid/widget/LinearLayout;

    .line 284
    return-void
.end method

.method public setMasCotViewHanler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotHandler:Landroid/os/Handler;

    .line 288
    return-void
.end method

.method public setMascotRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->isMascotAppRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 242
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SecKeyguardStatusUtils"

    const-string v1, "NotificationPanelView.setMascotRemoteViews() : mMascotView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SecKeyguardStatusUtils"

    const-string v1, "NotificationPanelView.setMascotRemoteViews() : mMascotView is exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 249
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SecKeyguardStatusUtils"

    const-string v1, "NotificationPanelView.mMascotHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$4;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public unregisterReceiver()V
    .locals 4

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecKeyguardStatusUtils"

    const-string v2, "NotificationPnaelView.unregisterReceiver(): unregist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecKeyguardStatusUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationPanelView.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
