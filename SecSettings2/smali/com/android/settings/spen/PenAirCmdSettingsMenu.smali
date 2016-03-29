.class public Lcom/android/settings/spen/PenAirCmdSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirCmdSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private IntentUpdated:Z

.field private bUpdated:Z

.field private mActivity:Landroid/app/Activity;

.field private mAirCmdObserver:Landroid/database/ContentObserver;

.field private mAppsAndFunctionsPref:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

.field private mShortcutList:Ljava/lang/String;

.field private mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu$2;

    invoke-direct {v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu$2;-><init>()V

    sput-object v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->IntentUpdated:Z

    .line 94
    new-instance v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/PenAirCmdSettingsMenu$1;-><init>(Lcom/android/settings/spen/PenAirCmdSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/spen/PenAirCmdSettingsMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/spen/PenAirCmdSettingsMenu;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->updateEnableState()V

    return-void
.end method

.method private appsCountSummaryUpdate()V
    .locals 18

    .prologue
    .line 177
    const/4 v11, 0x0

    .line 179
    .local v11, "mSavedAppNums":I
    const/4 v12, 0x0

    .line 180
    .local v12, "mSavedApplist":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 181
    .local v10, "mSavedApp":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 182
    .local v9, "mAppName":Ljava/lang/String;
    const-string v13, ""

    .line 186
    .local v13, "mSubText":Ljava/lang/String;
    const-string v15, "PenAirCmdSettingsMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "UpdateSavedAirCmd mShortcutList :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 190
    array-length v11, v12

    .line 191
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_8

    .line 193
    aget-object v15, v12, v7

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 195
    .local v14, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string v16, "execute"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/ExecuteManager;

    .line 197
    .local v6, "em":Lcom/samsung/android/app/ExecuteManager;
    const-string v15, "0"

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "ci":Landroid/content/pm/ComponentInfo;
    new-instance v3, Landroid/content/ComponentName;

    const/4 v15, 0x1

    aget-object v15, v10, v15

    const/16 v16, 0x2

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v3, "cn":Landroid/content/ComponentName;
    :try_start_0
    const-string v15, "A"

    const/16 v16, 0x3

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 202
    const/4 v15, 0x0

    invoke-virtual {v14, v3, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 211
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9    # "mAppName":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 236
    .end local v2    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "mAppName":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 237
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 191
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 203
    .restart local v2    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v3    # "cn":Landroid/content/ComponentName;
    :cond_3
    :try_start_1
    const-string v15, "S"

    const/16 v16, 0x3

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 204
    const/4 v15, 0x0

    invoke-virtual {v14, v3, v15}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    goto :goto_1

    .line 205
    :cond_4
    const-string v15, "P"

    const/16 v16, 0x3

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 206
    const/4 v15, 0x0

    invoke-virtual {v14, v3, v15}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 208
    :catch_0
    move-exception v5

    .line 209
    .local v5, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v2    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const-string v15, "1"

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 217
    if-eqz v6, :cond_6

    .line 218
    const/4 v15, 0x4

    aget-object v15, v10, v15

    invoke-virtual {v6, v15}, Lcom/samsung/android/app/ExecuteManager;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/ExecutableInfo;

    move-result-object v8

    .line 219
    .local v8, "info":Lcom/samsung/android/app/ExecutableInfo;
    if-eqz v8, :cond_2

    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v15, 0x1

    :try_start_2
    aget-object v15, v10, v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 228
    :goto_4
    if-eqz v1, :cond_1

    .line 229
    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-virtual {v8}, Lcom/samsung/android/app/ExecutableInfo;->getLabelId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9    # "mAppName":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 230
    .restart local v9    # "mAppName":Ljava/lang/String;
    const-string v15, "PenAirCmdSettingsMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mAppName :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 225
    :catch_1
    move-exception v4

    .line 226
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v15, "PenAirCmdSettingsMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to get application info : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 233
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "info":Lcom/samsung/android/app/ExecutableInfo;
    :cond_6
    const-string v15, "PenAirCmdSettingsMenu"

    const-string v16, "ExecuteManager is null"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 239
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 242
    .end local v6    # "em":Lcom/samsung/android/app/ExecuteManager;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    invoke-virtual {v15, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    .end local v7    # "i":I
    :goto_5
    return-void

    .line 245
    .restart local v7    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    const v16, 0x7f0e1664

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 248
    .end local v7    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    const v16, 0x7f0e1664

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5
.end method

.method private getShortCutList()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.service.aircommand.action.REQUEST_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "request"

    const-string v3, "shortcut_list"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "PenAirCmdSettingsMenu"

    const-string v3, "Failed to get shortcut list, no activity found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEnableState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "isEnable":I
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 150
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v0, "PenAirCmdSettingsMenu"

    const-string v1, "onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 166
    if-eqz p3, :cond_0

    .line 167
    const-string v0, "shortcut_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_cmd_apps_and_functions"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    .line 174
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    .line 105
    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    .line 107
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->addPreferencesFromResource(I)V

    .line 108
    const-string v0, "key_air_cmd_apps_and_functions"

    invoke-virtual {p0, v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    .line 109
    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 113
    :cond_0
    const-string v0, "key_air_cmd_use_minimized"

    invoke-virtual {p0, v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    .line 114
    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    const-string v0, "key_air_cmd_detachment_option"

    invoke-virtual {p0, v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    .line 117
    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 263
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 258
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 289
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "key":Ljava/lang/String;
    const-string v4, "key_air_cmd_use_minimized"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 293
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_cmd_use_minimized"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    .end local v1    # "value":Z
    :cond_1
    :goto_0
    return v3

    .line 295
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    const-string v4, "key_air_cmd_detachment_option"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 297
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_cmd_detachment_option"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.service.aircommand.action.Settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 282
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 125
    const-string v1, "PenAirCmdSettingsMenu"

    const-string v4, "onResume()"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "from"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "Nintent":Ljava/lang/String;
    const-string v1, "aircommand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->IntentUpdated:Z

    if-nez v1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "shortcut_list"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "air_cmd_apps_and_functions"

    const-string v5, ""

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    .line 131
    iput-boolean v2, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->IntentUpdated:Z

    .line 137
    :goto_0
    iget-object v4, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "air_cmd_use_minimized"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_cmd_detachment_option"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->updateEnableState()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "air_button_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    return-void

    .line 133
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getShortCutList()V

    goto :goto_0

    .line 134
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    goto :goto_0

    :cond_3
    move v1, v3

    .line 137
    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 268
    return-void
.end method
