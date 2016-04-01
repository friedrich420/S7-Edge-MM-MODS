.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "PersonalPageModeFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->handleIdentify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 1
    .param p1, "arg0"    # Lcom/samsung/android/fingerprint/FingerprintEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->requestFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    invoke-static {v0, p1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->access$200(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    .line 236
    return-void
.end method
