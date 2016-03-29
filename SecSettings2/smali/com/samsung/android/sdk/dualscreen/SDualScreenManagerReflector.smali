.class Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;
.super Lcom/samsung/android/sdk/dualscreen/SDualScreenReflector;
.source "SDualScreenManagerReflector.java"


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

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

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_DISPLAY_IDS:[I

    .line 66
    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->loadKlass()V

    .line 67
    return-void
.end method

.method private static checkVersion()V
    .locals 3

    .prologue
    .line 893
    const/16 v0, 0x9

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getRequiredMinimumSdkVersionCode()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 894
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application uses SDK(version 0.8b). The device requires SDK(version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getRequiredMinimumSdkVersionCode()I

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
    :cond_0
    return-void
.end method

.method private static convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;
    .locals 6
    .param p0, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    const/4 v0, 0x0

    .line 780
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

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
    if-eqz p0, :cond_0

    .line 782
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v2, "displayIdToScreen(int)"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v2, "displayIdToScreen(int)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 787
    :cond_0
    return-object v0
.end method

.method private static getFrameworkVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 850
    const-string v0, "getFrameworkVersionName()"

    .line 851
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 853
    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 854
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 857
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    .line 858
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrameworkVersionName() ret="

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
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "UNKNOWN"

    goto :goto_0
.end method

.method private static getRequiredMinimumSdkVersionCode()I
    .locals 5

    .prologue
    .line 865
    const-string v0, "getRequiredMinimumSdkVersionCode()"

    .line 866
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 868
    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 871
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    .line 872
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequiredMinimumSdkVersionCode() : "

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
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static getRequiredMinimumSdkVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 879
    const-string v0, "getRequiredMinimumSdkVersionName()"

    .line 880
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 882
    .local v1, "ret":Ljava/lang/Object;
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 885
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_1

    .line 886
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRequiredMinimumSdkVersionName() : "

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
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "UNKNOWN"

    goto :goto_0
.end method

.method static getWindowManager(Landroid/content/Context;Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/WindowManager;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    const/4 v3, 0x0

    .line 689
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWindowManager() : screen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v0, "getWindowManager(Context,DualScreen)"

    .line 691
    .local v0, "methodNameWithParam":Ljava/lang/String;
    const/4 v2, 0x0

    .line 693
    .local v2, "ret":Landroid/view/WindowManager;
    invoke-static {p1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->convertToNativeDualScreenEnum(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Ljava/lang/Object;

    move-result-object v1

    .line 695
    .local v1, "nativeScreen":Ljava/lang/Object;
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWindowManager(Context, DualScreen) : nativeScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    sget-object v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v0, v3, v5}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ret":Landroid/view/WindowManager;
    check-cast v2, Landroid/view/WindowManager;

    .restart local v2    # "ret":Landroid/view/WindowManager;
    move-object v3, v2

    .line 702
    :cond_0
    return-object v3
.end method

.method static loadEnumKlass()V
    .locals 15

    .prologue
    .line 314
    const-string v0, "loadEnumKlass()"

    .line 315
    .local v0, "LOCAL_TAG":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    if-nez v10, :cond_4

    .line 316
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() reflecting... DualScreen"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_0
    const-string v10, "com.samsung.android.dualscreen.DualScreen"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    .line 320
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 321
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Enum name:  %s%nEnum constants:  %s%n"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    sget-object v14, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "msg":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v6    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v11, "displayIdToScreen"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 346
    sget-object v11, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v12, "getDisplayId"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-static {v11, v12, v10}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 348
    sget-object v11, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v12, "ordinal"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-static {v11, v12, v10}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 351
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    array-length v5, v10

    .line 352
    .local v5, "localEnumLength":I
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    array-length v8, v10

    .line 354
    .local v8, "nativeEnumLength":I
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() : ==================================="

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 361
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_ENUM_FIELD_NAMES:[Ljava/lang/String;

    aget-object v7, v10, v3

    .line 365
    .local v7, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v8, :cond_2

    .line 366
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    aget-object v9, v10, v4

    .line 367
    .local v9, "o":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 368
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    const-string v11, "getDisplayId()"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v9, v12}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->invoke(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 370
    .local v1, "displayId":I
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->DUALSCREEN_DISPLAY_IDS:[I

    aput v1, v10, v3

    .line 372
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadEnumKlass() : DUALSCREEN_DISPLAY_IDS["

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
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 360
    .end local v9    # "o":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    .end local v4    # "j":I
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() : ==================================="

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    .end local v3    # "i":I
    .end local v5    # "localEnumLength":I
    .end local v8    # "nativeEnumLength":I
    :cond_4
    :goto_2
    return-void

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() : ClassNotFoundException !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 385
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v10, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v11, "loadEnumKlass() : IllegalArgumentException !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2
.end method

.method static loadKlass()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 112
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadKlass() : caller="

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
    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->loadEnumKlass()V

    .line 117
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 118
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v3, "loadKlass() reflecting... DualScreenManager"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    const-string v1, "com.samsung.android.dualscreen.DualScreenManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "canBeCoupled"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 134
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "canBeExpanded"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 139
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "dimScreen"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 145
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "finishCoupledActivity"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 149
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "focusScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 153
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "forceFocusScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 158
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getFocusedScreen"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 160
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getFrameworkVersionCode"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 162
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getFrameworkVersionName"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 164
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getRequiredMinimumSdkVersionCode"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 166
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getRequiredMinimumSdkVersionName"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 168
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "getScreen"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 170
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 174
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getShrinkRequested"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 178
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getTaskInfo"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 182
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getTopRunningTaskId"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 186
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "getWindowManager"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 192
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "isExpandable"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 197
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "makeIntent"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v7

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v8

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v9

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 204
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "moveTaskToScreen"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 209
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "moveTaskToScreen"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 214
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "moveToScreen"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 219
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "overrideNextAppTransition"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 225
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "registerExpandableActivity"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 227
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "requestOppositeDisplayOrientation"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 232
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "requestExpandedDisplayOrientation"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 237
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "sendExpandRequest"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 241
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "sendShrinkRequest"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    sget-object v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreen:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 246
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "setExpandable"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 250
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "setFinishWithCoupledTask"

    new-array v4, v8, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 254
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "swapTopTask"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 256
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v4, "switchScreen"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 259
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassDualScreenManager:Ljava/lang/Class;

    const-string v3, "unregisterExpandableActivity"

    check-cast v2, [Ljava/lang/Class;

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 263
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 264
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "loadKlass() reflecting... TaskInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :try_start_1
    const-string v1, "com.samsung.android.dualscreen.TaskInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    .line 274
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "getTaskId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 276
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "isFixed"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 278
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "getScreen"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 280
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "getChildCoupledTaskId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 282
    sget-object v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->sKlassTaskInfo:Ljava/lang/Class;

    const-string v3, "getParentCoupledTaskId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :cond_1
    :goto_1
    const-class v1, Landroid/app/Activity;

    const-string v2, "setScreenChangeListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenChangeListener;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 293
    const-class v1, Landroid/app/Activity;

    const-string v2, "setExpandRequestListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ExpandRequestListener;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 297
    const-class v1, Landroid/app/Activity;

    const-string v2, "setShrinkRequestListener"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ShrinkRequestListener;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->putMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 303
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    const-string v2, "loadKlass() : DualScreen SDK version (0.8b)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadKlass() : Device DualScreen f/w version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getFrameworkVersionName()Ljava/lang/String;

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
    sget-object v1, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadKlass() : Device supports Minimum SDK version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->getRequiredMinimumSdkVersionName()Ljava/lang/String;

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
    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenManagerReflector;->checkVersion()V

    .line 311
    return-void

    .line 127
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 284
    :catch_1
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
