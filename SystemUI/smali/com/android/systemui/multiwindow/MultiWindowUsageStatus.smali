.class public Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;
.super Ljava/lang/Object;
.source "MultiWindowUsageStatus.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "flash_bar_usage"

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->mShareHistoryFileName:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private readCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 30
    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->mShareHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 31
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 33
    .local v0, "count":I
    return v0
.end method

.method private sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "orglist":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    new-instance v0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus$1;-><init>(Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;)V

    .line 76
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    return-void
.end method

.method private writeCount(Ljava/lang/String;)V
    .locals 6
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 37
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->mShareHistoryFileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 38
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 39
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 41
    .local v1, "precount":I
    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method


# virtual methods
.method public getCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->readCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSortingList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "applist":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->sort(Ljava/util/List;)V

    .line 56
    return-object p1
.end method

.method public storeAppUsageCount(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "appInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 46
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 47
    .local v0, "appName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->writeCount(Ljava/lang/String;)V

    .line 48
    return-void

    .line 46
    .end local v0    # "appName":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method
