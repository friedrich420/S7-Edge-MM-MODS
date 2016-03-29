.class public Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleAirWakeUpPreferenceFragment.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 121
    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x130

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 60
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 62
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_wake_up"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 63
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->installSwitchBarToggleSwitch()V

    .line 66
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 76
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-nez v6, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 78
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 79
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 80
    const v6, 0x7f040173

    invoke-virtual {v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "guideView":Landroid/view/View;
    const v6, 0x7f0d03c7

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    .local v4, "mImgView":Landroid/widget/ImageView;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    const v6, 0x7f020051

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 85
    .local v0, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 88
    :cond_0
    const v6, 0x7f0d0332

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 89
    .local v3, "mDescription":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 90
    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 92
    .end local v0    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "guideView":Landroid/view/View;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "mDescription":Landroid/widget/TextView;
    .end local v4    # "mImgView":Landroid/widget/ImageView;
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->ctx:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 43
    const v3, 0x7f040173

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "guideView":Landroid/view/View;
    const v3, 0x7f0d03c7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 45
    .local v2, "mImgView":Landroid/widget/ImageView;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 49
    .local v0, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 52
    :cond_0
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->removeSwitchBarToggleSwitch()V

    .line 72
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 116
    return-void
.end method
