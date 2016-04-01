.class Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;
.super Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;
.source "SDualScreenManagerReflector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_MEMBERS:Z

.field static DUALSCREEN_DISPLAY_IDS:[I

.field static DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sKlassDualScreen:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sKlassDualScreenManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sKlassTaskInfo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInstanceDualScreenManager:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FULL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    sput-object v0, DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    .line 63
    sget-object v0, DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, DUALSCREEN_DISPLAY_IDS:[I

    .line 66
    invoke-static {}, loadKlass()V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;-><init>()V

    .line 52
    iput-boolean v4, p0, mInitialized:Z

    .line 73
    if-nez p1, :cond_10

    .line 74
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "context is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_10
    :try_start_10
    sget-object v4, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 84
    .local v2, "dualScreenManagerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    .line 86
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_39

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 88
    .local v1, "activity":Landroid/app/Activity;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, mActivityInstance:Ljava/lang/ref/WeakReference;

    .line 91
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_39
    const/4 v4, 0x1

    iput-boolean v4, p0, mInitialized:Z

    .line 92
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "completely initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_43} :catch_44
    .catch Ljava/lang/InstantiationException; {:try_start_10 .. :try_end_43} :catch_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_43} :catch_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_43} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_43} :catch_74

    .line 109
    .end local v2    # "dualScreenManagerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_43
    return-void

    .line 93
    :catch_44
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "NoSuchMethodException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_43

    .line 96
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_50
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/InstantiationException;
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "InstantiationException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_43

    .line 99
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_5c
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "IllegalAccessException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_43

    .line 102
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_68
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "IllegalArgumentException !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_43

    .line 105
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_74
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InvocationTargetException ! cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_43
.end method

.method static canBeExpanded(I)Z
    .registers 8
    .param p0, "taskId"    # I

    .prologue
    .line 606
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canBeExpanded() taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, "ret":Z
    const-string v0, "canBeExpanded(int)"

    .line 610
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 611
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 612
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canBeExpanded() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_52
    return v1
.end method

.method private static checkVersion()V
    .registers 3

    .prologue
    .line 893
    const/16 v0, 0x9

    invoke-static {}, getRequiredMinimumSdkVersionCode()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 894
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application uses SDK(version 0.8b). The device requires SDK(version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, getRequiredMinimumSdkVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") at least"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_2b
    return-void
.end method

.method private static convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;
    .registers 7
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    const/4 v0, 0x0

    .line 780
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToNativeDualScreenEnum() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    if-eqz p0, :cond_3d

    .line 782
    sget-object v1, sKlassDualScreen:Ljava/lang/Class;

    const-string/jumbo v2, "displayIdToScreen(int)"

    invoke-static {v1, v2}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 783
    sget-object v1, sKlassDualScreen:Ljava/lang/Class;

    const-string/jumbo v2, "displayIdToScreen(int)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 787
    :cond_3d
    return-object v0
.end method

.method static convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .registers 8
    .param p0, "screen"    # Ljava/lang/Object;

    .prologue
    .line 399
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertToSdkDualScreenEnum() : screen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-eqz p0, :cond_4e

    .line 401
    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->values()[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_20
    if-ge v1, v2, :cond_4e

    aget-object v3, v0, v1

    .line 402
    .local v3, "o":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 403
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertToSdkDualScreenEnum() : returns "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v0    # "arr$":[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :goto_4a
    return-object v3

    .line 401
    .restart local v0    # "arr$":[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "o":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 408
    .end local v0    # "arr$":[Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    :cond_4e
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_4a
.end method

.method private static convertToSdkTaskInfo(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    .registers 12
    .param p0, "taskInfo"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 792
    const/4 v5, 0x0

    .line 793
    .local v5, "sdualScreenTaskInfo":Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    const/4 v6, -0x1

    .line 794
    .local v6, "taskId":I
    const/4 v1, 0x0

    .line 795
    .local v1, "fixed":Z
    const/4 v0, -0x1

    .line 796
    .local v0, "childCoupledTaskId":I
    const/4 v2, -0x1

    .line 798
    .local v2, "parentCoupledTaskId":I
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 800
    .local v4, "screen":Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    if-eqz p0, :cond_f8

    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "getTaskId()"

    invoke-static {v7, v8}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 801
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "getTaskId()"

    invoke-static {v7, v8}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 802
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "getTaskId()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 805
    :cond_31
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertToSdkTaskInfo() : taskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    .end local v5    # "sdualScreenTaskInfo":Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;-><init>(I)V

    .line 808
    .restart local v5    # "sdualScreenTaskInfo":Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "getScreen()"

    invoke-static {v7, v8}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 809
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "getScreen()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 810
    .local v3, "retScreen":Ljava/lang/Object;
    invoke-static {v3}, convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v4

    .line 812
    .end local v3    # "retScreen":Ljava/lang/Object;
    :cond_68
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->setScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V

    .line 814
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "isFixed()"

    invoke-static {v7, v8}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 815
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "isFixed()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 817
    :cond_87
    invoke-virtual {v5, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->setFixed(Z)V

    .line 819
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "getChildCoupledTaskId()"

    invoke-static {v7, v8}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 820
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "getChildCoupledTaskId()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 822
    :cond_a6
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertToSdkTaskInfo() : childCoupledTaskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->setChildCoupledTaskId(I)V

    .line 825
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "getParentCoupledTaskId()"

    invoke-static {v7, v8}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 826
    sget-object v7, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v8, "getParentCoupledTaskId()"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, p0, v9}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 828
    :cond_dd
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convertToSdkTaskInfo() : parentCoupledTaskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;->setParentCoupledTaskId(I)V

    .line 831
    :cond_f8
    return-object v5
.end method

.method static forceFocusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 7
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 618
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceFocusScreen() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string/jumbo v0, "forceFocusScreen(DualScreen)"

    .line 620
    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p0}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 622
    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceFocusScreen() : nativeScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 624
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_4d
    return-void
.end method

.method static getFocusedScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .registers 5

    .prologue
    .line 629
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getFocusedScreen()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string/jumbo v0, "getFocusedScreen()"

    .line 631
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 633
    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 634
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 637
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1e
    if-eqz v1, :cond_3e

    .line 638
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFocusedScreen() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {v1}, convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v2

    .line 641
    :goto_3d
    return-object v2

    :cond_3e
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_3d
.end method

.method private static getFrameworkVersionCode()I
    .registers 5

    .prologue
    .line 835
    const-string/jumbo v0, "getFrameworkVersionCode()"

    .line 836
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 838
    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 839
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 842
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_16
    if-eqz v1, :cond_38

    .line 843
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFrameworkVersionCode() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 846
    :goto_37
    return v2

    :cond_38
    const/4 v2, -0x1

    goto :goto_37
.end method

.method private static getFrameworkVersionName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 850
    const-string/jumbo v0, "getFrameworkVersionName()"

    .line 851
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 853
    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 854
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 857
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_16
    if-eqz v1, :cond_34

    .line 858
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFrameworkVersionName() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    check-cast v1, Ljava/lang/String;

    .line 861
    :goto_33
    return-object v1

    :cond_34
    const-string v1, "UNKNOWN"

    goto :goto_33
.end method

.method private static getRequiredMinimumSdkVersionCode()I
    .registers 5

    .prologue
    .line 865
    const-string/jumbo v0, "getRequiredMinimumSdkVersionCode()"

    .line 866
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 868
    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 869
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 871
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_16
    if-eqz v1, :cond_38

    .line 872
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRequiredMinimumSdkVersionCode() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 875
    :goto_37
    return v2

    :cond_38
    const/4 v2, -0x1

    goto :goto_37
.end method

.method private static getRequiredMinimumSdkVersionName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 879
    const-string/jumbo v0, "getRequiredMinimumSdkVersionName()"

    .line 880
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 882
    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 883
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 885
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_16
    if-eqz v1, :cond_34

    .line 886
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRequiredMinimumSdkVersionName() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    check-cast v1, Ljava/lang/String;

    .line 889
    :goto_33
    return-object v1

    :cond_34
    const-string v1, "UNKNOWN"

    goto :goto_33
.end method

.method static getShrinkRequested(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getShrinkRequested()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string/jumbo v0, "getShrinkRequested(Context)"

    .line 648
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 650
    .local v1, "ret":Z
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 651
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 653
    :cond_27
    return v1
.end method

.method static getTaskInfo(I)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
    .registers 8
    .param p0, "taskId"    # I

    .prologue
    const/4 v2, 0x0

    .line 657
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTaskInfo() : taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string/jumbo v0, "getTaskInfo(int)"

    .line 659
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 661
    .local v1, "ret":Ljava/lang/Object;
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v3, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 662
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v0, v2, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 667
    if-eqz v1, :cond_55

    .line 668
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTaskInfo() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {v1}, convertToSdkTaskInfo(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    move-result-object v2

    .line 672
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_55
    return-object v2
.end method

.method static getTopRunningTaskId(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)I
    .registers 8
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 676
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTopRunningTaskId() : screen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string/jumbo v0, "getTopRunningTaskId(DualScreen)"

    .line 678
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v2, -0x1

    .line 680
    .local v2, "ret":I
    invoke-static {p0}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 681
    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTopRunningTaskId(DualScreen) : nativeScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v3, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 683
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v0, v4, v5}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 685
    :cond_55
    return v2
.end method

.method static getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    const/4 v3, 0x0

    .line 689
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getWindowManager() : screen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string/jumbo v0, "getWindowManager(Context,DualScreen)"

    .line 691
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v2, 0x0

    .line 693
    .local v2, "ret":Landroid/view/WindowManager;
    invoke-static {p1}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 695
    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getWindowManager(Context, DualScreen) : nativeScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget-object v4, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v4, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 697
    sget-object v4, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v0, v3, v5}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ret":Landroid/view/WindowManager;
    check-cast v2, Landroid/view/WindowManager;

    .restart local v2    # "ret":Landroid/view/WindowManager;
    move-object v3, v2

    .line 702
    :cond_55
    return-object v3
.end method

.method static isExpandable(I)Z
    .registers 8
    .param p0, "taskId"    # I

    .prologue
    .line 706
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isExpandable() taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v1, 0x0

    .line 708
    .local v1, "ret":Z
    const-string/jumbo v0, "isExpandable(int)"

    .line 710
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 711
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 712
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isExpandable() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_55
    return v1
.end method

.method static loadEnumKlass()V
    .registers 15

    .prologue
    .line 314
    const-string/jumbo v0, "loadEnumKlass()"

    .line 315
    .local v0, "LOCAL_TAG":Ljava/lang/String;
    sget-object v10, sKlassDualScreen:Ljava/lang/Class;

    if-nez v10, :cond_e0

    .line 316
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "loadEnumKlass() reflecting... DualScreen"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_f
    const-string v10, "com.samsung.android.dualscreen.DualScreen"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, sKlassDualScreen:Ljava/lang/Class;

    .line 320
    sget-object v10, sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_45

    .line 321
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Enum name:  %s%nEnum constants:  %s%n"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget-object v14, sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "msg":Ljava/lang/String;
    sget-object v10, TAG:Ljava/lang/String;

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v6    # "msg":Ljava/lang/String;
    :cond_45
    sget-object v10, sKlassDualScreen:Ljava/lang/Class;

    const-string/jumbo v11, "displayIdToScreen"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 346
    sget-object v11, sKlassDualScreen:Ljava/lang/Class;

    const-string/jumbo v12, "getDisplayId"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-static {v11, v12, v10}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 348
    sget-object v11, sKlassDualScreen:Ljava/lang/Class;

    const-string/jumbo v12, "ordinal"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-static {v11, v12, v10}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 351
    sget-object v10, DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    array-length v5, v10

    .line 352
    .local v5, "localEnumLength":I
    sget-object v10, sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    array-length v8, v10

    .line 354
    .local v8, "nativeEnumLength":I
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "loadEnumKlass() : ==================================="

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7e
    if-ge v3, v5, :cond_d8

    .line 361
    sget-object v10, DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    aget-object v7, v10, v3

    .line 365
    .local v7, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_85
    if-ge v4, v8, :cond_d5

    .line 366
    sget-object v10, sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    aget-object v9, v10, v4

    .line 367
    .local v9, "o":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 368
    sget-object v10, sKlassDualScreen:Ljava/lang/Class;

    const-string/jumbo v11, "getDisplayId()"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v9, v12}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 370
    .local v1, "displayId":I
    sget-object v10, DUALSCREEN_DISPLAY_IDS:[I

    aput v1, v10, v3

    .line 372
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadEnumKlass() : DUALSCREEN_DISPLAY_IDS["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v1    # "displayId":I
    :cond_d2
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 360
    .end local v9    # "o":Ljava/lang/Object;
    :cond_d5
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 380
    .end local v4    # "j":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_d8
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "loadEnumKlass() : ==================================="

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_e0} :catch_e1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_e0} :catch_ee

    .line 390
    .end local v3    # "i":I
    .end local v5    # "localEnumLength":I
    .end local v8    # "nativeEnumLength":I
    :cond_e0
    :goto_e0
    return-void

    .line 382
    :catch_e1
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "loadEnumKlass() : ClassNotFoundException !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_e0

    .line 385
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_ee
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "loadEnumKlass() : IllegalArgumentException !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_e0
.end method

.method static loadKlass()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 112
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadKlass() : caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, loadEnumKlass()V

    .line 117
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    if-nez v1, :cond_208

    .line 118
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadKlass() reflecting... DualScreenManager"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_30
    const-string v1, "com.samsung.android.dualscreen.DualScreenManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, sKlassDualScreenManager:Ljava/lang/Class;
    :try_end_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_38} :catch_2cf

    .line 132
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_38
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "canBeCoupled"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 134
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "canBeExpanded"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 139
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "dimScreen"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 145
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "finishCoupledActivity"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 149
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "focusScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 153
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "forceFocusScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 158
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v4, "getFocusedScreen"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 160
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v4, "getFrameworkVersionCode"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 162
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v4, "getFrameworkVersionName"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 164
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v4, "getRequiredMinimumSdkVersionCode"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 166
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v4, "getRequiredMinimumSdkVersionName"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 168
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v4, "getScreen"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 170
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "getScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 174
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "getShrinkRequested"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 178
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "getTaskInfo"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 182
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "getTopRunningTaskId"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 186
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "getWindowManager"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 192
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "isExpandable"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 197
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "makeIntent"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v8

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v9

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 204
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "moveTaskToScreen"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 209
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "moveTaskToScreen"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 214
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "moveToScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 219
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "overrideNextAppTransition"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 225
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v4, "registerExpandableActivity"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 227
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "requestOppositeDisplayOrientation"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 232
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "requestExpandedDisplayOrientation"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 237
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "sendExpandRequest"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 241
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "sendShrinkRequest"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 246
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "setExpandable"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 250
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "setFinishWithCoupledTask"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 254
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v4, "swapTopTask"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 256
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v4, "switchScreen"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 259
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const-string/jumbo v3, "unregisterExpandableActivity"

    check-cast v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 263
    :cond_208
    sget-object v1, sKlassTaskInfo:Ljava/lang/Class;

    if-nez v1, :cond_253

    .line 264
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadKlass() reflecting... TaskInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :try_start_214
    const-string v1, "com.samsung.android.dualscreen.TaskInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, sKlassTaskInfo:Ljava/lang/Class;

    .line 274
    sget-object v2, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v3, "getTaskId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 276
    sget-object v2, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v3, "isFixed"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 278
    sget-object v2, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v3, "getScreen"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 280
    sget-object v2, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v3, "getChildCoupledTaskId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 282
    sget-object v2, sKlassTaskInfo:Ljava/lang/Class;

    const-string/jumbo v3, "getParentCoupledTaskId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_253
    .catch Ljava/lang/ClassNotFoundException; {:try_start_214 .. :try_end_253} :catch_2d5

    .line 289
    :cond_253
    :goto_253
    const-class v1, Landroid/app/Activity;

    const-string/jumbo v2, "setScreenChangeListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 293
    const-class v1, Landroid/app/Activity;

    const-string/jumbo v2, "setExpandRequestListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 297
    const-class v1, Landroid/app/Activity;

    const-string/jumbo v2, "setShrinkRequestListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 303
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadKlass() : DualScreen SDK version (0.8b)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadKlass() : Device DualScreen f/w version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, getFrameworkVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadKlass() : Device supports Minimum SDK version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, getRequiredMinimumSdkVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, checkVersion()V

    .line 311
    return-void

    .line 127
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2cf
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_38

    .line 284
    :catch_2d5
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_253
.end method

.method static makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)Landroid/content/Intent;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p3, "flags"    # I

    .prologue
    .line 719
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "makeIntent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string/jumbo v0, "makeIntent(Context,Intent,DualScreen,int)"

    .line 723
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 724
    invoke-static {p2}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 725
    .local v1, "nativeTargetScreen":Ljava/lang/Object;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    .end local v1    # "nativeTargetScreen":Ljava/lang/Object;
    :cond_30
    return-object p1
.end method

.method static moveTaskToScreen(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 9
    .param p0, "taskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 747
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToScreen() : taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string/jumbo v0, "moveTaskToScreen(int,DualScreen)"

    .line 750
    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 751
    .local v1, "nativeToScreen":Ljava/lang/Object;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToScreen() : taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nativeToScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 753
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_68
    return-void
.end method

.method static moveTaskToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 9
    .param p0, "fromScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 733
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTaskToScreen() : fromScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " toScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string/jumbo v0, "moveTaskToScreen(DualScreen,DualScreen)"

    .line 737
    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p0}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 738
    .local v1, "nativeFromScreen":Ljava/lang/Object;
    invoke-static {p1}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v2

    .line 740
    .local v2, "nativeToScreen":Ljava/lang/Object;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTaskToScreen() : nativeFromScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nativeToScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v3, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 742
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v0, v4, v5}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :cond_68
    return-void
.end method

.method static sendExpandRequest(I)V
    .registers 7
    .param p0, "targetTaskId"    # I

    .prologue
    .line 758
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendExpandRequest() : targetTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string/jumbo v0, "sendExpandRequest(int)"

    .line 761
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 762
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_34
    return-void
.end method

.method static sendShrinkRequest(ILcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 9
    .param p0, "targetTaskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 767
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendShrinkRequest() : targetTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string/jumbo v0, "sendShrinkRequest(int,DualScreen)"

    .line 770
    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 771
    .local v1, "nativeToScreen":Ljava/lang/Object;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendShrinkRequest() : targetTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nativeToScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 774
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_68
    return-void
.end method


# virtual methods
.method canBeCoupled()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 418
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "canBeCoupled()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "ret":Z
    const-string v0, "canBeCoupled()"

    .line 421
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v3, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 422
    sget-object v3, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v4, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v2}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 423
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canBeCoupled() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 426
    :cond_3c
    return v2
.end method

.method dimScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;Z)V
    .registers 10
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p2, "enable"    # Z

    .prologue
    .line 430
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dimScreen() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string/jumbo v0, "dimScreen(DualScreen,boolean)"

    .line 432
    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 433
    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dimScreen() : nativeScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 435
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_5f
    return-void
.end method

.method finishCoupledActivity(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    .line 441
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "finishCoupledActivity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string/jumbo v0, "finishCoupledActivity(int)"

    .line 443
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 444
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_24
    return-void
.end method

.method focusScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 8
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 450
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "focusScreen() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string/jumbo v0, "focusScreen(DualScreen)"

    .line 453
    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 454
    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 455
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_35
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, mActivityInstance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, mActivityInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .registers 6

    .prologue
    .line 461
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "getScreen()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, "ret":Ljava/lang/Object;
    const-string/jumbo v0, "getScreen()"

    .line 464
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 465
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 467
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1f
    if-eqz v1, :cond_3f

    .line 468
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreen() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {v1}, convertToSdkDualScreenEnum(Ljava/lang/Object;)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    move-result-object v2

    .line 471
    :goto_3e
    return-object v2

    :cond_3f
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_3e
.end method

.method getScreen(I)Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .registers 8
    .param p1, "taskId"    # I

    .prologue
    .line 475
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScreen() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string/jumbo v0, "getScreen(int)"

    .line 477
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 478
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 481
    :goto_38
    return-object v1

    :cond_39
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    goto :goto_38
.end method

.method initialized()Z
    .registers 2

    .prologue
    .line 393
    iget-boolean v0, p0, mInitialized:Z

    return v0
.end method

.method moveToScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 8
    .param p1, "toScreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 485
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveToScreen() : toScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string/jumbo v0, "moveToScreen(DualScreen)"

    .line 487
    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 488
    .local v1, "nativeToScreen":Ljava/lang/Object;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveToScreen() : nativeToScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 490
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_4e
    return-void
.end method

.method overrideNextAppTransition(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;I)V
    .registers 10
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .param p2, "transitAnim"    # I

    .prologue
    .line 496
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overrideNextAppTransition() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transitAnim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string/jumbo v0, "overrideNextAppTransition(DualScreen,int)"

    .line 500
    .local v0, "methodNameWithParam":Ljava/lang/String;
    invoke-static {p1}, convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 501
    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overrideNextAppTransition() : nativeScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 503
    sget-object v2, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v3, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_5f
    return-void
.end method

.method registerExpandableActivity()V
    .registers 5

    .prologue
    .line 529
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerExpandableActivity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string/jumbo v0, "registerExpandableActivity()"

    .line 532
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 533
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_1d
    return-void
.end method

.method requestExpandedDisplayOrientation(I)V
    .registers 8
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 519
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestExpandedDisplayOrientation() : requestedOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string/jumbo v0, "requestExpandedDisplayOrientation(int)"

    .line 522
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 523
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_35
    return-void
.end method

.method requestOppositeDisplayOrientation(I)V
    .registers 8
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 509
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestOppositeDisplayOrientation() : requestedOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string/jumbo v0, "requestOppositeDisplayOrientation(int)"

    .line 512
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 513
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_35
    return-void
.end method

.method setExpandRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    .prologue
    .line 546
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "setExpandRequestListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string/jumbo v0, "setExpandRequestListener(ExpandRequestListener)"

    .line 548
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const-class v1, Landroid/app/Activity;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 549
    const-class v1, Landroid/app/Activity;

    invoke-virtual {p0}, getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_22
    return-void
.end method

.method setExpandable(Z)V
    .registers 8
    .param p1, "expandable"    # Z

    .prologue
    .line 538
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExpandable() expandable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string/jumbo v0, "setExpandable(boolean)"

    .line 540
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 541
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_35
    return-void
.end method

.method setFinishWithCoupledTask(Z)V
    .registers 8
    .param p1, "finish"    # Z

    .prologue
    .line 554
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFinishWithCoupledTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string/jumbo v0, "setFinishWithCoupledTask(boolean)"

    .line 556
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 557
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_24
    return-void
.end method

.method setScreenChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;

    .prologue
    .line 563
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "setScreenChangeListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string/jumbo v0, "setScreenChangeListener(ScreenChangeListener)"

    .line 565
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const-class v1, Landroid/app/Activity;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 566
    const-class v1, Landroid/app/Activity;

    invoke-virtual {p0}, getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_22
    return-void
.end method

.method setShrinkRequestListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    .prologue
    .line 571
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "setShrinkRequestListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string/jumbo v0, "setShrinkRequestListener(ShrinkRequestListener)"

    .line 573
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const-class v1, Landroid/app/Activity;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 574
    const-class v1, Landroid/app/Activity;

    invoke-virtual {p0}, getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_22
    return-void
.end method

.method swapTopTask()V
    .registers 5

    .prologue
    .line 579
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "swapTopTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string/jumbo v0, "swapTopTask()"

    .line 581
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 582
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_1d
    return-void
.end method

.method switchScreen()V
    .registers 5

    .prologue
    .line 587
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "switchScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string/jumbo v0, "switchScreen()"

    .line 589
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 590
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_1d
    return-void
.end method

.method unregisterExpandableActivity()V
    .registers 5

    .prologue
    .line 595
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterExpandableActivity()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string/jumbo v0, "unregisterExpandableActivity()"

    .line 598
    .local v0, "methodNameWithParam":Ljava/lang/String;
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v1, v0}, checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 599
    sget-object v1, sKlassDualScreenManager:Ljava/lang/Class;

    iget-object v2, p0, mInstanceDualScreenManager:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_1d
    return-void
.end method
