.class final enum Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
.super Ljava/lang/Enum;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EdgeArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

.field public static final enum FORMER:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

.field public static final enum LATTER:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

.field public static final enum NONE:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    const-string v1, "FORMER"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->FORMER:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    .line 195
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    const-string v1, "LATTER"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->LATTER:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    .line 196
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->NONE:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    sget-object v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->FORMER:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->LATTER:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->NONE:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->$VALUES:[Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

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
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    const-class v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->$VALUES:[Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    invoke-virtual {v0}, [Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$EdgeArea;

    return-object v0
.end method
