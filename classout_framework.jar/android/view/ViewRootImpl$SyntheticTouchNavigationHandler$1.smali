.class Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V
    .registers 2

    .prologue
    .line 6261
    iput-object p1, p0, this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 6264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6265
    .local v0, "time":J
    iget-object v2, p0, this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    iget-object v3, p0, this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    # getter for: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I
    invoke-static {v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2200(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    move-result v3

    iget-object v4, p0, this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    # getter for: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I
    invoke-static {v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2300(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    move-result v4

    # invokes: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V
    invoke-static {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2400(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V

    .line 6266
    iget-object v2, p0, this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    const v3, 0x3f4ccccd    # 0.8f

    # *= operator for: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2532(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F

    .line 6267
    iget-object v2, p0, this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    # invokes: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z
    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2600(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z

    move-result v2

    if-nez v2, :cond_30

    .line 6268
    iget-object v2, p0, this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    const/4 v3, 0x0

    # setter for: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z
    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2702(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z

    .line 6269
    iget-object v2, p0, this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    # invokes: Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V
    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->access$2800(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V

    .line 6271
    :cond_30
    return-void
.end method
