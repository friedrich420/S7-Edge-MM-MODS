.class public Lcom/android/settings/spen/AirButtonHelp;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirButtonHelp.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAirCommanObserver:Landroid/database/ContentObserver;

.field private mDBItem:Ljava/lang/String;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mDBItem:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/android/settings/spen/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object v1, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 97
    new-instance v0, Lcom/android/settings/spen/AirButtonHelp$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/AirButtonHelp$1;-><init>(Lcom/android/settings/spen/AirButtonHelp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mAirCommanObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/spen/AirButtonHelp;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/AirButtonHelp;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/spen/AirButtonHelp;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/spen/AirButtonHelp;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 249
    :cond_0
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 6

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/settings/spen/AirButtonHelp;->dismissAllDialog()V

    .line 193
    const v2, 0x7f0e1588

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0e0a43

    invoke-virtual {p0, v5}, Lcom/android/settings/spen/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/spen/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e1589

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/spen/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.talkback"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e0a0c

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spen/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e0a0b

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e090e

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    const-string v3, "com.sec.feature.overlaymagnifier"

    invoke-static {v2, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0e0913

    invoke-virtual {p0, v3}, Lcom/android/settings/spen/AirButtonHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e1260

    new-instance v4, Lcom/android/settings/spen/AirButtonHelp$3;

    invoke-direct {v4, p0}, Lcom/android/settings/spen/AirButtonHelp$3;-><init>(Lcom/android/settings/spen/AirButtonHelp;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/spen/AirButtonHelp$2;

    invoke-direct {v4, p0}, Lcom/android/settings/spen/AirButtonHelp$2;-><init>(Lcom/android/settings/spen/AirButtonHelp;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/spen/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 233
    iget-object v2, p0, Lcom/android/settings/spen/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 234
    iget-object v2, p0, Lcom/android/settings/spen/AirButtonHelp;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/spen/AirButtonHelp$4;

    invoke-direct {v3, p0}, Lcom/android/settings/spen/AirButtonHelp$4;-><init>(Lcom/android/settings/spen/AirButtonHelp;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 242
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/spen/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 118
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 119
    iget-object v1, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/spen/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    .line 110
    iget-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f040023

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 256
    const v3, 0x7f0d0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 257
    .local v1, "tv":Landroid/widget/TextView;
    const v3, 0x7f0e1578

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/spen/AirButtonHelp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const v3, 0x7f0d0098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    .local v0, "gloablairbutton":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/spen/AirButtonHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    const v3, 0x7f0e1580

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 263
    :cond_0
    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 149
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/spen/AirButtonHelp;->dismissAllDialog()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/AirButtonHelp;->mAirCommanObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 125
    iget-object v3, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 126
    .local v0, "airCommandEngineState":Z
    :cond_0
    iget-object v3, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 130
    iget-object v3, p0, Lcom/android/settings/spen/AirButtonHelp;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v1

    .line 131
    .local v1, "allowed":Z
    iget-object v3, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/spen/AirButtonHelp;->mAirCommanObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 154
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 166
    iget-object v4, p0, Lcom/android/settings/spen/AirButtonHelp;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v4

    if-eq p1, v4, :cond_0

    .line 189
    :goto_0
    return-void

    .line 170
    :cond_0
    if-eqz p2, :cond_6

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "hoverZoom":Z
    const/4 v1, 0x0

    .line 173
    .local v1, "magnifier":Z
    iget-object v4, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    const-string v5, "com.sec.feature.overlaymagnifier"

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    iget-object v4, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v0, v2

    .line 176
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_magnifier"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v1, v2

    .line 177
    :goto_2
    iget-object v4, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    .line 181
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/spen/AirButtonHelp;->showTalkBackDisableDialog()V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 174
    goto :goto_1

    :cond_4
    move v1, v3

    .line 176
    goto :goto_2

    .line 183
    :cond_5
    iget-object v3, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 187
    .end local v0    # "hoverZoom":Z
    .end local v1    # "magnifier":Z
    :cond_6
    iget-object v2, p0, Lcom/android/settings/spen/AirButtonHelp;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_button_onoff"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
