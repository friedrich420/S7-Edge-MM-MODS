.class Lcom/android/server/lights/LightsService$4;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2

    .prologue
    .line 513
    iput-object p1, p0, this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 7
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v4, 0x1

    .line 516
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    # setter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$202(Lcom/android/server/lights/LightsService;I)I

    .line 517
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v4, :cond_34

    .line 518
    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN covertype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    # setter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v1, v4}, Lcom/android/server/lights/LightsService;->access$302(Lcom/android/server/lights/LightsService;Z)Z

    .line 535
    :cond_33
    :goto_33
    return-void

    .line 521
    :cond_34
    const-string v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE covertype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$302(Lcom/android/server/lights/LightsService;Z)Z

    .line 523
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$200(Lcom/android/server/lights/LightsService;)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_33

    .line 524
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    const-class v2, Lcom/android/server/lights/LightsManager;

    # invokes: Lcom/android/server/lights/LightsService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$2400(Lcom/android/server/lights/LightsService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 525
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    if-eqz v0, :cond_33

    .line 526
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    # setter for: Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$2502(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;

    .line 527
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    # setter for: Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$2602(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;

    .line 528
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    # setter for: Lcom/android/server/lights/LightsService;->mCoverServLight:Lcom/android/server/lights/Light;
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$2702(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/Light;)Lcom/android/server/lights/Light;

    .line 529
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$2500(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 530
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$2600(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 531
    iget-object v1, p0, this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverServLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$2700(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_33
.end method
