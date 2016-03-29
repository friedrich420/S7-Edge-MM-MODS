.class Lcom/android/settings/fingerprint/FingerprintSettings$7;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mInFingerprintLockout:Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$1302(Lcom/android/settings/fingerprint/FingerprintSettings;Z)Z

    .line 1271
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->retryFingerprint()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$400(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    .line 1272
    return-void
.end method
