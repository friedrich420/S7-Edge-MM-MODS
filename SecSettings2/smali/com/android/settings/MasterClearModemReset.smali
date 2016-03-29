.class public Lcom/android/settings/MasterClearModemReset;
.super Landroid/app/Service;
.source "MasterClearModemReset.java"


# instance fields
.field private called:Z

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mEraseSdCard:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings/MasterClearModemReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearModemReset$1;-><init>(Lcom/android/settings/MasterClearModemReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearModemReset;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClearModemReset;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/MasterClearModemReset;->sendMasterClearIntent()V

    return-void
.end method

.method private sendMasterClearIntent()V
    .locals 3

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/MasterClearModemReset;->called:Z

    .line 106
    iget-boolean v1, p0, Lcom/android/settings/MasterClearModemReset;->called:Z

    if-eqz v1, :cond_0

    .line 107
    monitor-exit p0

    .line 118
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/MasterClearModemReset;->called:Z

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    iget-boolean v2, p0, Lcom/android/settings/MasterClearModemReset;->mEraseSdCard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClearModemReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    monitor-exit p0

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendResetCommandToRIL()V
    .locals 6

    .prologue
    .line 58
    const-string v2, "ril.modem.board"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "modemName":Ljava/lang/String;
    const-string v2, "MasterClearModemReset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modem name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Lcom/samsung/android/sec_platform_library/PacketBuilder;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sec_platform_library/PacketBuilder;-><init>(BB)V

    .line 63
    .local v1, "packet":Lcom/samsung/android/sec_platform_library/PacketBuilder;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;

    .line 65
    iget-object v2, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->getPacket()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MasterClearModemReset;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 129
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/MasterClearModemReset;->stopSelf()V

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/MasterClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v7, 0x0

    .line 153
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "callByFactory":Z
    if-eqz p1, :cond_0

    .line 157
    const-string v4, "FACTORY"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    const-string v4, "WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/MasterClearModemReset;->mEraseSdCard:Z

    .line 159
    const-string v4, "MasterClearModemReset"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIPE_EXTERNAL_STORAGE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/MasterClearModemReset;->mEraseSdCard:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/MasterClearModemReset;->stopSelf()V

    .line 194
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v3, 0x0

    .line 173
    .local v3, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 174
    .local v1, "mContext":Landroid/content/Context;
    new-instance v3, Landroid/app/ProgressDialog;

    .end local v3    # "progressDialog":Landroid/app/ProgressDialog;
    invoke-direct {v3, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 178
    .restart local v3    # "progressDialog":Landroid/app/ProgressDialog;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 179
    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 180
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 181
    const v4, 0x1040112

    invoke-virtual {p0, v4}, Lcom/android/settings/MasterClearModemReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 183
    const-string v4, "MasterClearModemReset"

    const-string v5, "Modem reset started..."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/android/settings/MasterClearModemReset;->sendResetCommandToRIL()V

    .line 185
    new-instance v4, Lcom/android/settings/MasterClearModemReset$2;

    invoke-direct {v4, p0}, Lcom/android/settings/MasterClearModemReset$2;-><init>(Lcom/android/settings/MasterClearModemReset;)V

    iput-object v4, p0, Lcom/android/settings/MasterClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    .line 192
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 193
    .local v2, "mTimerHandler":Landroid/os/Handler;
    iget-object v4, p0, Lcom/android/settings/MasterClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
