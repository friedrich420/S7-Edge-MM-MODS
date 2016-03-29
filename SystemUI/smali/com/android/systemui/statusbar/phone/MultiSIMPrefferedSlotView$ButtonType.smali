.class final enum Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;
.super Ljava/lang/Enum;
.source "MultiSIMPrefferedSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

.field public static final enum DATA:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

.field public static final enum SMS:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

.field public static final enum VOICE:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->VOICE:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->SMS:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->DATA:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    sget-object v1, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->VOICE:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->SMS:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->DATA:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->$VALUES:[Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->$VALUES:[Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$ButtonType;

    return-object v0
.end method
