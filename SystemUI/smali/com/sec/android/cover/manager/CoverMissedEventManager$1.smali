.class Lcom/sec/android/cover/manager/CoverMissedEventManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverMissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverMissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$1;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$1;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    # setter for: Lcom/sec/android/cover/manager/CoverMissedEventManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v0, p1}, Lcom/sec/android/cover/manager/CoverMissedEventManager;->access$002(Lcom/sec/android/cover/manager/CoverMissedEventManager;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    .line 45
    return-void
.end method
