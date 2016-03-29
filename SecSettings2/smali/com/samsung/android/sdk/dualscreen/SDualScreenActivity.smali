.class public Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;
.super Ljava/lang/Object;
.source "SDualScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    }
.end annotation


# static fields
.field public static final FLAG_COUPLED_TASK:I

.field public static final FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I

.field public static final FLAG_FINISH_CALLED_ACTIVITIES:I

.field public static final FLAG_FINISH_REMAIN_TOP_ACTIVITY:I

.field public static final FLAG_FINISH_SOURCE_ACTIVITY:I

.field public static final FLAG_FINISH_TASK:I

.field public static final FLAG_FINISH_TOP_ACTIVITY:I

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSIT_EXPAND:I

.field public static final TRANSIT_SHRINK:I

.field private static mDualScreenAvailable:Z

.field private static mDualScreenAvailableChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    .line 38
    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDualScreenAvailable:Z

    .line 39
    sput-boolean v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->mDualScreenAvailableChecked:Z

    .line 50
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenLaunchParams;->FLAG_COUPLED_TASK:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_COUPLED_TASK:I

    .line 57
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_TASK:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_TASK:I

    .line 64
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_CALLED_ACTIVITIES:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_CALLED_ACTIVITIES:I

    .line 71
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_SOURCE_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_SOURCE_ACTIVITY:I

    .line 78
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_TOP_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_TOP_ACTIVITY:I

    .line 85
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I

    .line 92
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->FLAG_FINISH_REMAIN_TOP_ACTIVITY:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->FLAG_FINISH_REMAIN_TOP_ACTIVITY:I

    .line 100
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->TRANSIT_EXPAND:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TRANSIT_EXPAND:I

    .line 107
    sget v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenManager;->TRANSIT_SHRINK:I

    sput v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TRANSIT_SHRINK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 560
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowManager() : screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    if-nez p1, :cond_0

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "screen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method
