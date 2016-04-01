.class public final enum Lcom/sec/epdg/IWlanError$EpdgError;
.super Ljava/lang/Enum;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpdgError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanError$EpdgError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum DNS_A_QUERY_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

.field public static final enum VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "VENDOR_ERROR"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    .line 15
    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "IKE_NEGOTIATION_ERROR"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    .line 20
    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "DNS_RESOLUTION_FAILED_ERROR"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    .line 24
    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "TIMEOUT_ERROR"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    .line 28
    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "CERTIFICATION_ERROR"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    .line 32
    new-instance v0, Lcom/sec/epdg/IWlanError$EpdgError;

    const-string v1, "DNS_A_QUERY_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DNS_A_QUERY_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v1, VENDOR_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v3

    sget-object v1, IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v4

    sget-object v1, DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v5

    sget-object v1, TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v6

    sget-object v1, CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, DNS_A_QUERY_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/sec/epdg/IWlanError$EpdgError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanError$EpdgError;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanError$EpdgError;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanError$EpdgError;
    .registers 1

    .prologue
    .line 5
    sget-object v0, $VALUES:[Lcom/sec/epdg/IWlanError$EpdgError;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanError$EpdgError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanError$EpdgError;

    return-object v0
.end method
