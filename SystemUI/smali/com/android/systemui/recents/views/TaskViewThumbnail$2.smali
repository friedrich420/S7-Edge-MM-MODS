.class Lcom/android/systemui/recents/views/TaskViewThumbnail$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewThumbnail;

.field final synthetic val$postAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewThumbnail;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail$2;->this$0:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail$2;->val$postAnimRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail$2;->val$postAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 279
    return-void
.end method
