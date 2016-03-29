.class public Lcom/android/settings/applications/AdvancedAppSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;,
        Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;
    }
.end annotation


# instance fields
.field private mAppDomainURLsPreference:Landroid/preference/Preference;

.field private mAppPermsPreference:Landroid/preference/Preference;

.field private mHighPowerPreference:Landroid/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSystemAlertWindowPreference:Landroid/preference/Preference;

.field private mWriteSettingsPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 122
    new-instance v0, Lcom/android/settings/applications/AdvancedAppSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AdvancedAppSettings$1;-><init>(Lcom/android/settings/applications/AdvancedAppSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 161
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/applications/AdvancedAppSettings;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/AdvancedAppSettings;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/AdvancedAppSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/AdvancedAppSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/AdvancedAppSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x82

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v2, 0x7f08000e

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AdvancedAppSettings;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "manage_perms"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 64
    .local v1, "permissions":Landroid/preference/Preference;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    .line 68
    .local v0, "applicationsState":Lcom/android/settingslib/applications/ApplicationsState;
    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 70
    const-string v2, "manage_perms"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/preference/Preference;

    .line 71
    const-string v2, "domain_urls"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mAppDomainURLsPreference:Landroid/preference/Preference;

    .line 72
    const-string v2, "high_power_apps"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mHighPowerPreference:Landroid/preference/Preference;

    .line 73
    const-string v2, "system_alert_window"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/preference/Preference;

    .line 74
    const-string v2, "write_settings_apps"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/preference/Preference;

    .line 75
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 105
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 85
    return-void
.end method
