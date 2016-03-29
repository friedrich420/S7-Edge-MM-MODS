.class public final enum Lcom/android/systemui/qs/QSTile$UserBoolean;
.super Ljava/lang/Enum;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "UserBoolean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/qs/QSTile$UserBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

.field public static final enum USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;


# instance fields
.field public final userInitiated:Z

.field public final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 574
    new-instance v0, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string v1, "USER_TRUE"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 575
    new-instance v0, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string v1, "USER_FALSE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 576
    new-instance v0, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string v1, "BACKGROUND_TRUE"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 577
    new-instance v0, Lcom/android/systemui/qs/QSTile$UserBoolean;

    const-string v1, "BACKGROUND_FALSE"

    invoke-direct {v0, v1, v5, v2, v2}, Lcom/android/systemui/qs/QSTile$UserBoolean;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    .line 573
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/qs/QSTile$UserBoolean;

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->USER_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_TRUE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/qs/QSTile$UserBoolean;->BACKGROUND_FALSE:Lcom/android/systemui/qs/QSTile$UserBoolean;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->$VALUES:[Lcom/android/systemui/qs/QSTile$UserBoolean;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "userInitiated"    # Z
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 580
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 581
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSTile$UserBoolean;->value:Z

    .line 582
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSTile$UserBoolean;->userInitiated:Z

    .line 583
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile$UserBoolean;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 573
    const-class v0, Lcom/android/systemui/qs/QSTile$UserBoolean;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$UserBoolean;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/qs/QSTile$UserBoolean;
    .locals 1

    .prologue
    .line 573
    sget-object v0, Lcom/android/systemui/qs/QSTile$UserBoolean;->$VALUES:[Lcom/android/systemui/qs/QSTile$UserBoolean;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/QSTile$UserBoolean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSTile$UserBoolean;

    return-object v0
.end method
