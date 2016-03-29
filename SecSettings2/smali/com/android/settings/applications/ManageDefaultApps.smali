.class public Lcom/android/settings/applications/ManageDefaultApps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppDomainURLsPreference:Landroid/preference/Preference;

.field private mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

.field private mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

.field private mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mHome:Landroid/preference/PreferenceScreen;

.field private mOtherDefaults:Landroid/preference/PreferenceScreen;

.field private mOtherDefaultsCount:I

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private myUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    .line 445
    new-instance v0, Lcom/android/settings/applications/ManageDefaultApps$5;

    invoke-direct {v0}, Lcom/android/settings/applications/ManageDefaultApps$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ManageDefaultApps;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mOtherDefaultsCount:I

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/android/settings/applications/ManageDefaultApps$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageDefaultApps$1;-><init>(Lcom/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lcom/android/settings/applications/ManageDefaultApps$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageDefaultApps$2;-><init>(Lcom/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageDefaultApps;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ManageDefaultApps;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageDefaultApps;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageDefaultApps;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ManageDefaultApps;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageDefaultApps;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageDefaultApps;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageDefaultApps;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->myUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageDefaultApps;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageDefaultApps;)Lcom/android/settings/applications/DefaultBrowserPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageDefaultApps;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageDefaultApps;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ManageDefaultApps;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageDefaultApps;->hasDefaultAppByMDM(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private hasDefaultAppByMDM(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v5, "getDefaultApplicationInternal"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "defaultApp":Ljava/lang/String;
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateDefaultBrowserPreference()V
    .locals 9

    .prologue
    const v8, 0x7f0e138f

    const/4 v5, 0x0

    .line 132
    iget-object v6, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v6}, Lcom/android/settings/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 136
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/android/settings/applications/ManageDefaultApps;->myUserId:I

    invoke-virtual {v6, v1, v5, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 147
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 148
    iget-object v6, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v6, v3}, Lcom/android/settings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 150
    .local v2, "label":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v6, v2}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageDefaultApps;->hasDefaultAppByMDM(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v6, v5}, Lcom/android/settings/applications/DefaultBrowserPreference;->setEnabled(Z)V

    .line 164
    return-void

    .line 152
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v6, v8}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(I)V

    goto :goto_0

    .line 155
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v6, v8}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(I)V

    .line 156
    sget-object v6, Lcom/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string v7, "Cannot set empty default Browser value!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDefaultPhonePreference()V
    .locals 5

    .prologue
    .line 167
    iget-object v3, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultPhonePreference;->loadDialerApps()V

    .line 169
    iget-object v3, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultPhonePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    .local v0, "appName":Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "tel:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 174
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageDefaultApps;->hasDefaultAppByMDM(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/DefaultPhonePreference;->setEnabled(Z)V

    .line 176
    iget-object v3, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 178
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/applications/DefaultPhonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    const v4, 0x7f0e138f

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/DefaultPhonePreference;->setSummary(I)V

    .line 186
    sget-object v3, Lcom/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string v4, "Cannot set empty default Phone value!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDefaultSMSPreference()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-nez v2, :cond_0

    .line 211
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultSmsPreference;->loadSmsApps()V

    .line 196
    iget-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultSmsPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 197
    .local v0, "appName":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageDefaultApps;->hasDefaultAppByMDM(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setEnabled(Z)V

    goto :goto_0

    .line 200
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    const v3, 0x7f0e138f

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(I)V

    goto :goto_1

    .line 208
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private updateHomeApplicationSetting()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 287
    sget-object v4, Lcom/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string v5, "updateSmsApplicationSetting:"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    iget-object v4, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 293
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 294
    iget-object v4, p0, Lcom/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 298
    iget-object v4, p0, Lcom/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    .line 304
    .local v1, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 305
    iget-object v4, p0, Lcom/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageDefaultApps;->hasDefaultAppByMDM(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 417
    const/16 v0, 0xb5

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultBrowserPreference;->rotateSettingsListPreference()V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultPhonePreference;->rotateSettingsListPreference()V

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultSmsPreference;->rotateSettingsListPreference()V

    .line 496
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 315
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 317
    const v2, 0x7f080033

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->addPreferencesFromResource(I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    .line 320
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iput v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->myUserId:I

    .line 322
    const-string v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 323
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 325
    const-string v2, "default_browser"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/DefaultBrowserPreference;

    iput-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    .line 326
    iget-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    new-instance v3, Lcom/android/settings/applications/ManageDefaultApps$3;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/ManageDefaultApps$3;-><init>(Lcom/android/settings/applications/ManageDefaultApps;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/DefaultBrowserPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 347
    const-string v2, "default_phone_app"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/DefaultPhonePreference;

    iput-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    .line 349
    const-string v2, "default_sms_app"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/DefaultSmsPreference;

    iput-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    .line 350
    iget-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    new-instance v3, Lcom/android/settings/applications/ManageDefaultApps$4;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/ManageDefaultApps$4;-><init>(Lcom/android/settings/applications/ManageDefaultApps;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/DefaultSmsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    const-string v2, "other_defaults"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mOtherDefaults:Landroid/preference/PreferenceScreen;

    .line 367
    const-string v2, "other_defaults"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 369
    const-string v2, "home"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/PreferenceScreen;

    .line 370
    iget-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 372
    const-string v2, "domain_urls"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageDefaultApps;->mAppDomainURLsPreference:Landroid/preference/Preference;

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/applications/ManageDefaultApps;->myUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    .line 379
    .local v1, "isRestrictedUser":Z
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/DefaultSmsPreference;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 380
    :cond_0
    const-string v2, "default_sms_app"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/DefaultPhonePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 384
    const-string v2, "default_phone_app"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 388
    const-string v2, "default_emergency_app"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    .line 391
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v2

    const-class v3, Lcom/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 395
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 410
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 412
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 413
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 422
    sget-object v0, Lcom/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceClick false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    const v3, 0x7f0e0d47

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string v1, "com.android.settings.DCMHomeSettings"

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 442
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string v1, "com.android.settings.HomeSettings"

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0fc1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 399
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 400
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V

    .line 401
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDefaultApps;->updateDefaultPhonePreference()V

    .line 402
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDefaultApps;->updateDefaultSMSPreference()V

    .line 404
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDefaultApps;->updateHomeApplicationSetting()V

    .line 405
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 406
    return-void
.end method
