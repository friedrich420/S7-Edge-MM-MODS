.class Lcom/android/systemui/recents/RecentsActivity$13;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Force start EnterAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mForceAnimation:Z
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->access$000(Lcom/android/systemui/recents/RecentsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/recents/RecentsActivity;->mForceAnimation:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->access$002(Lcom/android/systemui/recents/RecentsActivity;Z)Z

    .line 1823
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$13;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 1825
    :cond_0
    return-void
.end method
