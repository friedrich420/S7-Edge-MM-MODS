.class Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil$TraceDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerUtil$TraceDumper;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_31

    .line 277
    const-string v0, "PowerManagerUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Excessive delay : dumping trace after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    # getter for: Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDelay:I
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->access$000(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 280
    :cond_31
    return-void
.end method
