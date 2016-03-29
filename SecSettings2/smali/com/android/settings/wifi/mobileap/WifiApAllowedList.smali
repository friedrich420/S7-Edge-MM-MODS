.class public Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;
    }
.end annotation


# static fields
.field private static mDeleteClicked:Z

.field private static mIsAlreadyRemoved:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cb:Landroid/view/ActionMode$Callback;

.field private isEnabledShowBtnBg:Z

.field private mActionBack:Landroid/widget/LinearLayout;

.field private mActionBarView:Landroid/view/View;

.field private mActionMode:Landroid/view/ActionMode;

.field mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mActivity:Landroid/app/Activity;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mAllowedDeleteMenuItem:Landroid/view/MenuItem;

.field private mCurrentSelected:Landroid/preference/Preference;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mDeleteDone:Z

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mDialogType:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mEmptyLandscape:Landroid/view/View;

.field private mEmptyPortrait:Landroid/view/View;

.field private mFlagPref:Z

.field private mIsDeviceDeleted:Z

.field private mIsPrefClick:Z

.field private mIsStartActionMode:Z

.field private mIsTablet:Z

.field private mOnDestroyActionMode:Z

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheck:Landroid/view/View;

.field private mSelectionMenuCheckbox:Landroid/widget/CheckBox;

.field private mView:Landroid/widget/LinearLayout;

.field private mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;

.field private selectAllTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 100
    const-string v0, "WifiApAllowedList"

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->TAG:Ljava/lang/String;

    .line 153
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsPrefClick:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsDeviceDeleted:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mOnDestroyActionMode:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mFlagPref:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsStartActionMode:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteDone:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    .line 889
    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 5
    .param p1, "checked"    # Z

    .prologue
    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-virtual {v2, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "WifiApAllowedList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException from ToggleAllCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :goto_1
    return-void

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->checkDeleteButtonstate()V

    .line 394
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V

    goto :goto_1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 98
    sput-boolean p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeleteMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAllowedDeleteMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsStartActionMode:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mOnDestroyActionMode:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mFlagPref:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mFlagPref:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteDone:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->removeSelectedList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/ActionMode$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method private changeActionBar()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 799
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 801
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v3, :cond_0

    .line 814
    :goto_0
    return-void

    .line 805
    :cond_0
    sget-boolean v3, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    if-nez v3, :cond_2

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->stopActionMode()V

    .line 807
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 809
    .local v1, "isLand":Z
    :goto_1
    const/16 v3, 0x1c

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 810
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    goto :goto_0

    .line 807
    .end local v1    # "isLand":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 812
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startActionMode()V

    goto :goto_0
.end method

.method private checkDeleteButtonstate()V
    .locals 3

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getSelectedItemCount()I

    move-result v0

    .line 399
    .local v0, "selectedCount":I
    if-eqz v0, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->setDeleteEnabled(Z)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->setDeleteEnabled(Z)V

    goto :goto_0
.end method

.method private getSelectedItemCount()I
    .locals 4

    .prologue
    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 819
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 820
    .local v2, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    add-int/lit8 v0, v0, 0x1

    .line 818
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    .end local v2    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    return v0
.end method

.method private isAllDeviceChecked()Z
    .locals 2

    .prologue
    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    const/4 v1, 0x0

    .line 481
    :goto_1
    return v1

    .line 476
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isAnyDeviceChecked()Z
    .locals 2

    .prologue
    .line 484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const/4 v1, 0x1

    .line 489
    :goto_1
    return v1

    .line 484
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private removeEmptyView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    return-void
.end method

.method private removeSelectedList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 828
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 829
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 831
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 832
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 833
    .local v3, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 834
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 835
    .local v4, "wl":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 836
    sput-boolean v8, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsAlreadyRemoved:Z

    .line 837
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 838
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 839
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 840
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v6, v8, :cond_0

    .line 841
    const/4 v6, 0x4

    iput v6, v2, Landroid/os/Message;->what:I

    .line 842
    const-string v6, "mac"

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 844
    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 831
    .end local v4    # "wl":Landroid/net/wifi/WifiApWhiteList;
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 849
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 850
    return-void
.end method

.method private startDeletePreference()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 409
    iget-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v7, :cond_1

    .line 410
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 411
    .local v4, "preference":Landroid/preference/Preference;
    const-class v7, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 412
    const v7, 0x7f0e049b

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v7, v10, v4}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 455
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_0
    return-void

    .line 415
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    if-eqz v7, :cond_2

    .line 416
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    check-cast v7, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;

    invoke-virtual {v7, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->setDeleteEnabled(Z)V

    .line 417
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 418
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 419
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startActionMode()V

    .line 421
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 422
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0401cc

    invoke-virtual {v2, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "currentView":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "currentView":Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 425
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    const v8, 0x7f0d047c

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAll:Landroid/widget/LinearLayout;

    .line 427
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    const v8, 0x7f0d047d

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;

    .line 428
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAll:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    .line 442
    .local v5, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v5}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 444
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v3, :cond_0

    .line 445
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 446
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 447
    .local v6, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v7}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;-><init>(Landroid/content/Context;)V

    .line 448
    .local v1, "device":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {v6}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 451
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateEmptyView(Z)V
    .locals 3
    .param p1, "isLand"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 536
    :cond_0
    if-eqz p1, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 3
    .param p1, "showIcon"    # Z

    .prologue
    const/4 v2, 0x1

    .line 550
    if-eqz p1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 552
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method private updateSelectionMenu()V
    .locals 8

    .prologue
    const v4, 0x7f0e0134

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 362
    iget-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mOnDestroyActionMode:Z

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "format":Ljava/lang/String;
    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mOnDestroyActionMode:Z

    .line 382
    :goto_0
    return-void

    .line 367
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getSelectedItemCount()I

    move-result v2

    .line 368
    .local v2, "selectedCount":I
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 369
    .local v0, "allCount":I
    if-nez v2, :cond_1

    .line 370
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    .restart local v1    # "format":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->selectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 376
    if-lez v2, :cond_2

    if-ne v2, v0, :cond_2

    .line 377
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 381
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 372
    .end local v1    # "format":Ljava/lang/String;
    :cond_1
    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1

    .line 379
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 357
    const/16 v0, 0x67

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0d0555

    const/4 v10, 0x4

    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    .line 187
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f0e047e

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 188
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 189
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    .line 190
    sput-boolean v7, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "show_button_background"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    .line 194
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v5, :cond_1

    const-string v5, "TMO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "NEWCO"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f0202d0

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 198
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 199
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const v5, 0x7f04023c

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 200
    .local v4, "view":Landroid/widget/LinearLayout;
    const v5, 0x7f0d0554

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    .line 201
    const v5, 0x7f0d0556

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    .line 203
    const-string v5, "VZW"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 204
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 205
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_2
    const v5, 0x7f0d0557

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 208
    const v5, 0x7f0d0557

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "currentView":Landroid/view/View;
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0    # "currentView":Landroid/view/View;
    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 247
    const-string v5, "device_list_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 248
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    new-instance v8, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 266
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 267
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04023e

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    .line 268
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v8, 0x7f0d055f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->selectAllTextView:Landroid/widget/TextView;

    .line 269
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v8, 0x7f0d055a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    .line 270
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v8, 0x7f0d0558

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->revertMenuItem:Landroid/view/View;

    .line 271
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->revertMenuItem:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v8, 0x7f0d055b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItemText:Landroid/view/View;

    .line 274
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v8, 0x7f0d0559

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->revertMenuItemText:Landroid/view/View;

    .line 275
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v8, 0x7f0d055d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    .line 276
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionModeCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 290
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;

    const v8, 0x7f0d016e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBack:Landroid/widget/LinearLayout;

    .line 291
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBack:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v5, :cond_4

    .line 293
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V

    .line 294
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->checkDeleteButtonstate()V

    .line 297
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    new-instance v8, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->revertMenuItem:Landroid/view/View;

    new-instance v8, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isEnabledShowBtnBg:Z

    if-eqz v5, :cond_5

    .line 345
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->saveMenuItem:Landroid/view/View;

    const v8, 0x108088e

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 348
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_8

    move v3, v6

    .line 350
    .local v3, "isLand":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v5, :cond_6

    .line 351
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 352
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 353
    return-void

    .end local v1    # "inflate":Landroid/view/LayoutInflater;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "isLand":Z
    .end local v4    # "view":Landroid/widget/LinearLayout;
    :cond_7
    move v5, v7

    .line 192
    goto/16 :goto_0

    .restart local v1    # "inflate":Landroid/view/LayoutInflater;
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v4    # "view":Landroid/widget/LinearLayout;
    :cond_8
    move v3, v7

    .line 348
    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v8, 0x0

    .line 747
    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 748
    packed-switch p2, :pswitch_data_0

    .line 791
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :pswitch_0
    move-object v6, p1

    .line 750
    check-cast v6, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v6}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "mac":Ljava/lang/String;
    check-cast p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v4

    .line 752
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    .line 753
    .local v5, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    sget-boolean v6, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    if-eqz v6, :cond_1

    .line 754
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 755
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 757
    :cond_1
    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 758
    invoke-virtual {v5, v2, v4}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 760
    :pswitch_2
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v6, v2, v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 761
    .local v1, "device":Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 765
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 766
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x4d

    iput v6, v3, Landroid/os/Message;->what:I

    .line 767
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 768
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "feature"

    const-string v7, "MHAD"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v6, "extra"

    const-string v7, "ADD"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 771
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    .line 775
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "device":Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_3
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 778
    :pswitch_4
    invoke-virtual {p0, v4, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    goto :goto_0

    .line 785
    .end local v2    # "mac":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :pswitch_5
    iput-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    goto :goto_0

    .line 748
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 758
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 512
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 513
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 514
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 517
    :cond_2
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    if-eqz v0, :cond_3

    .line 518
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 529
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 530
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 178
    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    .line 179
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 582
    if-ne p1, v0, :cond_4

    .line 583
    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 584
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-nez v0, :cond_1

    .line 585
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 593
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 632
    :cond_0
    :goto_1
    return-object v3

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":::::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setName()V

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setMac()V

    .line 591
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->setFocusToName()V

    goto :goto_0

    .line 594
    :cond_4
    if-ne p1, v1, :cond_5

    .line 595
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDialogType:I

    .line 596
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 597
    .local v6, "deleteDeviceDialog":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0471

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e00b8

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01ba

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 614
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_1

    .line 616
    .end local v6    # "deleteDeviceDialog":Landroid/app/AlertDialog$Builder;
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 617
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 618
    .local v7, "macWarnDialog":Landroid/app/AlertDialog$Builder;
    const v0, 0x1040014

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e04b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e04a8

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 493
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 494
    const v0, 0x7f0e03c0

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 502
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0e0467

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    .line 506
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 507
    return-void

    .line 496
    :cond_1
    const v0, 0x7f0e049b

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v7, 0xa

    const/4 v2, 0x1

    .line 560
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 577
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 562
    :pswitch_0
    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 563
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    goto :goto_0

    .line 566
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v3, v7, :cond_2

    .line 567
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 568
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04d6

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 573
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 686
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 692
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "checked"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 459
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsPrefClick:Z

    if-eqz v1, :cond_1

    .line 473
    .end local p1    # "preference":Landroid/preference/Preference;
    .end local p2    # "checked":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 463
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "checked":Ljava/lang/Object;
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsPrefClick:Z

    .line 464
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "checked":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 465
    .local v0, "isChecked":Z
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 466
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 467
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    if-eqz v1, :cond_4

    .line 468
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->setDeleteEnabled(Z)V

    .line 470
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectAllCheck:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAllDeviceChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 471
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsPrefClick:Z

    .line 472
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateSelectionMenu()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 671
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 672
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiApWhitelistDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 675
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 676
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    if-eqz v0, :cond_2

    .line 677
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    .line 683
    :cond_1
    :goto_0
    return-void

    .line 679
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 680
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V

    goto :goto_0
.end method

.method public reloadWhiteList()V
    .locals 3

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 637
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 638
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 640
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 642
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public removeSelectedDevice(Ljava/lang/String;)V
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 645
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    .line 646
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 647
    .local v1, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 648
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 649
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 650
    .local v0, "b":Landroid/os/Bundle;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 651
    const-string v3, "mac"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 653
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 656
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public showAlreadyInTableToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 659
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v3

    .line 661
    .local v3, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#ff"

    const-string v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "color":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e047b

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<font color="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object p2, v6, v10

    const/4 v7, 0x2

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "msgAdd":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 666
    .local v2, "toastAdd":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 667
    return-void
.end method

.method public startActionMode()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 853
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 854
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mFlagPref:Z

    .line 855
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mSelectionMenuCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 857
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsStartActionMode:Z

    .line 859
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    .line 860
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->cb:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    .line 863
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c00a2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c00a9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v4, v1, v3

    .line 865
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 866
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 867
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 872
    :goto_0
    return-void

    .line 869
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 870
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public stopActionMode()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 875
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 876
    sget-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteDone:Z

    if-nez v1, :cond_2

    .line 877
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 878
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    .line 883
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsStartActionMode:Z

    .line 885
    :cond_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDivider:Landroid/graphics/drawable/Drawable;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 886
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 887
    return-void

    .line 879
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteDone:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 881
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteDone:Z

    goto :goto_0
.end method

.method public updateList()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 695
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsStartActionMode:Z

    if-nez v5, :cond_0

    .line 696
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 698
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsStartActionMode:Z

    if-eqz v5, :cond_1

    .line 699
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z

    .line 700
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    .line 702
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsStartActionMode:Z

    if-nez v5, :cond_2

    .line 703
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 704
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    .line 705
    .local v2, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 706
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v1, :cond_2

    .line 707
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 708
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 710
    .local v3, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 714
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v2    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    .end local v3    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 715
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->removeEmptyView()V

    .line 716
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_3

    .line 717
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 718
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 733
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 734
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 736
    :cond_4
    return-void

    .line 721
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 723
    .local v0, "isLand":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 724
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v5, :cond_6

    .line 725
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 726
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 728
    :cond_6
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v5, :cond_3

    .line 729
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    goto :goto_1

    .end local v0    # "isLand":Z
    :cond_7
    move v0, v4

    .line 721
    goto :goto_2
.end method
