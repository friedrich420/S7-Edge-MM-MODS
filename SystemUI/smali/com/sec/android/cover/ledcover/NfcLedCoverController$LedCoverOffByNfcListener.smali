.class Lcom/sec/android/cover/ledcover/NfcLedCoverController$LedCoverOffByNfcListener;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$LedCoverNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedCoverOffByNfcListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;


# direct methods
.method private constructor <init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$LedCoverOffByNfcListener;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p2, "x1"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;

    .prologue
    .line 1326
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$LedCoverOffByNfcListener;-><init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V

    return-void
.end method


# virtual methods
.method public LedCoverNotification()V
    .locals 3

    .prologue
    .line 1330
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Led off by NFC tag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$LedCoverOffByNfcListener;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    const/16 v1, 0x12

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendLedData(I[B)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$1900(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I[B)V

    .line 1334
    return-void
.end method
