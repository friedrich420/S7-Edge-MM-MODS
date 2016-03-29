.class public final enum Lcom/android/settings/rcs/RcsUtils$RcsFeature;
.super Ljava/lang/Enum;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/rcs/RcsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RcsFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/rcs/RcsUtils$RcsFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/rcs/RcsUtils$RcsFeature;

.field public static final enum RCSE:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

.field public static final enum RCS_BB_FULL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

.field public static final enum RCS_BB_PARTIAL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

.field public static final enum RCS_EXTRAS_RCS_UI_FOR_OPEN:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

.field public static final enum UNKNOWN:Lcom/android/settings/rcs/RcsUtils$RcsFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/rcs/RcsUtils$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->UNKNOWN:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    .line 75
    new-instance v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    const-string v1, "RCSE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/rcs/RcsUtils$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCSE:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    .line 76
    new-instance v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    const-string v1, "RCS_BB_PARTIAL_BRANDED"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/rcs/RcsUtils$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_BB_PARTIAL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    .line 77
    new-instance v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    const-string v1, "RCS_BB_FULL_BRANDED"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/rcs/RcsUtils$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_BB_FULL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    .line 79
    new-instance v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    const-string v1, "RCS_EXTRAS_RCS_UI_FOR_OPEN"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/rcs/RcsUtils$RcsFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_EXTRAS_RCS_UI_FOR_OPEN:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    sget-object v1, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->UNKNOWN:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCSE:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_BB_PARTIAL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_BB_FULL_BRANDED:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->RCS_EXTRAS_RCS_UI_FOR_OPEN:Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->$VALUES:[Lcom/android/settings/rcs/RcsUtils$RcsFeature;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/rcs/RcsUtils$RcsFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/rcs/RcsUtils$RcsFeature;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings/rcs/RcsUtils$RcsFeature;->$VALUES:[Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    invoke-virtual {v0}, [Lcom/android/settings/rcs/RcsUtils$RcsFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/rcs/RcsUtils$RcsFeature;

    return-object v0
.end method
