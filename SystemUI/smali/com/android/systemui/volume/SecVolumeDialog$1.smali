.class Lcom/android/systemui/volume/SecVolumeDialog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecVolumeDialog.java"


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
    .line 247
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 250
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$1;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 252
    return-void
.end method
