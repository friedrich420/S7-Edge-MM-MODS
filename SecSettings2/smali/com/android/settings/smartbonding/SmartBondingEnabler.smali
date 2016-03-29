.class public final Lcom/android/settings/smartbonding/SmartBondingEnabler;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static synthetic access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingEnabler;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/smartbonding/SmartBondingEnabler;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 204
    const v0, 0x104000a

    .line 206
    .local v0, "popupBtnId":I
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const v0, 0x7f0e0fb0

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    const v0, 0x7f0e0faf

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    const v0, 0x7f0e0fae

    goto :goto_0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 188
    const v0, 0x7f0e0fa6

    .line 190
    .local v0, "popupMsgId":I
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const v0, 0x7f0e0faa

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    const v0, 0x7f0e0fa9

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 195
    const v0, 0x7f0e0fa8

    goto :goto_0

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const v0, 0x7f0e0fa7

    goto :goto_0
.end method

.method private showNotificationDialog()V
    .locals 13

    .prologue
    .line 126
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    .line 127
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 128
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 131
    :cond_0
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 132
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 133
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 134
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f0e0fb1

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v12, 0x7f0e01c6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f0e01c6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 185
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 137
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 138
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0e0faa

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0e0fa3

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/smartbonding/SmartBondingEnabler$4;

    invoke-direct {v11, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$4;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 146
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 149
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 151
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04017f

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 152
    .local v2, "layout":Landroid/view/View;
    const v9, 0x7f0d03e7

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 153
    .local v8, "tv":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->getTextIdUnderNetworkStatus()I

    move-result v4

    .line 154
    .local v4, "msgResId":I
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    .line 155
    const v9, 0x7f0d01ef

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 156
    .local v3, "mcheck":Landroid/widget/CheckBox;
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 157
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 159
    const/4 v9, 0x0

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 160
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 162
    const v9, 0x7f0e0fa3

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->getBtnIdUnderNetworkStatus()I

    move-result v9

    new-instance v10, Lcom/android/settings/smartbonding/SmartBondingEnabler$5;

    invoke-direct {v10, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$5;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    const/high16 v9, 0x1040000

    new-instance v10, Lcom/android/settings/smartbonding/SmartBondingEnabler$6;

    invoke-direct {v10, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$6;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 177
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 178
    iget-object v9, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/smartbonding/SmartBondingEnabler$7;

    invoke-direct {v10, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$7;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 110
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 112
    .local v1, "smartBondingState":Z
    :goto_0
    if-eqz p2, :cond_4

    if-nez v1, :cond_4

    .line 113
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding_notification_do_not_show"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 115
    .local v0, "do_not_show_again":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()V

    .line 123
    .end local v0    # "do_not_show_again":Z
    :goto_2
    return-void

    .end local v1    # "smartBondingState":Z
    :cond_1
    move v1, v3

    .line 110
    goto :goto_0

    .restart local v1    # "smartBondingState":Z
    :cond_2
    move v0, v3

    .line 113
    goto :goto_1

    .line 118
    .restart local v0    # "do_not_show_again":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 121
    .end local v0    # "do_not_show_again":Z
    :cond_4
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    if-eqz p2, :cond_5

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method public updateSmartBondingState()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
