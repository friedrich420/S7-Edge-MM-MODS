.class public Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;,
        Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

.field mCursorX:F

.field mCursorY:F

.field mDeviceWidth:F

.field mDeviceheight:F

.field private mHoverPadSizeObserver:Landroid/database/ContentObserver;

.field private final mIcObserver:Landroid/database/ContentObserver;

.field private mMagnifierSize:Landroid/preference/ListPreference;

.field mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

.field private mMagnifier_settings:Landroid/preference/PreferenceCategory;

.field private mService:Lcom/android/settings/accessibility/MagnifierService;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 113
    iput v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mDeviceheight:F

    .line 114
    iput v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mDeviceWidth:F

    .line 116
    iput v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mCursorX:F

    .line 117
    iput v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mCursorY:F

    .line 119
    new-instance v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 131
    new-instance v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    .line 140
    new-instance v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    .line 331
    new-instance v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$5;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHoverPadSizeObserver:Landroid/database/ContentObserver;

    .line 804
    return-void
.end method

.method private SetAirViewMasterValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1105
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1106
    return-void
.end method

.method private SetFingerAirViewMasterValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_information_preview"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1101
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/accessibility/MagnifierService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mService:Lcom/android/settings/accessibility/MagnifierService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Lcom/android/settings/accessibility/MagnifierService;)Lcom/android/settings/accessibility/MagnifierService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
    .param p1, "x1"    # Lcom/android/settings/accessibility/MagnifierService;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mService:Lcom/android/settings/accessibility/MagnifierService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->toggleEnableStateIC(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->showFingerMagnifierDisablePopup()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->SetFingerAirViewMasterValue(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->isAirViewMasterValue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->SetAirViewMasterValue(I)V

    return-void
.end method

.method public static getServiceTaskName(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1076
    const/4 v1, 0x0

    .line 1077
    .local v1, "checked":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1081
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v5, 0x100

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 1082
    .local v2, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v2, :cond_1

    .line 1083
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1084
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1085
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1087
    .local v4, "runningTaskInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/settings/accessibility/MagnifierService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1089
    const/4 v1, 0x1

    .line 1094
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return v1
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 282
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 283
    return-void
.end method

.method private isAirViewMasterValue()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 288
    return-void
.end method

.method private showFingerMagnifierDisablePopup()V
    .locals 8

    .prologue
    const v7, 0x7f0e1262

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0913

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "item":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .local v2, "sb_message":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e096f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const-string v4, "com.google.android.marvin.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 626
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0a0b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const-string v4, "com.samsung.android.app.talkback"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0a0c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0a47

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e09bc

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e095e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 664
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e092d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 672
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 685
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0a43

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0a2d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_4
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e090e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const-string v4, "com.samsung.android.app.aodservice"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 702
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e167d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;

    invoke-direct {v5, p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$11;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$10;

    invoke-direct {v5, p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$10;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$9;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$9;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 802
    return-void

    .line 676
    .end local v1    # "message":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 678
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private toggleEnableStateIC(Z)V
    .locals 1
    .param p1, "mEnabled"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 158
    :cond_2
    return-void
.end method

.method private updatedEnableState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 329
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1115
    const/16 v0, 0x131

    return v0
.end method

.method public isExclusiveOptionEnabled(Landroid/content/Context;)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 557
    const/4 v11, 0x0

    .line 558
    .local v11, "talkback":Z
    const/4 v10, 0x0

    .line 559
    .local v10, "stalkback":Z
    const/4 v8, 0x0

    .line 560
    .local v8, "onehandoperation":Z
    const/4 v3, 0x0

    .line 561
    .local v3, "assistantmenu":Z
    const/4 v12, 0x0

    .line 562
    .local v12, "universalswitch":Z
    const/4 v6, 0x0

    .line 563
    .local v6, "is_enabled":Z
    const/4 v7, 0x0

    .line 564
    .local v7, "magnification":Z
    const/4 v4, 0x0

    .line 565
    .local v4, "fingerairview":Z
    const/4 v9, 0x0

    .line 566
    .local v9, "penairview":Z
    const/4 v1, 0x0

    .line 567
    .local v1, "aircommand":Z
    const/4 v13, 0x0

    .line 568
    .local v13, "writingbuddy":Z
    const/4 v5, 0x0

    .line 569
    .local v5, "interactionControl":Z
    const/4 v2, 0x0

    .line 570
    .local v2, "alwaysondisplay":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const-string v15, "com.google.android.marvin.talkback"

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v11

    .line 573
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const-string v15, "com.samsung.android.app.talkback"

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 574
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    .line 578
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "any_screen_enabled"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_9

    const/4 v8, 0x1

    .line 580
    :goto_0
    const-string v14, "com.samsung.android.app.assistantmenu"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "assistant_menu"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_a

    const/4 v3, 0x1

    .line 583
    :cond_2
    :goto_1
    const-string v14, "com.samsung.android.app.accesscontrol"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "access_control_use"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_b

    const/4 v5, 0x1

    .line 587
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v12

    .line 590
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "accessibility_display_magnification_enabled"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_c

    const/4 v7, 0x1

    .line 592
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 593
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 594
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "air_view_master_onoff"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_d

    const/4 v4, 0x1

    .line 603
    :cond_5
    :goto_4
    const-string v14, "com.samsung.android.app.aodservice"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "aod_mode"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_12

    const/4 v2, 0x1

    .line 606
    :cond_6
    :goto_5
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 607
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 608
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "air_button_onoff"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_13

    const/4 v1, 0x1

    .line 609
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "pen_writing_buddy"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_14

    const/4 v13, 0x1

    .line 611
    :cond_8
    :goto_7
    or-int v14, v11, v10

    or-int/2addr v14, v8

    or-int/2addr v14, v3

    or-int/2addr v14, v5

    or-int/2addr v14, v12

    or-int/2addr v14, v7

    or-int/2addr v14, v4

    or-int/2addr v14, v9

    or-int/2addr v14, v1

    or-int/2addr v14, v13

    or-int v6, v14, v2

    .line 613
    return v6

    .line 578
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 581
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 584
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 590
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 594
    :cond_d
    const/4 v4, 0x0

    goto :goto_4

    .line 596
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_f

    const/4 v4, 0x1

    :goto_8
    goto :goto_4

    :cond_f
    const/4 v4, 0x0

    goto :goto_8

    .line 598
    :cond_10
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 599
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 600
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "pen_hovering"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_11

    const/4 v9, 0x1

    :goto_9
    goto/16 :goto_4

    :cond_11
    const/4 v9, 0x0

    goto :goto_9

    .line 604
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 608
    :cond_13
    const/4 v1, 0x0

    goto :goto_6

    .line 609
    :cond_14
    const/4 v13, 0x0

    goto :goto_7
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 201
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 202
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_magnifier"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 205
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->installSwitchBarToggleSwitch()V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    .line 166
    const v5, 0x7f08008e

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->addPreferencesFromResource(I)V

    .line 167
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_magnifier"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 170
    .local v2, "hover_state":I
    new-instance v5, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v2, v3, :cond_3

    :goto_0
    invoke-direct {v5, p0, v6, v3}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    .line 171
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v3, v7}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setOrder(I)V

    .line 172
    const-string v3, "magnifier_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    .line 173
    new-instance v0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "MagnifierImage":Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;
    invoke-virtual {v0, v7}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;->setOrder(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 178
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    const-string v3, "magnifier_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    .line 181
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 182
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "hover_zoom_magnifier_size"

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hover_zoom_magnifier_size"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getServiceTaskName(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    const-class v5, Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v1, "detectionIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 194
    .end local v1    # "detectionIntent":Landroid/content/Intent;
    :cond_2
    return-void

    .end local v0    # "MagnifierImage":Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageView;
    :cond_3
    move v3, v4

    .line 170
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 320
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 321
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->removeSwitchBarToggleSwitch()V

    .line 212
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 278
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHoverPadSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 314
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 315
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1062
    const-string v1, "magnifier_size"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 1063
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1064
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1068
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_magnifier_size"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1070
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings"

    const-string v3, "MGWS"

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierSize:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    .end local v0    # "value":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 292
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 294
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->toggleEnableStateIC(Z)V

    .line 304
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_magnifier"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "finger_magnifier"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mAccessibilityMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hover_zoom_magnifier_size"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mHoverPadSizeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 307
    return-void

    .line 301
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->toggleEnableStateIC(Z)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1058
    return-void
.end method
