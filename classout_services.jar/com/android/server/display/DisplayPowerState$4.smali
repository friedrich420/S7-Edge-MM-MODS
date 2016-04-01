.class Lcom/android/server/display/DisplayPowerState$4;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .registers 2

    .prologue
    .line 415
    iput-object p1, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 418
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$802(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 420
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$900(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 421
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1000(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$200(Lcom/android/server/display/DisplayPowerState;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 424
    :cond_1d
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$1102(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 425
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayPowerState;

    # invokes: Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$700(Lcom/android/server/display/DisplayPowerState;)V

    .line 426
    return-void
.end method
