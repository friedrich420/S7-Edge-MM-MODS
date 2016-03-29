.class public Lcom/android/settings/activekey/ActiveKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ActiveKeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentHeaderView:Landroid/view/View;

.field private mLongPress:Landroid/preference/PreferenceScreen;

.field private mOnLockScreen:Landroid/preference/SwitchPreference;

.field private mShortPress:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/android/settings/activekey/ActiveKeySettings$1;

    invoke-direct {v0}, Lcom/android/settings/activekey/ActiveKeySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/activekey/ActiveKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    return-void
.end method

.method private updateUI()V
    .locals 12

    .prologue
    .line 117
    iget-object v8, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    move-result v2

    .line 119
    .local v2, "isRemoved":Z
    const-string v8, "ActiveKeySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshUI() - isRemoved: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2    # "isRemoved":Z
    :cond_0
    iget-object v9, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "active_key_on_lockscreen"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "shortPressDB":Ljava/lang/String;
    const/4 v3, 0x0

    .line 126
    .local v3, "longPressDB":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app_battery_conserve"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "short_press_app":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "long_press_app":Ljava/lang/String;
    const-string v8, "ActiveKeySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shortpress : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v8, "ActiveKeySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "longpress : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/settings/activekey/ActiveKeySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 137
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040021

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "activekeySettingsView":Landroid/view/View;
    const v8, 0x7f0d008d

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 141
    .local v7, "tvSummary":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 142
    const v8, 0x7f0e009f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 148
    :goto_2
    if-eqz v6, :cond_1

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 149
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 150
    if-eqz v5, :cond_6

    const-string v8, "torch/torch"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 151
    iget-object v8, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0e00a4

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 164
    :goto_3
    if-eqz v4, :cond_2

    const-string v8, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 165
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 166
    if-eqz v3, :cond_9

    const-string v8, "torch/torch"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 167
    iget-object v8, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0e00a4

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 179
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v9, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 180
    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    .line 181
    return-void

    .line 122
    .end local v0    # "activekeySettingsView":Landroid/view/View;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "longPressDB":Ljava/lang/String;
    .end local v4    # "long_press_app":Ljava/lang/String;
    .end local v5    # "shortPressDB":Ljava/lang/String;
    .end local v6    # "short_press_app":Ljava/lang/String;
    .end local v7    # "tvSummary":Landroid/widget/TextView;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 129
    .restart local v3    # "longPressDB":Ljava/lang/String;
    .restart local v5    # "shortPressDB":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "long_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 144
    .restart local v0    # "activekeySettingsView":Landroid/view/View;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v4    # "long_press_app":Ljava/lang/String;
    .restart local v6    # "short_press_app":Ljava/lang/String;
    .restart local v7    # "tvSummary":Landroid/widget/TextView;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0e0096

    invoke-virtual {p0, v9}, Lcom/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0e009a

    invoke-virtual {p0, v9}, Lcom/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 153
    :cond_6
    iget-object v8, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0e00a3

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_3

    .line 155
    :cond_7
    iget-object v8, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0e0f8b

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app"

    const-string v10, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 161
    :cond_8
    iget-object v8, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 169
    :cond_9
    iget-object v8, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0e00a3

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_4

    .line 171
    :cond_a
    iget-object v8, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0e0f8b

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "long_press_app"

    const-string v10, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 176
    :cond_b
    iget-object v8, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "db"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 184
    const-string v2, ""

    .line 185
    .local v2, "appName":Ljava/lang/String;
    const-string v8, "ActiveKeySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move-object v3, v2

    .line 201
    .end local v2    # "appName":Ljava/lang/String;
    .local v3, "appName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 189
    .end local v3    # "appName":Ljava/lang/String;
    .restart local v2    # "appName":Ljava/lang/String;
    :cond_1
    const/16 v8, 0x2f

    invoke-virtual {p1, v8, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 190
    .local v6, "package_index":I
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "package_name":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "activity_name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 196
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :goto_1
    move-object v3, v2

    .line 201
    .end local v2    # "appName":Ljava/lang/String;
    .restart local v3    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v3    # "appName":Ljava/lang/String;
    .restart local v2    # "appName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 198
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ActiveKeySettings"

    const-string v9, "cannot find app name !"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    .line 85
    :goto_0
    const-string v0, "short_press_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    .line 86
    const-string v0, "long_press_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    .line 87
    const-string v0, "active_key_on_lockscreen_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    .line 88
    iget-object v0, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    return-void

    .line 83
    :cond_0
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 106
    const-string v0, "ActiveKeySettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 225
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 226
    .local v0, "value":Z
    iget-object v3, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "active_key_on_lockscreen"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    :goto_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 206
    iget-object v2, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.activekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v2, "pressed_type"

    const-string v3, "short"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    .line 219
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.activekey.AppList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v2, "pressed_type"

    const-string v3, "long"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "warningClearIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.settings.ACTIVE_KEY_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/activekey/ActiveKeySettings;->updateUI()V

    .line 100
    const-string v1, "ActiveKeySettings"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 112
    const-string v0, "ActiveKeySettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
