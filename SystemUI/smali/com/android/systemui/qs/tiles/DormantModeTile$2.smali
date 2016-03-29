.class Lcom/android/systemui/qs/tiles/DormantModeTile$2;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.source "DormantModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DormantModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onZenChanged(I)V
    .locals 3
    .param p1, "zen"    # I

    .prologue
    .line 153
    const-string v0, "DormantModeTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZenChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$200(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    .line 155
    return-void
.end method
