.class public Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SharedAccessibilityFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private importexportAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

.field private isPreferenceOpen:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

.field private sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    .line 137
    new-instance v0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildStateDropDown()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildShareViewDropDown()V

    return-void
.end method

.method private buildShareViewDropDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    const-string v0, "shared_accessibility_share"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .line 90
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->clearItems()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->getClickLister()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0e09d2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0e09d3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    new-instance v1, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setCallback(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;)V

    goto :goto_0
.end method

.method private buildStateDropDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const-string v0, "shared_accessibility_export_import"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .line 66
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->clearItems()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0e09d8

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0e09da

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0e09d9

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0e09db

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    new-instance v1, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;-><init>(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setCallback(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x134

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string v1, "SharedAccessibilityFragment"

    const-string v2, "SharedAccessibilityFragment Loaded"

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->addPreferencesFromResource(I)V

    .line 46
    const-string v1, "shared_accessibility_menus"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    .line 47
    const-string v1, "shared_accessibility_export_import"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    const-string v1, "shared_accessibility_share"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setEnabled(Z)V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildShareViewDropDown()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildStateDropDown()V

    .line 62
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    iget-boolean v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    if-eqz v3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "Item"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.accessibility.sharedaccessibility.ShareAccessibilityShareVia"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    .line 126
    iput-boolean v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    move v1, v2

    .line 127
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    .line 161
    return-void
.end method
