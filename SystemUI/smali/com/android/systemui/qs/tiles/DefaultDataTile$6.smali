.class Lcom/android/systemui/qs/tiles/DefaultDataTile$6;
.super Ljava/lang/Object;
.source "DefaultDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DefaultDataTile;->showNoSimDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$1800(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 391
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 392
    return-void
.end method
