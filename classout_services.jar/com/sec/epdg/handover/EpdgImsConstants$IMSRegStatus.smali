.class public final enum Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
.super Ljava/lang/Enum;
.source "EpdgImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMSRegStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

.field public static final enum DEREG_SUCCEEDED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_BLOCKED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_FAILED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_IN_PROGRESS:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

.field public static final enum REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;


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

    .line 35
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_NOT_STARTED"

    const-string v2, "REGISTRATION_NOT_STARTED"

    invoke-direct {v0, v1, v5, v5, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 36
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_IN_PROGRESS"

    const-string v2, "REGISTRATION_IN_PROGRESS"

    invoke-direct {v0, v1, v6, v6, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, REGISTRATION_IN_PROGRESS:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 37
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_DONE"

    const-string v2, "REGISTRATION_DONE"

    invoke-direct {v0, v1, v7, v7, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 38
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_FAILED"

    const-string v2, "REGISTRATION_FAILED"

    invoke-direct {v0, v1, v8, v8, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, REGISTRATION_FAILED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 39
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    const-string v1, "DEREG_SUCCEEDED"

    const-string v2, "DEREG_SUCCEEDED"

    invoke-direct {v0, v1, v9, v9, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, DEREG_SUCCEEDED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 40
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    const-string v1, "REGISTRATION_BLOCKED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "REGISTRATION_BLOCKED"

    invoke-direct {v0, v1, v2, v3, v4}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, REGISTRATION_BLOCKED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    sget-object v1, REGISTRATION_NOT_STARTED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    aput-object v1, v0, v5

    sget-object v1, REGISTRATION_IN_PROGRESS:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    aput-object v1, v0, v6

    sget-object v1, REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    aput-object v1, v0, v7

    sget-object v1, REGISTRATION_FAILED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    aput-object v1, v0, v8

    sget-object v1, DEREG_SUCCEEDED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, REGISTRATION_BLOCKED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, mStatus:I

    .line 48
    iput-object p4, p0, mText:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .registers 1

    .prologue
    .line 34
    sget-object v0, $VALUES:[Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    invoke-virtual {v0}, [Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, mText:Ljava/lang/String;

    return-object v0
.end method
