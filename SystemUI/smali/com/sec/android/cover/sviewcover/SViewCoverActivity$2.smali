.class Lcom/sec/android/cover/sviewcover/SViewCoverActivity$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverActivity;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverActivity;

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->mNeedtoRemainActivity:Z

    if-nez v0, :cond_0

    .line 49
    const-string v0, "SViewCoverActivity"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverActivity;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->finish()V

    .line 52
    :cond_0
    return-void
.end method
