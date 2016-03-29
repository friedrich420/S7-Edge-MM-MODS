.class public Lcom/android/settings/powersavingmode/PowerSavingModeUltra;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerSavingModeUltra.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private divider_1:Landroid/view/View;

.field private divider_2:Landroid/view/View;

.field private isSharedDevice:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;

.field private mImagePhone:Landroid/widget/ImageView;

.field private mImageTablet:Landroid/widget/ImageView;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUltraDisclaimerText:Landroid/widget/TextView;

.field private mUltraText:Landroid/widget/TextView;

.field private mValidListener:Z

.field private mWasVideo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 463
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$3;

    invoke-direct {v0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$3;-><init>()V

    sput-object v0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    .line 118
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;-><init>(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeUltra;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x2a

    return v0
.end method

.method public isLockTaskMode()Z
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActivityManager:Landroid/app/ActivityManager;

    .line 454
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "PowerSavingModeUltra"

    const-string v1, "isLockTaskMode() : true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x1

    .line 459
    :goto_0
    return v0

    .line 458
    :cond_0
    const-string v0, "PowerSavingModeUltra"

    const-string v1, "isLockTaskMode() : false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    .line 176
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 167
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 311
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    .line 181
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v9}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 182
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitch:Landroid/widget/Switch;

    .line 183
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .line 187
    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 189
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 195
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    .line 199
    const-string v9, "PowerSavingModeUltra"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SharedDevice: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    const v9, 0x7f04016f

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 205
    .local v7, "view":Landroid/view/View;
    const v9, 0x7f0d03c5

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImageTablet:Landroid/widget/ImageView;

    .line 206
    const v9, 0x7f0d03be

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImagePhone:Landroid/widget/ImageView;

    .line 207
    const v9, 0x7f0d03c0

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->divider_1:Landroid/view/View;

    .line 208
    const v9, 0x7f0d03c3

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->divider_2:Landroid/view/View;

    .line 209
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 210
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImagePhone:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportGrayScreen()Z

    move-result v9

    if-nez v9, :cond_b

    .line 215
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImageTablet:Landroid/widget/ImageView;

    const v10, 0x7f0202a8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    :goto_0
    const v9, 0x7f0d03bf

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mUltraText:Landroid/widget/TextView;

    .line 226
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportGrayScreen()Z

    move-result v9

    if-nez v9, :cond_2

    .line 227
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mUltraText:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 228
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mUltraText:Landroid/widget/TextView;

    const v10, 0x7f0e12e4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 231
    :cond_2
    const v9, 0x7f0d03c4

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mUltraDisclaimerText:Landroid/widget/TextView;

    .line 232
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 233
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mUltraDisclaimerText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v8, "warningString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v9, 0x7f0d03c2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 239
    .local v4, "layout":Landroid/widget/LinearLayout;
    const-string v9, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f04016d

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "desc_view":Landroid/view/View;
    const v9, 0x7f0d03bb

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 242
    .local v6, "text":Landroid/widget/TextView;
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 243
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0115

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    const v9, 0x7f0e12f2

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 245
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    .end local v0    # "desc_view":Landroid/view/View;
    .end local v6    # "text":Landroid/widget/TextView;
    :cond_4
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportGrayScreen()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 249
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12e9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_5
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12ea

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 253
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x112005c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x112005e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 254
    :cond_6
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12ee

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :goto_1
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 259
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12ef

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12ec

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_7
    :goto_2
    const-string v9, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 273
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12f0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_8
    const-string v9, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 277
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12f1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 282
    .local v5, "message":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f04016d

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 284
    .restart local v0    # "desc_view":Landroid/view/View;
    const v9, 0x7f0d03bb

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 285
    .restart local v6    # "text":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 217
    .end local v0    # "desc_view":Landroid/view/View;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "layout":Landroid/widget/LinearLayout;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "text":Landroid/widget/TextView;
    .end local v8    # "warningString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImageTablet:Landroid/widget/ImageView;

    const v10, 0x7f0202a7

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 221
    :cond_c
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mImageTablet:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->divider_1:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->divider_2:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 256
    .restart local v4    # "layout":Landroid/widget/LinearLayout;
    .restart local v8    # "warningString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12f4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 263
    :cond_e
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 264
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12eb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_f
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x112005c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x112005e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 267
    :cond_10
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12ed

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 269
    :cond_11
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v10, 0x7f0e12f4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 291
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_12
    iget-boolean v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v9, :cond_13

    .line 292
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 293
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setClickable(Z)V

    .line 294
    iget-object v9, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setFocusable(Z)V

    .line 295
    const-string v9, "PowerSavingModeUltra"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SharedDevice: disableButton "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_13
    return-object v7
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 421
    const-string v0, "PowerSavingModeUltra"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 423
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 413
    const-string v0, "PowerSavingModeUltra"

    const-string v1, "onDestroyView() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 415
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 416
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 339
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 319
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 320
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v4, 0xa

    .line 322
    .local v3, "versionCode":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 324
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "helphub:item"

    const-string v5, "using_ultra_power_saving_mode"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v2}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "versionCode":I
    :cond_0
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    const-string v0, "PowerSavingModeUltra"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 396
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 398
    iput-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mValidListener:Z

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 402
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 345
    const-string v3, "PowerSavingModeUltra"

    const-string v6, "onResume() "

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 347
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_0

    .line 348
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "ultra_powersaving_mode"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 352
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v2, :cond_1

    .line 353
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 358
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mValidListener:Z

    if-nez v3, :cond_3

    .line 359
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 360
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mValidListener:Z

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v6, "video"

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    .line 366
    const-string v3, "PowerSavingModeUltra"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTelephonyManager.hasCall_video"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_4

    .line 368
    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z

    if-nez v3, :cond_9

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 369
    :cond_4
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x800

    invoke-virtual {v3, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 373
    .local v0, "isContainerOnlyMode":Z
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_5

    .line 374
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 376
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isKioskModeEnabled"

    invoke-static {v3, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, "isKioskModeEnabled":I
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_6

    if-ne v1, v4, :cond_6

    .line 378
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 382
    :cond_6
    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_7

    .line 383
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 384
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setClickable(Z)V

    .line 385
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setFocusable(Z)V

    .line 386
    const-string v3, "PowerSavingModeUltra"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SharedDevice: disableButton "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_7
    return-void

    .end local v0    # "isContainerOnlyMode":Z
    .end local v1    # "isKioskModeEnabled":I
    .end local v2    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_8
    move v3, v5

    .line 348
    goto/16 :goto_0

    .restart local v2    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_9
    move v3, v5

    .line 368
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "PowerSavingModeUltra"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 408
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    .line 427
    const-string v1, "PowerSavingModeUltra"

    const-string v2, "onCheckedChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 436
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mContext:Landroid/content/Context;

    const v2, 0x7f0e12f8

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    if-ne p2, v5, :cond_0

    .line 441
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings"

    const-string v3, "UPSO"

    const-string v4, "ON"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    const-string v1, "flag"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    const-string v1, "skipdialog"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
