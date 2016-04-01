.class public final enum Lcom/ipsec/client/IPsecError;
.super Ljava/lang/Enum;
.source "IPsecError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_ALREADY_CONNECTED:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_CANNOT_CONFIGURE_GLOBAL_DNS:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_CERTIFICATE_VALIDATION_FAILED:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_CONNECTION_LOST:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_CONNECTION_LOST_DPD_TIMEOUT:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_DAEMON_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_IKE_NEGOTIATION_FAILED:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_CA_CERTIFICATE:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_CERTIFICATE:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_DPD_TIMEOUT:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_EAP_METHOD:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_EAP_REAUTH_DATA:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_GW_ADDRESS:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_HOST_AUTHENTICATION:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IKE_DH_GROUP:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IKE_ENCRYPTION:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IKE_INTEGRITY:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IKE_LIFETIME:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IKE_VERSION:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IKE_WINDOW_SIZE:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IM_CERTIFICATE:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_INTERFACE:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_INTERNAL_SUBNET:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IPSEC_BOUNDARY:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IPSEC_ENCRYPTION:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IPSEC_INTEGRITY:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_IPSEC_LIFETIME:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_OWN_IDENTITY:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_PASSWORD:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_PFS_DH_GROUP:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_PRESHARED_KEY:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_PRIVATE_KEY:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_RAC_ATTRIBUTE:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_REMOTE_IDENTITY:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_TUNNEL_MODE:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_USERNAME:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_MESSAGE_DECODE_FAILED:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_OK:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_OPERATION_FAILED:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_SECURITY_MODULE_NOT_AVAILABLE:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_SYSTEM_VPN_ALREADY_EXISTS:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_TIMEOUT:Lcom/ipsec/client/IPsecError;

.field public static final enum IPSEC_UNKNOWN_ERROR:Lcom/ipsec/client/IPsecError;


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
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_OK"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 26
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_FAILED"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    .line 32
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_PARAMETER"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    .line 39
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_REMOTE_ERROR"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 45
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_ALREADY_CONNECTED"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ALREADY_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 51
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_NOT_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 57
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_RECEIVED_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    .line 64
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_REMOTE_SERVICE_CANNOT_CONNECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    .line 70
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_REMOTE_SERVICE_NOT_CONNECTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 76
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_DAEMON_NOT_CONNECTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_DAEMON_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 83
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IKE_DH_GROUP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IKE_DH_GROUP:Lcom/ipsec/client/IPsecError;

    .line 89
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IKE_ENCRYPTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IKE_ENCRYPTION:Lcom/ipsec/client/IPsecError;

    .line 95
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IKE_INTEGRITY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IKE_INTEGRITY:Lcom/ipsec/client/IPsecError;

    .line 101
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IKE_VERSION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IKE_VERSION:Lcom/ipsec/client/IPsecError;

    .line 107
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IKE_WINDOW_SIZE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IKE_WINDOW_SIZE:Lcom/ipsec/client/IPsecError;

    .line 113
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IKE_LIFETIME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IKE_LIFETIME:Lcom/ipsec/client/IPsecError;

    .line 119
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IPSEC_LIFETIME"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IPSEC_LIFETIME:Lcom/ipsec/client/IPsecError;

    .line 125
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IPSEC_ENCRYPTION"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IPSEC_ENCRYPTION:Lcom/ipsec/client/IPsecError;

    .line 131
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IPSEC_INTEGRITY"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IPSEC_INTEGRITY:Lcom/ipsec/client/IPsecError;

    .line 138
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IPSEC_ALGORITHM_COMBINATION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/ipsec/client/IPsecError;

    .line 144
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_PFS_DH_GROUP"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_PFS_DH_GROUP:Lcom/ipsec/client/IPsecError;

    .line 150
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_TUNNEL_MODE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_TUNNEL_MODE:Lcom/ipsec/client/IPsecError;

    .line 156
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_GW_ADDRESS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_GW_ADDRESS:Lcom/ipsec/client/IPsecError;

    .line 162
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_INTERNAL_SUBNET"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_INTERNAL_SUBNET:Lcom/ipsec/client/IPsecError;

    .line 168
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_INTERFACE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_INTERFACE:Lcom/ipsec/client/IPsecError;

    .line 174
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_OWN_IDENTITY"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_OWN_IDENTITY:Lcom/ipsec/client/IPsecError;

    .line 180
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_REMOTE_IDENTITY"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_REMOTE_IDENTITY:Lcom/ipsec/client/IPsecError;

    .line 186
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_HOST_AUTHENTICATION"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_HOST_AUTHENTICATION:Lcom/ipsec/client/IPsecError;

    .line 192
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_EAP_METHOD"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_EAP_METHOD:Lcom/ipsec/client/IPsecError;

    .line 198
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_PRESHARED_KEY"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_PRESHARED_KEY:Lcom/ipsec/client/IPsecError;

    .line 204
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_CA_CERTIFICATE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_CA_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    .line 210
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IM_CERTIFICATE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IM_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    .line 216
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_CERTIFICATE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    .line 222
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_PRIVATE_KEY"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_PRIVATE_KEY:Lcom/ipsec/client/IPsecError;

    .line 228
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_USERNAME"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_USERNAME:Lcom/ipsec/client/IPsecError;

    .line 234
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_PASSWORD"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_PASSWORD:Lcom/ipsec/client/IPsecError;

    .line 240
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_VIRTUAL_ADAPTER_NAME"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/ipsec/client/IPsecError;

    .line 246
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_VIRTUAL_ADAPTER_CONFIGURATION"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/ipsec/client/IPsecError;

    .line 252
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_RAC_ATTRIBUTE"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_RAC_ATTRIBUTE:Lcom/ipsec/client/IPsecError;

    .line 258
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_NATT_KEEPALIVE_TIMEOUT"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/ipsec/client/IPsecError;

    .line 264
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_DPD_TIMEOUT"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_DPD_TIMEOUT:Lcom/ipsec/client/IPsecError;

    .line 271
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_SYSTEM_VPN_ALREADY_EXISTS"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_SYSTEM_VPN_ALREADY_EXISTS:Lcom/ipsec/client/IPsecError;

    .line 277
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_CANNOT_CONFIGURE_GLOBAL_DNS"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_CANNOT_CONFIGURE_GLOBAL_DNS:Lcom/ipsec/client/IPsecError;

    .line 283
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_IKE_NEGOTIATION_FAILED"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_IKE_NEGOTIATION_FAILED:Lcom/ipsec/client/IPsecError;

    .line 289
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_TIMEOUT"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_TIMEOUT:Lcom/ipsec/client/IPsecError;

    .line 295
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_CERTIFICATE_VALIDATION_FAILED"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_CERTIFICATE_VALIDATION_FAILED:Lcom/ipsec/client/IPsecError;

    .line 301
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_UNKNOWN_ERROR"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_UNKNOWN_ERROR:Lcom/ipsec/client/IPsecError;

    .line 307
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_SECURITY_MODULE_NOT_AVAILABLE"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_SECURITY_MODULE_NOT_AVAILABLE:Lcom/ipsec/client/IPsecError;

    .line 313
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_CONNECTION_LOST_DPD_TIMEOUT"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_CONNECTION_LOST_DPD_TIMEOUT:Lcom/ipsec/client/IPsecError;

    .line 319
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_CONNECTION_LOST"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_CONNECTION_LOST:Lcom/ipsec/client/IPsecError;

    .line 325
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_IPSEC_BOUNDARY"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_IPSEC_BOUNDARY:Lcom/ipsec/client/IPsecError;

    .line 331
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_MESSAGE_DECODE_FAILED"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_MESSAGE_DECODE_FAILED:Lcom/ipsec/client/IPsecError;

    .line 337
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_OPERATION_FAILED"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_OPERATION_FAILED:Lcom/ipsec/client/IPsecError;

    .line 343
    new-instance v0, Lcom/ipsec/client/IPsecError;

    const-string v1, "IPSEC_INVALID_EAP_REAUTH_DATA"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INVALID_EAP_REAUTH_DATA:Lcom/ipsec/client/IPsecError;

    .line 13
    const/16 v0, 0x36

    new-array v0, v0, [Lcom/ipsec/client/IPsecError;

    sget-object v1, IPSEC_OK:Lcom/ipsec/client/IPsecError;

    aput-object v1, v0, v3

    sget-object v1, IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    aput-object v1, v0, v4

    sget-object v1, IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    aput-object v1, v0, v5

    sget-object v1, IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    aput-object v1, v0, v6

    sget-object v1, IPSEC_ALREADY_CONNECTED:Lcom/ipsec/client/IPsecError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, IPSEC_DAEMON_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, IPSEC_INVALID_IKE_DH_GROUP:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, IPSEC_INVALID_IKE_ENCRYPTION:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, IPSEC_INVALID_IKE_INTEGRITY:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, IPSEC_INVALID_IKE_VERSION:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, IPSEC_INVALID_IKE_WINDOW_SIZE:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, IPSEC_INVALID_IKE_LIFETIME:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, IPSEC_INVALID_IPSEC_LIFETIME:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, IPSEC_INVALID_IPSEC_ENCRYPTION:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, IPSEC_INVALID_IPSEC_INTEGRITY:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, IPSEC_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, IPSEC_INVALID_PFS_DH_GROUP:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, IPSEC_INVALID_TUNNEL_MODE:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, IPSEC_INVALID_GW_ADDRESS:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, IPSEC_INVALID_INTERNAL_SUBNET:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, IPSEC_INVALID_INTERFACE:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, IPSEC_INVALID_OWN_IDENTITY:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, IPSEC_INVALID_REMOTE_IDENTITY:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, IPSEC_INVALID_HOST_AUTHENTICATION:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, IPSEC_INVALID_EAP_METHOD:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, IPSEC_INVALID_PRESHARED_KEY:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, IPSEC_INVALID_CA_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, IPSEC_INVALID_IM_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, IPSEC_INVALID_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, IPSEC_INVALID_PRIVATE_KEY:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, IPSEC_INVALID_USERNAME:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, IPSEC_INVALID_PASSWORD:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, IPSEC_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, IPSEC_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, IPSEC_INVALID_RAC_ATTRIBUTE:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, IPSEC_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, IPSEC_INVALID_DPD_TIMEOUT:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, IPSEC_SYSTEM_VPN_ALREADY_EXISTS:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, IPSEC_CANNOT_CONFIGURE_GLOBAL_DNS:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, IPSEC_IKE_NEGOTIATION_FAILED:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, IPSEC_TIMEOUT:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, IPSEC_CERTIFICATE_VALIDATION_FAILED:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, IPSEC_UNKNOWN_ERROR:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, IPSEC_SECURITY_MODULE_NOT_AVAILABLE:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, IPSEC_CONNECTION_LOST_DPD_TIMEOUT:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, IPSEC_CONNECTION_LOST:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, IPSEC_INVALID_IPSEC_BOUNDARY:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, IPSEC_MESSAGE_DECODE_FAILED:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, IPSEC_OPERATION_FAILED:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, IPSEC_INVALID_EAP_REAUTH_DATA:Lcom/ipsec/client/IPsecError;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecError;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/ipsec/client/IPsecError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecError;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecError;
    .registers 1

    .prologue
    .line 13
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecError;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecError;

    return-object v0
.end method
