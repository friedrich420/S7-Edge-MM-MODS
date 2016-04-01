.class public Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfcLedCoverTouchListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverTouchAccept()V
    .registers 1

    .prologue
    .line 869
    return-void
.end method

.method public onCoverTouchReject()V
    .registers 1

    .prologue
    .line 877
    return-void
.end method
