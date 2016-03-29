.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16$2;
.super Ljava/lang/Object;
.source "CenterBarWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;->onArrangeStateUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16$2;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16$2;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16$2;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$16;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 761
    :cond_0
    return-void
.end method
