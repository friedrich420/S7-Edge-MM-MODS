.class Lcom/android/systemui/recents/views/RecentsView$3$1$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$3$1;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/recents/views/RecentsView$3$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$3$1;)V
    .locals 0

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$3$1$1;->this$2:Lcom/android/systemui/recents/views/RecentsView$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3$1$1;->this$2:Lcom/android/systemui/recents/views/RecentsView$3$1;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$3;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3$1$1;->this$2:Lcom/android/systemui/recents/views/RecentsView$3$1;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$3;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-interface {v0}, Landroid/app/ActivityOptions$OnAnimationStartedListener;->onAnimationStarted()V

    .line 1262
    :cond_0
    return-void
.end method
