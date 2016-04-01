.class Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;
.super Ljava/lang/Object;
.source "SDualScreenConstantsReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageManager"
.end annotation


# static fields
.field public static FEATURE_DUALSCREEN:Ljava/lang/String;

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    .line 121
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "FEATURE_DUALSCREEN"

    aput-object v7, v5, v6

    sput-object v5, FIELD_NAMES:[Ljava/lang/String;

    .line 126
    # getter for: Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Reflecting..... <PackageManager> class"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v5, FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v5

    .line 128
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v0, :cond_46

    .line 130
    :try_start_19
    const-class v5, Landroid/content/pm/PackageManager;

    sget-object v6, FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 132
    .local v4, "src":Ljava/lang/reflect/Field;
    const-class v5, Lcom/samsung/android/sdk/dualscreen/SDualScreenConstantsReflector$PackageManager;

    sget-object v6, FIELD_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 133
    .local v1, "dst":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_34} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_34} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_34} :catch_41

    .line 128
    .end local v1    # "dst":Ljava/lang/reflect/Field;
    .end local v4    # "src":Ljava/lang/reflect/Field;
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 139
    :catch_37
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_34

    .line 141
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3c
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_34

    .line 143
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_41
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_34

    .line 147
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_46
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
