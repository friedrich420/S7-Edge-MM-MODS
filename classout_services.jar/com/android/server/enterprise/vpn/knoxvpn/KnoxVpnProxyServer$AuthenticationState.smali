.class final enum Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
.super Ljava/lang/Enum;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AuthenticationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

.field public static final enum AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

.field public static final enum AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

.field public static final enum CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

.field public static final enum NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;


# instance fields
.field private authValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    const-string v1, "NOT_AUTHORIZED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .line 116
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    const-string v1, "CREDENTIAL_PRESENT_NOT_AUTHORIZED"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v4, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .line 117
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    const-string v1, "AUTHORIZATION_IN_PROGRESS"

    invoke-direct {v0, v1, v5, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .line 118
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    const-string v1, "AUTHORIZED"

    invoke-direct {v0, v1, v6, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    sget-object v1, NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    aput-object v1, v0, v3

    sget-object v1, CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    aput-object v1, v0, v4

    sget-object v1, AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    aput-object v1, v0, v5

    sget-object v1, AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    aput-object v1, v0, v6

    sput-object v0, $VALUES:[Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, authValue:I

    .line 123
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;
    .registers 1

    .prologue
    .line 114
    sget-object v0, $VALUES:[Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    return-object v0
.end method


# virtual methods
.method public getStateValue()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, authValue:I

    return v0
.end method
