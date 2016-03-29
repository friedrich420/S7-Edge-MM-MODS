.class Lcom/sec/android/cover/sviewcover/SViewCoverActivity$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
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
    .line 36
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverActivity;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverActivity;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverOpenEvent()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverActivity$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverActivity;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverCloseEvent()V

    goto :goto_0
.end method
