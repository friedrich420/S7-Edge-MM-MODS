.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;
.super Landroid/os/Handler;
.source "PersonalPageModeFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final EVT_FINGERPRINT_EVENT:I = 0x400

.field private static final EVT_IDENTIFY:I = 0x401


# instance fields
.field private final mMsgCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;


# direct methods
.method public constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V
    .locals 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->mMsgCodes:Landroid/util/SparseArray;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x400

    const-string v2, "EVT_FINGERPRINT_EVENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x401

    const-string v2, "EVT_IDENTIFY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method private codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->mMsgCodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    const-string v0, "PersonalPageModeFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    return-void

    .line 89
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->handleFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    invoke-static {v1, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->handleIdentify()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->access$100(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
