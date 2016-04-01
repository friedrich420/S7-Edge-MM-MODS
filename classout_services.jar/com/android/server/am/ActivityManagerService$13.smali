.class Lcom/android/server/am/ActivityManagerService$13;
.super Landroid/os/CountDownTimer;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;JJ)V
    .registers 6
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 9926
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 9931
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "setMaxStartingBackgroundTimer onfinish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9932
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices;->setMaxStartingBackground()V

    .line 9933
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .param p1, "duration"    # J

    .prologue
    .line 9929
    return-void
.end method
