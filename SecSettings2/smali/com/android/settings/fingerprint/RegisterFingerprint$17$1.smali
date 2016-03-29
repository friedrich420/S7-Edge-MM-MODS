.class Lcom/android/settings/fingerprint/RegisterFingerprint$17$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$17;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$17;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$17;)V
    .locals 0

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$17$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1551
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$17$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$17;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$17;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f0d02b6

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1552
    .local v0, "imageView":Landroid/widget/ImageView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1553
    return-void
.end method
