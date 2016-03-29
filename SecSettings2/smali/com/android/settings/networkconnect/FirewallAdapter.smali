.class public Lcom/android/settings/networkconnect/FirewallAdapter;
.super Landroid/widget/BaseAdapter;
.source "FirewallAdapter.java"

# interfaces
.implements Lcom/android/settings/networkconnect/ViewHolder$OnCheckedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/networkconnect/FirewallAdapter$OnItemCheckBoxListener;
    }
.end annotation


# instance fields
.field private mApplicationNetInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemCheckBoxListener:Lcom/android/settings/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mUidDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUidWifiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/networkconnect/ApplicationNetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "applicationNetInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/networkconnect/ApplicationNetInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 56
    iput-object p2, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    .line 59
    return-void
.end method

.method private setSameUidApp(IIZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "checked"    # Z

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/FirewallAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 196
    if-nez p2, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1, p3}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    .line 194
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1, p3}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setWlanAllowed(Z)V

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method


# virtual methods
.method public bindDataStats(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "uidDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public bindWifiStats(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "uidWifiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "holder":Lcom/android/settings/networkconnect/ViewHolder;
    if-nez p2, :cond_0

    .line 95
    new-instance v2, Lcom/android/settings/networkconnect/ViewHolder;

    .end local v2    # "holder":Lcom/android/settings/networkconnect/ViewHolder;
    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p0}, Lcom/android/settings/networkconnect/ViewHolder;-><init>(Landroid/content/Context;Lcom/android/settings/networkconnect/ViewHolder$OnCheckedListener;)V

    .line 96
    .restart local v2    # "holder":Lcom/android/settings/networkconnect/ViewHolder;
    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040143

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    const v5, 0x7f0d0056

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->icon:Landroid/widget/ImageView;

    .line 99
    const v5, 0x7f0d01c5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->name:Landroid/widget/TextView;

    .line 100
    const v5, 0x7f0d01c7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->dataUsageText:Landroid/widget/TextView;

    .line 101
    const v5, 0x7f0d0367

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->wifiUsageText:Landroid/widget/TextView;

    .line 102
    iget-object v6, v2, Lcom/android/settings/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    const v5, 0x7f0d01c6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    .line 104
    iget-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v5, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v6, v2, Lcom/android/settings/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    const v5, 0x7f0d0366

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v8

    .line 108
    iget-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v5, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 115
    iget-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/android/settings/networkconnect/ViewHolder;
    check-cast v2, Lcom/android/settings/networkconnect/ViewHolder;

    .restart local v2    # "holder":Lcom/android/settings/networkconnect/ViewHolder;
    goto :goto_0

    .line 117
    .restart local v3    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 121
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    iget-object v6, v2, Lcom/android/settings/networkconnect/ViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0e16d6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_2
    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    iget-object v6, v2, Lcom/android/settings/networkconnect/ViewHolder;->wifiUsageText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0e16d7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_3
    iget-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v6, v2, Lcom/android/settings/networkconnect/ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v2, p1}, Lcom/android/settings/networkconnect/ViewHolder;->setPosition(I)V

    .line 134
    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v5

    invoke-virtual {v2, v6, v5}, Lcom/android/settings/networkconnect/ViewHolder;->setCheckBox(IZ)V

    .line 135
    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v5

    invoke-virtual {v2, v6, v5}, Lcom/android/settings/networkconnect/ViewHolder;->setCheckBox(IZ)V

    .line 139
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_4
    return-object p2

    .line 124
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0e16d6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 136
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 129
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :try_start_1
    iget-object v5, v2, Lcom/android/settings/networkconnect/ViewHolder;->wifiUsageText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0e16d7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public onChecked(IIZ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "isChecked"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 144
    new-instance v3, Lcom/android/settings/networkconnect/NetworkManagerUtils;

    iget-object v4, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 145
    .local v3, "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    iget-object v4, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/networkconnect/ApplicationNetInfo;

    .line 146
    .local v0, "appicationNetInfo":Lcom/android/settings/networkconnect/ApplicationNetInfo;
    if-nez p2, :cond_7

    .line 147
    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v4

    if-eq v4, p3, :cond_4

    .line 148
    invoke-virtual {v0, p3}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    .line 149
    sget-boolean v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    if-eqz v4, :cond_0

    if-nez p3, :cond_1

    .line 150
    :cond_0
    iget-object v4, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    .line 152
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-direct {p0, v4, p2, p3}, Lcom/android/settings/networkconnect/FirewallAdapter;->setSameUidApp(IIZ)V

    .line 154
    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.email"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUids()Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 158
    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    .end local v2    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    if-eqz p3, :cond_5

    .line 162
    invoke-virtual {v0, v7}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    .line 163
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mItemCheckBoxListener:Lcom/android/settings/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    invoke-interface {v4, v7}, Lcom/android/settings/networkconnect/FirewallAdapter$OnItemCheckBoxListener;->OnItemCheckBoxChanged(I)V

    .line 191
    :cond_4
    :goto_2
    return-void

    .line 167
    :cond_5
    invoke-virtual {v0, v7}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    .line 168
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 169
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    :cond_6
    sget-object v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_7
    if-ne p2, v6, :cond_4

    .line 176
    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v4

    if-eq v4, p3, :cond_4

    .line 177
    invoke-virtual {v0, p3}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->setWlanAllowed(Z)V

    .line 178
    iget-object v4, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V

    .line 179
    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-direct {p0, v4, p2, p3}, Lcom/android/settings/networkconnect/FirewallAdapter;->setSameUidApp(IIZ)V

    .line 181
    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.email"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .restart local v2    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/android/settings/networkconnect/ApplicationNetInfo;->getUids()Ljava/util/ArrayList;

    move-result-object v2

    .line 184
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 185
    iget-object v5, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 188
    .end local v1    # "i":I
    .end local v2    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    iget-object v4, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mItemCheckBoxListener:Lcom/android/settings/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    invoke-interface {v4, v6}, Lcom/android/settings/networkconnect/FirewallAdapter$OnItemCheckBoxListener;->OnItemCheckBoxChanged(I)V

    goto/16 :goto_2
.end method

.method public setApplicationNetInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/networkconnect/ApplicationNetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "applicationNetInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/networkconnect/ApplicationNetInfo;>;"
    iput-object p1, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setItemCheckBoxListener(Lcom/android/settings/networkconnect/FirewallAdapter$OnItemCheckBoxListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/settings/networkconnect/FirewallAdapter;->mItemCheckBoxListener:Lcom/android/settings/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    .line 208
    return-void
.end method
