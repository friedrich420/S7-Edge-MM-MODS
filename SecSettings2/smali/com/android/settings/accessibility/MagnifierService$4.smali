.class Lcom/android/settings/accessibility/MagnifierService$4;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "MagnifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/MagnifierService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierService;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MagnifierService;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierService$4;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService$4;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnifierService;->access$102(Lcom/android/settings/accessibility/MagnifierService;Z)Z

    .line 158
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService$4;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->showView()V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService$4;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    # setter for: Lcom/android/settings/accessibility/MagnifierService;->isScoverClosed:Z
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnifierService;->access$102(Lcom/android/settings/accessibility/MagnifierService;Z)Z

    .line 161
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService$4;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeView()V

    goto :goto_0
.end method
