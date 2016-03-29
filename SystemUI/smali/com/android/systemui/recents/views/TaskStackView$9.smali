.class Lcom/android/systemui/recents/views/TaskStackView$9;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->showDismissAllButton()V
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
    .line 1410
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDismissAllButtonAnimating:Z

    .line 1414
    return-void
.end method
