.class public final enum Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
.super Ljava/lang/Enum;
.source "SDualScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DualScreen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

.field public static final enum FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

.field public static final enum MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

.field public static final enum SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;


# instance fields
.field displayId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    const-string v1, "MAIN"

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_DISPLAY_IDS:[I

    aget v2, v2, v3

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 118
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    const-string v1, "SUB"

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_DISPLAY_IDS:[I

    aget v2, v2, v4

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 119
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    const-string v1, "FULL"

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_DISPLAY_IDS:[I

    aget v2, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 120
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    const-string v1, "UNKNOWN"

    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_DISPLAY_IDS:[I

    aget v2, v2, v6

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->FULL:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->$VALUES:[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualScreen() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput p3, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->displayId:I

    .line 127
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->$VALUES:[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    return-object v0
.end method


# virtual methods
.method getDisplayId()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->displayId:I

    return v0
.end method
