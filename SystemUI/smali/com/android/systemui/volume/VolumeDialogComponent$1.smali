.class Lcom/android/systemui/volume/VolumeDialogComponent$1;
.super Lcom/android/systemui/volume/VolumeDialogController;
.source "VolumeDialogComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogComponent;-><init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$1;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/VolumeDialogController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method protected onUserActivityW()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$1;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    # invokes: Lcom/android/systemui/volume/VolumeDialogComponent;->sendUserActivity()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogComponent;->access$000(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    .line 64
    return-void
.end method
