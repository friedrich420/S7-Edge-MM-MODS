.class public Lcom/android/settings/vpn2/AppPreference;
.super Lcom/android/settings/vpn2/ManageablePreference;
.source "AppPreference.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mState:I

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onManage"    # Landroid/view/View$OnClickListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    .line 51
    iput-object p3, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    .line 52
    iput p4, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    .line 53
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->update()V

    .line 54
    return-void
.end method

.method private getUserContext()Landroid/content/Context;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 129
    .local v0, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method private update()V
    .locals 10

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110081

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "states":[Ljava/lang/String;
    iget v7, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    aget-object v7, v5, v7

    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/settings/vpn2/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v7, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 94
    .local v6, "userContext":Landroid/content/Context;
    const/4 v4, 0x0

    .line 98
    .local v4, "resizedIcon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->getUserContext()Landroid/content/Context;

    move-result-object v6

    .line 99
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 104
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    iget-object v7, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 105
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 106
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    iget-object v7, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 113
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->getDefaultActivityIconForTray(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    :cond_1
    new-instance v1, Lcom/android/settings/IconResizer;

    invoke-direct {v1, v6}, Lcom/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, "iconResizer":Lcom/android/settings/IconResizer;
    const v7, 0x7f0c00ac

    invoke-virtual {v1, v7}, Lcom/android/settings/IconResizer;->setIconSize(I)V

    .line 117
    invoke-virtual {v1, v0}, Lcom/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 121
    .end local v1    # "iconResizer":Lcom/android/settings/IconResizer;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_2
    iget-object v7, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings/vpn2/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0, v4}, Lcom/android/settings/vpn2/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->notifyHierarchyChanged()V

    .line 125
    return-void

    .line 89
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "resizedIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "userContext":Landroid/content/Context;
    :cond_2
    const-string v7, ""

    goto :goto_0

    .line 118
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "resizedIcon":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "userContext":Landroid/content/Context;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 109
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 134
    instance-of v2, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 135
    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    .line 137
    .local v0, "another":Lcom/android/settings/vpn2/AppPreference;
    iget v2, v0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    iget v3, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    sub-int v1, v2, v3

    .local v1, "result":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget v2, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    iget v3, v0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    sub-int v1, v2, v3

    .line 148
    .end local v0    # "another":Lcom/android/settings/vpn2/AppPreference;
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    instance-of v2, p1, Lcom/android/settings/vpn2/ConfigPreference;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 145
    check-cast v0, Lcom/android/settings/vpn2/ConfigPreference;

    .line 146
    .local v0, "another":Lcom/android/settings/vpn2/ConfigPreference;
    invoke-virtual {v0, p0}, Lcom/android/settings/vpn2/ConfigPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v2

    neg-int v1, v2

    goto :goto_0

    .line 148
    .end local v0    # "another":Lcom/android/settings/vpn2/ConfigPreference;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    .line 57
    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 59
    .local v2, "user":Landroid/os/UserHandle;
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->getUserContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 60
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 62
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/vpn2/AppPreference;->mUid:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/settings/vpn2/AppPreference;->mState:I

    .line 84
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->update()V

    .line 85
    return-void
.end method
