.class Lcom/android/systemui/recents/RecentsActivity$5;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks()V
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
    .line 527
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->TAG:Ljava/lang/String;

    const-string v1, "mFinishLaunchHomeRunnable - onAnimationStarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$5$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$5$1;-><init>(Lcom/android/systemui/recents/RecentsActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method
