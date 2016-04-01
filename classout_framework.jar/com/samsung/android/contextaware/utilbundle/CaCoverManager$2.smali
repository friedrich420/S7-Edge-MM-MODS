.class Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "CaCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 162
    if-eqz p1, :cond_31

    .line 163
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    # setter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverState:Z
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$202(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;Z)Z

    .line 164
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    # setter for: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->mCurrentCoverType:I
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$302(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;I)I

    .line 165
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->notifyObservers(Lcom/samsung/android/cover/CoverState;)V
    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->access$400(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;Lcom/samsung/android/cover/CoverState;)V

    .line 169
    :goto_30
    return-void

    .line 167
    :cond_31
    const-string/jumbo v0, "state is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_30
.end method
