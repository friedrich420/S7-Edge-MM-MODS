.class public Lcom/android/settings/powersavingmode/GenericPowerSavingMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GenericPowerSavingMode.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public entry:[Ljava/lang/String;

.field public entryValue:[Ljava/lang/CharSequence;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mDescriptionPreference:Landroid/preference/Preference;

.field private mIsCharger:Z

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mNoHeader:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$5;

    invoke-direct {v0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$5;-><init>()V

    sput-object v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mNoHeader:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mIsCharger:Z

    .line 72
    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    .line 245
    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$4;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$4;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/DropDownPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/powersavingmode/GenericPowerSavingMode;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mIsCharger:Z

    return p1
.end method

.method private showDisableNpsmToast()V
    .locals 4

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0aab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 321
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 322
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x2a

    return v0
.end method

.method public initEntry()V
    .locals 7

    .prologue
    .line 151
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    .line 153
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    .line 154
    const/4 v1, 0x0

    .local v1, "start":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff05"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "summary":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-instance v4, Ljava/util/Locale;

    const-string v5, "ar"

    const-string v6, "AE"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_0
    if-nez v0, :cond_1

    .line 161
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    const v4, 0x7f0e12f6

    invoke-virtual {p0, v4}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 165
    :goto_1
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    const v4, 0x7f0e12f7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_1

    .line 167
    .end local v0    # "count":I
    .end local v2    # "summary":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    new-instance v4, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$3;

    invoke-direct {v4, p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$3;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 181
    return-void
.end method

.method public initPreference()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "turn_on_automatically"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    .line 127
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    .line 144
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    const v1, 0x7f04016e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mCreated:Z

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mCreated:Z

    .line 114
    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onActivityCreated() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 118
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v5, 0x7f080055

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->addPreferencesFromResource(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initPreference()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initEntry()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, ":android:no_headers"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 101
    .local v2, "header":Z
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mNoHeader:Z

    .line 102
    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mNoHeader:Z

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0d0491

    invoke-virtual {v3, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    .local v0, "centerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    .local v1, "clp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 107
    .end local v0    # "centerLayout":Landroid/widget/LinearLayout;
    .end local v1    # "clp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 205
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onDestroyView() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 198
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 265
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->finish()V

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 232
    const-string v1, "GenericPowerSavingMode"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 235
    .local v0, "Index":I
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 237
    .end local v0    # "Index":I
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 238
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    const-string v5, "GenericPowerSavingMode"

    const-string v6, "onResume() "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 212
    .local v1, "checked":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power_npsm"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 214
    .local v2, "npsmchecked":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v5, :cond_0

    .line 215
    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 216
    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 219
    :cond_0
    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    move v5, v3

    :goto_3
    invoke-virtual {v6, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power_trigger_level"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, "Index":I
    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power_trigger_level_npsm"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    :cond_1
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 227
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    return-void

    .end local v0    # "Index":I
    .end local v1    # "checked":Z
    .end local v2    # "npsmchecked":Z
    :cond_2
    move v1, v4

    .line 211
    goto :goto_0

    .restart local v1    # "checked":Z
    :cond_3
    move v2, v4

    .line 212
    goto :goto_1

    .restart local v2    # "npsmchecked":Z
    :cond_4
    move v5, v4

    .line 215
    goto :goto_2

    :cond_5
    move v5, v4

    .line 219
    goto :goto_3
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 188
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 8
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 274
    const-string v5, "GenericPowerSavingMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSwitchChanged() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power_npsm"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v2, v3

    .line 277
    .local v2, "npsmchecked":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->showDisableNpsmToast()V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sm_connectivity_disable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power_npsm"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power_trigger_level_npsm"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.NetworkPowerSaving"

    const-string v6, "com.sec.NetworkPowerSaving.NetworkPowerSavingService"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 288
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "npsmchecked":Z
    :cond_0
    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v5, p2}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "low_power"

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mIsCharger:Z

    if-eqz v3, :cond_1

    .line 292
    if-eqz p2, :cond_4

    .line 293
    const v3, 0x7f0e12e0    # 1.8884838E38f

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 276
    goto :goto_0

    :cond_3
    move v3, v4

    .line 289
    goto :goto_1

    .line 295
    :cond_4
    const v3, 0x7f0e12e1

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    goto :goto_2
.end method
