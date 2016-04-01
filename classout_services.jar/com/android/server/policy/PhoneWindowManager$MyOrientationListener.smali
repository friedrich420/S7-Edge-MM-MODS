.class Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field private final mUpdateRotationRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1432
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1433
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1423
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;)V

    iput-object v0, p0, mUpdateRotationRunnable:Ljava/lang/Runnable;

    .line 1434
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .registers 4
    .param p1, "rotation"    # I

    .prologue
    .line 1439
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, mUpdateRotationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1440
    return-void
.end method
