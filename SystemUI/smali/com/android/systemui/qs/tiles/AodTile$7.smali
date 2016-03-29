.class Lcom/android/systemui/qs/tiles/AodTile$7;
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
    .line 308
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AodTile$7;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 310
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile$7;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # invokes: Lcom/android/systemui/qs/tiles/AodTile;->disableExclusiveFeature()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AodTile;->access$900(Lcom/android/systemui/qs/tiles/AodTile;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AodTile$7;->this$0:Lcom/android/systemui/qs/tiles/AodTile;

    # getter for: Lcom/android/systemui/qs/tiles/AodTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AodTile;->access$1000(Lcom/android/systemui/qs/tiles/AodTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 314
    return-void
.end method
