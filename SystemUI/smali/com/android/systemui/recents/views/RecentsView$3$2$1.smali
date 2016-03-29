.class Lcom/android/systemui/recents/views/RecentsView$3$2$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$3$2;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/recents/views/RecentsView$3$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$3$2;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$3$2$1;->this$2:Lcom/android/systemui/recents/views/RecentsView$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3$2$1;->this$2:Lcom/android/systemui/recents/views/RecentsView$3$2;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3$2;->this$1:Lcom/android/systemui/recents/views/RecentsView$3;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3;->val$transitStartedListener:Landroid/app/ActivityOptions$OnTransitionStartedListener;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3$2$1;->this$2:Lcom/android/systemui/recents/views/RecentsView$3$2;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3$2;->this$1:Lcom/android/systemui/recents/views/RecentsView$3;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3;->val$transitStartedListener:Landroid/app/ActivityOptions$OnTransitionStartedListener;

    invoke-interface {v0}, Landroid/app/ActivityOptions$OnTransitionStartedListener;->onTransitionStarted()V

    .line 1277
    :cond_0
    return-void
.end method
