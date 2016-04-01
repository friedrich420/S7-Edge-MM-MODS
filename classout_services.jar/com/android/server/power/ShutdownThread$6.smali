.class Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->startShutdownDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$continueSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .prologue
    .line 971
    iput-object p1, p0, this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, val$continueSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 974
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1100(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1200(Landroid/content/Context;)V

    .line 975
    iget-object v0, p0, val$continueSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 976
    return-void
.end method
