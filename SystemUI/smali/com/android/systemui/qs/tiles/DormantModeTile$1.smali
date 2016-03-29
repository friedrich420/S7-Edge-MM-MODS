.class Lcom/android/systemui/qs/tiles/DormantModeTile$1;
.super Lcom/android/systemui/qs/SecureSetting;
.source "DormantModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DormantModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DormantModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 52
    if-ne p1, v0, :cond_1

    .line 54
    .local v0, "isCarMode":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$000(Lcom/android/systemui/qs/tiles/DormantModeTile;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mIsCarMode:Z
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$002(Lcom/android/systemui/qs/tiles/DormantModeTile;Z)Z

    .line 56
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # invokes: Lcom/android/systemui/qs/tiles/DormantModeTile;->refreshState()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$100(Lcom/android/systemui/qs/tiles/DormantModeTile;)V

    .line 58
    :cond_0
    return-void

    .line 52
    .end local v0    # "isCarMode":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
