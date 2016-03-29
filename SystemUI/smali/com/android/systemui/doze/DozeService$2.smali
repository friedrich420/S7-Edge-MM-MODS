.class Lcom/android/systemui/doze/DozeService$2;
.super Lcom/android/systemui/doze/DozeService$ProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->requestPulse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;

.field final synthetic val$nonBlocking:Z

.field final synthetic val$reason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;JIZ)V
    .locals 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    iput-wide p2, p0, Lcom/android/systemui/doze/DozeService$2;->val$start:J

    iput p4, p0, Lcom/android/systemui/doze/DozeService$2;->val$reason:I

    iput-boolean p5, p0, Lcom/android/systemui/doze/DozeService$2;->val$nonBlocking:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService$1;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 8
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    if-ne p1, v2, :cond_0

    .line 238
    .local v2, "isNear":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 239
    .local v0, "end":J
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$200(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/systemui/doze/DozeService$2;->val$start:J

    sub-long v6, v0, v6

    iget v5, p0, Lcom/android/systemui/doze/DozeService$2;->val$reason:I

    invoke-static {v4, v2, v6, v7, v5}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(Landroid/content/Context;ZJI)V

    .line 240
    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService$2;->val$nonBlocking:Z

    if-eqz v4, :cond_1

    .line 253
    :goto_1
    return-void

    .end local v0    # "end":J
    .end local v2    # "isNear":Z
    :cond_0
    move v2, v3

    .line 237
    goto :goto_0

    .line 245
    .restart local v0    # "end":J
    .restart local v2    # "isNear":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 246
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # setter for: Lcom/android/systemui/doze/DozeService;->mPulsing:Z
    invoke-static {v4, v3}, Lcom/android/systemui/doze/DozeService;->access$302(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 247
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/systemui/doze/DozeService;->access$400(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    iget v4, p0, Lcom/android/systemui/doze/DozeService$2;->val$reason:I

    # invokes: Lcom/android/systemui/doze/DozeService;->continuePulsing(I)V
    invoke-static {v3, v4}, Lcom/android/systemui/doze/DozeService;->access$500(Lcom/android/systemui/doze/DozeService;I)V

    goto :goto_1
.end method
