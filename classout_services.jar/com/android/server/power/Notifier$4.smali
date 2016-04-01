.class Lcom/android/server/power/Notifier$4;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .registers 2

    .prologue
    .line 462
    iput-object p1, p0, this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->finishedWakingUp()V

    .line 466
    return-void
.end method
