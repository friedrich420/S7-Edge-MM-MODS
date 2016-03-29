.class Lcom/android/systemui/recents/views/TaskStackView$7;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/views/TaskStackView;->mExitAnimating:Z

    .line 1262
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 1263
    return-void
.end method
