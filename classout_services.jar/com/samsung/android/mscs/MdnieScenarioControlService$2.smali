.class Lcom/samsung/android/mscs/MdnieScenarioControlService$2;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mscs/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V
    .registers 2

    .prologue
    .line 563
    iput-object p1, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 566
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    # setter for: Lcom/samsung/android/mscs/MdnieScenarioControlService;->mCoverState:Z
    invoke-static {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2402(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)Z

    .line 567
    return-void
.end method
