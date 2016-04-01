.class final enum Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
.super Ljava/lang/Enum;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Msg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

.field public static final enum IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

.field public static final enum INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

.field public static final enum OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;


# instance fields
.field private final val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const-string v1, "IDLE"

    const-string v2, "MSG_IDLE"

    invoke-direct {v0, v1, v3, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    .line 44
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const-string v1, "INCOMING_RINGING"

    const-string v2, "MSG_INCOMING_RINGING"

    invoke-direct {v0, v1, v4, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    .line 45
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    const-string v1, "OFF_HOOK"

    const-string v2, "MSG_OFF_HOOK"

    invoke-direct {v0, v1, v5, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    sget-object v1, IDLE:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    aput-object v1, v0, v3

    sget-object v1, INCOMING_RINGING:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    aput-object v1, v0, v4

    sget-object v1, OFF_HOOK:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "v"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, val:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;
    .registers 1

    .prologue
    .line 40
    sget-object v0, $VALUES:[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    return-object v0
.end method
