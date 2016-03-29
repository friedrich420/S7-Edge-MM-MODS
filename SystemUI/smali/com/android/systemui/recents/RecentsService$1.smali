.class Lcom/android/systemui/recents/RecentsService$1;
.super Lcom/android/systemui/recents/IRecentsService$Stub;
.source "RecentsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsService;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsService;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsService$1;->this$0:Lcom/android/systemui/recents/RecentsService;

    invoke-direct {p0}, Lcom/android/systemui/recents/IRecentsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public configurationChanged()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsService$1;->this$0:Lcom/android/systemui/recents/RecentsService;

    # getter for: Lcom/android/systemui/recents/RecentsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsService;->access$100(Lcom/android/systemui/recents/RecentsService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    return-void
.end method

.method public hideRecents(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsService$1;->this$0:Lcom/android/systemui/recents/RecentsService;

    # getter for: Lcom/android/systemui/recents/RecentsService;->mH:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsService;->access$100(Lcom/android/systemui/recents/RecentsService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    return-void

    :cond_0
    move v2, v1

    .line 54
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public preloadRecents()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsService$1;->this$0:Lcom/android/systemui/recents/RecentsService;

    # getter for: Lcom/android/systemui/recents/RecentsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsService;->access$100(Lcom/android/systemui/recents/RecentsService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsService$1;->this$0:Lcom/android/systemui/recents/RecentsService;

    # getter for: Lcom/android/systemui/recents/RecentsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsService;->access$100(Lcom/android/systemui/recents/RecentsService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsService$1;->this$0:Lcom/android/systemui/recents/RecentsService;

    # getter for: Lcom/android/systemui/recents/RecentsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsService;->access$100(Lcom/android/systemui/recents/RecentsService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    return-void
.end method

.method public showRecents(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsService$1;->this$0:Lcom/android/systemui/recents/RecentsService;

    # getter for: Lcom/android/systemui/recents/RecentsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsService;->access$100(Lcom/android/systemui/recents/RecentsService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public toggleRecents()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsService$1;->this$0:Lcom/android/systemui/recents/RecentsService;

    # getter for: Lcom/android/systemui/recents/RecentsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsService;->access$100(Lcom/android/systemui/recents/RecentsService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    return-void
.end method
