.class final enum Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;
.super Ljava/lang/Enum;
.source "PackageInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applock/PackageInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BoardcastType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

.field public static final enum FOLDER_CHANGE:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

.field public static final enum LOCKED_APP_STATUS:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

.field public static final enum MASTER_ENABLE:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    const-string v1, "MASTER_ENABLE"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->MASTER_ENABLE:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    new-instance v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    const-string v1, "FOLDER_CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->FOLDER_CHANGE:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    new-instance v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    const-string v1, "LOCKED_APP_STATUS"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->LOCKED_APP_STATUS:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    sget-object v1, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->MASTER_ENABLE:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->FOLDER_CHANGE:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->LOCKED_APP_STATUS:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->$VALUES:[Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->$VALUES:[Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    invoke-virtual {v0}, [Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    return-object v0
.end method
