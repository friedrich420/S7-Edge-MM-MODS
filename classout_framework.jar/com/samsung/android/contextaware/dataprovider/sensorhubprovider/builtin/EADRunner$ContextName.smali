.class final enum Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;
.super Ljava/lang/Enum;
.source "EADRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum B:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum CCT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum G:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum Lux:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

.field public static final enum R:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;


# instance fields
.field private val:B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "R"

    invoke-direct {v0, v1, v2, v2}, <init>(Ljava/lang/String;IB)V

    sput-object v0, R:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 48
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "G"

    invoke-direct {v0, v1, v3, v3}, <init>(Ljava/lang/String;IB)V

    sput-object v0, G:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 49
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "B"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;IB)V

    sput-object v0, B:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 50
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "Lux"

    invoke-direct {v0, v1, v5, v5}, <init>(Ljava/lang/String;IB)V

    sput-object v0, Lux:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 51
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    const-string v1, "CCT"

    invoke-direct {v0, v1, v6, v6}, <init>(Ljava/lang/String;IB)V

    sput-object v0, CCT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    sget-object v1, R:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    aput-object v1, v0, v2

    sget-object v1, G:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    aput-object v1, v0, v3

    sget-object v1, B:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    aput-object v1, v0, v4

    sget-object v1, Lux:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    aput-object v1, v0, v5

    sget-object v1, CCT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    aput-object v1, v0, v6

    sput-object v0, $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .param p3, "v"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-byte p3, p0, val:B

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;)B
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    .prologue
    .line 44
    iget-byte v0, p0, val:B

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;
    .registers 1

    .prologue
    .line 44
    sget-object v0, $VALUES:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/EADRunner$ContextName;

    return-object v0
.end method
