.class Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$5;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$5;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView$5;->this$0:Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;

    # invokes: Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->startPhase()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->access$500(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    .line 177
    return-void
.end method
