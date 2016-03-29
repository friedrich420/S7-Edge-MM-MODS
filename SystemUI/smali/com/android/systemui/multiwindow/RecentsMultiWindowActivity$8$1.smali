.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8$1;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;->onForegroundActivitiesChanged(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8$1;->this$1:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8$1;->this$1:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mFinishRequested:Z
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1400(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8$1;->this$1:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8$1;->this$1:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;

    iget-object v0, v0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$8;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->updateSelectedPackageName(Z)V

    .line 749
    :cond_0
    return-void
.end method
