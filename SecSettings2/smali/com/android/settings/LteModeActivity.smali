.class public Lcom/android/settings/LteModeActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LteModeActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static isAirplaneModeOn:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mLteModeDesc:Landroid/widget/TextView;

.field private final mLteModeObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lcom/android/settings/LteModeActivity$4;

    invoke-direct {v0}, Lcom/android/settings/LteModeActivity$4;-><init>()V

    sput-object v0, Lcom/android/settings/LteModeActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 78
    new-instance v0, Lcom/android/settings/LteModeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LteModeActivity$1;-><init>(Lcom/android/settings/LteModeActivity;)V

    iput-object v0, p0, Lcom/android/settings/LteModeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lcom/android/settings/LteModeActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LteModeActivity$2;-><init>(Lcom/android/settings/LteModeActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LteModeActivity;->mLteModeObserver:Landroid/database/ContentObserver;

    .line 232
    new-instance v0, Lcom/android/settings/LteModeActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/LteModeActivity$3;-><init>(Lcom/android/settings/LteModeActivity;)V

    iput-object v0, p0, Lcom/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/LteModeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LteModeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/LteModeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LteModeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/LteModeActivity;->updateUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/LteModeActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LteModeActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LteModeActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LteModeActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LteModeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LteModeActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/LteModeActivity;->getCardStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/LteModeActivity;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LteModeActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private getCardStatus()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    const-string v5, "ril.ICC_TYPE"

    const-string v6, "0"

    invoke-static {v5, v3, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "iccType":Ljava/lang/String;
    const-string v5, "1"

    const-string v6, "ril.IsCSIM"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v1, v4

    .line 255
    .local v1, "is4Gcard":Z
    :goto_0
    const-string v5, "3"

    const-string v6, "gsm.sim.currentcardstatus"

    const-string v7, "9"

    invoke-static {v6, v3, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 257
    .local v2, "isready":Z
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v4, v3

    .line 260
    :cond_2
    return v4

    .end local v1    # "is4Gcard":Z
    .end local v2    # "isready":Z
    :cond_3
    move v1, v3

    .line 253
    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    .line 187
    sget-boolean v0, Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 192
    const-string v0, "LteModeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KKK setSwitchChecked , checked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateUi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 142
    iget-object v1, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lte_mode_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "state":I
    const-string v1, "LteModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK updateUi: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/android/settings/LteModeActivity;->getCardStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-direct {p0, v5}, Lcom/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    if-ne v0, v4, :cond_1

    .line 150
    invoke-direct {p0, v4}, Lcom/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 182
    const/16 v0, 0x1f9

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/LteModeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LteModeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 116
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 117
    iget-object v1, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    .line 121
    const v4, 0x7f040198

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 122
    .local v3, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x30

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 124
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    const v4, 0x7f0d03c6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/LteModeActivity;->mLteModeDesc:Landroid/widget/TextView;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/LteModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e147e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "prefTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/LteModeActivity;->mLteModeDesc:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/LteModeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/LteModeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 132
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 133
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 134
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 138
    :cond_0
    return-object v3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 174
    const-string v0, "LteModeActivity"

    const-string v1, "KKK onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LteModeActivity;->mLteModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/LteModeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 161
    const-string v0, "LteModeActivity"

    const-string v1, "KKK onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lte_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/LteModeActivity;->mLteModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LteModeActivity;->mFilter:Landroid/content/IntentFilter;

    .line 166
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/LteModeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/LteModeActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-direct {p0}, Lcom/android/settings/LteModeActivity;->updateUi()V

    .line 169
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 8
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 206
    iget-object v2, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    if-eq p1, v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lte_mode_switch"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 211
    .local v1, "state":I
    const-string v2, "LteModeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK onCheckedChanged isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v2, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    .line 213
    const-string v2, "LteModeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK oncheckedchange airmode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-boolean v2, Lcom/android/settings/LteModeActivity;->isAirplaneModeOn:Z

    if-eqz v2, :cond_2

    .line 215
    invoke-direct {p0, v5}, Lcom/android/settings/LteModeActivity;->setSwitchChecked(Z)V

    .line 216
    if-ne p2, v6, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0e1485

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    if-nez p2, :cond_0

    if-ne v1, v6, :cond_0

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/android/settings/LteModeActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 225
    iget-object v2, p0, Lcom/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, "delayReady":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/LteModeActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 228
    invoke-virtual {p0, p2}, Lcom/android/settings/LteModeActivity;->sendLteModeChange(Z)V

    goto/16 :goto_0
.end method

.method public sendLteModeChange(Z)V
    .locals 4
    .param p1, "mode"    # Z

    .prologue
    .line 198
    const-string v1, "LteModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK sendLteModeChange mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.LTE_MODE_CHNAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lte_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/android/settings/LteModeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    return-void
.end method
