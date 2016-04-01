.class public Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateAuthLockMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAuthLockObserver:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 18
    const-class v1, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 26
    new-instance v0, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;

    invoke-direct {v0, p0, p3}, Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;-><init>(Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode;Landroid/os/Handler;)V

    iput-object v0, p0, mAuthLockObserver:Lcom/android/server/cocktailbar/mode/PrivateAuthLockMode$AuthLockObserver;

    .line 27
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 17
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 17
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    const-string v0, "authlock"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 5

    .prologue
    .line 67
    const-string/jumbo v0, "lock"

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "missing_phone_lock"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method
