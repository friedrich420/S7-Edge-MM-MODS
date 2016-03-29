.class public Lcom/android/settings/AppListPreference;
.super Lcom/android/settings/SettingsListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppListPreference$SavedState;,
        Lcom/android/settings/AppListPreference$AppArrayAdapter;
    }
.end annotation


# instance fields
.field private mDescription:I

.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field private mShowItemNone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppListPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AppListPreference;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    return v0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 5
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/SettingsListPreference;->bind(Landroid/widget/ListView;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 156
    .local v2, "parentView":Landroid/view/View;
    const v4, 0x7f0d01f3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, "descContainerView":Landroid/view/View;
    const v4, 0x7f0d01f4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    .local v1, "descView":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    const v3, 0x7f0e138f

    .line 160
    .local v3, "resStr":I
    :goto_0
    if-eqz v3, :cond_0

    .line 161
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 164
    :cond_0
    return-void

    .line 159
    .end local v3    # "resStr":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getResDescription()I

    move-result v3

    goto :goto_0
.end method

.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 9

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "selectedValue":Ljava/lang/String;
    if-eqz v8, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 145
    .local v7, "selectedNone":Z
    :goto_0
    if-eqz v7, :cond_2

    const/4 v6, -0x1

    .line 146
    .local v6, "selectedIndex":I
    :goto_1
    new-instance v0, Lcom/android/settings/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040037

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/AppListPreference$AppArrayAdapter;-><init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    .line 143
    .end local v6    # "selectedIndex":I
    .end local v7    # "selectedNone":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 145
    .restart local v7    # "selectedNone":Z
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    goto :goto_1
.end method

.method public getResDescription()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/settings/AppListPreference;->mDescription:I

    return v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings/SettingsListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 178
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 188
    instance-of v1, p1, Lcom/android/settings/AppListPreference$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 189
    check-cast v0, Lcom/android/settings/AppListPreference$SavedState;

    .line 190
    .local v0, "savedState":Lcom/android/settings/AppListPreference$SavedState;
    iget-boolean v1, v0, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    iput-boolean v1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 191
    iget-object v1, v0, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, v0, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-super {p0, v1}, Lcom/android/settings/SettingsListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 196
    .end local v0    # "savedState":Lcom/android/settings/AppListPreference$SavedState;
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 183
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/settings/AppListPreference$SavedState;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v1
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 102
    .local v5, "pm":Landroid/content/pm/PackageManager;
    array-length v10, p1

    iget-boolean v11, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v11, :cond_1

    :goto_0
    add-int v2, v10, v8

    .line 103
    .local v2, "entryCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v1, "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v7, "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v3, "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v6, -0x1

    .line 107
    .local v6, "selectedIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, p1

    if-ge v4, v8, :cond_2

    .line 109
    :try_start_0
    aget-object v8, p1, v4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 110
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    if-eqz p2, :cond_0

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 115
    move v6, v4

    .line 107
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "entryCount":I
    .end local v3    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .end local v4    # "i":I
    .end local v6    # "selectedIndex":I
    .end local v7    # "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    move v8, v9

    .line 102
    goto :goto_0

    .line 122
    .restart local v1    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v2    # "entryCount":I
    .restart local v3    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .restart local v4    # "i":I
    .restart local v6    # "selectedIndex":I
    .restart local v7    # "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    iget-boolean v8, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v8, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0f52

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v8, ""

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f020144

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 130
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v8}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 132
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 134
    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    .line 135
    invoke-virtual {p0, v6}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    .line 139
    :goto_3
    return-void

    .line 137
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 117
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public setResDescription(I)V
    .locals 0
    .param p1, "desc"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/android/settings/AppListPreference;->mDescription:I

    .line 168
    return-void
.end method

.method public setShowItemNone(Z)V
    .locals 0
    .param p1, "showItemNone"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 97
    return-void
.end method
