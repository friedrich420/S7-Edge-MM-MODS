.class public Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageAppRestrict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageRestrictAdapter"
.end annotation


# instance fields
.field private DataEntryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/NetworkStats$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private WifiEntryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/NetworkStats$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private bShowWifi:Ljava/lang/Boolean;

.field private knownUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDataEnd:J

.field private mDataStart:J

.field private mEnable:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/net/DataUsageAppRestrict$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;ZLandroid/net/NetworkPolicyManager;)V
    .locals 1
    .param p1, "Pm"    # Landroid/content/pm/PackageManager;
    .param p2, "ShowWifi"    # Z
    .param p3, "PolicyManager"    # Landroid/net/NetworkPolicyManager;

    .prologue
    .line 730
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 714
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    .line 715
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->knownUid:Ljava/util/ArrayList;

    .line 717
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataEntryMap:Ljava/util/LinkedHashMap;

    .line 718
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->WifiEntryMap:Ljava/util/LinkedHashMap;

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mEnable:Z

    .line 731
    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 732
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->bShowWifi:Ljava/lang/Boolean;

    .line 733
    iput-object p3, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 771
    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method


# virtual methods
.method public AddAdditionalDataUsage(IILandroid/net/NetworkStatsHistory;I)V
    .locals 14
    .param p1, "existUid"    # I
    .param p2, "additionalUid"    # I
    .param p3, "stats"    # Landroid/net/NetworkStatsHistory;
    .param p4, "category"    # I

    .prologue
    .line 933
    const/4 v10, 0x0

    .line 935
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz p3, :cond_1

    .line 936
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 938
    .local v8, "now":J
    iget-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataStart:J

    iget-wide v6, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataEnd:J

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 939
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v12, v4, v6

    .line 941
    .local v12, "defaultBytes":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 942
    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    .line 943
    .local v11, "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    iget v3, v11, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    if-ne v3, p1, :cond_3

    .line 947
    const/4 v3, -0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_2

    iget-wide v4, v11, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    add-long/2addr v4, v12

    iput-wide v4, v11, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    .line 949
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    .line 958
    .end local v2    # "i":I
    .end local v8    # "now":J
    .end local v11    # "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    .end local v12    # "defaultBytes":J
    :cond_1
    return-void

    .line 948
    .restart local v2    # "i":I
    .restart local v8    # "now":J
    .restart local v11    # "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    .restart local v12    # "defaultBytes":J
    :cond_2
    const/4 v3, -0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_0

    iget-wide v4, v11, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    add-long/2addr v4, v12

    iput-wide v4, v11, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    goto :goto_1

    .line 941
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public DataResetPreviousData(I)V
    .locals 6
    .param p1, "category"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 855
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    .line 856
    .local v1, "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iput-wide v4, v1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    .line 854
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :cond_1
    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    iput-wide v4, v1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    goto :goto_1

    .line 860
    .end local v1    # "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    :cond_2
    return-void
.end method

.method public bindBackgroundDataStats(Ljava/util/LinkedHashMap;I)V
    .locals 12
    .param p2, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/NetworkStatsHistory;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Landroid/net/NetworkStatsHistory;>;"
    const-string v2, "DataUsageAppRestrict"

    const-string v3, "bindDataStats NetworkStatsHistory "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {p0, p2}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataResetPreviousData(I)V

    .line 907
    const/4 v1, 0x0

    .line 908
    .local v1, "stats":Landroid/net/NetworkStatsHistory;
    const/4 v8, 0x0

    .line 910
    .local v8, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 911
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    .line 912
    .local v9, "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    iget v2, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "stats":Landroid/net/NetworkStatsHistory;
    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 913
    .restart local v1    # "stats":Landroid/net/NetworkStatsHistory;
    if-eqz v1, :cond_0

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 916
    .local v6, "now":J
    iget-wide v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataStart:J

    iget-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataEnd:J

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 917
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v10, v2, v4

    .line 918
    .local v10, "defaultBytes":J
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 919
    iput-wide v10, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    .line 910
    .end local v6    # "now":J
    .end local v10    # "defaultBytes":J
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 920
    .restart local v6    # "now":J
    .restart local v10    # "defaultBytes":J
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 921
    iput-wide v10, v9, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    goto :goto_1

    .line 927
    .end local v6    # "now":J
    .end local v9    # "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    .end local v10    # "defaultBytes":J
    :cond_2
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 928
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    .line 930
    return-void
.end method

.method public checkNeededUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->knownUid:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    iget v0, v0, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    .line 813
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->bShowWifi:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, p2, v6}, Lcom/android/settings/net/DataAppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;Z)Lcom/android/settings/net/DataAppViewHolder;

    move-result-object v2

    .line 814
    .local v2, "holder":Lcom/android/settings/net/DataAppViewHolder;
    iget-object p2, v2, Lcom/android/settings/net/DataAppViewHolder;->rootView:Landroid/view/View;

    .line 815
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 817
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    .line 818
    .local v3, "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    iget v0, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    .line 820
    .local v0, "Uid":I
    iget-object v5, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 821
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    :cond_0
    const-string v5, "DataUsageAppRestrict"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getView Uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v5, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 826
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v6, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 828
    :cond_1
    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->bShowWifi:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 829
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    invoke-static {v1, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->wifiTotal:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->wifiTotal:J

    invoke-static {v1, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 832
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 833
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataCompoundButton:Landroid/widget/CompoundButton;

    new-instance v6, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;-><init>(Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    :goto_0
    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings/net/DataUsageAppRestrict;->access$400()Landroid/app/ProgressDialog;

    move-result-object v5

    if-nez v5, :cond_2

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {}, Lcom/android/settings/net/DataUsageAppRestrict;->access$500()Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataCompoundButton:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    # invokes: Lcom/android/settings/net/DataUsageAppRestrict;->getAppRestrictBackground(Landroid/net/NetworkPolicyManager;I)Z
    invoke-static {v6, v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$1400(Landroid/net/NetworkPolicyManager;I)Z

    move-result v6

    if-nez v6, :cond_4

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 847
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mEnable:Z

    invoke-virtual {v2, v4}, Lcom/android/settings/net/DataAppViewHolder;->setEnabled(Z)V

    .line 850
    return-object p2

    .line 844
    :cond_3
    iget-object v5, v2, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    iget-wide v6, v3, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->dataTotal:J

    invoke-static {v1, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 846
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 791
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 793
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCycle(JJ)V
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 727
    iput-wide p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataStart:J

    .line 728
    iput-wide p3, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mDataEnd:J

    .line 729
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/net/DataUsageAppRestrict$AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/net/DataUsageAppRestrict$AppItem;>;"
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 798
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 799
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->knownUid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 800
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 801
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->knownUid:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    iget v1, v1, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_0
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 804
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 807
    iput-boolean p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mEnable:Z

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    .line 809
    return-void
.end method
