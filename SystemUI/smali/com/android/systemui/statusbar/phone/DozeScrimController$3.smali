.class Lcom/android/systemui/statusbar/phone/DozeScrimController$3;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse in, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPulseReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # invokes: Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseStarted()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    goto :goto_0
.end method
