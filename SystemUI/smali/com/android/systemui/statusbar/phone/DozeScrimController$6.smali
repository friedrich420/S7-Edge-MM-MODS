.class Lcom/android/systemui/statusbar/phone/DozeScrimController$6;
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
    .line 273
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 276
    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    const-string v1, "Pulse out finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # invokes: Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$1200(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    .line 281
    return-void
.end method
