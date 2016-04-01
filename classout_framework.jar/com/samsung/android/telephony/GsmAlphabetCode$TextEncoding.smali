.class public Lcom/samsung/android/telephony/GsmAlphabetCode$TextEncoding;
.super Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.source "GsmAlphabetCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/telephony/GsmAlphabetCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextEncoding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    return-void
.end method
