.class public Lcom/android/settings/notification/ZenModeSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mPrioritySettings:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSettings;->allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private static allKeyTitles(Landroid/content/Context;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 99
    .local v0, "rt":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const v1, 0x7f0e0e19

    const-string v2, "priority_settings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    const v1, 0x7f0e0e1a

    const-string v2, "automation_settings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    return-object v0
.end method

.method private appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "condition"    # Z
    .param p3, "resId"    # I

    .prologue
    .line 90
    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e082e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 94
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private updateControls()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updatePrioritySettingsSummary()V

    .line 77
    return-void
.end method

.method private updatePrioritySettingsSummary()V
    .locals 4

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 81
    .local v0, "callers":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0e7e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    const v3, 0x7f0e0e7f

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const v3, 0x7f0e0e7c

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 84
    const v2, 0x7f0e0e80

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    const v3, 0x7f0e0e78

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    return-void

    .line 80
    .end local v0    # "callers":Z
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0e0d69

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v1, 0x7f0800f3

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 48
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string v1, "priority_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    .line 49
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeSettings;->isScheduleSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const-string v1, "automation_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->removePreference(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    .line 58
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    .line 68
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    .line 73
    return-void
.end method
