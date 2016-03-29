.class Lcom/android/systemui/volume/SecVolumeDialog$10;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$10;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mSettingsButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5500(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialog$10$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumeDialog$10$1;-><init>(Lcom/android/systemui/volume/SecVolumeDialog$10;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1482
    return-void
.end method
