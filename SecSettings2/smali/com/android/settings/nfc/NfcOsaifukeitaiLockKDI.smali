.class public Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;
.super Lcom/android/settings/nfc/NfcOsaifukeitaiLock;
.source "NfcOsaifukeitaiLockKDI.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mFelicaLockResultCode:I

.field private mLockState:Z

.field private mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mbSwitchBar:Z

.field private mfilter:Landroid/content/IntentFilter;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mFelicaLockResultCode:I

    .line 66
    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    .line 87
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLock;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mFelicaLockResultCode:I

    .line 66
    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    .line 87
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI$1;-><init>(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->activity:Landroid/app/Activity;

    .line 85
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-direct {v0, p1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setLockSwitch(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setExplainedWord(II)V

    return-void
.end method

.method private setExplainedWord(II)V
    .locals 6
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    const/16 v5, 0x100

    .line 176
    const-string v2, "[NfcOsaifukeitaiLockKDI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExplainedWord :  clf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , uim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move v0, p1

    .line 179
    .local v0, "clflock":I
    move v1, p2

    .line 181
    .local v1, "uimlock":I
    if-ne p1, v5, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :cond_0
    if-ne p2, v5, :cond_1

    .line 185
    const/4 v1, 0x0

    .line 187
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 188
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    goto :goto_0
.end method

.method private setLockSwitch(II)V
    .locals 6
    .param p1, "clf_lock"    # I
    .param p2, "uim_lock"    # I

    .prologue
    const/16 v5, 0x100

    .line 155
    const-string v2, "[NfcOsaifukeitaiLockKDI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLockSwitch  :  clf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , uim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    move v0, p1

    .line 158
    .local v0, "clflock":I
    move v1, p2

    .line 160
    .local v1, "uimlock":I
    if-ne p1, v5, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :cond_0
    if-ne p2, v5, :cond_1

    .line 164
    const/4 v1, 0x0

    .line 167
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 168
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    goto :goto_0
.end method


# virtual methods
.method public getLockState()Z
    .locals 2

    .prologue
    .line 138
    const-string v0, "[NfcOsaifukeitaiLockKDI"

    const-string v1, "[S] getLockStateKDI"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mLockState:Z

    return v0
.end method

.method public getSwitchBarState()Z
    .locals 2

    .prologue
    .line 134
    const-string v0, "[NfcOsaifukeitaiLockKDI"

    const-string v1, "[S] getSwitchBarStateKDI"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mbSwitchBar:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 144
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 145
    const-string v0, "[NfcOsaifukeitaiLockKDI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NfcOsaifukeitaiLock onActivityResult ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput p2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mFelicaLockResultCode:I

    .line 147
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 151
    :cond_1
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v0, "[NfcOsaifukeitaiLockKDI"

    const-string v1, "[S] onPauseKDI"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    const-string v0, "[NfcOsaifukeitaiLockKDI"

    const-string v1, "[E] onPauseKDI"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 112
    const-string v2, "[NfcOsaifukeitaiLockKDI"

    const-string v3, "NfcOsaifukeitaiLockKDI onResume & registerReceiver"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mfilter:Landroid/content/IntentFilter;

    .line 115
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mfilter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mfilter:Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 121
    .local v0, "clf_lock":I
    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    .line 122
    .local v1, "uim_lock":I
    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setLockSwitch(II)V

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiLockKDI;->setExplainedWord(II)V

    .line 124
    return-void
.end method
