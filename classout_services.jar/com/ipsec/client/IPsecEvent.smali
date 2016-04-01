.class public final enum Lcom/ipsec/client/IPsecEvent;
.super Ljava/lang/Enum;
.source "IPsecEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CANCELLING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_CREATING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_DISCONNECTING:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_NONE:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_NOT_OWNER:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_NOT_READY:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_PREPARING:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_QUERY_DATA:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_READY:Lcom/ipsec/client/IPsecEvent;

.field public static final enum IPSEC_EVENT_UNKNOWN:Lcom/ipsec/client/IPsecEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_NONE"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_NONE:Lcom/ipsec/client/IPsecEvent;

    .line 26
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_NOT_READY"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_NOT_READY:Lcom/ipsec/client/IPsecEvent;

    .line 32
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_NOT_OWNER"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_NOT_OWNER:Lcom/ipsec/client/IPsecEvent;

    .line 38
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_PREPARING"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_PREPARING:Lcom/ipsec/client/IPsecEvent;

    .line 44
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_READY"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_READY:Lcom/ipsec/client/IPsecEvent;

    .line 50
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CREATING_CONNECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_CREATING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

    .line 56
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    .line 62
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_DISCONNECTING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_DISCONNECTING:Lcom/ipsec/client/IPsecEvent;

    .line 68
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CONNECTION_ACTIVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

    .line 72
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_PEER_DISCONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    .line 78
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_DISCONNECTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    .line 84
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CANCELLING_CONNECTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_CANCELLING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

    .line 90
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CONNECTION_SETUP_FAILURE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    .line 96
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_CONNECTION_RESET"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    .line 102
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_MISSING_DATA"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    .line 108
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_QUERY_DATA"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_QUERY_DATA:Lcom/ipsec/client/IPsecEvent;

    .line 114
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_UNKNOWN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_UNKNOWN:Lcom/ipsec/client/IPsecEvent;

    .line 120
    new-instance v0, Lcom/ipsec/client/IPsecEvent;

    const-string v1, "IPSEC_EVENT_ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    .line 13
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/ipsec/client/IPsecEvent;

    sget-object v1, IPSEC_EVENT_NONE:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v3

    sget-object v1, IPSEC_EVENT_NOT_READY:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v4

    sget-object v1, IPSEC_EVENT_NOT_OWNER:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v5

    sget-object v1, IPSEC_EVENT_PREPARING:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v6

    sget-object v1, IPSEC_EVENT_READY:Lcom/ipsec/client/IPsecEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, IPSEC_EVENT_CREATING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, IPSEC_EVENT_DISCONNECTING:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, IPSEC_EVENT_CONNECTION_ACTIVE:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, IPSEC_EVENT_CANCELLING_CONNECTION:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, IPSEC_EVENT_QUERY_DATA:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, IPSEC_EVENT_UNKNOWN:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecEvent;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/ipsec/client/IPsecEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecEvent;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecEvent;
    .registers 1

    .prologue
    .line 13
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecEvent;

    return-object v0
.end method
