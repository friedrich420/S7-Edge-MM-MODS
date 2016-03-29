.class Lcom/android/systemui/volume/SecVolumeDialog$6;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V
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
    .line 812
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$6;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->setExpandedH(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$3400(Lcom/android/systemui/volume/SecVolumeDialog;Z)V

    .line 816
    return-void
.end method
