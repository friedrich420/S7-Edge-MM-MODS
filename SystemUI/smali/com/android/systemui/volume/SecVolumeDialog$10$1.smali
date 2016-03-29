.class Lcom/android/systemui/volume/SecVolumeDialog$10$1;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/SecVolumeDialog$10;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog$10;)V
    .locals 0

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$10;

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$10;

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5400(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10$1;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$10;

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mCallback:Lcom/android/systemui/volume/SecVolumeDialog$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5400(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Callback;->onSettingsClicked()V

    .line 1480
    :cond_0
    return-void
.end method
