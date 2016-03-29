.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;
.super Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;
.source "CenterBarWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-direct {p0}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onArrangeStateUpdate(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$1200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 754
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16$2;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onMinimizeUpdate(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 733
    return-void
.end method
