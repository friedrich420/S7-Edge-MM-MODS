.class Lcom/android/systemui/cover/SViewCoverService$1;
.super Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;
.source "SViewCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/SViewCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/SViewCoverService;


# direct methods
.method constructor <init>(Lcom/android/systemui/cover/SViewCoverService;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-direct {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isCoverViewShowing()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # invokes: Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$100(Lcom/android/systemui/cover/SViewCoverService;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoverViewShowing()Z

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 113
    :cond_1
    const-string v0, "CoverUI"

    const-string v1, "isCoverViewShowing() - cannot find mBaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # invokes: Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$100(Lcom/android/systemui/cover/SViewCoverService;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onCoverAppCovered(Z)I

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 127
    :cond_1
    const-string v0, "CoverUI"

    const-string v1, "onCoverAppCovered() - cannot find mBaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSViewCoverHide()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onSViewCoverShow()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onSystemReady()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # invokes: Lcom/android/systemui/cover/SViewCoverService;->getStatusBar()V
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$100(Lcom/android/systemui/cover/SViewCoverService;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    # getter for: Lcom/android/systemui/cover/SViewCoverService;->mBaseStatusBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->access$000(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "CoverUI"

    const-string v1, "updateCoverState() - cannot find mBaseStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
