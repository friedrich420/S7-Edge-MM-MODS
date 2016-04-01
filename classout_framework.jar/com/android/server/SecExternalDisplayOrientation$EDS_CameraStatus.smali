.class public final enum Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
.super Ljava/lang/Enum;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDS_CameraStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

.field public static final enum FRONT:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

.field public static final enum REAR:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

.field public static final enum STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const-string v1, "REAR"

    invoke-direct {v0, v1, v2, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, REAR:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const-string v1, "FRONT"

    invoke-direct {v0, v1, v3, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, FRONT:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    sget-object v1, REAR:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    aput-object v1, v0, v2

    sget-object v1, FRONT:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    aput-object v1, v0, v3

    sget-object v1, STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, value:I

    .line 68
    return-void
.end method

.method public static toStatus(I)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    .registers 7
    .param p0, "value"    # I

    .prologue
    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, "retStatus":Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    invoke-static {}, values()[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_12

    aget-object v4, v0, v1

    .line 75
    .local v4, "tempVal":Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    invoke-virtual {v4}, getValue()I

    move-result v5

    if-ne v5, p0, :cond_13

    .line 76
    move-object v3, v4

    .line 80
    .end local v4    # "tempVal":Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    :cond_12
    return-object v3

    .line 74
    .restart local v4    # "tempVal":Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    .registers 1

    .prologue
    .line 63
    sget-object v0, $VALUES:[Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v0}, [Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, value:I

    return v0
.end method
