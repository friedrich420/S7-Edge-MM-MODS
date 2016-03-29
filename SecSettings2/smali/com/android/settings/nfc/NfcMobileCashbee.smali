.class public Lcom/android/settings/nfc/NfcMobileCashbee;
.super Landroid/app/Fragment;
.source "NfcMobileCashbee.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private activitySwitchBar:Lcom/android/settings/SettingsActivity;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;

.field private mfilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings/nfc/NfcMobileCashbee$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcMobileCashbee$1;-><init>(Lcom/android/settings/nfc/NfcMobileCashbee;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcMobileCashbee;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcMobileCashbee;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private setExplainedWord(I)V
    .locals 4
    .param p1, "type_settings"    # I

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mView:Landroid/view/View;

    const v3, 0x7f0d036e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 190
    .local v1, "mTextView":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 192
    .local v0, "explained_resId":I
    const-string v2, "[NfcMobileCashbee]"

    const-string v3, "setExplainedWord "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 195
    const v0, 0x7f0e173e

    .line 200
    :goto_0
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 203
    :cond_0
    return-void

    .line 197
    :cond_1
    const v0, 0x7f0e173f

    goto :goto_0
.end method

.method private setSwitch(I)V
    .locals 3
    .param p1, "type_settings"    # I

    .prologue
    const/4 v2, 0x1

    .line 179
    const-string v0, "[NfcMobileCashbee]"

    const-string v1, "setSwitch"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-ne p1, v2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->activity:Landroid/app/Activity;

    .line 99
    const-string v0, "[NfcMobileCashbee]"

    const-string v1, "[S] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    .line 104
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 108
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 116
    const-string v0, "[NfcMobileCashbee]"

    const-string v1, "[E] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "[NfcMobileCashbee]"

    const-string v1, "[S] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "[NfcMobileCashbee]"

    const-string v1, "[E] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const v0, 0x7f040149

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mView:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "[NfcMobileCashbee]"

    const-string v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    const-string v0, "[NfcMobileCashbee]"

    const-string v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 131
    const-string v1, "[NfcMobileCashbee]"

    const-string v2, "NfcMobileCashbee onResume & registerReceiver"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mfilter:Landroid/content/IntentFilter;

    .line 134
    iget-object v1, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mfilter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mfilter:Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcMobileCashbee;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getNfcTypeSettings()I

    move-result v0

    .line 140
    .local v0, "type_settings":I
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcMobileCashbee;->setSwitch(I)V

    .line 141
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcMobileCashbee;->setExplainedWord(I)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 143
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "SwitchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 165
    const-string v1, "[NfcMobileCashbee]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, "type_settings":I
    if-eqz p2, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 173
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcMobileCashbee;->setExplainedWord(I)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/nfc/NfcMobileCashbee;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v1, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    .line 176
    return-void
.end method
