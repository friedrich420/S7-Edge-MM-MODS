.class public Lcom/android/settings/applock/PackageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applock/PackageListAdapter$1;,
        Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;,
        Lcom/android/settings/applock/PackageListAdapter$PackageListClickListener;,
        Lcom/android/settings/applock/PackageListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applock/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMasterSwitch:Z

.field mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/settings/applock/PackageListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applock/PackageListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {}, Lcom/android/settings/applock/PackageInfoUtil;->getInstance()Lcom/android/settings/applock/PackageInfoUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/applock/PackageListAdapter;->bindData()V

    .line 36
    iput-object p2, p0, Lcom/android/settings/applock/PackageListAdapter;->mHandler:Landroid/os/Handler;

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applock/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method

.method private bindLockedData(Landroid/view/View;Lcom/android/settings/applock/PackageListAdapter$ViewHolder;I)V
    .locals 11
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/android/settings/applock/PackageListAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 99
    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "com.samsung.applock.pakcgeInfo"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 101
    .local v3, "sp":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applock/AppInfo;

    iget-object v2, v5, Lcom/android/settings/applock/AppInfo;->packageName:Ljava/lang/String;

    .line 102
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applock/AppInfo;

    invoke-virtual {v6, v5}, Lcom/android/settings/applock/PackageInfoUtil;->getStoredName(Lcom/android/settings/applock/AppInfo;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "storedName":Ljava/lang/String;
    invoke-interface {v3, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, "locked":I
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    if-ne v1, v10, :cond_2

    .line 109
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 110
    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applock/AppInfo;

    iput v10, v5, Lcom/android/settings/applock/AppInfo;->locked:I

    .line 111
    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    iget-object v6, p0, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/android/settings/applock/PackageInfoUtil;->isFolderLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mFolderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    iget-object v6, p0, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/android/settings/applock/PackageInfoUtil;->getFolderInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "folderInfo":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mFolderTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e11d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .end local v0    # "folderInfo":Ljava/lang/String;
    :goto_0
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mFolderTextView:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    iget-object v6, p0, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/settings/applock/PackageInfoUtil;->getMasterValue(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mMasterSwitch:Z

    .line 130
    iget-boolean v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mMasterSwitch:Z

    if-eqz v5, :cond_3

    .line 131
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 133
    invoke-virtual {p1, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    :goto_1
    return-void

    .line 117
    .restart local v0    # "folderInfo":Ljava/lang/String;
    :cond_0
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mFolderTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e11cf

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    .end local v0    # "folderInfo":Ljava/lang/String;
    :cond_1
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mFolderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 124
    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applock/AppInfo;

    iput v9, v5, Lcom/android/settings/applock/AppInfo;->locked:I

    .line 125
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mFolderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    iget-object v5, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 137
    invoke-virtual {p1, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private bindViewData(Landroid/view/View;Lcom/android/settings/applock/PackageListAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/android/settings/applock/PackageListAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applock/AppInfo;

    iget-object v0, v1, Lcom/android/settings/applock/AppInfo;->appName:Ljava/lang/String;

    .line 92
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applock/AppInfo;

    iget-object v1, v1, Lcom/android/settings/applock/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applock/PackageListAdapter;->bindLockedData(Landroid/view/View;Lcom/android/settings/applock/PackageListAdapter$ViewHolder;I)V

    .line 95
    return-void
.end method

.method private buildViewHolder(Landroid/view/View;)Lcom/android/settings/applock/PackageListAdapter$ViewHolder;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 78
    new-instance v0, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;-><init>(Lcom/android/settings/applock/PackageListAdapter;Lcom/android/settings/applock/PackageListAdapter$1;)V

    .line 79
    .local v0, "holder":Lcom/android/settings/applock/PackageListAdapter$ViewHolder;
    const v1, 0x7f0d00d6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0d00d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mFolderTextView:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0d00d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v0, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    .line 82
    const v1, 0x7f0d00d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 83
    return-object v0
.end method

.method private setListener(Landroid/view/View;Lcom/android/settings/applock/PackageListAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/android/settings/applock/PackageListAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 142
    new-instance v0, Lcom/android/settings/applock/PackageListAdapter$PackageListClickListener;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/settings/applock/PackageListAdapter$PackageListClickListener;-><init>(Lcom/android/settings/applock/PackageListAdapter;ILcom/android/settings/applock/PackageListAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p2, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;-><init>(Lcom/android/settings/applock/PackageListAdapter;ILcom/android/settings/applock/PackageListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    return-void
.end method


# virtual methods
.method public bindData()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    invoke-virtual {v0}, Lcom/android/settings/applock/PackageInfoUtil;->getAppList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/settings/applock/PackageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04003c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    invoke-direct {p0, p2}, Lcom/android/settings/applock/PackageListAdapter;->buildViewHolder(Landroid/view/View;)Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

    move-result-object v0

    .line 61
    .local v0, "holder":Lcom/android/settings/applock/PackageListAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    invoke-direct {p0, p2, v0, p1}, Lcom/android/settings/applock/PackageListAdapter;->bindViewData(Landroid/view/View;Lcom/android/settings/applock/PackageListAdapter$ViewHolder;I)V

    .line 66
    invoke-direct {p0, p2, v0, p1}, Lcom/android/settings/applock/PackageListAdapter;->setListener(Landroid/view/View;Lcom/android/settings/applock/PackageListAdapter$ViewHolder;I)V

    .line 67
    return-object p2

    .line 63
    .end local v0    # "holder":Lcom/android/settings/applock/PackageListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/applock/PackageListAdapter$ViewHolder;
    goto :goto_0
.end method
