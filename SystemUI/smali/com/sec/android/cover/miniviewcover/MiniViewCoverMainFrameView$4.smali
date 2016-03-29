.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$4;
.super Ljava/lang/Object;
.source "MiniViewCoverMainFrameView.java"

# interfaces
.implements Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$OnMissedEventClickListenr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$4;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnMissedEventClick(Z)V
    .locals 1
    .param p1, "enableTouchEvent"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$4;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPageControlView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$1600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverPageView;->setEnableTouchEvent(Z)V

    .line 279
    return-void
.end method
