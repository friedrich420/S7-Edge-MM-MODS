.class public Lcom/android/settings/ApplicationsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApplicationsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApplicationsSettings$AlphaComparator;,
        Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mAppPermission:Landroid/preference/PreferenceScreen;

.field private static mIsLoggingEnabled:Z


# instance fields
.field private mAppLauncher:Landroid/preference/PreferenceScreen;

.field private mAppManager:Landroid/preference/PreferenceScreen;

.field private mAppsCategory:Landroid/preference/PreferenceCategory;

.field private mIsEmptyCategoryNeeded:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ApplicationsSettings;->mIsLoggingEnabled:Z

    .line 382
    new-instance v0, Lcom/android/settings/ApplicationsSettings$1;

    invoke-direct {v0}, Lcom/android/settings/ApplicationsSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/ApplicationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApplicationsSettings;->mIsEmptyCategoryNeeded:Z

    .line 365
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/settings/ApplicationsSettings;->mIsLoggingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ApplicationsSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApplicationsSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private addExternalApps(Landroid/os/UserHandle;Ljava/util/Map;)V
    .locals 16
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p2, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 197
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v7, "intent":Landroid/content/Intent;
    const/16 v13, 0x80

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-virtual {v10, v7, v13, v14}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 200
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 201
    .local v11, "resolved":Landroid/content/pm/ResolveInfo;
    const-string v13, "ApplicationsSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-boolean v13, v11, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v13, :cond_0

    .line 204
    const-string v13, "ApplicationsSettings"

    const-string v14, "App is not system!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/ApplicationsSettings;->mIsEmptyCategoryNeeded:Z

    if-nez v13, :cond_1

    .line 209
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 210
    .local v5, "emptyCategory":Landroid/preference/PreferenceCategory;
    const v13, 0x7f0e0f9f

    invoke-virtual {v5, v13}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/ApplicationsSettings;->mIsEmptyCategoryNeeded:Z

    .line 215
    .end local v5    # "emptyCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 216
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 217
    .local v9, "metaData":Landroid/os/Bundle;
    if-eqz v9, :cond_2

    const-string v13, "com.android.settings.category"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 218
    :cond_2
    const-string v14, "ApplicationsSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " for action "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " missing metadata "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v9, :cond_3

    const-string v13, ""

    :goto_1
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v13, "com.android.settings.category"

    goto :goto_1

    .line 224
    :cond_4
    new-instance v8, Landroid/util/Pair;

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    .local v8, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    .line 228
    .local v2, "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    if-nez v2, :cond_5

    .line 229
    :try_start_0
    new-instance v3, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;-><init>(Lcom/android/settings/ApplicationsSettings;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v2    # "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    .local v3, "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    :try_start_1
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setIntent(Landroid/content/Intent;)V

    .line 232
    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/android/settings/ApplicationsSettings;->updateAppPrefToSpecificActivityFromMetaData(Landroid/content/Context;Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;)Z

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 236
    move-object/from16 v0, p2

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 238
    .end local v3    # "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    .restart local v2    # "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    :cond_5
    :try_start_2
    iget-object v13, v2, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 239
    :catch_0
    move-exception v4

    .line 240
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    const-string v13, "ApplicationsSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Problem dealing with activity : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 243
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "metaData":Landroid/os/Bundle;
    .end local v11    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_6
    return-void

    .line 239
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    .restart local v8    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "metaData":Landroid/os/Bundle;
    .restart local v11    # "resolved":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    .restart local v2    # "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    goto :goto_2
.end method

.method private updateAppPrefToSpecificActivityFromMetaData(Landroid/content/Context;Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPref"    # Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    .prologue
    .line 248
    invoke-virtual/range {p2 .. p2}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 249
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_9

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 252
    .local v8, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_7

    const/16 v14, 0x80

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserHandle;

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    invoke-virtual {v8, v4, v14, v13}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 256
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 257
    .local v6, "listSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_9

    .line 258
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 259
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_8

    .line 262
    const/4 v3, 0x0

    .line 263
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 264
    .local v12, "title":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 268
    .local v11, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 270
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 272
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    .line 273
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 274
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 276
    :cond_0
    const-string v13, "com.android.settings.title"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 277
    const-string v13, "com.android.settings.title"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 279
    :cond_1
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 280
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 285
    :cond_2
    if-eqz v9, :cond_3

    if-nez v3, :cond_3

    .line 286
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v13, v13, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 288
    :cond_3
    if-eqz v3, :cond_4

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a005d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->setTint(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_4
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 298
    invoke-virtual {v10, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 301
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 302
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 303
    .local v1, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v13, v14}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v12

    .line 307
    .end local v1    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 309
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 310
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setIntent(Landroid/content/Intent;)V

    .line 315
    const/4 v13, 0x1

    .line 320
    .end local v2    # "i":I
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "listSize":I
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/CharSequence;
    :goto_3
    return v13

    .line 252
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    const/16 v13, 0x80

    invoke-virtual {v8, v4, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_0

    .line 257
    .restart local v2    # "i":I
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "listSize":I
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 320
    .end local v2    # "i":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "listSize":I
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9
    const/4 v13, 0x0

    goto :goto_3

    .line 291
    .restart local v2    # "i":I
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "listSize":I
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "summary":Ljava/lang/String;
    .restart local v12    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v13

    goto :goto_2

    :catch_1
    move-exception v13

    goto :goto_2
.end method


# virtual methods
.method buildApplicationSettingsList()V
    .locals 21

    .prologue
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 149
    .local v5, "context":Landroid/content/Context;
    new-instance v11, Landroid/content/Intent;

    const-string v18, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v11, "intent":Landroid/content/Intent;
    const-string v18, "com.sec.android.intent.category.SEC_APPLICATION_SETTINGS"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 152
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v18, Lcom/android/settings/ApplicationsSettings$AlphaComparator;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ApplicationsSettings$AlphaComparator;-><init>(Lcom/android/settings/ApplicationsSettings;)V

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 154
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    .line 155
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 156
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 157
    .local v14, "packageName":Ljava/lang/String;
    const-string v18, "ApplicationsSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "resolvePackageName : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz v14, :cond_1

    const-string v18, "com.sec.android.gallery3d"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 159
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 160
    :cond_0
    const-string v18, "ApplicationsSettings"

    const-string v19, "skip gallery menu"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 165
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 166
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 167
    .local v13, "name":Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 168
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 169
    .local v4, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v13

    .line 171
    .end local v4    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_2
    new-instance v15, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5, v9, v13}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;-><init>(Lcom/android/settings/ApplicationsSettings;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 172
    .local v15, "pref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v3, "appIntent":Landroid/content/Intent;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v18, "from_settings"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    invoke-virtual {v15, v3}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setIntent(Landroid/content/Intent;)V

    .line 176
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApplicationsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 178
    .end local v3    # "appIntent":Landroid/content/Intent;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "name":Ljava/lang/CharSequence;
    .end local v15    # "pref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    :catch_0
    move-exception v6

    .line 179
    .local v6, "e":Ljava/lang/Exception;
    const-string v18, "ApplicationsSettings"

    const-string v19, "Problem dealing with activity "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 184
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 186
    .local v2, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;>;"
    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    .line 187
    .local v17, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserHandle;

    .line 188
    .local v16, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ApplicationsSettings;->addExternalApps(Landroid/os/UserHandle;Ljava/util/Map;)V

    goto :goto_2

    .line 193
    .end local v16    # "user":Landroid/os/UserHandle;
    :cond_5
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x82

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 136
    .local v12, "resources":Landroid/content/res/Resources;
    const v0, 0x7f0c00a2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0c00b0

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f0c00ac

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v4, v0, v1

    .line 140
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v11, v0

    .line 142
    .local v11, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 144
    return-void

    .line 140
    .end local v11    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v11, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettings;->addPreferencesFromResource(I)V

    .line 95
    const-string v0, "application_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/ApplicationsSettings;->mAppManager:Landroid/preference/PreferenceScreen;

    .line 96
    const-string v0, "application_permission"

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    sput-object v0, Lcom/android/settings/ApplicationsSettings;->mAppPermission:Landroid/preference/PreferenceScreen;

    .line 97
    const-string v0, "launch_application_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/ApplicationsSettings;->mAppLauncher:Landroid/preference/PreferenceScreen;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->updatePref()V

    .line 99
    const-string v0, "apps_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/ApplicationsSettings;->mAppsCategory:Landroid/preference/PreferenceCategory;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApplicationsSettings;->mAppPermission:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApplicationsSettings;->mAppPermission:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApplicationsSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 106
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EXTERNAL_APP_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->buildApplicationSettingsList()V

    .line 112
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/ApplicationsSettings;->mIsLoggingEnabled:Z

    .line 115
    :cond_2
    return-void

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ApplicationsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApplicationsSettings;->mAppsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public updatePref()V
    .locals 3

    .prologue
    const v2, 0x7f04010e

    .line 123
    iget-object v0, p0, Lcom/android/settings/ApplicationsSettings;->mAppManager:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/ApplicationsSettings;->mAppManager:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0202e5

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(I)V

    .line 125
    sget-object v0, Lcom/android/settings/ApplicationsSettings;->mAppPermission:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 126
    sget-object v0, Lcom/android/settings/ApplicationsSettings;->mAppPermission:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0202e6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/ApplicationsSettings;->mAppLauncher:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/ApplicationsSettings;->mAppLauncher:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0202e7

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIcon(I)V

    .line 129
    return-void
.end method
