.class Lcom/android/systemui/qs/tiles/AodTile$8;
.super Ljava/lang/Object;
.source "AodTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AodTile;->showEnablePopupDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AodTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AodTile;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AodTile$8;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile$8;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AodTile$8;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->getAodMState()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$200(Lcom/android/systemui/qs/tiles/AodTile;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AodTile;->access$1100(Lcom/android/systemui/qs/tiles/AodTile;Ljava/lang/Object;)V

    .line 320
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 321
    return-void
.end method
