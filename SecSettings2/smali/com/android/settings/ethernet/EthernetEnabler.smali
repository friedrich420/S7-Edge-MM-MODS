.class public Lcom/android/settings/ethernet/EthernetEnabler;
.super Ljava/lang/Object;
.source "EthernetEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

.field private mEthConfigPref:Landroid/preference/Preference;

.field private mEthManager:Landroid/net/EthernetManager;

.field private final mEthStateReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetSettings:Lcom/android/settings/ethernet/EthernetSettings;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private mStartMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/EthernetManager;Landroid/preference/CheckBoxPreference;Landroid/preference/Preference;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ethernetManager"    # Landroid/net/EthernetManager;
    .param p3, "ethernetCheckBoxPreference"    # Landroid/preference/CheckBoxPreference;
    .param p4, "ethernetConfigPreference"    # Landroid/preference/Preference;

    .prologue
    const v6, 0x7f0e15d4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v5, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    .line 57
    new-instance v0, Lcom/android/settings/ethernet/EthernetEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ethernet/EthernetEnabler$1;-><init>(Lcom/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthStateReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    .line 140
    iput-object p3, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 141
    iput-object p4, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthConfigPref:Landroid/preference/Preference;

    .line 142
    iput-object p2, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    .line 144
    invoke-virtual {p3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {p3, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 147
    const-string v0, "SettingsEthEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EthernetEnabler mEthManager.getEthState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->getEthState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Statckconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->getStackConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HWconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->getHWConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connecting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->getCheckConnecting()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0e00e0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getStackConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getHWConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getCheckConnecting()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0, v5}, Landroid/net/EthernetManager;->setEthernetState(I)V

    .line 197
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 198
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "samsung.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iput v4, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    .line 202
    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0e15d3

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthState()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/ethernet/EthernetEnabler;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ethernet/EthernetEnabler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ethernet/EthernetEnabler;->handleEthStateChanged(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ethernet/EthernetEnabler;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ethernet/EthernetEnabler;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/ethernet/EthernetEnabler;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ethernet/EthernetEnabler;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ethernet/EthernetEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ethernet/EthernetEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    return-void
.end method

.method private handleEthStateChanged(II)V
    .locals 8
    .param p1, "ethState"    # I
    .param p2, "previousEthState"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x1

    .line 287
    iget-object v3, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v3}, Landroid/net/EthernetManager;->getEthState()I

    move-result v0

    .line 288
    .local v0, "state":I
    const-string v3, "SettingsEthEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEthStateChanged event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from current state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getCheckConnecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v5}, Landroid/net/EthernetManager;->getCheckConnecting()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v3, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v3}, Landroid/net/EthernetManager;->getCheckConnecting()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 294
    iput v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    .line 295
    const-string v1, "SettingsEthEnabler"

    const-string v2, "previous connecting has not done. just return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    return-void

    .line 299
    :cond_0
    if-ne v0, v7, :cond_2

    if-ne p2, v6, :cond_2

    .line 300
    if-ne p2, v6, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/ethernet/EthernetEnabler;->setEthEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 301
    :cond_2
    if-ne v0, v7, :cond_4

    if-ne p2, v1, :cond_4

    .line 302
    if-ne p2, v6, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings/ethernet/EthernetEnabler;->setEthEnabled(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e15d5

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 302
    goto :goto_2

    .line 304
    :cond_4
    if-ne p2, v7, :cond_5

    .line 305
    const-string v1, "SettingsEthEnabler"

    const-string v2, "Cable is connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_5
    if-ne p2, v6, :cond_6

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/settings/ethernet/EthernetEnabler;->setEthEnabled(Z)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 314
    const-string v0, "SettingsEthEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received network state changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method private postEnableTaskFinishedUIUpdate(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 108
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->getEthState()I

    move-result v0

    .line 111
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v3, :cond_1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_2

    const v1, 0x7f0e00e0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    :cond_1
    return-void

    .line 114
    :cond_2
    const v1, 0x7f0e15d3

    goto :goto_0
.end method


# virtual methods
.method public getManager()Landroid/net/EthernetManager;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 225
    const-string v1, "SettingsEthEnabler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 227
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    .line 230
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ethernet/EthernetEnabler;->setEthEnabled(Z)V

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 217
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    .line 218
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 220
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 209
    iget v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 210
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mStartMode:I

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    return-void
.end method

.method public setCheckBox(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x3

    .line 270
    const-string v1, "SettingsEthEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCheckBox  req state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "now state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v3}, Landroid/net/EthernetManager;->getEthState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-ne p1, v4, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e15d4

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->getEthState()I

    move-result v0

    .line 280
    .local v0, "eth_state":I
    if-eq v0, v4, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setConfigDialog(Lcom/android/settings/ethernet/EthernetConfigDialog;)V
    .locals 0
    .param p1, "Dialog"    # Lcom/android/settings/ethernet/EthernetConfigDialog;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    .line 76
    return-void
.end method

.method public setEthEnabled(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 237
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->getEthState()I

    move-result v0

    .line 239
    .local v0, "state":I
    const-string v1, "SettingsEthEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEthEnabled enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-ne p1, v5, :cond_0

    if-ne v0, v4, :cond_0

    .line 242
    const-string v1, "SettingsEthEnabler"

    const-string v2, "update enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0, p1}, Lcom/android/settings/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    .line 267
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 251
    if-eq v0, v4, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v1}, Landroid/net/EthernetManager;->ethConfigured()Z

    move-result v1

    if-eq v1, v5, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthConfigDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->enableAfterConfig()V

    .line 255
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthernetSettings:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-virtual {v1, v5}, Lcom/android/settings/ethernet/EthernetSettings;->showEthernetSettingsDialog(I)V

    goto :goto_0

    .line 261
    :cond_1
    new-instance v1, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;

    invoke-direct {v1, p0, v7}, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/android/settings/ethernet/EthernetEnabler;Lcom/android/settings/ethernet/EthernetEnabler$1;)V

    new-array v2, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "enabling"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e15d4

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 265
    :cond_2
    new-instance v1, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;

    invoke-direct {v1, p0, v7}, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/android/settings/ethernet/EthernetEnabler;Lcom/android/settings/ethernet/EthernetEnabler$1;)V

    new-array v2, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setEthernetSettings(Lcom/android/settings/ethernet/EthernetSettings;)V
    .locals 0
    .param p1, "EthSettings"    # Lcom/android/settings/ethernet/EthernetSettings;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetEnabler;->mEthernetSettings:Lcom/android/settings/ethernet/EthernetSettings;

    .line 80
    return-void
.end method
