.class public Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static beenInPause:Z

.field private static mIsAlreadyRemoved:Z


# instance fields
.field mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mIsPrefClick:Z

.field private mIsTablet:Z

.field private mMenuItemOk:Landroid/view/MenuItem;

.field private mOkTextView:Landroid/widget/TextView;

.field private mRemoveButton:Landroid/view/View;

.field private mSelectionMenuCheckbox:Landroid/widget/CheckBox;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private okDisableOpacity:F

.field private okEnableOpacity:F

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Landroid/view/View;

.field private selectAllTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    .line 86
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-virtual {v1, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setChecked(Z)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->checkDeleteButtonstate()V

    .line 446
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateSelectionMenu()V

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private checkDeleteButtonstate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 450
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getSelectedItemCount()I

    move-result v0

    .line 451
    .local v0, "selectedCount":I
    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 453
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 456
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getSelectedItemCount()I
    .locals 4

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 463
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 464
    .local v2, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 465
    add-int/lit8 v0, v0, 0x1

    .line 462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v2    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    return v0
.end method

.method private isAllDeviceChecked()Z
    .locals 2

    .prologue
    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    const/4 v1, 0x0

    .line 388
    :goto_1
    return v1

    .line 384
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isAnyDeviceChecked()Z
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const/4 v1, 0x1

    .line 477
    :goto_1
    return v1

    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 315
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 316
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 317
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 319
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 321
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private removeSelectedList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 289
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 290
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 293
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 294
    .local v3, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 296
    .local v4, "wl":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 297
    sput-boolean v8, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsAlreadyRemoved:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 299
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_0

    .line 300
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 301
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v6, v8, :cond_0

    .line 302
    const/4 v6, 0x4

    iput v6, v2, Landroid/os/Message;->what:I

    .line 303
    const-string v6, "mac"

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 305
    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 292
    .end local v4    # "wl":Landroid/net/wifi/WifiApWhiteList;
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->reloadWhiteList()V

    .line 311
    return-void
.end method

.method private updateList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 392
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_1

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 398
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 400
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 401
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okEnableOpacity:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 417
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 405
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 408
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_4

    .line 409
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 410
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 411
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 393
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 2
    .param p1, "showIcon"    # Z

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 262
    if-eqz p1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method private updateSelectionMenu()V
    .locals 6

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getSelectedItemCount()I

    move-result v2

    .line 421
    .local v2, "selectedCount":I
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 423
    .local v0, "allCount":I
    const-string v3, "WifiApAllowedListDelete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shashi selectedCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "all count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez v2, :cond_0

    .line 425
    const-string v3, "WifiApAllowedListDelete"

    const-string v4, "Shashi setting Select Device to text view"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "format":Ljava/lang/String;
    :goto_0
    const-string v3, "WifiApAllowedListDelete"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shashi format is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 433
    if-lez v2, :cond_1

    if-ne v2, v0, :cond_1

    .line 434
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 438
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 439
    return-void

    .line 428
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_0

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 257
    const/16 v0, 0x67

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActivity:Landroid/app/Activity;

    .line 108
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 109
    .local v0, "actionBar":Landroid/app/ActionBar;
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 110
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    .line 111
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsAlreadyRemoved:Z

    .line 112
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->beenInPause:Z

    .line 113
    const-string v9, "WifiApAllowedListDelete"

    const-string v10, "WifiApAllowedListDelete onActivityCreated"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v9, :cond_0

    .line 115
    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 117
    :cond_0
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v9, :cond_1

    const-string v9, "TMO"

    sget-object v10, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    const v9, 0x7f0202d0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setIcon(I)V

    .line 121
    :cond_1
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActivity:Landroid/app/Activity;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 123
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v9, :cond_2

    .line 124
    const v9, 0x7f0401cc

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 125
    .local v6, "view":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getView()Landroid/view/View;

    move-result-object v2

    .line 126
    .local v2, "currentView":Landroid/view/View;
    check-cast v2, Landroid/widget/LinearLayout;

    .end local v2    # "currentView":Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 127
    const v9, 0x7f0d047c

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAll:Landroid/widget/LinearLayout;

    .line 128
    const v9, 0x7f0d047d

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;

    .line 129
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAll:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .end local v6    # "view":Landroid/widget/LinearLayout;
    :cond_2
    const-string v9, "device_list_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 143
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-eqz v9, :cond_3

    .line 145
    const v9, 0x7f04024b

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    .line 146
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0d055f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllTextView:Landroid/widget/TextView;

    .line 147
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0d055a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    .line 148
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0d055b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItemText:Landroid/view/View;

    .line 149
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0d055d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    .line 150
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 151
    new-instance v9, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 162
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 182
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v13, 0x10

    invoke-direct {v10, v11, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateSelectionMenu()V

    .line 217
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v7

    .line 218
    .local v7, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v7}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 219
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v5, :cond_4

    .line 220
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 221
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 222
    .local v8, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;-><init>(Landroid/content/Context;)V

    .line 223
    .local v3, "dev":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 188
    .end local v3    # "dev":Landroid/preference/CheckBoxPreference;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v7    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    .end local v8    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_3
    const v9, 0x7f04023d

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    .line 189
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0d055a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    .line 190
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    const v10, 0x7f0d055b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    .line 191
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    const v10, 0x7f0e049b

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mOkTextView:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->okDisableOpacity:F

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 193
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mRemoveButton:Landroid/view/View;

    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$4;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0d0558

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, "cancelButton":Landroid/view/View;
    new-instance v9, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$5;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 211
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x15

    invoke-direct {v10, v11, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_0

    .line 230
    .end local v1    # "cancelButton":Landroid/view/View;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v7    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_4
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v9, :cond_5

    .line 231
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    :goto_2
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    .line 233
    :cond_5
    return-void

    .line 231
    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->addPreferencesFromResource(I)V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 245
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 350
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 351
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 345
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 274
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 285
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 277
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 356
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->beenInPause:Z

    .line 357
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "checked"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 361
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    if-eqz v1, :cond_0

    .line 380
    .end local p1    # "preference":Landroid/preference/Preference;
    .end local p2    # "checked":Ljava/lang/Object;
    :goto_0
    return v4

    .line 363
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "checked":Ljava/lang/Object;
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 364
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "checked":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 365
    .local v0, "isChecked":Z
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isAllDeviceChecked()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 375
    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    .line 376
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v1, :cond_6

    .line 377
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    goto :goto_0

    .line 369
    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isAnyDeviceChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isAnyDeviceChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 371
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->saveMenuItem:Landroid/view/View;

    if-eqz v0, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    goto :goto_2

    .line 379
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateSelectionMenu()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 326
    sget-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->beenInPause:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsAlreadyRemoved:Z

    if-eqz v2, :cond_0

    .line 327
    sput-boolean v3, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->beenInPause:Z

    .line 328
    sput-boolean v3, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsAlreadyRemoved:Z

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    .line 331
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->selectAllCheck:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 333
    .local v1, "isChecked":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setChecked(Z)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateList()V

    .line 338
    .end local v0    # "i":I
    .end local v1    # "isChecked":Z
    :cond_2
    return-void
.end method
