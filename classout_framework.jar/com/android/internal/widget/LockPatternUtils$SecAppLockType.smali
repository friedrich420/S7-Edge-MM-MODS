.class public final enum Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
.super Ljava/lang/Enum;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecAppLockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

.field public static final enum Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 280
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "Pattern"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 281
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "Password"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 282
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "PIN"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 283
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "BackupPin"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 284
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    const-string v1, "FingerPrint"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    .line 278
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    sget-object v1, None:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v3

    sget-object v1, Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v4

    sget-object v1, Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v5

    sget-object v1, PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v6

    sget-object v1, BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, FingerPrint:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    const-class v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .registers 1

    .prologue
    .line 278
    sget-object v0, $VALUES:[Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    return-object v0
.end method
