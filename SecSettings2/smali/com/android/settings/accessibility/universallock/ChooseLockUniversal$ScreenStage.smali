.class final enum Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
.super Ljava/lang/Enum;
.source "ChooseLockUniversal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScreenStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

.field public static final enum CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

.field public static final enum ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    const-string v1, "ENTER_DIRECTION_SCREEN"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    new-instance v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    const-string v1, "CONFIRM_DIRECTION_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v1, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->$VALUES:[Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->$VALUES:[Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    invoke-virtual {v0}, [Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    return-object v0
.end method
