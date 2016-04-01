.class public final enum Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
.super Ljava/lang/Enum;
.source "EpdgImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgCallStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field public static final enum CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field public static final enum CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field public static final enum CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field public static final enum CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field public static final enum CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

.field public static final enum CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;


# instance fields
.field private final mStatus:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    const-string v1, "CALL_IDLE"

    const-string/jumbo v2, "idle"

    invoke-direct {v0, v1, v5, v5, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 9
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    const-string v1, "CALL_VOICEONLY"

    const-string/jumbo v2, "imsvoicecall"

    invoke-direct {v0, v1, v6, v6, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 10
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    const-string v1, "CALL_VIDEO"

    const-string/jumbo v2, "imsvideocall"

    invoke-direct {v0, v1, v7, v7, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 11
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    const-string v1, "CALL_E911"

    const-string/jumbo v2, "e911call"

    invoke-direct {v0, v1, v8, v8, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 12
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    const-string v1, "CALL_BLOCKHANDOFF"

    const-string v2, "blockhandoff"

    invoke-direct {v0, v1, v9, v9, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 13
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    const-string v1, "CALL_VIDEO_VOICE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string/jumbo v4, "imsvideovoicecall"

    invoke-direct {v0, v1, v2, v3, v4}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    sget-object v1, CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    aput-object v1, v0, v5

    sget-object v1, CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    aput-object v1, v0, v6

    sget-object v1, CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    aput-object v1, v0, v7

    sget-object v1, CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    aput-object v1, v0, v8

    sget-object v1, CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "status"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, mStatus:I

    .line 21
    iput-object p4, p0, mText:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .registers 1

    .prologue
    .line 7
    sget-object v0, $VALUES:[Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, mStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, mText:Ljava/lang/String;

    return-object v0
.end method
