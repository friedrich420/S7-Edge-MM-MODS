.class final enum Lcom/android/settings/applock/PackageInfoUtil$State;
.super Ljava/lang/Enum;
.source "PackageInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applock/PackageInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/applock/PackageInfoUtil$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/applock/PackageInfoUtil$State;

.field public static final enum ADD:Lcom/android/settings/applock/PackageInfoUtil$State;

.field public static final enum REMOVE:Lcom/android/settings/applock/PackageInfoUtil$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/android/settings/applock/PackageInfoUtil$State;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applock/PackageInfoUtil$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/applock/PackageInfoUtil$State;->ADD:Lcom/android/settings/applock/PackageInfoUtil$State;

    new-instance v0, Lcom/android/settings/applock/PackageInfoUtil$State;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/applock/PackageInfoUtil$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/applock/PackageInfoUtil$State;->REMOVE:Lcom/android/settings/applock/PackageInfoUtil$State;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/applock/PackageInfoUtil$State;

    sget-object v1, Lcom/android/settings/applock/PackageInfoUtil$State;->ADD:Lcom/android/settings/applock/PackageInfoUtil$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applock/PackageInfoUtil$State;->REMOVE:Lcom/android/settings/applock/PackageInfoUtil$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/applock/PackageInfoUtil$State;->$VALUES:[Lcom/android/settings/applock/PackageInfoUtil$State;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/applock/PackageInfoUtil$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/applock/PackageInfoUtil$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applock/PackageInfoUtil$State;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/applock/PackageInfoUtil$State;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/applock/PackageInfoUtil$State;->$VALUES:[Lcom/android/settings/applock/PackageInfoUtil$State;

    invoke-virtual {v0}, [Lcom/android/settings/applock/PackageInfoUtil$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/applock/PackageInfoUtil$State;

    return-object v0
.end method
