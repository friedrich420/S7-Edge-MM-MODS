.class public final enum Landroid/wipower/WipowerManager$PowerApplyEvent;
.super Ljava/lang/Enum;
.source "WipowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/WipowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerApplyEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/wipower/WipowerManager$PowerApplyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/wipower/WipowerManager$PowerApplyEvent;

.field public static final enum OFF:Landroid/wipower/WipowerManager$PowerApplyEvent;

.field public static final enum ON:Landroid/wipower/WipowerManager$PowerApplyEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Landroid/wipower/WipowerManager$PowerApplyEvent;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, OFF:Landroid/wipower/WipowerManager$PowerApplyEvent;

    .line 94
    new-instance v0, Landroid/wipower/WipowerManager$PowerApplyEvent;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, ON:Landroid/wipower/WipowerManager$PowerApplyEvent;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/wipower/WipowerManager$PowerApplyEvent;

    sget-object v1, OFF:Landroid/wipower/WipowerManager$PowerApplyEvent;

    aput-object v1, v0, v2

    sget-object v1, ON:Landroid/wipower/WipowerManager$PowerApplyEvent;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Landroid/wipower/WipowerManager$PowerApplyEvent;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/wipower/WipowerManager$PowerApplyEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v0, Landroid/wipower/WipowerManager$PowerApplyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/wipower/WipowerManager$PowerApplyEvent;

    return-object v0
.end method

.method public static values()[Landroid/wipower/WipowerManager$PowerApplyEvent;
    .registers 1

    .prologue
    .line 92
    sget-object v0, $VALUES:[Landroid/wipower/WipowerManager$PowerApplyEvent;

    invoke-virtual {v0}, [Landroid/wipower/WipowerManager$PowerApplyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/wipower/WipowerManager$PowerApplyEvent;

    return-object v0
.end method
