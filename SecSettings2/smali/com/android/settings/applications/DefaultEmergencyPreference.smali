.class public Lcom/android/settings/applications/DefaultEmergencyPreference;
.super Lcom/android/settings/AppListPreference;
.source "DefaultEmergencyPreference.java"


# static fields
.field public static final QUERY_INTENT:Landroid/content/Intent;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/DefaultEmergencyPreference;->QUERY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    invoke-static {p1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->load()V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/DefaultEmergencyPreference;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/DefaultEmergencyPreference;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->resolveAssistPackageAndQueryApps()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/DefaultEmergencyPreference;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/DefaultEmergencyPreference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-static {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/applications/DefaultEmergencyPreference;->QUERY_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCapable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method private static isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;-><init>(Lcom/android/settings/applications/DefaultEmergencyPreference;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method private resolveAssistPackageAndQueryApps()Ljava/util/Set;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 91
    .local v12, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 92
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v14, Lcom/android/settings/applications/DefaultEmergencyPreference;->QUERY_INTENT:Landroid/content/Intent;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 94
    .local v8, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 95
    .local v2, "bestMatch":Landroid/content/pm/PackageInfo;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    .line 96
    .local v13, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v13, :cond_4

    .line 97
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 98
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_0

    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_0

    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 105
    .local v11, "packageName":Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v10, v11, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 115
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v9}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    invoke-static {v2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v14

    invoke-static {v9}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v15

    if-ne v14, v15, :cond_0

    iget-wide v14, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v0, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 119
    :cond_3
    move-object v2, v9

    goto :goto_1

    .line 110
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 111
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 123
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v15, "emergency_assistance_application"

    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "defaultPackage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    :cond_5
    const/4 v3, 0x1

    .line 127
    .local v3, "defaultMissing":Z
    :goto_2
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v15, "emergency_assistance_application"

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    :cond_6
    return-object v12

    .line 125
    .end local v3    # "defaultMissing":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "emergency_assistance_application"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "previousValue":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "emergency_assistance_application"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v1, 0x1

    return v1
.end method
