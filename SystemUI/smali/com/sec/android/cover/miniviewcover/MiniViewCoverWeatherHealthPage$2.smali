.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "MiniViewCoverWeatherHealthPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;
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
    .line 68
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_additional_weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->updateWeatherWidgetVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;->access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverWeatherHealthPage;)V

    .line 73
    :cond_0
    return-void
.end method
