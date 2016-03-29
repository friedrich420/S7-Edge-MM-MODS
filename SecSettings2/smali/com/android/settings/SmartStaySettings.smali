.class public Lcom/android/settings/SmartStaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 52
    new-instance v0, Lcom/android/settings/SmartStaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SmartStaySettings$1;-><init>(Lcom/android/settings/SmartStaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SmartStaySettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 269
    :cond_0
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 10

    .prologue
    const v9, 0x7f0e1145

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->dismissAllDialog()V

    .line 199
    const v4, 0x7f0e0f9a

    invoke-virtual {p0, v4}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "galaxyTalkbackString":Ljava/lang/String;
    const v4, 0x7f0e1100

    invoke-virtual {p0, v4}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "smartStayString":Ljava/lang/String;
    const v4, 0x7f0e1146

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/SmartStaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "smartStayTitle":Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, "dialogSummary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/SmartStaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e080b

    new-instance v6, Lcom/android/settings/SmartStaySettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/SmartStaySettings$4;-><init>(Lcom/android/settings/SmartStaySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 225
    iget-object v4, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/SmartStaySettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/SmartStaySettings$5;-><init>(Lcom/android/settings/SmartStaySettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 232
    iget-object v4, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 233
    return-void

    .line 207
    :cond_0
    const-string v4, "TalkBack"

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    const v4, 0x7f0e0a0c

    invoke-virtual {p0, v4}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_1
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/SmartStaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private maketurnOffUniversalPopup()V
    .locals 9

    .prologue
    const v5, 0x7f0e1100

    const v8, 0x7f0e092d

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 236
    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->dismissAllDialog()V

    .line 237
    invoke-virtual {p0, v5}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "smartStayString":Ljava/lang/String;
    const v3, 0x7f0e1146

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SmartStaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "smartStayTitle":Ljava/lang/String;
    const v3, 0x7f0e09fa

    invoke-virtual {p0, v3}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v8}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {p0, v8}, Lcom/android/settings/SmartStaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "popup_msg":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e080b

    new-instance v5, Lcom/android/settings/SmartStaySettings$6;

    invoke-direct {v5, p0}, Lcom/android/settings/SmartStaySettings$6;-><init>(Lcom/android/settings/SmartStaySettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 254
    iget-object v3, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/SmartStaySettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/SmartStaySettings$7;-><init>(Lcom/android/settings/SmartStaySettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 261
    iget-object v3, p0, Lcom/android/settings/SmartStaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 262
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x2e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 92
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 93
    iget-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 94
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v3, 0x0

    .line 151
    if-eqz p2, :cond_2

    .line 152
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->makeTalkBackDisablePopup()V

    .line 171
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->maketurnOffUniversalPopup()V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    iget-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 165
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/SmartStaySettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SmartStaySettings$2;-><init>(Lcom/android/settings/SmartStaySettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/SmartStaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 132
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0401ea

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 133
    .local v3, "newView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 134
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 135
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    iget-object v6, p0, Lcom/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    iget-object v6, p0, Lcom/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    const v7, 0x7f0d04b5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 139
    .local v1, "dualFolderLayout":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    .end local v1    # "dualFolderLayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    const v7, 0x7f0d04b2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 143
    .local v4, "smartStayHelpImg":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 144
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 147
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v3, 0x7f0401ea

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    .line 71
    iget-object v3, p0, Lcom/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    .line 73
    iget-object v3, p0, Lcom/android/settings/SmartStaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    const v4, 0x7f0d04b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 75
    .local v1, "dualFolderLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    .end local v1    # "dualFolderLayout":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    const v4, 0x7f0d04b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 79
    .local v2, "smartStayHelpImg":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 80
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SmartStaySettings;->mView:Landroid/view/View;

    return-object v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 126
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->dismissAllDialog()V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 109
    iget-object v2, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SmartStaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 116
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 175
    if-eqz p2, :cond_2

    .line 176
    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->makeTalkBackDisablePopup()V

    .line 194
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/android/settings/SmartStaySettings;->maketurnOffUniversalPopup()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    iget-object v1, p0, Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 188
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/SmartStaySettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/SmartStaySettings$3;-><init>(Lcom/android/settings/SmartStaySettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
