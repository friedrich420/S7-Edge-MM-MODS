.class Lcom/android/systemui/qs/tiles/VoLteTile$3;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$3;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$600(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    .line 116
    return-void
.end method
