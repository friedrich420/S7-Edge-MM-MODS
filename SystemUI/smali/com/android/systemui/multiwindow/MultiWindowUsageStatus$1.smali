.class Lcom/android/systemui/multiwindow/MultiWindowUsageStatus$1;
.super Ljava/lang/Object;
.source "MultiWindowUsageStatus.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->sort(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)I
    .locals 6
    .param p1, "o1"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .param p2, "o2"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 63
    .local v2, "r1":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 64
    .local v3, "r2":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 65
    .local v0, "pkg1":Ljava/lang/String;
    :goto_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 67
    .local v1, "pkg2":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v4, v0}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->getCount(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v5, v1}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->getCount(Ljava/lang/String;)I

    move-result v5

    if-le v4, v5, :cond_2

    .line 68
    const/4 v4, -0x1

    .line 72
    :goto_2
    return v4

    .line 64
    .end local v0    # "pkg1":Ljava/lang/String;
    .end local v1    # "pkg2":Ljava/lang/String;
    :cond_0
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 65
    .restart local v0    # "pkg1":Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 69
    .restart local v1    # "pkg2":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v4, v0}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->getCount(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;

    invoke-virtual {v5, v1}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus;->getCount(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 70
    const/4 v4, 0x1

    goto :goto_2

    .line 72
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/multiwindow/MultiWindowUsageStatus$1;->compare(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)I

    move-result v0

    return v0
.end method
