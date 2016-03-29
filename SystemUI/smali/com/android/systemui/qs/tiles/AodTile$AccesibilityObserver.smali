.class Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;
.super Landroid/database/ContentObserver;
.source "AodTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AodTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccesibilityObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AodTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AodTile;)V
    .locals 1

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    .line 427
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 428
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->updateVoiceAssistant()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AodTile;->access$1300(Lcom/android/systemui/qs/tiles/AodTile;)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile$AccesibilityObserver;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->getAodMState()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$200(Lcom/android/systemui/qs/tiles/AodTile;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$1400(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V

    .line 435
    return-void
.end method
