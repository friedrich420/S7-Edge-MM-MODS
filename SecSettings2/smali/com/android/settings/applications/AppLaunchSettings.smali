.class public Lcom/android/settings/applications/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private entries:[Ljava/lang/CharSequence;

.field private mAppDomainUrls:Landroid/preference/Preference;

.field private mAppLinkState:Lcom/android/settings/DropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppLaunchSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/AppLaunchSettings;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result v0

    return v0
.end method

.method private buildStateDropDown()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    iget-boolean v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v4, :cond_1

    .line 137
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/DropDownPreference;->setShouldDisableView(Z)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 139
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/DropDownPreference;

    const v5, 0x7f0e0ef4

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 149
    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/DropDownPreference;

    const v5, 0x7f0e0ef5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 151
    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/DropDownPreference;

    const v5, 0x7f0e0ef6

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 154
    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/DropDownPreference;

    iget-boolean v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    array-length v5, v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 155
    iget-boolean v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/DropDownPreference;

    if-nez v0, :cond_2

    move v0, v3

    .end local v0    # "state":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/applications/AppLaunchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppLaunchSettings$1;-><init>(Lcom/android/settings/applications/AppLaunchSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 154
    goto :goto_1
.end method

.method private getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 204
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    return-object v1
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v4, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    const/high16 v6, 0x20000

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 110
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 111
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 113
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v4, :cond_0

    .line 114
    const/4 v4, 0x1

    .line 117
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v4

    .line 111
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private updateAppLinkState(I)Z
    .locals 7
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-boolean v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-eqz v5, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v4

    .line 183
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 184
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, "priorState":I
    if-eq v0, p1, :cond_0

    .line 190
    iget-object v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, p1, v3}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v1

    .line 191
    .local v1, "success":Z
    if-eqz v1, :cond_3

    .line 193
    iget-object v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v2

    .line 194
    .local v2, "updatedState":I
    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .end local v2    # "updatedState":I
    :goto_1
    move v4, v1

    .line 198
    goto :goto_0

    .restart local v2    # "updatedState":I
    :cond_2
    move v1, v4

    .line 194
    goto :goto_1

    .line 196
    .end local v2    # "updatedState":I
    :cond_3
    const-string v4, "AppLaunchSettings"

    const-string v5, "Couldn\'t update intent verification status!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0x11

    return v0
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "numOfEntries"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 122
    .local v0, "context":Landroid/content/Context;
    if-nez p1, :cond_0

    .line 123
    const v2, 0x7f0e0ef1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    :goto_0
    return-object v2

    .line 127
    :cond_0
    if-ne p1, v2, :cond_1

    const v1, 0x7f0e0ef2

    .line 131
    .local v1, "summary":I
    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 127
    .end local v1    # "summary":I
    :cond_1
    const v1, 0x7f0e0ef3

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v3, 0x7f080060

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    .line 82
    const-string v3, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    .line 83
    const-string v3, "app_launch_clear_defaults"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    .line 84
    const-string v3, "app_link_state"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DropDownPreference;

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Lcom/android/settings/DropDownPreference;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 88
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/applications/AppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    .line 89
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    .line 92
    iget-boolean v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 95
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/settings/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    .line 96
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    array-length v0, v3

    .line 97
    .local v0, "entrySize":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 101
    .end local v0    # "entrySize":I
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v2    # "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->buildStateDropDown()V

    .line 102
    return-void

    :cond_1
    move v3, v5

    .line 89
    goto :goto_0

    .restart local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v2    # "iviList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :cond_2
    move v0, v5

    .line 96
    goto :goto_1

    .restart local v0    # "entrySize":I
    :cond_3
    move v4, v5

    .line 98
    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Landroid/preference/Preference;

    if-ne v0, p2, :cond_0

    .line 236
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "entries"

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/AppDomainsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e0ec6

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 242
    const/4 v0, 0x1

    .line 244
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppInfoWithHeader;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method protected refreshUi()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 211
    const/4 v0, 0x1

    return v0
.end method
