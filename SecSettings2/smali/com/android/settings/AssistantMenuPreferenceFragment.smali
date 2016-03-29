.class public Lcom/android/settings/AssistantMenuPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;,
        Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;
    }
.end annotation


# instance fields
.field private bSupportHoverZoom:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mAssistantMenuEnabler:Lcom/android/settings/AssistantMenuEnabler;

.field private mAssistantMenuObserver:Landroid/database/ContentObserver;

.field private mAssistantPlus:Landroid/preference/Preference;

.field private mCursor:Landroid/preference/PreferenceCategory;

.field private mDominantHand:Lcom/android/settings/DropDownPreference;

.field private mEditMenu:Landroid/preference/Preference;

.field private mFmMagnifierObserver:Landroid/database/ContentObserver;

.field mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

.field private mMagnifierSize:Lcom/android/settings/DropDownPreference;

.field mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

.field private mMagnifier_settings:Landroid/preference/PreferenceCategory;

.field private mPadSize:Lcom/android/settings/DropDownPreference;

.field private mPointerSize:Lcom/android/settings/DropDownPreference;

.field private mPointerSpeed:Lcom/android/settings/DropDownPreference;

.field private mPreferenceFragmentActivity:Landroid/app/Activity;

.field private mSearchStartMenu:Z

.field private mSearchTargetKey:Ljava/lang/String;

.field private mSearchTargetValue:I

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSearchStartMenu:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSearchTargetKey:Ljava/lang/String;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSearchTargetValue:I

    .line 141
    iput-boolean v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    .line 152
    new-instance v0, Lcom/android/settings/AssistantMenuPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AssistantMenuPreferenceFragment$1;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    .line 159
    new-instance v0, Lcom/android/settings/AssistantMenuPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AssistantMenuPreferenceFragment$2;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    .line 582
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AssistantMenuPreferenceFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->updateAssistantMenuSaving()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AssistantMenuPreferenceFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->updatePointerSizeMenuStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AssistantMenuPreferenceFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AssistantMenuPreferenceFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AssistantMenuPreferenceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/AssistantMenuPreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/AssistantMenuPreferenceFragment;->refreshImageView(I)V

    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 509
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 510
    return-void
.end method

.method private refreshImageView(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 525
    const-string v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshImageView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    if-nez v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {v0, p1}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setHoverZoomImageLevel(I)V

    .line 528
    const-string v0, "AssistantMenuPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMagnifierImage.setMagnifierLevel(level) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 456
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 457
    return-void
.end method

.method private updateAssistantMenuSaving()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 461
    .local v0, "assistantMenu_state":I
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FmMagnifier"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 462
    .local v1, "fmMAgnifier_state":I
    if-nez v0, :cond_1

    .line 463
    iget-boolean v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v2, v5}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 465
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 466
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 467
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 468
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 469
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 470
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 486
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v2, v6}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setEnabledZoomButton(Z)V

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 474
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 475
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assistant_menu_dominant_hand_type"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 476
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 477
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 478
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 479
    if-ne v1, v6, :cond_3

    .line 480
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 484
    :goto_1
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    goto :goto_0

    .line 482
    :cond_3
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updatePointerSizeMenuStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, "assistantMenu_state":I
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FmMagnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 446
    .local v1, "fmMAgnifier_state":I
    if-ne v0, v5, :cond_0

    .line 447
    if-ne v1, v5, :cond_1

    .line 448
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 371
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 374
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 375
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assistant_menu"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 376
    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 379
    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->installSwitchBarToggleSwitch()V

    .line 380
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x7f0e09ea

    const v11, 0x7f0e09e9

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 202
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    const-string v3, "AssistantMenuPreferenceFragment"

    const-string v6, "onCreate()"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "com.sec.feature.overlaymagnifier"

    invoke-static {v3, v6}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 207
    .local v1, "preferenceManager":Landroid/preference/PreferenceManager;
    const v3, 0x7f08008c

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->addPreferencesFromResource(I)V

    .line 208
    const-string v3, "dominant_hand_side"

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    .line 209
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1100fc

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    const v6, 0x7f0e15bb

    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 213
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    const v6, 0x7f0e15bc

    aget-object v7, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 214
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assistant_menu_dominant_hand_type"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 215
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mDominantHand:Lcom/android/settings/DropDownPreference;

    new-instance v6, Lcom/android/settings/AssistantMenuPreferenceFragment$3;

    invoke-direct {v6, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$3;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 232
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    const-string v3, "menu_edit"

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    .line 233
    const-string v3, "eam_active"

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    .line 234
    const-string v3, "pointer_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mCursor:Landroid/preference/PreferenceCategory;

    .line 235
    const-string v3, "fmpointer_speed"

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    .line 236
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1100fd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 239
    .restart local v2    # "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    const v6, 0x7f0e15bf

    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 240
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    const v6, 0x7f0e15c0

    aget-object v7, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 241
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    const v6, 0x7f0e15c1

    aget-object v7, v2, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 242
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assistant_menu_pointer_speed"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 243
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSpeed:Lcom/android/settings/DropDownPreference;

    new-instance v6, Lcom/android/settings/AssistantMenuPreferenceFragment$4;

    invoke-direct {v6, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$4;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 259
    .end local v2    # "values":[Ljava/lang/String;
    :cond_1
    const-string v3, "fmpointer_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    .line 261
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1100fe

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 264
    .restart local v2    # "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    const v6, 0x7f0e15bd

    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 265
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    const v6, 0x7f0e15be

    aget-object v7, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 266
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assistant_menu_pointer_size"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 267
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPointerSize:Lcom/android/settings/DropDownPreference;

    new-instance v6, Lcom/android/settings/AssistantMenuPreferenceFragment$5;

    invoke-direct {v6, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$5;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 283
    .end local v2    # "values":[Ljava/lang/String;
    :cond_2
    const-string v3, "fmpad_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    .line 284
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    if-eqz v3, :cond_3

    .line 285
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f11008d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 287
    .restart local v2    # "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v11, v6}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 288
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v12, v6}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 289
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    const v6, 0x7f0e09eb

    aget-object v7, v2, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 290
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assistant_menu_pad_size"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 292
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPadSize:Lcom/android/settings/DropDownPreference;

    new-instance v6, Lcom/android/settings/AssistantMenuPreferenceFragment$6;

    invoke-direct {v6, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$6;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v6}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 323
    .end local v2    # "values":[Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v6, 0x7f0e0a34

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 326
    :cond_4
    const-string v3, "magnifier_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e15b6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e15af

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "magnifier":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 332
    iget-boolean v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->bSupportHoverZoom:Z

    if-eqz v3, :cond_7

    .line 333
    new-instance v6, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "assistant_menu"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_0
    invoke-direct {v6, p0, v7, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;Landroid/content/Context;Z)V

    iput-object v6, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    .line 334
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;->setOrder(I)V

    .line 335
    new-instance v3, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hover_zoom_value"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    .line 336
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    const/4 v6, -0x2

    invoke-virtual {v3, v6}, Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;->setOrder(I)V

    .line 338
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierImage:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageView;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 339
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierZoom:Lcom/android/settings/AssistantMenuPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 341
    const-string v3, "magnifier_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/AssistantMenuPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    .line 342
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    if-eqz v3, :cond_5

    .line 344
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f11008d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 346
    .restart local v2    # "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v11, v6}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 347
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 348
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    const v4, 0x7f0e09eb

    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 349
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "hover_zoom_magnifier_size"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 350
    iget-object v3, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifierSize:Lcom/android/settings/DropDownPreference;

    new-instance v4, Lcom/android/settings/AssistantMenuPreferenceFragment$7;

    invoke-direct {v4, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$7;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 367
    .end local v2    # "values":[Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v3, v5

    .line 333
    goto/16 :goto_0

    .line 365
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mMagnifier_settings:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 439
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 440
    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->removeSwitchBarToggleSwitch()V

    .line 441
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/AssistantMenuPreferenceFragment$8;

    invoke-direct {v1, p0}, Lcom/android/settings/AssistantMenuPreferenceFragment$8;-><init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 505
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AssistantMenuEnabler;->pause()V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 405
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 406
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "key":Ljava/lang/String;
    const-string v2, "fmpointer_speed1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 423
    .local v1, "value":I
    const-string v2, "AssistantMenuPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed speed value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v1    # "value":I
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 425
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string v2, "AssistantMenuPreferenceFragment"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mEditMenu:Landroid/preference/Preference;

    const-class v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 521
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantPlus:Landroid/preference/Preference;

    const-class v1, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 384
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 385
    new-instance v0, Lcom/android/settings/AssistantMenuEnabler;

    iget-object v1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AssistantMenuEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/android/settings/AssistantMenuEnabler;

    .line 386
    invoke-direct {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->updateAssistantMenuSaving()V

    .line 387
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuEnabler:Lcom/android/settings/AssistantMenuEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AssistantMenuEnabler;->resume()V

    .line 388
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FmMagnifier"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mFmMagnifierObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 397
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 433
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 410
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 411
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :cond_0
    return-void
.end method
