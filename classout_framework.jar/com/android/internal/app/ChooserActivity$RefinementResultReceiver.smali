.class Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;
.super Landroid/os/ResultReceiver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefinementResultReceiver"
.end annotation


# instance fields
.field private mChooserActivity:Lcom/android/internal/app/ChooserActivity;

.field private mSelectedTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/os/Handler;)V
    .registers 4
    .param p1, "host"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1408
    invoke-direct {p0, p3}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 1409
    iput-object p1, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    .line 1410
    iput-object p2, p0, mSelectedTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 1411
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1446
    iput-object v0, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    .line 1447
    iput-object v0, p0, mSelectedTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .line 1448
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1415
    iget-object v1, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    if-nez v1, :cond_c

    .line 1416
    const-string v1, "ChooserActivity"

    const-string v2, "Destroyed RefinementResultReceiver received a result"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :goto_b
    return-void

    .line 1419
    :cond_c
    if-nez p2, :cond_16

    .line 1420
    const-string v1, "ChooserActivity"

    const-string v2, "RefinementResultReceiver received null resultData"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1424
    :cond_16
    packed-switch p1, :pswitch_data_5a

    .line 1439
    const-string v1, "ChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown result code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sent to RefinementResultReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1426
    :pswitch_38
    iget-object v1, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    goto :goto_b

    .line 1429
    :pswitch_3e
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1430
    .local v0, "intentParcelable":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_52

    .line 1431
    iget-object v1, p0, mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, mSelectedTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    check-cast v0, Landroid/content/Intent;

    .end local v0    # "intentParcelable":Landroid/os/Parcelable;
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/app/ChooserActivity;->onRefinementResult(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)V

    goto :goto_b

    .line 1434
    .restart local v0    # "intentParcelable":Landroid/os/Parcelable;
    :cond_52
    const-string v1, "ChooserActivity"

    const-string v2, "RefinementResultReceiver received RESULT_OK but no Intent in resultData with key Intent.EXTRA_INTENT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1424
    :pswitch_data_5a
    .packed-switch -0x1
        :pswitch_3e
        :pswitch_38
    .end packed-switch
.end method
