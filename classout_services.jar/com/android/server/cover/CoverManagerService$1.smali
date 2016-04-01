.class Lcom/android/server/cover/CoverManagerService$1;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$100(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->access$000(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 110
    iget-object v0, p0, this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$200(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/StateNotifier;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/cover/CoverManagerService;

    # getter for: Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->access$000(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 111
    return-void
.end method
