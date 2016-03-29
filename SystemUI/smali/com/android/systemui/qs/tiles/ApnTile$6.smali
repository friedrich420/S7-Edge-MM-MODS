.class Lcom/android/systemui/qs/tiles/ApnTile$6;
.super Ljava/lang/Object;
.source "ApnTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ApnTile;->showNoSimDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ApnTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile$6;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile$6;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$1100(Lcom/android/systemui/qs/tiles/ApnTile;)V

    .line 368
    return-void
.end method
