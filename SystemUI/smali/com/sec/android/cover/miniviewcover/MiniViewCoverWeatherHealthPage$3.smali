.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$3;
.super Ljava/lang/Object;
.source "MiniViewCoverWeatherHealthPage.java"

# interfaces
.implements Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->setupChildViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$3;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 101
    const-string v0, "MiniViewWeatherHealthPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnUpdated(RemoteViewInfo info) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$3;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->adjustWidgetVisibility()V

    .line 103
    return-void
.end method
