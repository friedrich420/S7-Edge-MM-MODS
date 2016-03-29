.class public Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockAppShortcutSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private isLeftShortcut:Z

.field private isRightShortcut:Z

.field private final mAppShortcutObserver:Landroid/database/ContentObserver;

.field private mCurrentHeaderView:Landroid/view/View;

.field private mShortcutOnLeft:Landroid/preference/PreferenceScreen;

.field private mShortcutOnRight:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings$2;

    invoke-direct {v0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings$1;-><init>(Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->updateUI()V

    return-void
.end method

.method private updateUI()V
    .locals 13

    .prologue
    .line 102
    iget-object v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    move-result v3

    .line 104
    .local v3, "isRemoved":Z
    const-string v7, "LockAppShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshUI() - isRemoved: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v3    # "isRemoved":Z
    :cond_0
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 108
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04012c

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 109
    .local v6, "lockSimpleShourtcutPreview":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 111
    iput-object v6, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    .line 113
    const v7, 0x7f0d032e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 115
    .local v4, "ivShortcuPreviewtLeft":Landroid/widget/ImageView;
    const v7, 0x7f0d032f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 118
    .local v5, "ivShortcutPreviewRight":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x1

    new-instance v9, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-direct {v9}, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;-><init>()V

    invoke-static {v7, v8, v9}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;)Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    move-result-object v0

    .line 119
    .local v0, "appInfoLeft":Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x3

    new-instance v9, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-direct {v9}, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;-><init>()V

    invoke-static {v7, v8, v9}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;)Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    move-result-object v1

    .line 121
    .local v1, "appInfoRight":Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    .line 124
    iget-boolean v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    if-nez v7, :cond_3

    .line 125
    iget-object v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0e0e93

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 134
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    if-nez v7, :cond_7

    .line 135
    iget-object v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0e0e93

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 144
    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v0, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v7, :cond_b

    .line 145
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    :goto_2
    if-eqz v1, :cond_2

    iget-boolean v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v7, :cond_c

    .line 150
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    :goto_3
    return-void

    .line 126
    :cond_3
    if-eqz v0, :cond_4

    iget-object v7, v0, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_4

    const-string v7, ""

    iget-object v8, v0, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 127
    :cond_4
    iget-object v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0e1687

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 128
    :cond_5
    iget-boolean v7, v0, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v7, :cond_6

    .line 129
    iget-object v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e1686

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_6
    iget-object v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    iget-object v8, v0, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_7
    if-eqz v1, :cond_8

    iget-object v7, v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_8

    const-string v7, ""

    iget-object v8, v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 137
    :cond_8
    iget-object v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0e1687

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 138
    :cond_9
    iget-boolean v7, v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v7, :cond_a

    .line 139
    iget-object v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e1686

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 141
    :cond_a
    iget-object v7, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    iget-object v8, v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 147
    :cond_b
    iget-object v7, v0, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 152
    :cond_c
    iget-object v7, v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->addPreferencesFromResource(I)V

    .line 67
    const-string v0, "left_shortcut"

    invoke-virtual {p0, v0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    .line 68
    const-string v0, "right_shortcut"

    invoke-virtual {p0, v0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    .line 70
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 74
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->updateUI()V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_application_shortcut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/lockappshortcut/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 98
    return-void
.end method
