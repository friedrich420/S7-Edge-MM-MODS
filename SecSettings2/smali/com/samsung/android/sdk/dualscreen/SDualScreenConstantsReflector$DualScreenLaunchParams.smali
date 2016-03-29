.class Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenLaunchParams;
.super Ljava/lang/Object;
.source "SDualScreenConstantsReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DualScreenLaunchParams"
.end annotation


# static fields
.field static FIELD_NAMES:[Ljava/lang/String;

.field public static FLAG_COUPLED_TASK:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 43
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "FLAG_COUPLED_TASK"

    aput-object v7, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenLaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    .line 48
    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Reflecting..... <DualScreenLaunchParams> class"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenLaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v5

    .line 50
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 52
    :try_start_0
    const-class v5, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    sget-object v6, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenLaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 54
    .local v4, "src":Ljava/lang/reflect/Field;
    const-class v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenLaunchParams;

    sget-object v6, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$DualScreenLaunchParams;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 55
    .local v1, "dst":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    .end local v1    # "dst":Ljava/lang/reflect/Field;
    .end local v4    # "src":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
