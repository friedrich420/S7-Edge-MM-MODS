.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "MiniViewCoverMainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerConnectionUpdate(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->updateMainPageLayout()V

    .line 54
    :cond_0
    return-void
.end method
