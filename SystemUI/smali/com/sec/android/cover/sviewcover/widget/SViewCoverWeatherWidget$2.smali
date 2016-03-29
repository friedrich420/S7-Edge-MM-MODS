.class Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverWeatherWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$2;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_additional_weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$2;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->updateWeatherWidgetVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V

    .line 99
    :cond_0
    return-void
.end method
